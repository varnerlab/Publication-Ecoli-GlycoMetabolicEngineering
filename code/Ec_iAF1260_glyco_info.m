function [network] = Ec_iAF1260_glyco_info();
% ------------------------------------------------------------------------------------- 
% Ec_iAF1260_glyco_info.m
% Returns struct containing network-specific information such as
% flux indices, minimal media, etc.
% ------------------------------------------------------------------------------------- 

% network name -
network.name = 'Ec_iAF1260_glyco';

% non-growth associated maintenance (NGAM) -
network.NGAM.idx = 375;
network.NGAM.val = 8.39;

% biomass flux index -
network.flux.biomass = 1005;

% fluxes to set to zero -
network.flux.set_zero = [
1103; % M_for_c + M_h_c --> M_co2_c + M_h2_c
2182; % M_h_c + M_o2s_c --> M_h2o2_c + M_o2_c
2183; % M_h_p + M_o2s_p --> M_h2o2_p + M_o2_p
];

% specify which boundary species can leave system -
% not including substrates here
network.boundary = {
'M_ac_b',
%'M_etoh_b',
%'M_for_b',
%'M_lac_D_b',
%'M_pyr_b',
%'M_succ_b',
%'M_4hba_b',		%
%'M_5drib_b',	%
%'M_aacald_b',	%
'M_hmfurn_b',	%
%'M_oxam_b',		%
};

% define minimal media (w/o substrate) -
network.MM = {
'M_ca2_b',
'M_cl_b',
'M_co2_b',
'M_cobalt2_b',
'M_cu2_b',
'M_fe2_b',
'M_fe3_b',
'M_h2o_b',
'M_h_b',
'M_k_b',
'M_mg2_b',
'M_mn2_b',
'M_mobd_b',
'M_na1_b',
'M_nh4_b',
'M_pi_b',
'M_so4_b',
'M_thm_b',
'M_tungs_b',
'M_zn2_b',
'M_targetprot_b',
};

% heterologous reactions added to network -
% M_udpg_GLYCO_b - UDPglucose
fluxGlyco = [2383:2395];
network.additional.all = fluxGlyco;
network.additional.flux(1) = 2383; % GLYCO	M_udpg_c --> M_udpg_GLYCO_b
network.additional.set_zero{1} = setdiff(fluxGlyco,2383);
network.additional.boundary{1} = {'M_udpg_GLYCO_b'};
% M_uacgam_GLYCO_b - UDP-N-acetyl-D-glucosamine
network.additional.flux(2) = 2384; % GLYCO	M_uacgam_c --> M_uacgam_GLYCO_b
network.additional.set_zero{2} = setdiff(fluxGlyco,2384);
network.additional.boundary{2} = {'M_uacgam_GLYCO_b'}; % UDP-N-acetyl-D-glucosamine
% C. jejuni glycan
network.additional.flux(3) = 2394; % GLYCO	M_udccjglycan_p + M_targetprot_p --> M_glycoprot_p + M_udcpdp_p
network.additional.set_zero{3} = setdiff(fluxGlyco,[2385:2395]);
network.additional.boundary{3} = {'M_glycoprot_b'}; % C. jejuni glycan

