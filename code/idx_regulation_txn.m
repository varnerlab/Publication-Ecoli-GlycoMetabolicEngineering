function [nameGeneTxn,idxGeneTxn,idxFluxTxn] = idx_regulation_txn(model,substrate,chromosome_TF)
% ------------------------------------------------------------------------------------- 
% idx_regulation_txn.m
% Returns the names and indices of the genes that are turned off for particular
% growth substrates.
% Boolean txn regulation model: [Covert et al. Integrating high-throughput
% and computational data elucidates bacterial networks. Nature 429 92-6 (2004)]
% model = string corresponding to network
% substrate = string array corresponding to nutrient substrates
% chromosome_TF = binary array of TF gene expression (optional)
% nameGeneTxn = names of metabolic genes turned off
% idxGeneTxn = indices of metabolic genes turned off
% idxFluxTxn = indices of metabolic fluxes to turn off
% ------------------------------------------------------------------------------------- 

if (nargin==2)
	eval(['listTF = ',model,'_list_TF_ID();']);
	nTF = length(listTF);
	chromosome_TF = ones(1,nTF);
end

% Get txn regulation logic -
eval(['logicTxn = ',model,'_map_TF(''',model,''',substrate,chromosome_TF);']);

% Collect genes to turn off -
nLogic = length(logicTxn);
nameGeneTxn = {};
for ix = 1:nLogic
	if (logicTxn{ix}{2}==0)
		nameGeneTxn{end+1} = logicTxn{ix}{1};
	end
end
nTxn = length(nameGeneTxn);

% Get list of all genes -
eval(['listGene = ',model,'_list_gene_ID();']);
nGene = length(listGene);

% Find indices of genes to turn off -
for ix = 1:nTxn
	tmpTxn = nameGeneTxn{ix};
	idxGeneTxn(ix) = find(strcmp(listGene,tmpTxn)==1);
end

% Get flux indices to turn off -
chromosome = ones(1,nGene);
chromosome(idxGeneTxn) = 0;
eval(['idxFluxTxn = ',model,'_map_gene_rxt(chromosome);']);
idxFluxTxn = find(idxFluxTxn==0);

return;
