function [costTarget,fluxBio,fluxTarget] = cost_target(mutant,DFIN)
% ------------------------------------------------------------------------------------- 
% cost_target.m
% Function to calculate cost of a knockout mutant. Cost is equal to the negative
% of the target product flux from a biomass maximization FBA simulation.
% mutant = chromosome vector, 0 = gene is knocked out, 1 = gene available
% DFIN = DataFile struct containing metabolic system parameters
% costTarget = (-1)*(target flux)
% fluxBio = biomass flux 
% fluxTarget = target flux
% ------------------------------------------------------------------------------------- 

% transcriptional regulation -
isTxn = DFIN.TXN;
nGene = DFIN.NUM_GENE;

% biomass flux -
idxBiomass = DFIN.FLUX_BIOMASS;
% target flux -
idxTarget = DFIN.FLUX_TARGET;

% get flux indices to knock out -
model = DFIN.MODEL;
substrate = DFIN.SUBSTRATE;
if (isTxn==1)
	mutantTF = mutant(1,(nGene+1):end);
	eval(['[nameGeneTxn,idxGeneTxn,idxFluxTxn] = idx_regulation_txn(''',model,''',substrate,mutantTF);']);
	mutant(1,idxGeneTxn) = 0;
end
eval(['idxKO = ',model,'_map_gene_rxt(mutant);']);
idxKO = find(1-idxKO);
DFIN.FLUX_BOUNDS(idxKO,1) = 0;
DFIN.FLUX_BOUNDS(idxKO,2) = 0;

% maximize biomass -
[flow,status,uptake] = FluxDriver(DFIN,idxBiomass,-1);

% return biomass and target flux -
if (status==180)
	fluxBio = flow(idxBiomass);
	fluxTarget = flow(idxTarget);
	costTarget = (-1)*abs(fluxTarget);
	if (abs(costTarget) < 1E-10)
		costTarget = 0;
	end
else
	fluxBio = 0;
	fluxTarget = 0;
	costTarget = 0;
end

return;
