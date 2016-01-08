function [geneLogic] = Ec_iAF1260_glyco_map_TF(model,substrate,chromosome_TF)
% ------------------------------------------------------------------------------------- 
% Ec_iAF1260_glyco_map_TF.m
% Returns Boolean logic for metabolic genes given the state of TF genes.
% model = string network name
% substrate = string array growth medium substrates
% chromosome_TF = binary vector representing state of TF genes
% ------------------------------------------------------------------------------------- 

%------------------------------------------------------------------------------
% CHROMOSOME LOGIC -
b0064 = chromosome_TF(1);	% araC
b0338 = chromosome_TF(2);	% cynR
b0506 = chromosome_TF(3);	% allR
b0504 = chromosome_TF(4);	% allS
b0619 = chromosome_TF(5);	% dpiB
b0620 = chromosome_TF(6);	% dpiA
b1275 = chromosome_TF(7);	% cysB
b1334 = chromosome_TF(8);	% fnr
b3237 = chromosome_TF(9);	% argR
b3261 = chromosome_TF(10);	% fis
b3357 = chromosome_TF(11);	% crp
b3912 = chromosome_TF(12);	% cpxR
b3961 = chromosome_TF(13);	% oxyR
b4401 = chromosome_TF(14);	% arcA
b0313 = chromosome_TF(15);	% betI
b4063 = chromosome_TF(16);	% soxR
b4062 = chromosome_TF(17);	% soxS
b0683 = chromosome_TF(18);	% fur
b3868 = chromosome_TF(19);	% glnG
b0345 = chromosome_TF(20);	% lacI
b0889 = chromosome_TF(21);	% lrp
b3418 = chromosome_TF(22);	% malT
b3938 = chromosome_TF(23);	% metJ
b0346 = chromosome_TF(24);	% mhpR
b0676 = chromosome_TF(25);	% nagC
b1221 = chromosome_TF(26);	% narL
b0020 = chromosome_TF(27);	% nhaR
b0400 = chromosome_TF(28);	% phoR
b0399 = chromosome_TF(29);	% phoB
b1658 = chromosome_TF(30);	% purR
b2573 = chromosome_TF(31);	% rpoE
b3202 = chromosome_TF(32);	% rpoN
b2741 = chromosome_TF(33);	% rpoS
b4393 = chromosome_TF(34);	% trpR
b1323 = chromosome_TF(35);	% tyrR
b0113 = chromosome_TF(36);	% pdhR
b0695 = chromosome_TF(37);	% kdpD
b0694 = chromosome_TF(38);	% kdpE
b2837 = chromosome_TF(39);	% galR
b2151 = chromosome_TF(40);	% galS
b4396 = chromosome_TF(41);	% rob
b3973 = chromosome_TF(42);	% birA
b4390 = chromosome_TF(43);	% nadR
b0564 = chromosome_TF(44);	% appY
b0993 = chromosome_TF(45);	% torS
b0995 = chromosome_TF(46);	% torR
b1594 = chromosome_TF(47);	% mlc
b0080 = chromosome_TF(48);	% cra
b1187 = chromosome_TF(49);	% fadR
b1384 = chromosome_TF(50);	% feaR
b1385 = chromosome_TF(51);	% feaB
b1531 = chromosome_TF(52);	% marA
b1620 = chromosome_TF(53);	% malI
b1827 = chromosome_TF(54);	% kdgR
b3438 = chromosome_TF(55);	% gntR
b2087 = chromosome_TF(56);	% gtR1
b2090 = chromosome_TF(57);	% gtR2
b3934 = chromosome_TF(58);	% cytR
b2219 = chromosome_TF(59);	% atoS
b2220 = chromosome_TF(60);	% atoC
b3423 = chromosome_TF(61);	% glpR
b3405 = chromosome_TF(62);	% ompR
b2364 = chromosome_TF(63);	% dsdC
b2405 = chromosome_TF(64);	% xapR
b2479 = chromosome_TF(65);	% gcvR
b2537 = chromosome_TF(66);	% hcaR
b2731 = chromosome_TF(67);	% fhlA
b2805 = chromosome_TF(68);	% fucR
b2839 = chromosome_TF(69);	% lysR
b3118 = chromosome_TF(70);	% tdcA
b3119 = chromosome_TF(71);	% tdcR
b3569 = chromosome_TF(72);	% xylR
b3574 = chromosome_TF(73);	% yiaJ
b3601 = chromosome_TF(74);	% mtlR
b3668 = chromosome_TF(75);	% uhpB
b3669 = chromosome_TF(76);	% uhpA
b3753 = chromosome_TF(77);	% rbsR
b3773 = chromosome_TF(78);	% ilvY
b3828 = chromosome_TF(79);	% metR
b3906 = chromosome_TF(80);	% rhaR
b3905 = chromosome_TF(81);	% rhaS
b4018 = chromosome_TF(82);	% iclR
b4089 = chromosome_TF(83);	% rpiR
b4116 = chromosome_TF(84);	% adiY
b4118 = chromosome_TF(85);	% melR
b4125 = chromosome_TF(86);	% dcuS
b4124 = chromosome_TF(87);	% dcuR
b4133 = chromosome_TF(88);	% cadC
b4241 = chromosome_TF(89);	% treR
b4264 = chromosome_TF(90);	% idnR
b0034 = chromosome_TF(91);	% caiF
b1987 = chromosome_TF(92);	% cbl
b2553 = chromosome_TF(93);	% glnB
b0167 = chromosome_TF(94);	% glnD
b2707 = chromosome_TF(95);	% srlR
b2706 = chromosome_TF(96);	% gutM
b0162 = chromosome_TF(97);	% cdaR
b2808 = chromosome_TF(98);	% gcvA
b2980 = chromosome_TF(99);	% glcC
b1988 = chromosome_TF(100);	% nac
b3743 = chromosome_TF(101);	% asnC

%------------------------------------------------------------------------------------------------
% GROWTH MEDIUM -
% get minimal media -
eval(['network = ',model,'_info();']);
allMedia = network.MM;
% add substrates to media -
nSubstrate = length(substrate);
for ix = 1:nSubstrate
	allMedia{end+1} = substrate{ix};
end
% get boundary species names -
eval(['boundaryID = ',model,'_list_species_ID_boundary();']);
nBoundary = length(boundaryID);
% define media -
for ix = 1:nBoundary
	currBoundary1 = boundaryID{ix};
	currBoundary2 = currBoundary1(1:(end-2));
	eval([currBoundary2,'_e = 0;']);
	isMedia = find(strcmp(currBoundary1,allMedia)==1);
	if ~isempty(isMedia)
		eval([currBoundary2,'_e = 10;']);
	end
end

LB_media = 0;
rich_medium = 0;
heat_shock = 0;
stress = 0;
stringent = 0;
oxidative_stress = 0;
high_osmolarity = 0;
dipyridyl = 0;
salicylate = 0;
high_NAD = 0;
pH = 7.2;
growth = 1;
M_btn_e = 0;

