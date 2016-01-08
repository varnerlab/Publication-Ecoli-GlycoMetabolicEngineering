function [idxDeadEnds] = idx_dead_ends(model);
% ------------------------------------------------------------------------------------- 
% idx_dead_ends.m
% Returns vector of indices of genes associated with dead end rxts. These are rxts
% involving metabolites that participate in only one reaction.
% model = string corresponding to network model
% idxDeadEnds = gene/chromosome indices of genes associated with dead end rxts
% ------------------------------------------------------------------------------------- 

if (strcmp(model,'Ec_iAF1260_glyco')==1)
	% Palsson - iAF1260 + glyco
	idxDeadEnds = {
	'b2901',
	'b1463',
	'b1519',
	'b2563',
	'b3475',
	'b2697',
	'b0049',
	'b1876',
	'b0930',
	'b1866',
	'b3503',
	'b0775',
	'b1661',
	'b2810',
	'b0526',
	'b3575',
	'b3288',
	'b2052',
	'b0680',
	'b3559',
	'b3560',
	'b0428',
	'b2104',
	'b2514',
	'b0026',
	'b0642',
	'b2890',
	'b4129',
	'b2521',
	'b2114',
	'b2533',
	'b1059',
	'b1991',
	'b2033',
	'b1398',
	'b3385',
	'b1713',
	'b1714',
	'b0194',
	'b3591',
	'b1764',
	'b0893',
	'b1584',
	'b1719',
	'b0613',
	'b3384',
	'b1637',
	'b4258',
	};

elseif (strcmp(model,'Ec_iJR904_glyco')==1)
	idxDeadEnds = {
	'b2901',
	'b1519',
	'b2563',
	'b3806',
	'b0049',
	'b3425',
	'b3575',
	'b0583',
	'b2052',
	'b0428',
	'b2104',
	'b4196',
	'b3581',
	'b2533',
	'b1991',
	'b1398',
	'b1386',
	'b3385',
	'b1764',
	'b1584',
	'b3908',
	'b1656',
	'b1646',
	'b0368',
	'b2040',
	'b2530',
	'b3992',
	'b3990',
	'b3991',
	'b0423',
	'b4407',
	'b2036',
	'b2028',
	'b0207',
	'b3012',
	'b1519',
	'b0774',
	'b0312',
	'b3551',
	'b1249',
	'b3425',
	'b3500',
	'b0776',
	'b0160',
	};

elseif (strcmp(model,'Ec_core_glyco')==1)
	% Palsson - core metabolism + glyco
	idxDeadEnds = [];
end

return;
