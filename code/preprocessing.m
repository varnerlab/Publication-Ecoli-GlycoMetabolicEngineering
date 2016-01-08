function preprocessing(model,target,substrate,regTxn,minBio,minTarget)
% ------------------------------------------------------------------------------------- 
% preprocessing.m
% Script to perform all single knockouts for a particular set of uptake bounds 
% to find lethal knockouts. These knockouts are excluded from optimization search. 
% Knockouts that prevent target product formation are also identified and excluded 
% from search.
% model = string corresponding to network
% target = index of target flux
% substrate = string array specifying growth medium substrates
% regTxn = transcription regulation flag, 1 = apply, 0 = don't apply
% minBio = required minimum growth rate
% minTarget = required minimum target flux
% ------------------------------------------------------------------------------------- 

% If lethal archives are available return -
try
	load ./idx_KO_lethal_biomass.dat;
	load ./idx_KO_lethal_target.dat;
	disp(['Preprocesses already performed!']);
	return;
end

% ------------------------------------------------------------------------------------- 
% BIOMASS PREPROCESSING

% Load the DataFile -
DF = DataFile(model,target,substrate,regTxn);

% Biomass flux -
idxBiomass = DF.FLUX_BIOMASS;

% System size -
nGene = DF.NUM_GENE;

for ix = 1:nGene

	% Initialize chromosome with knockout -
	chromosome = ones(1,nGene);
	chromosome(ix) = 0;

	% Get flux logic/bounds -
	eval(['fluxBoundLogic = ',model,'_map_gene_rxt(chromosome);']);
	findKO = find(1-fluxBoundLogic);

	% Knock out corresponding fluxes -
	DFIN = DF;
	DFIN.FLUX_BOUNDS(findKO,1) = 0;
	DFIN.FLUX_BOUNDS(findKO,2) = 0;
	[flow,status,uptake] = FluxDriver(DFIN,idxBiomass,-1);

	% Archive data -
	currBio = flow(idxBiomass);
	if (currBio < minBio)
		flow(idxBiomass) = NA;
	end
	allBiomass(ix,1) = flow(idxBiomass);
	disp(['	- Biomass preprocessing: gene ',num2str(ix)])
end

% Save lethal indicies to disk -
dataKO = isnan(allBiomass);
dataKO = find(dataKO)';
save -ascii idx_KO_lethal_biomass.dat dataKO;

% ------------------------------------------------------------------------------------- 
% TARGET PREPROCESSING

% Target flux (engineering objective) -
idxTarget = DF.FLUX_TARGET;

for ix = 1:nGene

	% Initialize chromosome with knockout -
	chromosome = ones(1,nGene);
	chromosome(ix) = 0;

	% Get flux logic/bounds -
	eval(['fluxBoundLogic = ',model,'_map_gene_rxt(chromosome);']);
	findKO = find(1-fluxBoundLogic);

	% Knock out necessary fluxes -
	DFIN = DF;
	DFIN.FLUX_BOUNDS(findKO,1) = 0;
	DFIN.FLUX_BOUNDS(findKO,2) = 0;
	[flow,status,uptake] = FluxDriver(DFIN,idxTarget,-1);

	% Archive data -
	currTarget = flow(idxTarget);
	if (currTarget < minTarget)
		flow(idxTarget) = NA;
	end
	allTarget(ix,1) = flow(idxTarget);
	disp(['	- Target preprocessing: gene ',num2str(ix)])
end

% Save lethal indicies to disk -
dataKOTarget = isnan(allTarget);
dataKOTarget = find(dataKOTarget)';
save -ascii idx_KO_lethal_target.dat dataKOTarget;

return;
