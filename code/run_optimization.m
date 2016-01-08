
% Script to set up and run metaheuristic optimization on 
% constraint-based E.coli + glycosylation network model. 
clear all; more off; clc; disp([' ']);

% define model -
model = 'Ec_iAF1260_glyco'; % Palsson - iAF1260 + glycosylation pathways

% define target product flux -
% target = 2383;	% iAF1260 -	M_udpg_c --> M_udpg_GLYCO_b	(udpg = UDPglucose)
% target = 2384;	% iAF1260 - M_uacgam_c --> M_uacgam_GLYCO_b	(uacgam = UDP-N-acetyl-D-glucosamine)
target = 2394;	% iAF1260 - M_udccjglycan_p + M_targetprot_p --> M_glycoprot_p + M_udcpdp_p

% define substrates for growth -
% substrate = {'M_glyc_b','M_o2_b'}; % aerobic, glycerol
% substrate = {'M_glyc_b','M_glu_L_b','M_o2_b'}; % aerobic, glycerol + glutamate
% substrate = {'M_glyc_b','M_gln_L_b','M_o2_b'}; % aerobic, glycerol + glutamine
% substrate = {'M_glu_L_b','M_o2_b'}; % aerobic, glutamate
% substrate = {'M_gln_L_b','M_o2_b'}; % aerobic, glutamine
% substrate = {'M_rib_D_b','M_o2_b'}; % aerobic, ribose
% substrate = {'M_glyc_b','M_rib_D_b','M_o2_b'}; % aerobic, glycerol + ribose
% substrate = {'M_rib_D_b','M_glu_L_b','M_o2_b'}; % aerobic, ribose + glutamate
% substrate = {'M_rib_D_b','M_gln_L_b','M_o2_b'}; % aerobic, ribose + glutamine
substrate = {'M_glc_D_b','M_o2_b'}; % aerobic, glucose
% substrate = {'M_xyl_D_b','M_o2_b'}; % aerobic, xylose
% substrate = {'M_glc_D_b','M_xyl_D_b','M_o2_b'}; % aerobic, glucose + xylose
% substrate = {'M_glyc_b','M_xyl_D_b','M_o2_b'}; % aerobic, glycerol + xylose
% substrate = {'M_xyl_D_b','M_glu_L_b','M_o2_b'}; % aerobic, xylose + glutamate
% substrate = {'M_xyl_D_b','M_gln_L_b','M_o2_b'}; % aerobic, xylose + glutamine
% substrate = {'M_acgam_b','M_o2_b'}; % aerobic, GlcNAc
% substrate = {'M_glyc_b','M_acgam_b','M_o2_b'}; % aerobic, glycerol + GlcNAc
% substrate = {'M_glc_D_b','M_acgam_b','M_o2_b'}; % aerobic, glucose + GlcNAc
% substrate = {'M_acgam_b','M_glu_L_b','M_o2_b'}; % aerobic, GlcNAc + glutamate
% substrate = {'M_acgam_b','M_gln_L_b','M_o2_b'}; % aerobic, GlcNAc + glutamine
% substrate = {'M_acgam_b','M_xyl_D_b','M_o2_b'}; % aerobic, GlcNAc + xylose
% substrate = {'M_acgam_b','M_rib_D_b','M_o2_b'}; % aerobic, GlcNAc + ribose
% substrate = {'M_glc_D_b','M_glu_L_b','M_o2_b'}; % aerobic, glucose + glutamate
% substrate = {'M_glc_D_b','M_gln_L_b','M_o2_b'}; % aerobic, glucose + glutamine

% what kind of optimization do you want to run? -
% 'SA' = simulated annealing
% 'GA' = genetic algorithm
nameOpt = 'SA';

% Should we apply Boolean transcription regulation? (from Covert,2004,Nature) -
% Transcription factors can also be knocked out.
% 1 = yes, apply txn regulation
% 0 = no, don't apply txn regulation
flagTXN = 1;

% Minimum growth rate -
% define as 10% of WT
wtDF = DataFile(model,target,substrate,flagTXN);
wtIdxBio = wtDF.FLUX_BIOMASS;
[wtFlow,wtStatus,wtUp] = FluxDriver(wtDF,wtIdxBio,-1);
wtBio = wtFlow(wtIdxBio);
minBio = 0.1*wtBio;

% Minimum target production -
minTarget = 1E-3;

% Perform preprocessing step to determine lethal knockouts -
disp(['Preprocessing network for lethal knockouts...']);
preprocessing(model,target,substrate,flagTXN,minBio,minTarget);

% Load DataFile struct -
DF = DataFile(model,target,substrate,flagTXN);

% Apply biomass & target requirements -
DF.MIN_BIOMASS = minBio;
DF.MIN_TARGET = minTarget;

% biomass flux index -
idxBio = DF.FLUX_BIOMASS;

% Maximum number of knockouts -
maxKO = 20; % iAF1260

% SET ALGORITHM-SPECIFIC PARAMETERS HERE --
if (strcmp(nameOpt,'SA')==1)
	
	% SIMULATED ANNEALING

	% Set cost metric -
	%wrapperCost = @cost_target; % COST = (-1)*(target flux)
	wrapperCost = @cost_shadowPrice; % COST = (-1)*(shadow price)

	% Maximum number of iterations -
	% Maxtime = 1E4; % iAF1260
	Maxtime = 8E3; % iAF1260
	
	% Iterations between parameter update -
	Minitial = 1;
	% Probability of mutation -
	pMutation = 1E-4;
	% Probability of new mutant -
	pRandom = 0.1;

	% Cooling schedule (adapted from Rocha,2009,BMC Sys Bio) -
	% Difference in energy corresponding to acceptance probability of worse solution
	% of 50% at beginning of simulation:
	deltaEo = 0.005;
	% Difference in energy corresponding to acceptance probability of worse solution
	% of 50% at end of simulation:
	deltaEf = 0.0005;
	% Final temperature -
	Tfinal = (-1)*deltaEf/log(0.5);
	% Initial temperature -
	Tinitial = (-1)*deltaEo/log(0.5);
	% Cooling rate -
	Alpha = exp((log(Tfinal)-log(Tinitial))/(Maxtime/Minitial));

	% Generate random initial solution -
	disp(['Generating random initial mutant...']);
	[startX, startCost, startBio] = initialize_pop(1,maxKO,DF,wrapperCost);

	% Run SA -
	disp(['Begin Simulated Annealing Optimization...']);
	[Solution] = SA(startX,Tinitial,Alpha,Minitial,Maxtime,pMutation,pRandom,maxKO,DF,wrapperCost);

elseif (strcmp(nameOpt,'GA')==1)

	% GENETIC ALGORITHM

	% Set fitness metric -
	wrapperFitness = @fitness_target; % FITNESS = target flux

	% Population size -
	popsize = 200;
	% Maximum number of generations -
	maxGen = 500;
	% Probability of crossover -
	pCrossover = 0.99;
	% Number of crossover points -
	nCrossover = 100;
	% Probability of mutation -
	pMutation = 5E-4;
	% Probability of swap mutation -
	pSwap = 0.15;
	% Number of swap mutations -
	nSwap = 4;
	% Number of new random children to generate per generation -
	nNew = 10;
	% Number of elite members sent to next generation -
	mElitism = 2;

	% Generate random initial population -
	[startX, startFit, startBio] = initialize_pop(popsize,maxKO,DF,wrapperFitness);

	% Run GA -
	[Solution,sBest] = GA(startX,popsize,maxGen,nCrossover,pCrossover,pMutation,pSwap,nSwap,nNew,mElitism,maxKO,DF,wrapperFitness);
end

return;