%------------------------------------------------------------------------------
% Surplus metabolites -
% For important central metabolites, values of connected fluxes to approximate
% concentration qualitatively are used.
% FBP = (M_o2_e > 0); 	% b4232
% Surplus_FDP = ( (~(FBP > 0) && ~(TKT2 > 0 || TALA > 0 || PGI > 0)) || M_fru_e > 0);
% Surplus_PYR = ( ~((ME2 > 0 || ME1 > 0) && ~(GLCpts > 0 || PYK > 0 || PFK > 0 || LDH_D < 0 || LDH_D2 > 0 || SUCCt2_2 > 0 || SUCCt2_3 > 0)));
% ExuR = (~(GUI1 > 0) && ~(GUI2 > 0) && ~(MANAO > 0) && ~(TAGURr > 0) && ~(GUI1 < 0) && ~(GUI2 < 0) && ~(MANAO < 0) && ~(TAGURr < 0)); 		% b3094
% UxuR = (~(MANAO > 0) && ~(GUI1 > 0) && ~(MANAO < 0) && ~(GUI1 < 0)); 	% b4324
% DeoR = (~((PPM2>0) || (PPM2<0))); 		% b0840

%------------------------------------------------------------------------------
% TXN FACTOR ACTIVATION LOGIC -

% Higher level CRP regulation -
CRP_noGLC = (~(M_glcn_e > 0 || M_glc_D_e > 0));
CRP_noLAC = (~((M_glcn_e > 0) || (M_glc_D_e > 0) || (M_arab_L_e > 0) || (M_xyl_D_e > 0) || (M_rib_D_e > 0) || (M_mal_L_e > 0) || (M_glyc_e > 0) || (M_sbt_D_e > 0) || (M_lac_D_e > 0)));
CRP_noRIB = (~((M_glcn_e > 0) || (M_glc_D_e > 0) || (M_arab_L_e > 0) || (M_xyl_D_e > 0) || (M_rib_D_e > 0)));
CRP_noGL = (~((M_glcn_e > 0) || (M_glc_D_e > 0) || (M_arab_L_e > 0) || (M_xyl_D_e > 0) || (M_rib_D_e > 0) || (M_mal_L_e > 0) || (M_glyc_e > 0)));
CRP_GLCN = (M_glcn_e > 0);
CRP_noSUCC = (~((M_glcn_e > 0) || (M_glc_D_e > 0) || (M_arab_L_e > 0) || (M_xyl_D_e > 0) || (M_rib_D_e > 0) || (M_mal_L_e > 0) || (M_glyc_e > 0) || (M_sbt_D_e > 0) || (M_lac_D_e > 0) || (M_man_e > 0) || (M_succ_e > 0)));
CRP_noMAL = (~((M_glcn_e > 0) || (M_glc_D_e > 0) || (M_arab_L_e > 0) || (M_xyl_D_e > 0) || (M_rib_D_e > 0) || (M_mal_L_e > 0)));
CRP_noMAN = (~((M_glcn_e > 0) || (M_glc_D_e > 0) || (M_arab_L_e > 0) || (M_xyl_D_e > 0) || (M_rib_D_e > 0) || (M_mal_L_e > 0) || (M_glyc_e > 0) || (M_sbt_D_e > 0) || (M_lac_D_e > 0) || (M_man_e > 0)));
CRP_noXYL = (~((M_glcn_e > 0) || (M_glc_D_e > 0) || (M_arab_L_e > 0) || (M_xyl_D_e > 0)));

AraC = (M_arab_L_e > 0)&&(b0064);
CynR = (M_cynt_e > 0)&&(b0338);
AllR = (0)&&(b0506);
AllS = (~(M_o2_e > 0) && ~(AllR) && ~(M_nh4_e > 0))&&(b0504); %also called ybbS
DpiB = (M_cit_e > 0)&&(b0619); % also called CitA
DpiA = (DpiB)&&(b0620); % also called CitB
CysB = (~(M_cys_L_e > 0))&&(b1275);
Fnr = (~(M_o2_e > 0))&&(b1334);
ArgR = (M_arg_L_e > 0)&&(b3237);
Fis = (growth > 0)&&(b3261);
Crp = (CRP_noGLC)&&(b3357);
CpxR = (stress)&&(b3912);
OxyR = ((M_h2o2_e > 0) || (M_o2_e > 0))&&(b3961);
ArcA = (Fnr && ~OxyR  && ~(M_o2_e > 0))&&(b4401);
BetI = (~(ArcA) || (M_chol_e > 0))&&(b0313);
SoxR = ((M_h2o2_e > 0) || (oxidative_stress))&&(b4063);
SoxS = (SoxR)&&(b4062);
Fur = ((M_fe2_e > 0) || (~(Fnr || ArcA)))&&(b0683);
GlnG = (~(M_nh4_e > 2))&&(b3868);
LacI = (~(M_lcts_e > 0))&&(b0345);
Lrp = (~(M_leu_L_e >0))&&(b0889);
MalT = 	((M_malt_e > 0) || (M_malttr_e > 0) || (M_maltttr_e > 0) || (M_malthx_e > 0) || (M_maltpt_e >0))&&(b3418);
MetJ = (M_met_L_e > 0)&&(b3938);
MhpR = (M_3hpppn_e > 0)&&(b0346);
NagC = (~(M_acgam_e > 0))&&(b0676); % NagC = (~((M_acgam_e > 0) || (AGDC > 0))); 	% b0676
NarL = ((~Fnr) && (~ArcA)  && ((M_no3_e > 0) || (M_no2_e > 0)))&&(b1221);
NhaR = (M_na1_e > 0)&&(b0020);
PhoR = (M_pi_e < 0.004E-3)&&(b0400);
PhoB = (PhoR)&&(b0399);
PurR = ((M_hxan_e > 0) || (M_gua_e > 0))&&(b1658);
RpoE = (~(OxyR) && (heat_shock))&&(b2573);
RpoN = (1)&&(b3202);
RpoS = (~(growth > 0))&&(b2741);
TrpR = (M_trp_L_e > 0)&&(b4393);
TyrR = (((M_trp_L_e > 0) || (M_tyr_L_e > 0) || (M_phe_L_e > 0)) || ~(M_o2_e > 0))&&(b1323);
PdhR = ((~(ArcA) || ~(Fnr)))&&(b0113); % (~(Surplus_PYR) || (~(ArcA) || ~(Fnr))); 	% b0113
KdpD = (~(M_k_e > 1))&&(b0695);
KdpE = (KdpD)&&(b0694);
GalR = (~(M_lcts_e > 0) || ~(M_gal_e > 0))&&(b2837);
GalS = (~(M_lcts_e > 0) || ~(M_gal_e > 0))&&(b2151);
Rob = (dipyridyl)&&(b4396);
BirA = (M_btn_e > 0)&&(b3973);
NadR = (high_NAD)&&(b4390);
AppY = ((~DpiA) && ~(M_o2_e > 0))&&(b0564);
TorS = ((M_tmao_e > 0) || ~(M_o2_e > 0))&&(b0993);
TorR = (TorS)&&(b0995);
Mlc = (~(M_glc_D_e > 0))&&(b1594);
% Cra = (~(Surplus_FDP)); 					% b0080 also known as FruR
FadR = ((M_glc_D_e > 0) || ~(M_ac_e > 0))&&(b1187);
FeaR = (Crp)&&(b1384);
FeaB = (FeaR)&&(b1385);
MarA = ((~ArcA || ~Fnr) || OxyR || (salicylate))&&(b1531);
MalI = (~(M_malt_e > 0))&&(b1620);
KdgR = ((ArcA) && (Fnr) && ~(M_2ddglcn_e > 0))&&(b1827); % ((ArcA) && (Fnr) && (~(M_2ddglcn_e > 0) && ~(MNNH > 0) && ~(ALTRH > 0)));
GntR = (~(M_glcn_e > 0))&&(b3438);
GatR = (~(M_galt_e > 0))&&(b2087)&&(b2090);
CytR = (M_cytd_e > 0)&&(b3934);
AtoS = (M_acac_e > 0)&&(b2219);
AtoC = (AtoS)&&(b2220);
GlpR = (~(M_glyc_e > 0) && (M_o2_e > 0))&&(b3423);
OmpR = (high_osmolarity)&&(b3405);
DsdC = (M_ser_D_e > 0)&&(b2364);
XapR = (M_xtsn_e > 0)&&(b2405);
GcvR = (~(M_gly_e > 0))&&(b2479);
HcaR = (M_pppn_e > 0)&&(b2537);
FhlA = ((~(M_no3_e > 1)) && (~(M_no2_e > 1)) && (~(M_tmao_e > 1)) && (~(M_dmso_e > 1)) && (M_for_e > 1))&&(b2731);
FucR = (M_fuc_L_e > 0)&&(b2805);
LysR = (~(M_lys_L_e > 0))&&(b2839);
TdcA = ((M_thr_L_e > 0) && (M_ser_L_e > 0) && (M_val_L_e > 0) && (M_ile_L_e > 0) && ~(M_o2_e > 0))&&(b3118);
TdcR = ((M_thr_L_e > 0) && (M_ser_L_e > 0) && (M_val_L_e > 0) && (M_ile_L_e > 0) && ~(M_o2_e > 0))&&(b3119);
XylR = (M_xyl_D_e > 0)&&(b3569);
YiaJ = (~(M_fuc_L_e > 0))&&(b3574);
MtlR = (~(M_mnl_e > 0))&&(b3601);
UhpB = (M_g6p_e > 0)&&(b3668);
UhpA = (UhpB)&&(b3669);
RbsR = (~(M_rib_D_e > 0))&&(b3753);
IlvY = (~(M_val_L_e > 0 ))&&(b3773);
MetR = (~(M_met_L_e > 0))&&(b3828);
RhaR = (M_rmn_e > 0)&&(b3906);
RhaS = (RhaR)&&(b3905);
IclR = (FadR)&&(b4018);
RpiR = (~(M_rib_D_e > 0))&&(b4089);
AdiY = ((pH < 7) && (~(M_o2_e > 0)) && ~(rich_medium))&&(b4116);
MelR = ((M_melib_e > 0) || (M_melib_e > 0 && Crp))&&(b4118);
DcuS = ((M_succ_e > 1) || (M_asp_L_e > 1) || (M_fum_e > 1) || (M_mal_L_e > 1))&&(b4125);
DcuR = (DcuS)&&(b4124);
CadC = (M_lys_L_e > 0)&&(b4133);
TreR = (~(M_tre_e > 0))&&(b4241);
IdnR = ((M_idon_L_e > 0) || (M_5dglcn_e > 0))&&(b4264);
CaiF = ((Fnr && ArcA) || Crp && ~NarL)&&(b0034);
Cbl = (~((M_so4_e > 0) || (M_cys_L_e > 0 )) && CysB)&&(b1987);
GlnB = (Lrp)&&(b2553);
GlnD = (Lrp)&&(b0167);
SrlR = (Fnr && ~(M_sbt_D_e > 0))&&(b2707); % also known as GutR
GutM = (1)&&(b2706);
SdaR = ((M_glcr_e > 0) || (M_galct_D_e > 0))&&(b0162);
GcvA = (~GcvR)&&(b2808);
GlcC = ((M_ac_e > 0) || (M_glyclt_e > 0))&&(b2980);
FadR2 = (~(M_ttdca_e > 0 || M_hdca_e > 0 || M_ocdca_e > 0))&&(b1187);
NRI_low = (GlnG && GlnB && GlnD);
NRI_hi = (NRI_low && RpoN);
Nac = (NRI_low && RpoN)&&(b1988);
AsnC = (~(M_asn_L_e > 0) && NRI_hi)&&(b3743);