% biomass precursor species IDs -
network.precursor.name = {
'M_10fthf_c',
'M_2ohph_c',
'M_ala_L_c',
'M_amet_c',
'M_arg_L_c',
'M_asn_L_c',
'M_asp_L_c',
'M_atp_c',
'M_ca2_c',
'M_cl_c',
'M_coa_c',
'M_cobalt2_c',
'M_ctp_c',
'M_cu2_c',
'M_cys_L_c',
'M_datp_c',
'M_dctp_c',
'M_dgtp_c',
'M_dttp_c',
'M_fad_c',
'M_fe2_c',
'M_fe3_c',
'M_gln_L_c',
'M_glu_L_c',
'M_gly_c',
'M_gtp_c',
'M_h2o_c',
'M_his_L_c',
'M_ile_L_c',
'M_k_c',
'M_leu_L_c',
'M_lys_L_c',
'M_met_L_c',
'M_mg2_c',
'M_mlthf_c',
'M_mn2_c',
'M_mobd_c',
'M_nad_c',
'M_nadp_c',
'M_nh4_c',
'M_pe160_c',
'M_pe161_c',
'M_phe_L_c',
'M_pheme_c',
'M_pro_L_c',
'M_pydx5p_c',
'M_ribflv_c',
'M_ser_L_c',
'M_sheme_c',
'M_so4_c',
'M_thf_c',
'M_thmpp_c',
'M_thr_L_c',
'M_trp_L_c',
'M_tyr_L_c',
'M_udcpdp_c',
'M_utp_c',
'M_val_L_c',
'M_zn2_c',
'M_kdo2lipid4_e',
'M_murein5px4p_p',
'M_pe160_p',
'M_pe161_p',
};
nPrecursor = length(network.precursor.name);
eval(['nameMet = ',network.name,'_list_species_ID();']);
for ix = 1:nPrecursor
	network.precursor.index(ix,1) = find(strcmp(network.precursor.name{ix},nameMet)==1);
end

% central metabolism species IDs -
network.central.name = {
'M_13dpg_c',
'M_2ddg6p_c',
'M_2dmmq8_c',
'M_2dmmql8_c',
'M_2pg_c',
'M_3pg_c',
'M_6pgc_c',
'M_6pgl_c',
'M_ac_c',
'M_acald_c',
'M_accoa_c',
'M_acon_C_c',
'M_actp_c',
'M_adp_c',
'M_adpglc_c',
'M_akg_c',
'M_amp_c',
'M_atp_c',
'M_bglycogen_c',
'M_cit_c',
'M_coa_c',
'M_f6p_c',
'M_dha_c',
'M_dhap_c',
'M_e4p_c',
'M_etoh_c',
'M_fad_c',
'M_fadh2_c',
'M_fdp_c',
'M_for_c',
'M_fum_c',
'M_g1p_c',
'M_g3p_c',
'M_g6p_c',
'M_glc_D_c',
'M_glx_c',
'M_glycogen_c',
'M_icit_c',
'M_lac_D_c',
'M_mal_L_c',
'M_mql8_c',
'M_mqn8_c',
'M_nad_c',
'M_nadh_c',
'M_nadp_c',
'M_nadph_c',
'M_oaa_c',
'M_pep_c',
'M_pyr_c',
'M_q8_c',
'M_q8h2_c',
'M_r5p_c',
'M_rib_D_c',
'M_ru5p_D_c',
'M_s7p_c',
'M_succ_c',
'M_succoa_c',
'M_xu5p_D_c',
};
nCentral = length(network.central.name);
for ix = 1:nCentral
	network.central.index(ix,1) = find(strcmp(network.central.name{ix},nameMet)==1);
end

% amino acids -
network.AA.name = {
'M_ala_L_c',
'M_arg_L_c',
'M_asn_L_c',
'M_asp_L_c',
'M_cys_L_c',
'M_gln_L_c',
'M_glu_L_c',
'M_gly_c',
'M_his_L_c',
'M_ile_L_c',
'M_leu_L_c',
'M_lys_L_c',
'M_met_L_c',
'M_phe_L_c',
'M_pro_L_c',
'M_ser_L_c',
'M_thr_L_c',
'M_trp_L_c',
'M_tyr_L_c',
'M_val_L_c',
};
nAA = length(network.AA.name);
for ix = 1:nAA
	network.AA.index(ix,1) = find(strcmp(network.AA.name{ix},nameMet)==1);
end

% amino acids -
network.cofactor.name = {
'M_atp_c',
'M_nadh_c',
'M_nadph_c',
};
nCofactor = length(network.cofactor.name);
for ix = 1:nCofactor
	network.cofactor.index(ix,1) = find(strcmp(network.cofactor.name{ix},nameMet)==1);
end

% central metabolic fluxes -
idxMetFlux = 1;

