function [popX,popFit,popBio] = initialize_pop(popsize,maxKO,DFIN,fitnessDriver)
% ------------------------------------------------------------------------------------- 
% initialize_pop.m
% Creates a population of popsize knockout cases. Each case contains no more 
% than nKO knockouts. The mutants must be able to grow.
% popsize = population size
% maxKO = maximum number of knockouts
% DFIN = DataFile containing flux/uptake bounds
% fitnessDriver = pointer to fitness function
% popX = matrix with size (popsize) X (number of reactions)
% popFit = vector of fitness values
% popBio = vector of biomass values
% ------------------------------------------------------------------------------------- 

% Number of genes -
nGene = DFIN.NUM_GENE;
nTF = DFIN.NUM_TF;

% Transcriptional regulation -
isTxn = DFIN.TXN;

% Initialize output -
if (isTxn==1)
	nChromosome = nGene + nTF;
else
	nChromosome = nGene;
end
popX = zeros(popsize,nChromosome);
popFit = zeros(popsize,1);
popBio = zeros(popsize,1);

% Exclude & include vectors -
idxALL = [1:nChromosome];
idxExclude = DFIN.EXCLUDE;
idxInclude = setdiff(idxALL,idxExclude);
nInclude = length(idxInclude);

counter = 0;
while (counter < popsize)

	% Pick random number of KOs -
	nKO = randperm(maxKO);
	nKO = nKO(1);

	% Pick indices to KO -
	idxRand = randperm(nInclude);
	idxKO = idxInclude(idxRand(1:nKO));

	% Define temporary chromosome -
	tempChromosome = ones(1,nChromosome);
	tempChromosome(1,idxKO) = 0;

	% Make sure mutant grows -
	[tempFit,tempBio,tempFlux] = feval(fitnessDriver,tempChromosome,DFIN);
	%disp(['Biomass: ',num2str(tempBio)]);

	% If grows add to population -
	if (tempBio > 0)
		popX((counter+1),idxKO) = 1;
		popFit((counter+1),1) = tempFit;
		popBio((counter+1),1) = tempBio;
		counter = counter + 1;
	end

end

return;
