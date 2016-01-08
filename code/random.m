function [newMutant] = random(oldMutant,pRandom,maxKO,DFIN,costDriver)
% ------------------------------------------------------------------------------------- 
% random.m
% Creates new random mutant with probability pRandom with no more than maxKO
% number of knockouts, otherwise will return old mutant.
% oldMutant = old mutant, binary vector
% pRandom = probability of generating new mutant
% maxKO = maximum number of knockouts
% DFIN = DataFile struct containing metabolic system parameters
% costDriver = handle to cost function
% newMutant = new mutant, binary vector
% ------------------------------------------------------------------------------------- 

if (rand < pRandom)

	% Generate new mutant -
	%disp(['	- Generating new random mutant']);
	[newMutant, startCost, startBio] = initialize_pop(1,maxKO,DFIN,costDriver);

else
	% Return old mutant -
	newMutant = oldMutant;
end

return;