network.flux.name{idxMetFlux} = 'Xylose';
network.flux.idx{idxMetFlux} = {
{2375,'xyl'},		% M_atp_c + M_h2o_c + M_xyl_D_p --> M_adp_c + M_h_c + M_pi_c + M_xyl_D_c
{2376,'xylE'},		% M_h_p + M_xyl_D_p --> M_h_c + M_xyl_D_c
{2369,'xylA'},		% M_xyl_D_c <--> M_xylu_D_c
{2371,'xylB'},		% M_atp_c + M_xylu_D_c --> M_adp_c + M_h_c + M_xu5p_D_c
};
idxMetFlux = idxMetFlux + 1;

network.flux.name{idxMetFlux} = 'Glycolysis';
network.flux.idx{idxMetFlux} = {
%{1233,'PTS'},		% M_pep_c + M_glc_D_p --> M_g6p_c + M_pyr_c
%{1234,'galP'},		% M_glc_D_p + M_h_p --> M_glc_D_c + M_h_c
%{1376,'hex'},		% M_atp_c + M_glc_D_c --> M_adp_c + M_g6p_c + M_h_c
{1919,'pgi'},		% M_g6p_c --> M_f6p_c
%{1006,'fsa'},		% M_f6p_c --> M_dha_c + M_g3p_c
{1907,'pfk'},		% M_atp_c + M_f6p_c --> M_adp_c + M_fdp_c + M_h_c
%{1044,'fdp'},		% M_fdp_c + M_h2o_c --> M_f6p_c + M_pi_c
{1043,'fba'},		% M_fdp_c --> M_dhap_c + M_g3p_c
{2259,'tpiA'},		% M_dhap_c --> M_g3p_c
{1197,'gapA'},		% M_g3p_c + M_nad_c + M_pi_c --> M_13dpg_c + M_h_c + M_nadh_c
{1920,'pgk'},		% M_3pg_c + M_atp_c --> M_13dpg_c + M_adp_c
{1923,'pgm'},		% M_2pg_c --> M_3pg_c
{695,'eno'},		% M_2pg_c --> M_h2o_c + M_pep_c
{2099,'pyk'},		% M_adp_c + M_h_c + M_pep_c --> M_atp_c + M_pyr_c
{1890,'pdh'},		% M_coa_c + M_nad_c + M_pyr_c --> M_accoa_c + M_co2_c + M_nadh_c
{2037,'pps'},		% M_atp_c + M_h2o_c + M_pyr_c --> M_amp_c + M_h_c + M_pep_c + M_pi_c
};
idxMetFlux = idxMetFlux + 1;

network.flux.name{idxMetFlux} = 'PPP';
network.flux.idx{idxMetFlux} = {
{1165,'zwf'},		% M_g6p_c + M_nadp_c --> M_6pgl_c + M_h_c + M_nadph_c
{1921,'pgl'},		% M_6pgl_c + M_h2o_c --> M_6pgc_c + M_h_c
{1301,'gnd'},		% M_6pgc_c + M_nadp_c --> M_co2_c + M_nadph_c + M_ru5p_D_c
{2138,'rpe'},		% M_ru5p_D_c --> M_xu5p_D_c
{2139,'rpi'},		% M_r5p_c --> M_ru5p_D_c
{2203,'tal'},		% M_g3p_c + M_s7p_c --> M_e4p_c + M_f6p_c
{2245,'tkt1'},		% M_r5p_c + M_xu5p_D_c --> M_g3p_c + M_s7p_c
{2246,'tkt2'},		% M_e4p_c + M_xu5p_D_c --> M_f6p_c + M_g3p_c
};
idxMetFlux = idxMetFlux + 1;

%network.flux.name{idxMetFlux} = 'ED';
%network.flux.idx{idxMetFlux} = {
%{689,'edd'},		% M_6pgc_c --> M_2ddg6p_c + M_h2o_c
%{688,'eda'},		% M_2ddg6p_c --> M_g3p_c + M_pyr_c
%};
%idxMetFlux = idxMetFlux + 1;

