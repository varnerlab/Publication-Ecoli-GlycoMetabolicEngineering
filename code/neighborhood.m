function [newMutant] = neighborhood(mutant,DFIN)
% ------------------------------------------------------------------------------------- 
% neighborhood.m
% Function to generate a new mutant from a current mutant. A random number of
% knockouts are chosen and that number of knockout swaps are made.
% mutant = binary knockout vector, 1 = gene knocked out, 0 = gene available
% DFIN = DataFile struct containing metabolic system parameters
% newMutant = new knockout binary vector
% ------------------------------------------------------------------------------------- 

% Number of genes -
nGene = length(mutant);

% Exclude certain genes from mutation -
idxALL = [1:nGene];
idxExclude = DFIN.EXCLUDE;
% Include vector -
idxInclude = setdiff(idxALL,idxExclude);
nInclude = length(idxInclude);

% Initialize output -
newMutant = mutant;

% Number of knockout swaps to perform -
idxKO = find(mutant);
nKO = length(idxKO);
nSwap = randperm(nKO);
nSwap = nSwap(1);

for ix = 1:nSwap

	% Pick first knockout to swap -
	idxKO = find(newMutant);
	nKO = length(idxKO);
	idxSwapKO = randperm(nKO);
	idxSwapKO = idxSwapKO(1);
	idxSwapKO = idxKO(idxSwapKO);

	% Pick another knockout to swap -
	idxSwapNew = randperm(nInclude);
	idxSwapNew = idxSwapNew(1);
	idxSwapNew = idxInclude(idxSwapNew);

	% Perform swap -
	tempMutant = newMutant;
	newMutant(idxSwapNew) = tempMutant(idxSwapKO);
	newMutant(idxSwapKO) = tempMutant(idxSwapNew);

end

return;