%------------------------------------------------------------------------------
% METABOLIC ENZYME REGULATION LOGIC -

geneLogic = {
{'b0002', (~(M_thr_L_e > 0 || M_ile_L_e > 0)) }, 	% thrA
{'b0003', (~(M_thr_L_e > 0 || M_ile_L_e > 0)) }, 	% thrB
{'b0004', (~(M_thr_L_e > 0 || M_ile_L_e > 0)) }, 	% thrC
{'b0019', ((NhaR) || (RpoS)) }, 	% nhaA
{'b0031', (~(M_lys_L_e > 0)) }, 	% dapB
{'b0032', (~ArgR) }, 	% carA
{'b0033', ((~ArgR) && OxyR) }, 	% carB
{'b0036', (Crp && CaiF) }, 	% caiD
{'b0038', (Crp && CaiF) }, 	% caiB
{'b0040', (Crp && CaiF) }, 	% caiT
{'b0052', (1) }, 	% pdxA {'b0052', (RpoE) }, 	% pdxA
{'b0061', (AraC || (AraC && Crp)) }, 	% araD
{'b0062', (AraC || (AraC && Crp)) }, 	% araA
{'b0063', (AraC || (AraC && Crp)) }, 	% araB
{'b0068', (M_o2_e > 0) }, 	% sfuA
{'b0071', (~(M_leu_L_e > 0) || Lrp) }, 	% leuD
{'b0072', (~(M_leu_L_e > 0) || Lrp) }, 	% leuC
{'b0073', (~(M_leu_L_e > 0) || Lrp) }, 	% leuB
{'b0074', (~(M_leu_L_e > 0) || Lrp) }, 	% leuA
{'b0077', (Lrp && ~(M_leu_L_e > 0)) }, 	% ilvI
{'b0078', (Lrp && ~(M_leu_L_e > 0)) }, 	% ilvH
{'b0104', (~((M_gln_L_e > 0) || (M_gua_e > 0))) }, 	% guaC
{'b0112', (~(TyrR && ((M_phe_L_e > 0) || (M_tyr_L_e > 0) || (M_trp_L_e > 0)))) }, 	% aroP
{'b0114', ((~(PdhR) || Fis) && (~(ArcA && Fnr))) }, 	% aceE
{'b0115', ((~(PdhR) || Fis) && (~(ArcA && Fnr))) }, 	% aceF
{'b0116', (~(ArcA && Fnr)) }, 	% lpdA
{'b0118', (~(ArcA)) }, 	% acnB
{'b0124', (~Crp) }, 	% gcd
{'b0125', (Crp) }, 	% hpt
{'b0133', 1 }, 	% panC
{'b0180', (~(stringent) || CpxR || RpoE || FadR2) }, 	% fabZ
{'b0197', (~MetJ) }, 	% yaeC
{'b0198', (~MetJ) }, 	% yaeE
{'b0199', (~MetJ) }, 	% abc
{'b0207', (1) }, 	% yafB
{'b0221', (~(FadR2) || ~(ArcA)) }, 	% fadF
{'b0242', 1 }, 	% proB
{'b0273', (~ArgR) }, 	% argF
{'b0312', (~(ArcA || BetI)) }, 	% betB
{'b0314', (~BetI) }, 	% betT
{'b0331', (M_ppa_e > 0) }, 	% prpB
{'b0333', (M_ppa_e > 0) }, 	% prpC
{'b0334', (M_ppa_e > 0) }, 	% prpD
{'b0335', (M_ppa_e > 0) }, 	% prpE
{'b0336', ((~(PurR) || (NRI_hi)) && OxyR) }, 	% codB
{'b0337', (~(PurR) || NRI_hi) }, 	% codA
{'b0340', (CynR) }, 	% cynS
{'b0341', (M_cynt_e > 0) }, 	% cynX
{'b0343', (CRP_noGLC && ~(LacI)) }, 	% lacY
{'b0344', (CRP_noGLC && ~(LacI)) }, 	% lacZ
{'b0347', (MhpR) }, 	% mhpA
{'b0348', (MhpR) }, 	% mhpB
{'b0349', (MhpR) }, 	% mhpC
{'b0350', (MhpR) }, 	% mhpD
{'b0351', (MhpR) }, 	% mhpD
{'b0352', (MhpR) }, 	% mhpE
{'b0365', (Cbl && CysB) }, 	% tauA
{'b0366', (Cbl && CysB) }, 	% tauB
{'b0367', (Cbl && CysB) }, 	% tauC
{'b0368', (Cbl && CysB) }, 	% tauD
{'b0388', (~((TyrR && (M_tyr_L_e > 0)) || (TyrR && (M_tyr_L_e > 0) && TrpR) )) }, 	% aroL
{'b0401', (~(M_o2_e > 0)) }, 	% brnQ
{'b0403', (MalT) }, 	% malZ
{'b0428', (~(ArcA || Fnr)) }, 	% cyoE
{'b0429', (~(ArcA || Fnr)) }, 	% cyoD
{'b0430', (~(ArcA || Fnr)) }, 	% cyoC
{'b0431', (~(ArcA || Fnr)) }, 	% cyoB
{'b0432', (~(ArcA || Fnr)) }, 	% cyoA
{'b0505', (~ AllR) }, 	% allA
{'b0507', (~ AllR) }, 	% gcl
{'b0509', (~ AllR) }, 	% glxR
{'b0512', (~ AllR) }, 	% allB
{'b0514', (~ AllR) }, 	% glxK
{'b0516', (AllS) }, 	% allC
{'b0522', (~(PurR)) }, 	% purK
{'b0523', (~(PurR)) }, 	% purE
{'b0583', (~(Fur)) }, 	% entD
{'b0593', (~(Fur)) }, 	% entC
{'b0594', (~(Fur)) }, 	% entE
{'b0595', (~(Fur)) }, 	% entB
{'b0596', (~(Fur)) }, 	% entA
{'b0612', (DpiA && (~(M_o2_e > 0))) }, 	% citT
{'b0615', (DpiA) }, 	% citF
{'b0616', (DpiA) }, 	% citE
{'b0617', (DpiA) }, 	% citD
{'b0621', (1) }, 	% dcuC
{'b0652', (~(M_glc_D_e > 0)) }, 	% gltL
{'b0653', (~(M_glc_D_e > 0) || ~(ArcA && Fnr)) }, 	% gltK
{'b0654', (~(M_glc_D_e > 0)) }, 	% gltJ
{'b0655', (~(M_glc_D_e > 0)) }, 	% gltI
{'b0677', (~(NagC)) }, 	% nagA
{'b0678', (~(NagC) || (M_gam_e > 0)) }, 	% nagB
{'b0679', (~(NagC)) }, 	% nagE
{'b0696', (KdpE) }, 	% kdpC
{'b0697', (KdpE) }, 	% kdpB
{'b0698', (KdpE) }, 	% kdpA
{'b0720', (1) }, 	% gltA
{'b0721', (~((ArcA) && (Fnr)) && ((Crp) || (Fis))) }, 	% sdhC
{'b0722', (~((ArcA) && (Fnr)) && ((Crp) || (Fis))) }, 	% sdhD
{'b0723', (~((ArcA) && (Fnr)) && ((Crp) || (Fis))) }, 	% sdhA
{'b0724', (~((ArcA) || (Fnr)) || (Crp) || (Fis)) }, 	% sdhB
{'b0726', (~(ArcA)) }, 	% sucA
{'b0727', (~(ArcA)) }, 	% sucB
{'b0728', (1) }, 	% sucC
{'b0729', (1) }, 	% sucD
{'b0733', (~(M_o2_e > 0)) }, 	% cydA
{'b0734', (~(M_o2_e > 0)) }, 	% cydB
{'b0754', ( ~(((M_phe_L_e > 0) || (M_trp_L_e > 0)) && TyrR)) }, 	% aroG
{'b0755', (~(ArcA && Fnr)) }, 	% gpmA
{'b0757', (~(M_glc_D_e > 0) && (~(GalR || GalS)) || ~(Rob)) }, 	% galK
{'b0758', (~(M_glc_D_e > 0) && (~(GalR || GalS)) || ~(Rob)) }, 	% galT
{'b0759', (~(M_glc_D_e > 0) && (~(GalR || GalS)) || ~(Rob)) }, 	% galE
{'b0774', (~(BirA)) }, 	% bioA
{'b0775', (~(BirA)) }, 	% bioB
{'b0776', (~(BirA) && (M_o2_e > 0)) }, 	% bioF
{'b0778', (~(BirA) && (M_o2_e > 0)) }, 	% bioD
{'b0828', (1) }, 	% ybiK
{'b0854', (~(ArcA && Fnr)) }, 	% potF
{'b0864', (~(M_o2_e > 0)) }, 	% artP
{'b0871', ((~(growth > 0)) && (RpoS)) }, 	% poxB
{'b0888', (1) }, 	% trxB
{'b0894', (Fnr && ~NarL) }, 	% dmsA
{'b0895', (Fnr && ~NarL) }, 	% dmsB
{'b0896', (~(NarL)) }, 	% dmsC
{'b0902', (~(M_o2_e > 0) && (Crp || ~(NarL))) }, 	% pflA
{'b0903', (~(M_o2_e > 0) && (Crp || ~(NarL))) }, 	% pflB
{'b0904', (~(M_o2_e > 0) && (Crp || ~(NarL))) }, 	% focA
{'b0907', (Lrp || (~(Crp))) }, 	% serC
{'b0931', (~(NadR)) }, 	% pncB
{'b0945', ((~(M_csn_e > 0)) || (M_gua_e > 0) || ~PurR) }, 	% pyrD
{'b0954', (~(stringent) || CpxR || RpoE || FadR2) }, 	% fabA
{'b0963', (1) }, 	% mgsA
{'b0972', ((ArcA || Fnr) && (AppY)) }, 	% hyaA
{'b0973', ((ArcA || Fnr) && (AppY)) }, 	% hyaB
{'b0974', (~(M_o2_e > 0)) }, 	% hyaC
{'b0996', (TorR || ~(NarL)) }, 	% torC
{'b0997', (TorR || ~(NarL)) }, 	% torA
{'b1014', ((M_pro_L_e > 0) || Crp || Nac) }, 	% putA
{'b1015', ((M_pro_L_e > 0) || Crp || Nac) }, 	% putP
{'b1033', (~(Fnr || ArcA)) }, 	% ycdW
{'b1062', ((~(M_csn_e > 0)) || (M_gua_e > 0) || ~PurR) }, 	% pyrC
{'b1091', (~(stringent)) }, 	% fabH
{'b1092', (~(stringent)) }, 	% fabD
{'b1093', (~(stringent) || CpxR || RpoE || FadR2) }, 	% fabG
{'b1095', (~(stringent) || CpxR || RpoE || FadR2) }, 	% fabF
% {'b1101', (~(Mlc) || ~(Cra)) }, 	% ptsG
{'b1109', (~(Fnr)) }, 	% ndh
{'b1131', (~(PurR)) }, 	% purB
{'b1136', (1) }, 	% icdA
{'b1189', ((M_ala_L_e > 0) && ~Crp) }, 	% dadA
{'b1190', (((M_ala_L_e > 0) || (M_ala_D_e > 0)) && Crp) }, 	% dadX
{'b1197', (RpoS) }, 	% treA
{'b1207', (~PurR) }, 	% prsA
{'b1210', 1 }, 	% hemA
{'b1223', (Fnr || NarL) }, 	% narK
{'b1224', (Fnr && NarL) }, 	% narG
{'b1225', (Fnr && NarL) }, 	% narH
{'b1226', (Fnr && NarL) }, 	% narJ
{'b1227', (Fnr && NarL) }, 	% narI
% {'b1241', (~(M_o2_e > 0) && (~((M_o2_e > 0) && (Cra))) && ((Fis) || ~(NarL) || (RpoS))) }, 	% adhE
{'b1260', (~TrpR) }, 	% trpA
{'b1261', (~TrpR) }, 	% trpB
{'b1262', (~TrpR) }, 	% trpC
{'b1263', (~TrpR) }, 	% trpD
{'b1264', (~TrpR) }, 	% trpE
{'b1276', (1) }, 	% acnA
{'b1288', (~(stringent) || CpxR || RpoE || FadR2) }, 	% fabI
{'b1297', (1) }, 	% ycjK
{'b1385', (FeaB) }, 	% FeaB (from TFs above)
{'b1386', (FeaB) }, 	% tynA
{'b1415', (1) }, 	% aldA
{'b1474', (NarL) }, 	% fdnG
{'b1475', (Fnr || NarL) }, 	% fdnH
{'b1476', (NarL) }, 	% fdnI
{'b1493', ((~(growth > 0)) || (pH < 4)) }, 	% gadB
{'b1519', (~(growth > 0)) }, 	% tam
% {'b1521', (~ExuR) }, 	% uxaB
{'b1524', ((~(M_glc_D_e > 0) || ((M_nh4_e > 0) && ~Crp))) }, 	% yneH
{'b1611', (MarA || Rob || SoxS && (~(ArcA))) }, 	% fumC
{'b1612', (~(ArcA || Fnr)) }, 	% fumA
{'b1613', (1) }, 	% manA
{'b1621', ((MalT && Crp) || MalT) }, 	% malX
{'b1622', (~(MalI)) }, 	% malY
{'b1623', ((M_ade_e > 0) || (M_hxan_e > 0)) }, 	% add
{'b1646', (~(growth > 0) && ~Fnr) }, 	% sodC
{'b1656', (~(M_o2_e > 0)) }, 	% sodB
% {'b1676', (~(Cra) || ~(M_o2_e > 0)) }, 	% pykF
% {'b1702', ((Cra) && (M_o2_e > 0)) }, 	% pps
{'b1704', (~TrpR) }, 	% aroH
{'b1732', (~(growth > 0)) }, 	% katE
{'b1744', ((~(growth > 0) && RpoS) || (NRI_hi && RpoN)) }, 	% astE
{'b1745', ((~(growth > 0) && RpoS) || (NRI_hi && RpoN)) }, 	% astB
{'b1746', ((~(growth > 0) && RpoS) || (NRI_hi && RpoN)) }, 	% astD
{'b1747', ((~(growth > 0) && RpoS) || (NRI_hi && RpoN)) }, 	% astA
{'b1748', ((~(growth > 0) && RpoS) || (NRI_hi && RpoN)) }, 	% astC
{'b1761', (~((Nac) || (M_glu_L_e > 0))) }, 	% gdhA
% {'b1779', (~(M_o2_e > 0)) }, 	% gapA
{'b1805', (~(FadR2)) }, 	% fadD
{'b1814', ((M_gly_e > 0 || M_leu_L_e > 0 || ~(M_o2_e > 0)) && ((~Lrp) || (Lrp && M_leu_L_e > 0))) }, 	% sdaA
{'b1817', ((CRP_noLAC) || (~(Mlc))) }, 	% manX
{'b1818', ((CRP_noLAC) || (~(Mlc))) }, 	% manY
{'b1819', ((CRP_noLAC) || (~(Mlc))) }, 	% manZ
{'b1849', (~(PurR)) }, 	% purT
{'b1850', ((1) || (~(GntR))) }, 	% eda
{'b1851', (~ (GntR)) }, 	% edd
{'b1896', (RpoS) }, 	% otsA
{'b1897', (RpoS) }, 	% otsB
%{'b1898', (AraC || (AraC && Crp)) }, 	% araH_2
%{'b1899', (AraC || (AraC && Crp)) }, 	% araH_1
{'b1900', (AraC || (AraC && Crp)) }, 	% araG
{'b1901', (AraC || (AraC && Crp)) }, 	% araF
{'b1907', (~(TyrR && (M_tyr_L_e > 0))) }, 	% tyrP
{'b1991', ((M_cbi_e > 0) || (Fnr)) }, 	% cobT
{'b1992', (M_cbi_e > 0) }, 	% cobS
{'b1993', ((M_cbi_e > 0) || (Fnr)) }, 	% cobU
{'b2021', 1 }, 	% hisC
{'b2040', (M_o2_e > 0) }, 	% rfbD
{'b2066', (~((M_thym_e > 0) || (M_csn_e > 0) || (M_ura_e > 0))) }, 	% udk
{'b2091', (~(GatR)) }, 	% gatD
{'b2092', (~(GatR)) }, 	% gatC
{'b2093', (~(GatR)) }, 	% gatB
{'b2094', (~(GatR)) }, 	% gatA
{'b2095', (~(GatR)) }, 	% gatZ
{'b2096', (~(GatR)) }, 	% gatY
{'b2097', ((M_pyr_e > 0) || (M_lac_D_e > 0) && ~(M_glc_D_e > 0)) }, 	% fbaB
{'b2129', (~(ArcA && Fnr)) }, 	% yehX
{'b2143', (Crp && ~(CytR)) }, 	% cdd
{'b2148', (Crp && ~(GalS)) }, 	% mglC
{'b2149', (Crp && ~(GalS)) }, 	% mglA
{'b2150', (Crp && ~(GalS)) }, 	% mglB
{'b2153', 1 }, 	% folE
% {'b2167', (~(Cra)) }, 	% fruA
% {'b2168', (~(Cra)) }, 	% fruK
% {'b2169', (~(Cra)) }, 	% fruB
{'b2210', (~ArcA) }, 	% mqo
{'b2221', (AtoC) }, 	% atoD
{'b2222', (AtoC) }, 	% atoA
{'b2223', (AtoC) }, 	% atoE
{'b2224', (AtoC) }, 	% atoB
% {'b2232', ((M_o2_e > 0) && Crp) }, 	% ubiG
{'b2234', (~(Fnr)) }, 	% nrdA
{'b2235', (~(Fnr)) }, 	% nrdB
{'b2239', ((~GlpR || Fnr) && Crp) }, 	% glpQ
{'b2240', (~(GlpR) && Crp) }, 	% glpT
{'b2241', (CRP_noRIB && (Fnr || ArcA) && (~(GlpR))) }, 	% glpA
{'b2242', (CRP_noRIB && (Fnr || ArcA) && (~(GlpR))) }, 	% glpB
{'b2243', (CRP_noRIB && (Fnr || ArcA) && (~(GlpR))) }, 	% glpC
{'b2276', (1) }, 	% nuoN
{'b2277', (1) }, 	% nuoM
{'b2278', (1) }, 	% nuoL
{'b2279', (1) }, 	% nuoK
{'b2280', (1) }, 	% nuoJ
{'b2281', (1) }, 	% nuoI
{'b2282', (1) }, 	% nuoH
{'b2283', (1) }, 	% nuoG
{'b2284', (1) }, 	% nuoF
{'b2285', (1) }, 	% nuoE
{'b2286', (1) }, 	% nuoC
{'b2287', (1) }, 	% nuoB
{'b2288', (1) }, 	% nuoA
{'b2296', (Fnr && ArcA) }, 	% ackA
{'b2297', (1) }, 	% pta
{'b2306', (~(M_lys_L_e > 0)) }, 	% hisP
{'b2307', (~(M_lys_L_e > 0)) }, 	% hisM
{'b2308', (~(M_lys_L_e > 0) && ~(ArcA && Fnr)) }, 	% hisQ
{'b2309', ((~ArcA || ~Fnr) || OxyR && ~(M_lys_L_e > 0)) }, 	% hisJ
{'b2310', (~(M_lys_L_e > 0)) }, 	% argT
{'b2311', (~(PurR)) }, 	% ubiX
{'b2312', (~(PurR)) }, 	% purF
{'b2323', (~(stringent) || CpxR || RpoE || FadR2) }, 	% fabB
{'b2344', (~(Crp || FadR || OmpR) || ~(ArcA)) }, 	% fadL
{'b2366', ((Crp && DsdC) ||  DsdC) }, 	% dsdA
{'b2393', (Crp || ~(CytR)) }, 	% nupC
{'b2406', (XapR) }, 	% xapB
{'b2407', (XapR) }, 	% xapA
%{'b2413', (CysB) }, 	% cysZ
{'b2414', (CysB) }, 	% cysK
{'b2415', (1) }, 	% ptsH
{'b2416', (1) }, 	% ptsI
{'b2417', (1) }, 	% crr
{'b2421', (CysB) }, 	% cysM
{'b2422', (CysB) }, 	% cysA
{'b2423', (CysB) }, 	% cysW
{'b2424', (CysB) }, 	% cysU
{'b2425', (CysB) }, 	% cysP
{'b2463', (M_o2_e > 0) }, 	% maeB
{'b2476', (~(PurR)) }, 	% purC
{'b2492', (ArcA || Fnr && (Crp || ~(NarL))) }, 	% focB
{'b2499', (~(PurR)) }, 	% purM
{'b2500', (~(PurR)) }, 	% purN
{'b2507', (~(PurR && Crp)) }, 	% guaA
{'b2508', (~(PurR && Crp)) }, 	% guaB
{'b2530', (M_o2_e > 0) }, 	% iscS
{'b2538', (HcaR && (~(LB_media))) }, 	% hcaE
{'b2539', (HcaR && (~(LB_media))) }, 	% hcaF
{'b2540', (HcaR && (~(LB_media))) }, 	% hcaC
{'b2541', (HcaR && (~(LB_media))) }, 	% hcaB
{'b2542', (HcaR && (~(LB_media))) }, 	% hcaD
{'b2551', (~(M_gly_e > 0) || MetR || ~(PurR)) }, 	% glyA
{'b2557', (~(PurR)) }, 	% purL
{'b2564', (1) }, 	% pdxJ {'b2564', (RpoE) }, 	% pdxJ
{'b2574', (~(NadR)) }, 	% nadB
{'b2587', (~ArcA) }, 	% kgtP
{'b2599', (~(M_phe_L_e > 0)) }, 	% pheA
{'b2599', (~(M_phe_L_e > 0) ) }, 	% pheA
{'b2600', (~(((M_phe_L_e > 10) || (M_tyr_L_e > 0) ) && TyrR )) }, 	% tyrA
{'b2601', (~(((M_phe_L_e > 10) || (M_tyr_L_e > 0) ) && TyrR )) }, 	% aroF
{'b2676', (M_o2_e > 0) }, 	% nrdF
{'b2677', (~(Fnr || ArcA)) }, 	% proV
{'b2702', ((~SrlR) && CRP_noGL) }, 	% srlA
{'b2703', ((~SrlR) && CRP_noGL) }, 	% srlE
{'b2704', ((~SrlR) && CRP_noGL) }, 	% srlB
{'b2705', (GutM && (~SrlR) && CRP_noGL) }, 	% srlD
{'b2719', (FhlA && RpoN && (~(M_o2_e > 0))) }, 	% hycG
{'b2720', (FhlA && RpoN && (~(M_o2_e > 0))) }, 	% hycF
{'b2721', (FhlA && RpoN && (~(M_o2_e > 0))) }, 	% hycE
{'b2722', (FhlA && RpoN && (~(M_o2_e > 0))) }, 	% hycD
{'b2723', (FhlA && RpoN || (~(M_o2_e > 0))) }, 	% hycC
{'b2724', (FhlA && RpoN && (~(M_o2_e > 0))) }, 	% hycB
{'b2747', (M_o2_e > 0) }, 	% ispD
{'b2750', (CysB) }, 	% cysC
{'b2751', (CysB) }, 	% cysN
{'b2752', (CysB) }, 	% cysD
{'b2762', (CysB) }, 	% cysH
{'b2763', (CysB) }, 	% cysI
{'b2764', (CysB) }, 	% cysJ
{'b2779', (1) }, 	% eno
{'b2787', (SdaR) }, 	% gudD
{'b2796', (Crp || (~(Lrp) && (M_leu_L_e > 0) && Crp)) }, 	% sdaC
{'b2797', (1) }, 	% sdaB
{'b2799', (((((FucR) || (M_rmn_e > 0)) && (~(M_o2_e > 0))) && Crp) || (((FucR) || (M_rmn_e > 0)) && (~(M_o2_e > 0)))) }, 	% fucO
{'b2800', ((FucR && Crp) || FucR) }, 	% fucA
{'b2801', ((FucR && Crp) || FucR) }, 	% fucP
{'b2802', ((FucR && Crp) || FucR) }, 	% fucI
{'b2803', ((FucR && Crp) || FucR) }, 	% fucK
{'b2818', (~ArgR) }, 	% argA
{'b2838', (LysR && ~(M_lys_L_e > 0)) }, 	% lysA
{'b2841', (Crp) }, 	% araE
{'b2903', (((~(GcvR) && GcvA) || Lrp || ~PurR)) }, 	% gcvP
{'b2904', (~(Fnr || ArcA) && ((~(GcvR) && GcvA) || Lrp || ~PurR)) }, 	% gcvH
{'b2905', ((M_o2_e > 0) && ((~(GcvR) && GcvA) || Lrp || ~PurR)) }, 	% gcvT
{'b2925', (~(M_o2_e > 0)) }, 	% fbaA
{'b2926', (1) }, 	% pgk
{'b2927', (1) }, 	% epd {'b2927', (Crp) }, 	% epd
{'b2938', (~(PurR)) }, 	% speA
{'b2943', ((~(GalR)) || (GalS) && (Crp || ~(Crp))) }, 	% galP
{'b2957', (Fnr && Crp) }, 	% ansB
{'b2964', (Crp || ~(CytR)) }, 	% {'b2964', (Crp || ~(CytR) || ~(DeoR)) }, 	% nupG
{'b2965', (~(Crp)) }, 	% speC
{'b2975', (~ArcA && GlcC) }, 	% glcA
{'b2976', (~(ArcA) && (GlcC)) }, 	% glcB
{'b2987', (~(PhoB)) }, 	% pitB
{'b2994', (FhlA && RpoN && (~(M_o2_e > 0))) }, 	% hybC
{'b2997', (FhlA && RpoN && (~(M_o2_e > 0))) }, 	% hybO
{'b3008', (~MetJ) }, 	% metC
{'b3041', 1 }, 	% ribB
{'b3061', (~(M_o2_e > 0) && (M_tartr_L_e > 0)) }, 	% ttdA
{'b3062', (~(M_o2_e > 0) && (M_tartr_L_e > 0)) }, 	% ttdB
{'b3089', (~(M_o2_e > 0)) }, 	% sstT
% {'b3091', (~ExuR) }, 	% uxaA
% {'b3092', (~ExuR) }, 	% uxaC
% {'b3093', (~ExuR) }, 	% exuT
%{'b3111', (Crp) }, 	% tdcGa
%{'b3112', (Crp || ~(M_o2_e > 0)) }, 	% tdcGb
{'b3114', (Crp || Fnr || LysR || TdcA || ~TdcR) }, 	% tdcE
{'b3115', (Crp || Fnr || LysR || TdcA || ~TdcR) }, 	% tdcD
{'b3116', (Crp || Fnr || LysR || TdcA || ~TdcR) }, 	% tdcC
{'b3117', (Crp || Fnr || LysR || TdcA || ~TdcR) }, 	% tdcB
{'b3124', (SdaR) }, 	% garK
{'b3125', (SdaR) }, 	% garR
{'b3126', (SdaR) }, 	% garL
{'b3128', (SdaR) }, 	% garD
{'b3161', (~TrpR || (TyrR && ((M_phe_L_e > 0) || (M_tyr_L_e > 0)))) }, 	% mtr
{'b3212', ((Lrp && ~(M_leu_L_e > 0)) || ~(NRI_hi && ((M_glu_L_e > 0) || (M_arg_L_e > 0) || (M_asp_L_e > 0) || (M_his_L_e > 0) || (M_pro_L_e > 0) ))) }, 	% gltB
{'b3213', ((Lrp && ~(M_leu_L_e > 0)) || ~(NRI_hi && ((M_glu_L_e > 0) || (M_arg_L_e > 0) || (M_asp_L_e > 0) || (M_his_L_e > 0) || (M_pro_L_e > 0)))) }, 	% gltD
{'b3236', (~(ArcA)) }, 	% mdh
{'b3359', (~ArgR) }, 	% argD
{'b3365', (Fnr && NarL) }, 	% nirB
{'b3366', (Fnr && NarL) }, 	% nirD
{'b3367', (Fnr && NarL) }, 	% nirC
{'b3368', (1) }, 	% cysG  {'b3368', (AppY || SoxS || NarL) }, 	% cysG
{'b3415', (~(GntR) && CRP_GLCN) }, 	% gntT
{'b3416', (MalT) }, 	% malQ
{'b3417', (MalT) }, 	% malP
{'b3425', (Crp) }, 	% glpE
{'b3426', (CRP_noMAL && (~(ArcA || GlpR))) }, 	% glpD
{'b3428', (Crp) }, 	% glgP
{'b3437', (~(GntR) && CRP_GLCN) }, 	% gntK
{'b3450', (Crp || PhoB) }, 	% ugpC
{'b3451', (Crp || PhoB) }, 	% ugpE
{'b3452', (Crp || PhoB) }, 	% ugpA
{'b3453', ((Crp || PhoB) || (~(Fnr || ArcA))) }, 	% ugpB
{'b3454', (~(M_leu_L_e > 0) || Lrp) }, 	% livF
{'b3455', (~(M_leu_L_e > 0) || Lrp) }, 	% livG
{'b3456', (~(M_leu_L_e > 0) || Lrp) }, 	% livM
{'b3457', (~(M_leu_L_e > 0) || Lrp) }, 	% livH
{'b3458', (~(M_leu_L_e > 0) || Lrp) }, 	% livK
{'b3460', (~(M_leu_L_e > 0) || Lrp) }, 	% livJ
{'b3500', (OxyR && RpoS) }, 	% gor
{'b3517', ((~(growth > 0 ) && ~Crp) || (pH < 4) ) }, 	% gadA
{'b3519', (RpoS) }, 	% treF
{'b3526', (~KdgR) }, 	% kdgK
{'b3528', (((CRP_noMAN) && ~(ArcA) && (DcuR)) && RpoN) }, 	% dctA
{'b3564', ((XylR && Crp) || XylR) }, 	% xylB
{'b3565', ((XylR && Crp) || XylR) }, 	% xylA
{'b3566', ((XylR && Crp) || XylR) }, 	% xylF
{'b3567', ((XylR && Crp) || XylR) }, 	% xylG
{'b3568', ((XylR && Crp) || XylR) }, 	% xylH
{'b3572', (~(M_ala_L_e > 0 || M_leu_L_e > 0 )) }, 	% avtA
{'b3575', ((~YiaJ) && Crp) }, 	% yiaK
{'b3579', (Crp || YiaJ) }, 	% yiaO
{'b3581', (~YiaJ) }, 	% sgbH
{'b3583', (~YiaJ) }, 	% sgbE
{'b3588', (RpoS && (Crp)) }, 	% aldB
{'b3599', (~(MtlR)) }, 	% mtlA
{'b3600', (~MtlR) }, 	% mtlD
{'b3603', (~(ArcA)) }, 	% lldP
{'b3605', ((M_lac_L_e > 0) && (M_o2_e > 0)) }, 	% lldD
{'b3607', (CysB) }, 	% cysE
{'b3612', (~(M_o2_e > 0)) }, 	% yibO
{'b3616', (~(Lrp) && (M_leu_L_e > 0)) }, 	% tdh
{'b3617', (~(Lrp) && (M_leu_L_e > 0)) }, 	% kbl
{'b3642', (~(M_ura_e > 0 || M_gua_e > 0)) }, 	% pyrE
{'b3653', (M_asp_L_e > 0) }, 	% gltS
{'b3666', (Crp || UhpA) }, 	% uhpT
{'b3670', (~(M_leu_L_e > 0 || M_val_L_e > 0) && Crp) }, 	% ilvN
{'b3671', (~(M_leu_L_e > 0 || M_val_L_e > 0) && Crp) }, 	% ilvB
{'b3691', (M_galctn_D_e > 0) }, 	% dgoT
%{'b3692', (M_galctn_D_e > 0) }, 	% dgoA
{'b3693', (M_galctn_D_e > 0) }, 	% dgoK
{'b3708', (Crp && (M_trp_L_e > 0 || M_cys_L_e > 0) ) }, 	% tnaA
{'b3709', (Crp && (M_trp_L_e > 0)) }, 	% tnaB
{'b3725', (PhoB) }, 	% pstB
{'b3726', (PhoB) }, 	% pstA
{'b3727', (PhoB) }, 	% pstC
{'b3728', (PhoB) }, 	% pstS
{'b3730', (NagC) }, 	% glmU
{'b3744', (~(M_asn_L_e > 0) && AsnC) }, 	% asnA
{'b3748', (CRP_noXYL && ~(RbsR)) }, 	% rbsD
{'b3749', (CRP_noXYL && ~(RbsR)) }, 	% rbsA
{'b3750', (CRP_noXYL && ~(RbsR)) }, 	% rbsC
{'b3751', (CRP_noXYL && ~(RbsR)) }, 	% rbsB
{'b3752', (CRP_noXYL && ~(RbsR)) }, 	% rbsK
%{'b3767', ((~(M_leu_L_e > 0 || M_ile_L_e > 0 || M_val_L_e > 0) && Lrp) && ~(OxyR)) }, 	% ilvG_1
%{'b3768', (~(M_leu_L_e > 0 || M_ile_L_e > 0 || M_val_L_e > 0) && Lrp) }, 	% ilvG_2
%{'b3769', ((~(M_leu_L_e > 0 || M_ile_L_e > 0 || M_val_L_e > 0) && Lrp) && (Fnr)) }, 	% ilvM
{'b3770', 1 }, 	% ilvE
{'b3771', 1 }, 	% ilvD
{'b3774', (IlvY) }, 	% ilvC
{'b3805', (1) }, 	% hemC {'b3805', (~(M_o2_e > 0)) }, 	% hemC
{'b3806', ((~Crp) && (Fnr)) }, 	% cyaA
{'b3829', ((~MetJ) && MetR) }, 	% metE
{'b3831', (~(CytR) || Crp) }, 	% udp
{'b3845', (~(FadR2) || ~(ArcA)) }, 	% fadA
{'b3846', (~(FadR2) || ~(ArcA)) }, 	% fadB
%{'b3869', (1) }, 	% glnL
{'b3870', (Crp && RpoN) }, 	% glnA
{'b3892', (M_no3_e > 0) }, 	% fdoI
{'b3893', ((~(ArcA) || SoxS) || ((ArcA && (M_no3_e > 0)))) }, 	% fdoH
{'b3894', ((~(ArcA) || ~(Fnr)) || ((ArcA && Fnr && (M_no3_e > 0)))) }, 	% fdoG
{'b3902', (RhaS || (RhaS && Crp)) }, 	% rhaD
{'b3903', (RhaS || (RhaS && Crp)) }, 	% rhaA
{'b3904', (RhaS || (RhaS && Crp)) }, 	% rhaB
{'b3907', (RhaS || (RhaS && Crp)) }, 	% rhaT
{'b3908', (~(ArcA || Fur) || (MarA || Rob || SoxS)) }, 	% sodA
{'b3909', (~KdgR) }, 	% kdgT
{'b3916', (~(M_o2_e > 0)) }, 	% pfkA
{'b3917', (CysB && (M_o2_e > 0)) }, 	% sbp
{'b3919', (1) }, 	% tpiA
{'b3926', (CRP_noMAL && (~(GlpR))) }, 	% glpK
{'b3939', (~MetJ) }, 	% metB
{'b3940', (~MetJ) }, 	% metL
{'b3942', ((growth > 0) && OxyR && RpoS) }, 	% katG
{'b3951', (ArcA || Fnr) }, 	% pflD
{'b3952', (1) }, 	% pflC
{'b3956', (1) }, 	% ppc
{'b3957', (~ArgR) }, 	% argE
{'b3958', (~ArgR) }, 	% argC
{'b3959', (~ArgR) }, 	% argB
{'b3960', (~ArgR) }, 	% argH
{'b3962', (~ArcA) }, 	% sthA
{'b3990', (M_o2_e > 0) }, 	% thiH
{'b3993', (~(Fnr || ArcA)) }, 	% thiE
{'b3994', (~(Fnr || ArcA)) }, 	% thiC
{'b4005', (~(PurR)) }, 	% purD
{'b4013', (~(MetJ) || MetR) }, 	% metA
{'b4014', (~(IclR) || ~(ArcA)) }, 	% {'b4014', ((~(IclR) || ~(Cra)) || (~(ArcA))) }, 	% aceB
{'b4015', (~(IclR) || ~(ArcA)) }, 	% {'b4015', ((~(IclR) || ~(Cra)) || (~(ArcA))) }, 	% aceA
{'b4019', (MetR) }, 	% metH
{'b4024', (~(M_lys_L_e > 0)) }, 	% lysC
{'b4031', (XylR) }, 	% xylE
{'b4032', ((MalT && Crp) || MalT) }, 	% malG
{'b4033', ((MalT && Crp) || MalT) }, 	% malF
{'b4034', ((MalT && Crp) || MalT) }, 	% malE
{'b4035', ((MalT && Crp) || MalT) }, 	% malK
{'b4036', ((MalT && Crp) || MalT) }, 	% lamB
% {'b4039', ((~Fnr) && Crp) }, 	% ubiC
% {'b4040', ((~Fnr) && Crp) }, 	% ubiA
{'b4054', (~(((M_phe_L_e > 0) || (M_tyr_L_e > 0)) && TyrR )) }, 	% tyrB
{'b4069', (RpoS || Fnr || ((~IclR) && (CRP_noSUCC))) }, 	% acs
{'b4079', (FhlA && RpoN && (~(M_o2_e > 0))) }, 	% fdhF
{'b4090', (~(RpiR)) }, 	% rpiB
{'b4111', (~(Crp) && Fis && RpoS) }, 	% proP
{'b4117', (AdiY) }, 	% adiA
{'b4119', ((MelR) || (MelR && Crp)) }, 	% melA
{'b4120', ((MelR) || (MelR && Crp)) }, 	% melB
{'b4122', ((Fnr) || ~(Crp) || (DcuR) || ~(NarL)) }, 	% fumB
{'b4123', (((CRP_noMAN) && (Fnr) && (DcuR)) && ~(NarL)) }, 	% dcuB
{'b4131', (ArcA || CadC) }, 	% cadA
{'b4132', (ArcA || CadC) }, 	% cadB
{'b4139', ((Crp && ~(Fnr)) || Fnr) }, 	% aspA
{'b4151', (~(M_o2_e > 0) && (DcuR || ~(NarL))) }, 	% frdD
{'b4152', (~(M_o2_e > 0) && (DcuR || ~(NarL))) }, 	% frdC
{'b4153', (~(M_o2_e > 0) && (DcuR || ~(NarL))) }, 	% frdB
{'b4154', (~(M_o2_e > 0) && (DcuR || ~(NarL))) }, 	% frdA
{'b4160', (1) }, 	% psd
{'b4177', (~(PurR) || RpoE) }, 	% purA
{'b4232', (M_o2_e > 0) }, 	% fbp
{'b4238', (~(M_o2_e > 0)) }, 	% nrdD
{'b4239', (((~TreR) && Crp) || (~TreR)) }, 	% treC
{'b4240', (((~TreR) && Crp) || (~TreR)) }, 	% treB
{'b4244', (~(M_ura_e > 0 || M_gua_e > 0)) }, 	% pyrI
{'b4245', (~(M_ura_e > 0 || M_gua_e > 0)) }, 	% pyrB
{'b4254', (~ArgR) }, 	% argI
{'b4265', (IdnR) }, 	% idnT
{'b4266', (IdnR) }, 	% idnO
{'b4267', (IdnR) }, 	% idnD
{'b4321', (Crp && ~(M_glcn_e > 0)) }, 	% gntP
% {'b4322', ((~(ExuR) && ~(UxuR)) || (M_o2_e > 0)) }, 	% uxuA
% {'b4323', (~ExuR && ~UxuR) }, 	% uxuB
% {'b4381', ((~DeoR) || ((~DeoR) && (Crp) && (~CytR))) }, 	% deoC
% {'b4382', (~(DeoR || CytR) && Crp) }, 	% deoA
% {'b4383', ((~DeoR) || ((~DeoR) && (Crp) && (~CytR)) || ((M_ins_e > 0) || (M_gua_e > 0))) }, 	% deoB
% {'b4384', ((~DeoR) || ((~DeoR) && (~CytR)) || (M_ins_e > 0) || (M_gua_e > 0)) }, 	% deoD
{'b4390', (NadR) }, 	% NadR (from TFs above)
};

%------------------------------------------------------------------------------

return;