network.flux.name{idxMetFlux} = 'TCA';
network.flux.idx{idxMetFlux} = {
{429,'cit'},		% M_cit_c --> M_ac_c + M_oaa_c
{482,'gltA'},		% M_accoa_c + M_h2o_c + M_oaa_c --> M_cit_c + M_coa_c + M_h_c
{191,'acn1'},		% M_cit_c --> M_acon_C_c + M_h2o_c
{192,'acn2'},		% M_acon_C_c + M_h2o_c --> M_icit_c
{1418,'icd'},		% M_icit_c + M_nadp_c --> M_akg_c + M_co2_c + M_nadph_c
{256,'sucAB'},		% M_akg_c + M_coa_c + M_nad_c --> M_co2_c + M_nadh_c + M_succoa_c
{2194,'sucCD'},		% M_atp_c + M_coa_c + M_succ_c --> M_adp_c + M_pi_c + M_succoa_c
{2192,'sdh'},		% M_q8_c + M_succ_c --> M_fum_c + M_q8h2_c
%{1114,'frd1'},		% M_fum_c + M_mql8_c --> M_mqn8_c + M_succ_c
%{1115,'frd2'},		% M_2dmmql8_c + M_fum_c --> M_2dmmq8_c + M_succ_c
{1130,'fum'},		% M_fum_c + M_h2o_c --> M_mal_L_c
{1622,'mdh1'},		% M_mal_L_c + M_nad_c --> M_h_c + M_nadh_c + M_oaa_c
%{1623,'mdh2'},		% M_mal_L_c + M_q8_c --> M_oaa_c + M_q8h2_c
%{1624,'mdh3'},		% M_mal_L_c + M_mqn8_c --> M_mql8_c + M_oaa_c
};
idxMetFlux = idxMetFlux + 1;

network.flux.name{idxMetFlux} = 'Anaplerotic';
network.flux.idx{idxMetFlux} = {
{1422,'aceA'},		% M_icit_c --> M_glx_c + M_succ_c
{1579,'aceB'},		% M_accoa_c + M_glx_c + M_h2o_c --> M_coa_c + M_h_c + M_mal_L_c
{1626,'maeA'},		% M_mal_L_c + M_nad_c --> M_co2_c + M_nadh_c + M_pyr_c
{1627,'maeB'},		% M_mal_L_c + M_nadp_c --> M_co2_c + M_nadph_c + M_pyr_c
{2012,'ppa'},		% M_h2o_c + M_ppi_c --> M_h_c + M_pi_c
{2013,'ppx'},		% M_h2o_c + M_pppi_c --> M_h_c + M_pi_c + M_ppi_c
{2020,'ppc'},		% M_co2_c + M_h2o_c + M_pep_c --> M_h_c + M_oaa_c + M_pi_c
{2022,'pck'},		% M_atp_c + M_oaa_c --> M_adp_c + M_co2_c + M_pep_c
};
idxMetFlux = idxMetFlux + 1;

%network.flux.name{idxMetFlux} = 'Folate';
%network.flux.idx{idxMetFlux} = {
%{1127,'purU'},		% M_10fthf_c + M_h2o_c --> M_for_c + M_h_c + M_thf_c
%{1276,'gcv'},		% M_gly_c + M_nad_c + M_thf_c --> M_co2_c + M_mlthf_c + M_nadh_c + M_nh4_c
%{1201,'aldA'},		% M_gcald_c + M_h2o_c + M_nad_c --> M_glyclt_c + M_h_c + M_nadh_c
%{1700,'folD1-fwd'},		% M_h2o_c + M_methf_c --> M_10fthf_c + M_h_c
%{3060,'folD1-rev'},		% M_10fthf_c + M_h_c --> M_h2o_c + M_methf_c
%{1701,'folD2-fwd'},		% M_mlthf_c + M_nadp_c --> M_methf_c + M_nadph_c
%{3061,'folD2-rev'},		% M_methf_c + M_nadph_c --> M_mlthf_c + M_nadp_c
%{1702,'metF'},		% M_h_c + M_mlthf_c + M_nadh_c --> M_5mthf_c + M_nad_c
%};
% idxMetFlux = idxMetFlux + 1;

