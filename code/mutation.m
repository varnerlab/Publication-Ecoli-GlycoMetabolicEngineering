function [mutant] = mutation(child,pMutation,maxKO,DFIN)
% ------------------------------------------------------------------------------------- 
% mutation.m
% Performs mutation on each bit of child string with probability of pMutation.
% child = single binary vector
% pMutation = mutation probability
% maxKO = maximum number of KOs
% DFIN = DataFile struct containing metabolic system parameters
% mutant = mutated binary vector
% ------------------------------------------------------------------------------------- 

% Number of bits in child string -
numBits = length(child);

% Exclude certain fluxes from mutation -
idxAll = [1:numBits];
idxExclude = DFIN.EXCLUDE;
% Include vector -
idxInclude = setdiff(idxAll,idxExclude);
nInclude = length(idxInclude);

% Randomly perturb each bit -
mutant = child;
for idxBit = 1:nInclude
	if (rand < pMutation)
		% Make point mutation -
		mutant(1,idxInclude(idxBit)) = 1 - mutant(1,idxInclude(idxBit));
		nKO = sum(mutant);
		if (nKO > maxKO)
			% Undo mutation if we've reached max number of KO -
			mutant(1,idxInclude(idxBit)) = 1 - mutant(1,idxInclude(idxBit));
		end
	end
end

return;
