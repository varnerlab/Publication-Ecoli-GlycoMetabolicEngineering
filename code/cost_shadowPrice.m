function [costShadow,fluxBio,fluxTarget] = cost_shadowPrice(mutant,DFIN,inForceTarget)
% ------------------------------------------------------------------------------------- 
% cost_shadowPrice.m
% Function to calculate cost of a knockout mutant. Cost is equal to the negative
% of the shadow price which is the change in biomass production for a small change 
% in forced target production.
% mutant = chromosome vector, 0 = gene is knocked out, 1 = gene available
% DFIN = DataFile struct containing metabolic system parameters
% costShadow = (-1)*shadow price 
% fluxBio = biomass flux
% fluxTarget = target product flux
% inForceTarget (optional) = specific target flux value to force
% ------------------------------------------------------------------------------------- 

% transcriptional regulation -
isTxn = DFIN.TXN;
nGene = DFIN.NUM_GENE;

% biomass flux -
idxBiomass = DFIN.FLUX_BIOMASS;
% Target flux -
idxTarget = DFIN.FLUX_TARGET;

% minimum growth rate -
minBio = DFIN.MIN_BIOMASS;

% forced change in target flux -
forceTarget = 1E-3;
if (nargin==3)
	forceTarget = inForceTarget;
end

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

% maximize biomass with zero target flux -
DF = DFIN;
DF.FLUX_BOUNDS(idxTarget,1) = 0;
DF.FLUX_BOUNDS(idxTarget,2) = 0;
[flow1,status1,uptake1] = FluxDriver(DF,idxBiomass,-1);
b1 = flow1(idxBiomass);
if (status1~=180)||(b1 < minBio)
	%disp(['	- Zero target strain does not grow']);
	costShadow = Inf;
	fluxBio = 0;
	fluxTarget = 0;
	return;
end

% maximize biomass with forced target flux -
DF = DFIN;
DF.FLUX_BOUNDS(idxTarget,1) = forceTarget;
DF.FLUX_BOUNDS(idxTarget,2) = forceTarget;
[flow2,status2,uptake2] = FluxDriver(DF,idxBiomass,-1);
b2 = flow2(idxBiomass);
if (status1~=180)||(b2 < minBio)
	%disp(['	- Forced target strain does not grow']);
	costShadow = Inf;
	fluxBio = 0;
	fluxTarget = 0;
	return;
end

% return shadow price -
fluxBio = flow2(idxBiomass);
fluxTarget = flow2(idxTarget);
g1 = 0;
g2 = forceTarget;
costShadow = (-1)*(b2 - b1)/(g2 - g1);

return;