network.flux.name{idxMetFlux} = 'Glutamate';
network.flux.idx{idxMetFlux} = {
{1241,'gln'},		% M_atp_c + M_h2o_c + M_gln_L_p --> M_adp_c + M_gln_L_c + M_h_c + M_pi_c
{1248,'gdhA'},		% M_glu_L_c + M_h2o_c + M_nadp_c --> M_akg_c + M_h_c + M_nadph_c + M_nh4_c
{1253,'gltBD'},		% M_akg_c + M_gln_L_c + M_h_c + M_nadph_c --> M_glu_L_c + M_nadp_c
{1239,'glnA'},		% M_atp_c + M_glu_L_c + M_nh4_c --> M_adp_c + M_gln_L_c + M_h_c + M_pi_c
%{1247,'gad'},		% M_glu_L_c + M_h_c --> M_4abut_c + M_co2_c
{1249,'GLUN'},		% M_gln_L_c + M_h2o_c --> M_glu_L_c + M_nh4_c
%{1250,'ans'},		% M_gln_L_p + M_h2o_p --> M_glu_L_p + M_nh4_p
{1207,'glmS'},		% M_f6p_c + M_gln_L_c --> M_gam6p_c + M_glu_L_c
{2067,'test'},		% 
};
idxMetFlux = idxMetFlux + 1;

%network.flux.name{8} = 'Glycine/Serine';
%network.flux.idx{8} = {
%{633,'ydf-fwd'},		% M_nadp_c + M_ser_D_c --> M_2amsa_c + M_h_c + M_nadph_c
%{2563,'ydf-rev'},		% M_2amsa_c + M_h_c + M_nadph_c --> M_nadp_c + M_ser_D_c
%{1212,'glyA-fwd'},		% M_ser_L_c + M_thf_c --> M_gly_c + M_h2o_c + M_mlthf_c
%{2935,'glyA-rev'},		% M_gly_c + M_h2o_c + M_mlthf_c --> M_ser_L_c + M_thf_c
%{1263,'kbl-fwd'},		% M_accoa_c + M_gly_c --> M_2aobut_c + M_coa_c
%{2955,'kbl-rev'},		% M_2aobut_c + M_coa_c --> M_accoa_c + M_gly_c
%{1275,'garK'},		% M_atp_c + M_glyc_R_c --> M_2pg_c + M_adp_c + M_h_c
%{1560,'ydfG-fwd'},		% M_nadp_c + M_ser_L_c --> M_2amsa_c + M_h_c + M_nadph_c
%{3027,'ydfG-rev'},		% M_2amsa_c + M_h_c + M_nadph_c --> M_nadp_c + M_ser_L_c
%{1705,'solA1'},		% M_Nmtrp_c + M_h2o_c + M_o2_c --> M_fald_c + M_h2o2_c + M_trp_L_c
%{1918,'serA'},		% M_3pg_c + M_nad_c --> M_3php_c + M_h_c + M_nadh_c
%{2067,'serC'},		% M_3php_c + M_glu_L_c --> M_akg_c + M_pser_L_c
%{2069,'serB'},		% M_h2o_c + M_pser_L_c --> M_pi_c + M_ser_L_c
%{2144,'solA2'},		% M_h2o_c + M_o2_c + M_sarcs_c --> M_fald_c + M_gly_c + M_h2o2_c
%{2154,'dsdA'},		% M_ser_D_c --> M_nh4_c + M_pyr_c
%{2155,'tdcG'},		% M_ser_L_c --> M_nh4_c + M_pyr_c
%{2232,'tdh'},		% M_nad_c + M_thr_L_c --> M_2aobut_c + M_h_c + M_nadh_c
%};

return;
