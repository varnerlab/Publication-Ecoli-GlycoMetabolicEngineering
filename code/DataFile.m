function DF = DataFile(model,target,substrate,regTxn)
% ------------------------------------------------------------------------------------- 
% DataFile.m 
% Sets up struct that specifies metabolic system parameters including flux/species 
% bounds and stoichiometry.
% model = string network name
% target = flux index of target product
% substrate = string array containing substrates (include oxygen here)
% regTxn = optional, transcription regulation flag, 1 = apply, 0 = don't apply
% DF = struct containing metabolic system constraints & parameters
% ------------------------------------------------------------------------------------- 

% get network info -
eval(['network = ',model,'_info();']);

% load the stoichiometric matrix -
eval(['load(''./',model,'_STM.mat'');']);
[nSpecies, nRxt] = size(STM);

% load gene ID array -
eval(['geneID = ',model,'_list_gene_ID();']);
nGene = length(geneID);
nTF = 0;
try
	eval(['idTF = ',model,'_list_TF_ID();']);
	nTF = length(idTF);
end

% get all species names -
eval(['speciesName = ',model,'_list_species_ID();']);

% define species bounds -
speciesBound = [];
mediaMM = network.MM;
nMediaMM = length(mediaMM);
speciesOpen = network.boundary;
nOpen = length(speciesOpen);
nSubstrate = length(substrate);
% apply minimal media -
for ix = 1:nMediaMM
	currID = mediaMM{ix};
	idxID = find(strcmp(currID,speciesName)==1);
	tmpBound = [idxID, -500, 500];
	speciesBound = [speciesBound; tmpBound];
end
% apply open boundary species -
for ix = 1:nOpen
	currID = speciesOpen{ix};
	idxID = find(strcmp(currID,speciesName)==1);
	tmpBound = [idxID, 0, 10];
	speciesBound = [speciesBound; tmpBound];
end
% apply substrates -
for ix = 1:nSubstrate
	currID = substrate{ix};
	idxID = find(strcmp(currID,speciesName)==1);
	tmpBound = [idxID, -10, 0];
	speciesBound = [speciesBound; tmpBound];
end
% apply additional bounds for target production -
idxAdd = find(network.additional.flux==target);
if ~isempty(idxAdd)
	speciesAdd = network.additional.boundary{idxAdd};
	nSpeciesAdd = length(speciesAdd);
	for ix = 1:nSpeciesAdd
		idxID = find(strcmp(speciesAdd{ix},speciesName)==1);
		tmpBound = [idxID, 0, 10];
		speciesBound = [speciesBound; tmpBound];
	end
end

% put in order -
[tmpVal,tmpIdx] = sort(speciesBound(:,1),'ascend');
speciesBound = speciesBound(tmpIdx,:);

% free metabolites -
idxFreeSpecies = speciesBound(:,1);
% Balanced metabolites -
idxBalancedSpecies = setdiff([1:nSpecies],idxFreeSpecies);

% load flux bounds -
eval(['FB = load(''./',model,'_flux_bounds.m'');']);

% set specified fluxes to zero -
idxSetZero = network.flux.set_zero;
FB(idxSetZero,1) = 0;
FB(idxSetZero,2) = 0;

% set additional target fluxes to zero -
if ~isempty(idxAdd)
	tempIdxFlux = network.additional.set_zero{idxAdd};
	FB(tempIdxFlux,1) = 0;
	FB(tempIdxFlux,2) = 0;
end

% transcription regulation to turn off genes -
idxGeneTxn = [];
if (nargin==3)
	regTxn = 0;
end
if (regTxn==1)
	[nameGeneTxn,idxGeneTxn,idxFluxTxn] = idx_regulation_txn(model,substrate);
	FB(idxFluxTxn,1) = 0;
	FB(idxFluxTxn,2) = 0;
end

% lethal genes -
try
	idxLethalBiomass = load('idx_KO_lethal_biomass.dat');
catch
	idxLethalBiomass = [];
	disp(['Warning: Lethal knockouts not loaded']);
end
% genes preventing target production -
try
	idxLethalTarget = load('idx_KO_lethal_target.dat');
catch
	idxLethalTarget = [];
	disp(['Warning: Lethal target knockouts not loaded']);
end

% genes associated with dead end rxts -
deadEndID = idx_dead_ends(model);
nDeadEnd = length(deadEndID);
for ix = 1:nDeadEnd
	currDeadEnd = deadEndID{ix};
	idxDeadEnd(1,ix) = find(strcmp(currDeadEnd,geneID)==1);
end

% genes essential to growth on glucose according to experiments -
isGlc = find(strcmp('M_glc_D_b',substrate)==1);
idxEssential = [];
if ~isempty(isGlc)
	eval(['idEssential = idx_essential_glc_',model,'();']);
	nEssential = length(idEssential);
	for ix = 1:nEssential
		currName = idEssential{ix};
		idxEssential(1,ix) = find(strcmp(currName,geneID)==1);
	end
end

% genes essential to growth on LB according to experiments -
% always excluding these genes
eval(['idLB = idx_essential_LB_',model,'();']);
nLB = length(idLB);
for ix = 1:nLB
	currID = idLB{ix};
	idxLB(1,ix) = find(strcmp(currID,geneID)==1);
end

% redundant genes -
idxRedundant = idx_redundant_genes(model);

% genes to exclude from search optimization -
idxExclude = [idxGeneTxn, idxLethalBiomass, idxLethalTarget, idxDeadEnd, idxEssential, idxLB, idxRedundant];
idxExclude = unique(idxExclude);
idxExclude = sort(idxExclude,'ascend');

% apply non-growth associated maintenance (NGAM) -
idxNGAM = network.NGAM.idx;
valNGAM = network.NGAM.val;
FB(idxNGAM,1) = valNGAM;

% index of biomass flux -
idxBiomass = network.flux.biomass;

% split the stochiometrix matrix - 
S = STM(idxBalancedSpecies,:);
SDB = STM(speciesBound(:,1),:);

% minimum growth rate -
minBio = 0;
% minimum target product -
minTarget = 0;

% ===================================================== %
% DATAFILE STRUCT -
% ===================================================== %
DF.MODEL = model;
DF.SUBSTRATE = substrate;
DF.TXN = regTxn;
DF.STM = full(STM);
DF.SPECIES_BOUND = speciesBound;
DF.FLUX_BOUNDS = FB;
DF.BALANCED_MATRIX = full(S);
DF.SPECIES_CONSTRAINTS = full(SDB);
DF.FLUX_BIOMASS = idxBiomass;
DF.FLUX_TARGET = target;
DF.NUM_SPECIES = nSpecies;
DF.NUM_RXT = nRxt;
DF.NUM_GENE = nGene;
DF.NUM_TF = nTF;
DF.EXCLUDE = idxExclude;
DF.MIN_BIOMASS = minBio;
DF.MIN_TARGET = minTarget;
DF.FLUX_WT = []; % Field for WT flux distribution
% ===================================================== %

return;
