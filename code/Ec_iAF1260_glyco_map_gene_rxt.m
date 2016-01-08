function [rxtLogic] = Ec_iAF1260_glyco_map_gene_rxt(chromosome)
% ------------------------------------------------------------------------------------- 
% Ec_iAF1260_glyco_map_gene_rxt.m
% Returns Boolean logic for each reaction in the network given the input
% chromosome representing the expression or KO of genes.
% chromosome = binary vector, 0 = KO, 1 = expressed
% rxtLogic = reaction availability, 0 = KO, 1 = available
% *note: removed all instances of s0001
% ------------------------------------------------------------------------------------- 

% Assign chromosome elements to gene names -
b0241 = chromosome(1);	% phoE
b0929 = chromosome(2);	% ompF
b1377 = chromosome(3);	% ompN
b2215 = chromosome(4);	% ompC
b4034 = chromosome(5);	% malE
b4033 = chromosome(6);	% malF
b4032 = chromosome(7);	% malG
b4035 = chromosome(8);	% malK
b4036 = chromosome(9);	% lamB
b4213 = chromosome(10);	% cpdB
b2835 = chromosome(11);	% lplT
b2836 = chromosome(12);	% aas
b3553 = chromosome(13);	% ghrB
b0446 = chromosome(14);	% cof
b1134 = chromosome(15);	% nudJ
b0954 = chromosome(16);	% fabA
b0180 = chromosome(17);	% fabZ
b0347 = chromosome(18);	% mhpA
b3580 = chromosome(19);	% lyxK
b1093 = chromosome(20);	% fabG
b2323 = chromosome(21);	% fabB
b1095 = chromosome(22);	% fabF
b1329 = chromosome(23);	% mppA
b1244 = chromosome(24);	% oppB
b1245 = chromosome(25);	% oppC
b1246 = chromosome(26);	% oppD
b1247 = chromosome(27);	% oppF
b1386 = chromosome(28);	% tynA
b0004 = chromosome(29);	% thrC
b1192 = chromosome(30);	% ldcA
b1243 = chromosome(31);	% oppA
b4266 = chromosome(32);	% idnO
b4265 = chromosome(33);	% idnT
b0159 = chromosome(34);	% mtn
b2708 = chromosome(35);	% gutQ
b3197 = chromosome(36);	% kdsD
b1094 = chromosome(37);	% acpP
b4481 = chromosome(38);	% rffT
b1927 = chromosome(39);	% amyA
b3571 = chromosome(40);	% malS
b2901 = chromosome(41);	% bglA
b2662 = chromosome(42);	% gabT
b1302 = chromosome(43);	% puuE
b1444 = chromosome(44);	% patD
b2663 = chromosome(45);	% gabP
b2221 = chromosome(46);	% atoD
b2222 = chromosome(47);	% atoA
b2224 = chromosome(48);	% atoB
b2223 = chromosome(49);	% atoE
b1241 = chromosome(50);	% adhE
b0351 = chromosome(51);	% mhpF
b1463 = chromosome(52);	% nhoA
b1993 = chromosome(53);	% cobU
b0185 = chromosome(54);	% accA
b2316 = chromosome(55);	% accD
b3255 = chromosome(56);	% accB
b3256 = chromosome(57);	% accC
b0335 = chromosome(58);	% prpE
b1119 = chromosome(59);	% nagK
b3784 = chromosome(60);	% rfe
b2417 = chromosome(61);	% crr
b1101 = chromosome(62);	% ptsG
b2415 = chromosome(63);	% ptsH
b2416 = chromosome(64);	% ptsI
b0679 = chromosome(65);	% nagE
b3959 = chromosome(66);	% argB
b2818 = chromosome(67);	% argA
b3670 = chromosome(68);	% ilvN
b3671 = chromosome(69);	% ilvB
b0077 = chromosome(70);	% ilvI
b0078 = chromosome(71);	% ilvH
b3115 = chromosome(72);	% tdcD
b2296 = chromosome(73);	% ackA
b1849 = chromosome(74);	% purT
b3794 = chromosome(75);	% rffM
b1817 = chromosome(76);	% manX
b1818 = chromosome(77);	% manY
b1819 = chromosome(78);	% manZ
b2429 = chromosome(79);	% murP
b3224 = chromosome(80);	% nanT
b4311 = chromosome(81);	% nanC
b3225 = chromosome(82);	% nanA
b0221 = chromosome(83);	% fadE
b1091 = chromosome(84);	% fabH
b3957 = chromosome(85);	% argE
b1519 = chromosome(86);	% tam
b1276 = chromosome(87);	% acnA
b0118 = chromosome(88);	% acnB
b3359 = chromosome(89);	% argD
b1748 = chromosome(90);	% astC
b2563 = chromosome(91);	% acpS
b3475 = chromosome(92);	% acpT
b4069 = chromosome(93);	% acs
b2578 = chromosome(94);	% eamB
b1533 = chromosome(95);	% eamA
b4067 = chromosome(96);	% actP
b1623 = chromosome(97);	% add
b1096 = chromosome(98);	% pabC
b3360 = chromosome(99);	% pabA
b1812 = chromosome(100);	% pabB
b3665 = chromosome(101);	% ade
b3654 = chromosome(102);	% xanP
b0474 = chromosome(103);	% adk
b0120 = chromosome(104);	% speD
b3806 = chromosome(105);	% cyaA
b0030 = chromosome(106);	% rihC
b2964 = chromosome(107);	% nupG
b2393 = chromosome(108);	% nupC
b2406 = chromosome(109);	% xapB
b0411 = chromosome(110);	% tsx
b1992 = chromosome(111);	% cobS
b1711 = chromosome(112);	% btuC
b1709 = chromosome(113);	% btuD
b0158 = chromosome(114);	% btuF
b3966 = chromosome(115);	% btuB
b1252 = chromosome(116);	% tonB
b3005 = chromosome(117);	% exbD
b3006 = chromosome(118);	% exbB
b3397 = chromosome(119);	% nudE
b0469 = chromosome(120);	% apt
b2750 = chromosome(121);	% cysC
b1131 = chromosome(122);	% purB
b4177 = chromosome(123);	% purA
b0677 = chromosome(124);	% nagA
b0110 = chromosome(125);	% ampD
b4169 = chromosome(126);	% amiB
b2435 = chromosome(127);	% amiA
b2817 = chromosome(128);	% amiC
b1107 = chromosome(129);	% nagZ
b0433 = chromosome(130);	% ampG
b3619 = chromosome(131);	% rfaD
b2937 = chromosome(132);	% speB
b3018 = chromosome(133);	% plsC
b3958 = chromosome(134);	% argC
b0572 = chromosome(135);	% cusC
b0573 = chromosome(136);	% cusF
b0574 = chromosome(137);	% cusB
b0575 = chromosome(138);	% cusA
b4006 = chromosome(139);	% purH
b0522 = chromosome(140);	% purK
b0523 = chromosome(141);	% purE
b0116 = chromosome(142);	% lpd
b0726 = chromosome(143);	% sucA
b0727 = chromosome(144);	% sucB
b2587 = chromosome(145);	% kgtP
b1488 = chromosome(146);	% ddpX
b3544 = chromosome(147);	% dppA
b3543 = chromosome(148);	% dppB
b3542 = chromosome(149);	% dppC
b3541 = chromosome(150);	% dppD
b3540 = chromosome(151);	% dppF
b1487 = chromosome(152);	% ddpA
b1486 = chromosome(153);	% ddpB
b1485 = chromosome(154);	% ddpC
b1484 = chromosome(155);	% ddpD
b1483 = chromosome(156);	% ddpF
b0381 = chromosome(157);	% ddlA
b0092 = chromosome(158);	% ddlB
b1325 = chromosome(159);	% ycjG
b4053 = chromosome(160);	% alr
b1190 = chromosome(161);	% dadX
b0870 = chromosome(162);	% ltaE
b2551 = chromosome(163);	% glyA
b2697 = chromosome(164);	% alaS
b3454 = chromosome(165);	% livF
b3455 = chromosome(166);	% livG
b3457 = chromosome(167);	% livH
b3460 = chromosome(168);	% livJ
b3456 = chromosome(169);	% livM
b4208 = chromosome(170);	% cycA
b0007 = chromosome(171);	% yaaJ
b0356 = chromosome(172);	% frmA
b1478 = chromosome(173);	% adhP
b1385 = chromosome(174);	% feaB
b1300 = chromosome(175);	% puuC
b3588 = chromosome(176);	% aldB
b4084 = chromosome(177);	% alsK
b4090 = chromosome(178);	% rpiB
b0516 = chromosome(179);	% allC
b0512 = chromosome(180);	% allB
b0511 = chromosome(181);	% ybbW
b4085 = chromosome(182);	% alsE
b4087 = chromosome(183);	% alsA
b4088 = chromosome(184);	% alsB
b4086 = chromosome(185);	% alsC
b0657 = chromosome(186);	% lnt
b1677 = chromosome(187);	% lpp
b3012 = chromosome(188);	% dkgA
b0207 = chromosome(189);	% dkgB
b1781 = chromosome(190);	% yeaE
b3001 = chromosome(191);	% yghZ
b3945 = chromosome(192);	% gldA
b3091 = chromosome(193);	% uxaA
b3416 = chromosome(194);	% malQ
b3223 = chromosome(195);	% nanE
b3222 = chromosome(196);	% nanK
b0774 = chromosome(197);	% bioA
b3833 = chromosome(198);	% ubiE
b3994 = chromosome(199);	% thiC
b1982 = chromosome(200);	% amn
b0237 = chromosome(201);	% pepD
b4260 = chromosome(202);	% pepA
b2523 = chromosome(203);	% pepB
b0932 = chromosome(204);	% pepN
b1640 = chromosome(205);	% anmK
b1263 = chromosome(206);	% trpD
b1264 = chromosome(207);	% trpE
b0776 = chromosome(208);	% bioF
b0049 = chromosome(209);	% apaH
b0414 = chromosome(210);	% ribD
b0062 = chromosome(211);	% araA
b0153 = chromosome(212);	% fhuB
b0151 = chromosome(213);	% fhuC
b0152 = chromosome(214);	% fhuD
b1901 = chromosome(215);	% araF
b1900 = chromosome(216);	% araG
b4460 = chromosome(217);	% araH
b2841 = chromosome(218);	% araE
b1528 = chromosome(219);	% ydeA
b4115 = chromosome(220);	% adiC
b4117 = chromosome(221);	% adiA
b2938 = chromosome(222);	% speA
b1605 = chromosome(223);	% ydgI
b3960 = chromosome(224);	% argH
b3172 = chromosome(225);	% argG
b1876 = chromosome(226);	% argS
b2310 = chromosome(227);	% argT
b2307 = chromosome(228);	% hisM
b2306 = chromosome(229);	% hisP
b2308 = chromosome(230);	% hisQ
b0863 = chromosome(231);	% artI
b0860 = chromosome(232);	% artJ
b0861 = chromosome(233);	% artM
b0864 = chromosome(234);	% artP
b0862 = chromosome(235);	% artQ
b2923 = chromosome(236);	% argO
b3433 = chromosome(237);	% asd
b4192 = chromosome(238);	% ulaG
b4195 = chromosome(239);	% ulaC
b4194 = chromosome(240);	% ulaB
b4193 = chromosome(241);	% ulaA
b1767 = chromosome(242);	% ansA
b0828 = chromosome(243);	% iaaA
b2957 = chromosome(244);	% ansB
b0674 = chromosome(245);	% asnB
b3744 = chromosome(246);	% asnA
b0930 = chromosome(247);	% asnS
b1453 = chromosome(248);	% ansP
b3502 = chromosome(249);	% arsB
b0131 = chromosome(250);	% panD
b4244 = chromosome(251);	% pyrI
b4245 = chromosome(252);	% pyrB
b0002 = chromosome(253);	% thrA
b3940 = chromosome(254);	% metL
b4024 = chromosome(255);	% lysC
b2574 = chromosome(256);	% nadB
b4139 = chromosome(257);	% aspA
b0928 = chromosome(258);	% aspC
b1866 = chromosome(259);	% aspS
b0655 = chromosome(260);	% gltI
b0654 = chromosome(261);	% gltJ
b0653 = chromosome(262);	% gltK
b0652 = chromosome(263);	% gltL
b3528 = chromosome(264);	% dctA
b4138 = chromosome(265);	% dcuA
b4123 = chromosome(266);	% dcuB
b4077 = chromosome(267);	% gltP
b3503 = chromosome(268);	% arsC
b1064 = chromosome(269);	% grxB
b1747 = chromosome(270);	% astA
b1539 = chromosome(271);	% ydfG
b2019 = chromosome(272);	% hisG
b3736 = chromosome(273);	% atpF
b3737 = chromosome(274);	% atpE
b3738 = chromosome(275);	% atpB
b3731 = chromosome(276);	% atpC
b3732 = chromosome(277);	% atpD
b3733 = chromosome(278);	% atpG
b3734 = chromosome(279);	% atpA
b3735 = chromosome(280);	% atpH
b3739 = chromosome(281);	% atpI
b0312 = chromosome(282);	% betB
b3551 = chromosome(283);	% bisC
b0775 = chromosome(284);	% bioB
b0936 = chromosome(285);	% ssuA
b0933 = chromosome(286);	% ssuB
b0934 = chromosome(287);	% ssuC
b0365 = chromosome(288);	% tauA
b0366 = chromosome(289);	% tauB
b0367 = chromosome(290);	% tauC
b1216 = chromosome(291);	% chaA
b4132 = chromosome(292);	% cadB
b1732 = chromosome(293);	% katE
b3942 = chromosome(294);	% katG
b3196 = chromosome(295);	% yrbG
b1270 = chromosome(296);	% btuR
b0521 = chromosome(297);	% ybcF
b0323 = chromosome(298);	% yahI
b2874 = chromosome(299);	% yqeA
b0032 = chromosome(300);	% carA
b0033 = chromosome(301);	% carB
b3469 = chromosome(302);	% zntA
b0752 = chromosome(303);	% zitB
b3915 = chromosome(304);	% fieF
b3040 = chromosome(305);	% zupT
b3918 = chromosome(306);	% cdh
b1208 = chromosome(307);	% ispE
b1661 = chromosome(308);	% cfa
b2128 = chromosome(309);	% yehW
b2129 = chromosome(310);	% yehX
b2130 = chromosome(311);	% yehY
b2131 = chromosome(312);	% osmF
b0314 = chromosome(313);	% betT
b1801 = chromosome(314);	% yeaV
b2599 = chromosome(315);	% pheA
b2600 = chromosome(316);	% tyrA
b2329 = chromosome(317);	% aroC
b4039 = chromosome(318);	% ubiC
b2538 = chromosome(319);	% hcaE
b2539 = chromosome(320);	% hcaF
b2540 = chromosome(321);	% hcaC
b2542 = chromosome(322);	% hcaD
b0615 = chromosome(323);	% citF
b0616 = chromosome(324);	% citE
b0617 = chromosome(325);	% citD
b0614 = chromosome(326);	% citX
b0612 = chromosome(327);	% citT
b1249 = chromosome(328);	% clsA
b0789 = chromosome(329);	% clsB
b1592 = chromosome(330);	% clcB
b0155 = chromosome(331);	% clcA
b3816 = chromosome(332);	% corA
b0914 = chromosome(333);	% msbA
b1102 = chromosome(334);	% fhuE
b2436 = chromosome(335);	% hemF
b3867 = chromosome(336);	% hemN
b0038 = chromosome(337);	% caiB
b0037 = chromosome(338);	% caiC
b0036 = chromosome(339);	% caiD
b2677 = chromosome(340);	% proV
b2678 = chromosome(341);	% proW
b2679 = chromosome(342);	% proX
b4111 = chromosome(343);	% proP
b0040 = chromosome(344);	% caiT
b0720 = chromosome(345);	% gltA
b0337 = chromosome(346);	% codA
b0336 = chromosome(347);	% codB
b2780 = chromosome(348);	% pyrG
b0123 = chromosome(349);	% cueO
b0484 = chromosome(350);	% copA
b3425 = chromosome(351);	% glpE
b1308 = chromosome(352);	% pspE
b0340 = chromosome(353);	% cynS
b0341 = chromosome(354);	% cynX
b1919 = chromosome(355);	% dcyD
b3708 = chromosome(356);	% tnaA
b3008 = chromosome(357);	% metC
b2421 = chromosome(358);	% cysM
b2414 = chromosome(359);	% cysK
b2810 = chromosome(360);	% csdA
b1622 = chromosome(361);	% malY
b0526 = chromosome(362);	% cysS
b0886 = chromosome(363);	% cydS
b0887 = chromosome(364);	% cydD
b0978 = chromosome(365);	% appC
b0979 = chromosome(366);	% appB
b0733 = chromosome(367);	% cydA
b0734 = chromosome(368);	% cydB
b0429 = chromosome(369);	% cyoD
b0430 = chromosome(370);	% cyoC
b0431 = chromosome(371);	% cyoB
b0432 = chromosome(372);	% cyoA
b2143 = chromosome(373);	% cdd
b2162 = chromosome(374);	% rihB
b0651 = chromosome(375);	% rihA
b2066 = chromosome(376);	% udk
b0910 = chromosome(377);	% cmk
b1189 = chromosome(378);	% dadA
b4042 = chromosome(379);	% dgkA
b2871 = chromosome(380);	% ygeX
b2838 = chromosome(381);	% lysA
b3809 = chromosome(382);	% dapF
b0175 = chromosome(383);	% cdsA
b3041 = chromosome(384);	% ribB
b0778 = chromosome(385);	% bioD
b2065 = chromosome(386);	% dcd
b2344 = chromosome(387);	% fadL
b3693 = chromosome(388);	% dgoK
b3909 = chromosome(389);	% kdgT
b3526 = chromosome(390);	% kdgK
b2601 = chromosome(391);	% aroF
b0754 = chromosome(392);	% aroG
b1704 = chromosome(393);	% aroH
b4477 = chromosome(394);	% dgoA
b3648 = chromosome(395);	% gmk
b3771 = chromosome(396);	% ilvD
b1200 = chromosome(397);	% dhaK
b1199 = chromosome(398);	% dhaL
b1198 = chromosome(399);	% dhaM
b0596 = chromosome(400);	% entA
b0594 = chromosome(401);	% entE
b2541 = chromosome(402);	% hcaB
b0348 = chromosome(403);	% mhpB
b0031 = chromosome(404);	% dapB
b2478 = chromosome(405);	% dapA
b0048 = chromosome(406);	% folA
b1606 = chromosome(407);	% folM
b2315 = chromosome(408);	% folC
b3930 = chromosome(409);	% menA
b3058 = chromosome(410);	% folB
b0945 = chromosome(411);	% pyrD
b1062 = chromosome(412);	% pyrC
b3177 = chromosome(413);	% folP
b2303 = chromosome(414);	% folX
b3389 = chromosome(415);	% aroB
b1693 = chromosome(416);	% aroD
b0421 = chromosome(417);	% ispA
b0029 = chromosome(418);	% ispH
b2232 = chromosome(419);	% ubiG
b1587 = chromosome(420);	% ynfE
b1588 = chromosome(421);	% ynfF
b1589 = chromosome(422);	% ynfG
b1590 = chromosome(423);	% ynfH
b0894 = chromosome(424);	% dmsA
b0895 = chromosome(425);	% dmsB
b0896 = chromosome(426);	% dmsC
b1872 = chromosome(427);	% torZ
b1873 = chromosome(428);	% torY
b1865 = chromosome(429);	% nudB
b0099 = chromosome(430);	% mutT
b3575 = chromosome(431);	% yiaK
b0103 = chromosome(432);	% coaE
b0425 = chromosome(433);	% panE
b3774 = chromosome(434);	% ilvC
b4381 = chromosome(435);	% deoC
b3860 = chromosome(436);	% dsbA
b1185 = chromosome(437);	% dsbB
b2893 = chromosome(438);	% dsbC
b4136 = chromosome(439);	% dipZ
b3781 = chromosome(440);	% trxA
b2582 = chromosome(441);	% trxC
b0604 = chromosome(442);	% dsbG
b1098 = chromosome(443);	% tmk
b1238 = chromosome(444);	% tdk
b4382 = chromosome(445);	% deoA
b4384 = chromosome(446);	% deoD
b3640 = chromosome(447);	% dut
b2251 = chromosome(448);	% nudI
b0173 = chromosome(449);	% dxr
b0420 = chromosome(450);	% dxs
b3564 = chromosome(451);	% xylB
b3603 = chromosome(452);	% lldP
b2975 = chromosome(453);	% glcA
b2927 = chromosome(454);	% epd
b1288 = chromosome(455);	% fabI
b3622 = chromosome(456);	% waaL
b3793 = chromosome(457);	% wzyE
b3785 = chromosome(458);	% wzzE
b3792 = chromosome(459);	% wzxE
b3846 = chromosome(460);	% fadB
b2341 = chromosome(461);	% fadJ
b1850 = chromosome(462);	% eda
b1851 = chromosome(463);	% edd
b1054 = chromosome(464);	% lpxL
b1855 = chromosome(465);	% lpxM
b2378 = chromosome(466);	% lpxP
b2779 = chromosome(467);	% eno
b0583 = chromosome(468);	% entD
b0585 = chromosome(469);	% fes
b2440 = chromosome(470);	% eutC
b2441 = chromosome(471);	% eutB
b0825 = chromosome(472);	% fsaA
b3946 = chromosome(473);	% fsaB
b0822 = chromosome(474);	% ybiV
b3666 = chromosome(475);	% uhpT
b0404 = chromosome(476);	% acpH
b0452 = chromosome(477);	% tesB
b1805 = chromosome(478);	% fadD
b1701 = chromosome(479);	% fadK
b3844 = chromosome(480);	% fre
b2763 = chromosome(481);	% cysI
b2764 = chromosome(482);	% cysJ
b2097 = chromosome(483);	% fbaB
b2925 = chromosome(484);	% fbaA
b1773 = chromosome(485);	% ydjI
b4232 = chromosome(486);	% fbp
b3925 = chromosome(487);	% glpX
b2802 = chromosome(488);	% fucI
b2803 = chromosome(489);	% fucK
b2800 = chromosome(490);	% fucA
b2738 = chromosome(491);	% ygbL
b0475 = chromosome(492);	% hemH
b3892 = chromosome(493);	% fdoI
b3893 = chromosome(494);	% fdoH
b3894 = chromosome(495);	% fdoG
b1474 = chromosome(496);	% fdnG
b1475 = chromosome(497);	% fdnH
b1476 = chromosome(498);	% fdnI
b0935 = chromosome(499);	% ssuD
b3409 = chromosome(500);	% feoB
b2392 = chromosome(501);	% mntH
b4290 = chromosome(502);	% fecB
b4289 = chromosome(503);	% fecC
b4288 = chromosome(504);	% fecD
b4287 = chromosome(505);	% fecE
b4291 = chromosome(506);	% fecA
b0592 = chromosome(507);	% fepB
b0588 = chromosome(508);	% fepC
b0590 = chromosome(509);	% fepD
b0589 = chromosome(510);	% fepG
b0805 = chromosome(511);	% fiu
b2155 = chromosome(512);	% cirA
b0150 = chromosome(513);	% fhuA
b0584 = chromosome(514);	% fepA
b0591 = chromosome(515);	% entS
b4079 = chromosome(516);	% fdhF
b2481 = chromosome(517);	% hyfA
b2482 = chromosome(518);	% hyfB
b2483 = chromosome(519);	% hyfC
b2484 = chromosome(520);	% hyfD
b2485 = chromosome(521);	% hyfE
b2486 = chromosome(522);	% hyfF
b2487 = chromosome(523);	% hyfG
b2488 = chromosome(524);	% hyfH
b2489 = chromosome(525);	% hyfI
b2490 = chromosome(526);	% hyfJ
b2719 = chromosome(527);	% hycG
b2720 = chromosome(528);	% hycF
b2721 = chromosome(529);	% hycE
b2722 = chromosome(530);	% hycD
b2723 = chromosome(531);	% hycC
b2724 = chromosome(532);	% hycB
b0684 = chromosome(533);	% fldA
b3924 = chromosome(534);	% fpr
b2895 = chromosome(535);	% fldB
b3288 = chromosome(536);	% fmt
b0025 = chromosome(537);	% ribF
b0937 = chromosome(538);	% ssuE
b0904 = chromosome(539);	% focA
b2492 = chromosome(540);	% focB
b4151 = chromosome(541);	% frdD
b4152 = chromosome(542);	% frdC
b4153 = chromosome(543);	% frdB
b4154 = chromosome(544);	% frdA
b2168 = chromosome(545);	% fruK
b3371 = chromosome(546);	% frlB
b4474 = chromosome(547);	% frlC
b3374 = chromosome(548);	% frlD
b3370 = chromosome(549);	% frlA
b4321 = chromosome(550);	% gntP
b2167 = chromosome(551);	% fruA
b2169 = chromosome(552);	% fruB
b1232 = chromosome(553);	% purU
b2801 = chromosome(554);	% fucP
b1612 = chromosome(555);	% fumA
b4122 = chromosome(556);	% fumB
b1611 = chromosome(557);	% fumC
b0621 = chromosome(558);	% dcuC
b3730 = chromosome(559);	% glmU
b1002 = chromosome(560);	% agp
b2039 = chromosome(561);	% rfbA
b3789 = chromosome(562);	% rffH
b0154 = chromosome(563);	% hemL
b4055 = chromosome(564);	% aphA
b4041 = chromosome(565);	% plsB
b3452 = chromosome(566);	% ugpA
b3453 = chromosome(567);	% ugpB
b3450 = chromosome(568);	% ugpC
b3451 = chromosome(569);	% ugpE
b3608 = chromosome(570);	% gpsA
b2241 = chromosome(571);	% glpA
b2242 = chromosome(572);	% glpB
b2243 = chromosome(573);	% glpC
b3426 = chromosome(574);	% glpD
b0243 = chromosome(575);	% proA
b0678 = chromosome(576);	% nagB
b1852 = chromosome(577);	% zwf
b3128 = chromosome(578);	% garD
b4358 = chromosome(579);	% yjjN
b4478 = chromosome(580);	% dgoD
b4356 = chromosome(581);	% yjjL
b3691 = chromosome(582);	% dgoT
b2789 = chromosome(583);	% gudP
b3127 = chromosome(584);	% garP
b2045 = chromosome(585);	% wcaK
b0757 = chromosome(586);	% galK
b0756 = chromosome(587);	% galM
b4119 = chromosome(588);	% melA
b3628 = chromosome(589);	% waaB
b2094 = chromosome(590);	% gatA
b2093 = chromosome(591);	% gatB
b2092 = chromosome(592);	% gatC
b3093 = chromosome(593);	% exuT
b1236 = chromosome(594);	% galU
b2149 = chromosome(595);	% mglA
b2150 = chromosome(596);	% mglB
b2148 = chromosome(597);	% mglC
b2943 = chromosome(598);	% galP
b1779 = chromosome(599);	% gapA
b2500 = chromosome(600);	% purN
b1415 = chromosome(601);	% aldA
b2052 = chromosome(602);	% fcl
b2784 = chromosome(603);	% relA
b3650 = chromosome(604);	% spoT
b2051 = chromosome(605);	% gmm
b2467 = chromosome(606);	% nudK
b3729 = chromosome(607);	% glmS
b1298 = chromosome(608);	% puuD
b1301 = chromosome(609);	% puuB
b1297 = chromosome(610);	% puuA
b3432 = chromosome(611);	% glgB
b0459 = chromosome(612);	% maa
b0124 = chromosome(613);	% gcd
b0837 = chromosome(614);	% yliI
b3415 = chromosome(615);	% gntT
b4476 = chromosome(616);	% gntU
b3428 = chromosome(617);	% glgP
b3417 = chromosome(618);	% malP
b3126 = chromosome(619);	% garL
b2787 = chromosome(620);	% gudD
b2788 = chromosome(621);	% gudX
b3429 = chromosome(622);	% glgA
b3631 = chromosome(623);	% waaG
b3627 = chromosome(624);	% waaI
b3626 = chromosome(625);	% waaJ
b1621 = chromosome(626);	% malX
b3431 = chromosome(627);	% glgX
b3430 = chromosome(628);	% glgC
b3870 = chromosome(629);	% glnA
b0680 = chromosome(630);	% glnS
b0811 = chromosome(631);	% glnH
b0810 = chromosome(632);	% glnP
b0809 = chromosome(633);	% glnQ
b2091 = chromosome(634);	% gatD
b0242 = chromosome(635);	% proB
b1492 = chromosome(636);	% gadC
b2688 = chromosome(637);	% gshA
b3517 = chromosome(638);	% gadA
b1493 = chromosome(639);	% gadB
b1761 = chromosome(640);	% gdhA
b0485 = chromosome(641);	% ybaS
b1524 = chromosome(642);	% yneH
b2312 = chromosome(643);	% purF
b3967 = chromosome(644);	% murI
b3212 = chromosome(645);	% gltB
b3213 = chromosome(646);	% gltD
b1210 = chromosome(647);	% hemA
b2400 = chromosome(648);	% gltX
b3653 = chromosome(649);	% gltS
b0507 = chromosome(650);	% gcl
b3927 = chromosome(651);	% glpF
b3617 = chromosome(652);	% kbl
b2240 = chromosome(653);	% glpT
b0514 = chromosome(654);	% glxK
b3124 = chromosome(655);	% garK
b2904 = chromosome(656);	% gcvH
b2903 = chromosome(657);	% gcvP
b2905 = chromosome(658);	% gcvT
b1033 = chromosome(659);	% ghrA
b2979 = chromosome(660);	% glcD
b4467 = chromosome(661);	% glcF
b4468 = chromosome(662);	% glcE
b3926 = chromosome(663);	% glpK
b0212 = chromosome(664);	% gloB
b3559 = chromosome(665);	% glyS
b3560 = chromosome(666);	% glyQ
b2053 = chromosome(667);	% gmd
b3052 = chromosome(668);	% rfaE
b0200 = chromosome(669);	% gmhB
b0104 = chromosome(670);	% guaC
b2507 = chromosome(671);	% guaA
b2029 = chromosome(672);	% gnd
b4268 = chromosome(673);	% idnK
b3437 = chromosome(674);	% gntK
b3449 = chromosome(675);	% ugpQ
b2239 = chromosome(676);	% glpQ
b3610 = chromosome(677);	% grxC
b0849 = chromosome(678);	% grxA
b1654 = chromosome(679);	% grxD
b0477 = chromosome(680);	% gsk
b2988 = chromosome(681);	% gss
b3500 = chromosome(682);	% gor
b3447 = chromosome(683);	% ggt
b0829 = chromosome(684);	% gsiA
b0830 = chromosome(685);	% gsiB
b0831 = chromosome(686);	% gsiC
b0832 = chromosome(687);	% gsiD
b2947 = chromosome(688);	% gshB
b2153 = chromosome(689);	% folE
b1277 = chromosome(690);	% ribA
b3779 = chromosome(691);	% gpp
b2883 = chromosome(692);	% guaD
b0238 = chromosome(693);	% gpt
b0125 = chromosome(694);	% hpt
b3092 = chromosome(695);	% uxaC
b3875 = chromosome(696);	% ompL
b1319 = chromosome(697);	% ompG
b0957 = chromosome(698);	% ompA
b0875 = chromosome(699);	% aqpZ
b4040 = chromosome(700);	% ubiA
b0353 = chromosome(701);	% mhpT
b0339 = chromosome(702);	% cynT
b0126 = chromosome(703);	% can
b0261 = chromosome(704);	% mmuM
b0428 = chromosome(705);	% cyoE
b3630 = chromosome(706);	% waaP
b3625 = chromosome(707);	% waaY
b3621 = chromosome(708);	% waaC
b3620 = chromosome(709);	% waaF
b3632 = chromosome(710);	% waaQ
b3623 = chromosome(711);	% waaU
b2104 = chromosome(712);	% thiM
b2388 = chromosome(713);	% glk
b0394 = chromosome(714);	% mak
b2020 = chromosome(715);	% hisD
b2022 = chromosome(716);	% hisB
b2514 = chromosome(717);	% hisS
b2309 = chromosome(718);	% hisJ
b0112 = chromosome(719);	% aroP
b0349 = chromosome(720);	% mhpC
b3805 = chromosome(721);	% hemC
b2103 = chromosome(722);	% thiD
b2418 = chromosome(723);	% pdxK
b0813 = chromosome(724);	% rhtA
b3824 = chromosome(725);	% rhtB
b0352 = chromosome(726);	% mhpE
b0142 = chromosome(727);	% folK
b0508 = chromosome(728);	% hyi
b0003 = chromosome(729);	% thrB
b4013 = chromosome(730);	% metA
b2021 = chromosome(731);	% hisC
b2866 = chromosome(732);	% xdhA
b2867 = chromosome(733);	% xdhB
b2868 = chromosome(734);	% xdhC
b0972 = chromosome(735);	% hyaA
b0973 = chromosome(736);	% hyaB
b0974 = chromosome(737);	% hyaC
b2994 = chromosome(738);	% hybC
b2997 = chromosome(739);	% hybO
b1136 = chromosome(740);	% icd
b2265 = chromosome(741);	% menF
b0593 = chromosome(742);	% entC
b0595 = chromosome(743);	% entB
b4015 = chromosome(744);	% aceA
b4267 = chromosome(745);	% idnD
b2023 = chromosome(746);	% hisH
b2025 = chromosome(747);	% hisF
b1262 = chromosome(748);	% trpC
b3770 = chromosome(749);	% ilvE
b0026 = chromosome(750);	% ileS
b0401 = chromosome(751);	% brnQ
b2508 = chromosome(752);	% guaB
b3265 = chromosome(753);	% acrE
b3266 = chromosome(754);	% acrF
b3161 = chromosome(755);	% mtr
b3679 = chromosome(756);	% yidK
b2889 = chromosome(757);	% idi
b0073 = chromosome(758);	% leuB
b0071 = chromosome(759);	% leuD
b0072 = chromosome(760);	% leuC
b0074 = chromosome(761);	% leuA
b3845 = chromosome(762);	% fadA
b2342 = chromosome(763);	% fadI
b0918 = chromosome(764);	% kdsB
b3198 = chromosome(765);	% kdsC
b1215 = chromosome(766);	% kdsA
b4196 = chromosome(767);	% ulaD
b3581 = chromosome(768);	% sgbH
b0698 = chromosome(769);	% kdpA
b0697 = chromosome(770);	% kdpB
b0696 = chromosome(771);	% kdpC
b1250 = chromosome(772);	% kch
b1291 = chromosome(773);	% sapD
b3290 = chromosome(774);	% trkA
b1363 = chromosome(775);	% trkG
b3747 = chromosome(776);	% kup
b3849 = chromosome(777);	% trkH
b0842 = chromosome(778);	% mdfA
b3350 = chromosome(779);	% kefB
b0047 = chromosome(780);	% kefC
b2257 = chromosome(781);	% arnT
b0344 = chromosome(782);	% lacZ
b2132 = chromosome(783);	% bglX
b1326 = chromosome(784);	% mpaA
b2799 = chromosome(785);	% fucO
b2170 = chromosome(786);	% setB
b0070 = chromosome(787);	% setA
b0343 = chromosome(788);	% lacY
b2133 = chromosome(789);	% dld
b1380 = chromosome(790);	% ldhA
b4054 = chromosome(791);	% tyrB
b0642 = chromosome(792);	% leuS
b3458 = chromosome(793);	% livK
b1651 = chromosome(794);	% gloA
b0622 = chromosome(795);	% pagP
b0182 = chromosome(796);	% lpxB
b0494 = chromosome(797);	% tesA
b3825 = chromosome(798);	% pldB
b0186 = chromosome(799);	% ldcC
b4131 = chromosome(800);	% cadA
b2890 = chromosome(801);	% lysS
b4129 = chromosome(802);	% lysU
b2156 = chromosome(803);	% lysP
b3903 = chromosome(804);	% rhaA
b3907 = chromosome(805);	% rhaT
b3605 = chromosome(806);	% lldD
b3600 = chromosome(807);	% mtlD
b1800 = chromosome(808);	% dmlA
b4014 = chromosome(809);	% aceB
b2976 = chromosome(810);	% glcB
b2049 = chromosome(811);	% cpsB
b1613 = chromosome(812);	% manA
b4323 = chromosome(813);	% uxuB
b0731 = chromosome(814);	% mngA
b0732 = chromosome(815);	% mngB
b0334 = chromosome(816);	% prpD
b0331 = chromosome(817);	% prpB
b0333 = chromosome(818);	% prpC
b1092 = chromosome(819);	% fabD
b2521 = chromosome(820);	% sseA
b0084 = chromosome(821);	% ftsI
b0635 = chromosome(822);	% mrdA
b0149 = chromosome(823);	% mrcB
b3396 = chromosome(824);	% mrcA
b0632 = chromosome(825);	% dacA
b3182 = chromosome(826);	% dacB
b0839 = chromosome(827);	% dacC
b2010 = chromosome(828);	% dacD
b2328 = chromosome(829);	% mepA
b2134 = chromosome(830);	% pbpG
b3236 = chromosome(831);	% mdh
b2210 = chromosome(832);	% mqo
b1479 = chromosome(833);	% maeA
b2463 = chromosome(834);	% maeB
b2515 = chromosome(835);	% ispG
b2746 = chromosome(836);	% ispF
b4120 = chromosome(837);	% melB
b2747 = chromosome(838);	% ispD
b2942 = chromosome(839);	% metK
b0198 = chromosome(840);	% metI
b0199 = chromosome(841);	% metN
b0197 = chromosome(842);	% metQ
b4019 = chromosome(843);	% metH
b3829 = chromosome(844);	% metE
b4219 = chromosome(845);	% msrA
b1778 = chromosome(846);	% msrB
b2114 = chromosome(847);	% metG
b4242 = chromosome(848);	% mgtA
b0963 = chromosome(849);	% mgsA
b2533 = chromosome(850);	% suhB
b0403 = chromosome(851);	% malZ
b4392 = chromosome(852);	% slt
b2813 = chromosome(853);	% mltA
b2701 = chromosome(854);	% mltB
b1193 = chromosome(855);	% emtA
b2963 = chromosome(856);	% mltC
b2919 = chromosome(857);	% scpB
b0260 = chromosome(858);	% mmuP
b2917 = chromosome(859);	% scpA
b3599 = chromosome(860);	% mtlA
b4322 = chromosome(861);	% uxuA
b3633 = chromosome(862);	% waaA
b3624 = chromosome(863);	% waaZ
b0763 = chromosome(864);	% modA
b0764 = chromosome(865);	% modB
b0765 = chromosome(866);	% modC
b2422 = chromosome(867);	% cysA
b2424 = chromosome(868);	% cysU
b2423 = chromosome(869);	% cysW
b3917 = chromosome(870);	% sbp
b2425 = chromosome(871);	% cysP
b0134 = chromosome(872);	% panB
b2519 = chromosome(873);	% pbpC
b0529 = chromosome(874);	% folD
b3941 = chromosome(875);	% metF
b1059 = chromosome(876);	% solA
b2411 = chromosome(877);	% ligA
b3996 = chromosome(878);	% nudC
b1109 = chromosome(879);	% ndh
b2276 = chromosome(880);	% nuoN
b2277 = chromosome(881);	% nuoM
b2278 = chromosome(882);	% nuoL
b2279 = chromosome(883);	% nuoK
b2280 = chromosome(884);	% nuoJ
b2281 = chromosome(885);	% nuoI
b2282 = chromosome(886);	% nuoH
b2283 = chromosome(887);	% nuoG
b2284 = chromosome(888);	% nuoF
b2285 = chromosome(889);	% nuoE
b2286 = chromosome(890);	% nuoC
b2287 = chromosome(891);	% nuoB
b2288 = chromosome(892);	% nuoA
b2615 = chromosome(893);	% nadK
b3028 = chromosome(894);	% mdaB
b1740 = chromosome(895);	% nadE
b3962 = chromosome(896);	% sthA
b1602 = chromosome(897);	% pntB
b1603 = chromosome(898);	% pntA
b0931 = chromosome(899);	% pncB
b1186 = chromosome(900);	% nhaB
b0019 = chromosome(901);	% nhaA
b2518 = chromosome(902);	% ndk
b0451 = chromosome(903);	% amtB
b2710 = chromosome(904);	% norV
b2711 = chromosome(905);	% norW
b3476 = chromosome(906);	% nikA
b3477 = chromosome(907);	% nikB
b3478 = chromosome(908);	% nikC
b3479 = chromosome(909);	% nikD
b3480 = chromosome(910);	% nikE
b0639 = chromosome(911);	% nadD
b4390 = chromosome(912);	% nadR
b0751 = chromosome(913);	% pnuC
b1768 = chromosome(914);	% pncA
b1991 = chromosome(915);	% cobT
b0109 = chromosome(916);	% nadC
b3367 = chromosome(917);	% nirC
b1223 = chromosome(918);	% narK
b2203 = chromosome(919);	% napB
b2206 = chromosome(920);	% napA
b2202 = chromosome(921);	% napC
b2205 = chromosome(922);	% napG
b2204 = chromosome(923);	% napH
b1465 = chromosome(924);	% narV
b1466 = chromosome(925);	% narW
b1467 = chromosome(926);	% narY
b1468 = chromosome(927);	% narZ
b1224 = chromosome(928);	% narG
b1225 = chromosome(929);	% narH
b1226 = chromosome(930);	% narJ
b1227 = chromosome(931);	% narI
b1469 = chromosome(932);	% narU
b2552 = chromosome(933);	% hmp
b2262 = chromosome(934);	% menB
b2291 = chromosome(935);	% yfbR
b2744 = chromosome(936);	% umpG
b4374 = chromosome(937);	% yjjG
b0480 = chromosome(938);	% ushA
b0650 = chromosome(939);	% hscC
b4161 = chromosome(940);	% rsgA
b4394 = chromosome(941);	% yjjX
b0980 = chromosome(942);	% appA
b2781 = chromosome(943);	% mazG
b2954 = chromosome(944);	% rdgB
b1759 = chromosome(945);	% nudG
b0160 = chromosome(946);	% dgt
b3365 = chromosome(947);	% nirB
b3366 = chromosome(948);	% nirD
b4070 = chromosome(949);	% nrfA
b4071 = chromosome(950);	% nrfB
b4072 = chromosome(951);	% nrfC
b4073 = chromosome(952);	% nrfD
b2035 = chromosome(953);	% wbbH
b2027 = chromosome(954);	% wzzB
b2033 = chromosome(955);	% wbbJ
b2037 = chromosome(956);	% rfbX
b2034 = chromosome(957);	% wbbI
b2032 = chromosome(958);	% wbbK
b0902 = chromosome(959);	% pflA
b0903 = chromosome(960);	% pflB
b2579 = chromosome(961);	% grcA
b3114 = chromosome(962);	% tdcE
b4254 = chromosome(963);	% argI
b0273 = chromosome(964);	% argF
b3187 = chromosome(965);	% ispB
b0907 = chromosome(966);	% serC
b0662 = chromosome(967);	% ubiF
b1281 = chromosome(968);	% pyrF
b2907 = chromosome(969);	% ubiH
b0350 = chromosome(970);	% mhpD
b3843 = chromosome(971);	% ubiD
b2311 = chromosome(972);	% ubiX
b3835 = chromosome(973);	% ubiB
b2965 = chromosome(974);	% speC
b0693 = chromosome(975);	% speF
b3642 = chromosome(976);	% pyrE
b2264 = chromosome(977);	% menD
b1014 = chromosome(978);	% putA
b0386 = chromosome(979);	% proC
b1398 = chromosome(980);	% paaK
b0133 = chromosome(981);	% panC
b1278 = chromosome(982);	% pgpB
b0087 = chromosome(983);	% mraY
b2762 = chromosome(984);	% cysH
b1489 = chromosome(985);	% dosP
b0114 = chromosome(986);	% aceE
b0115 = chromosome(987);	% aceF
b1638 = chromosome(988);	% pdxH
b0052 = chromosome(989);	% pdxA
b2564 = chromosome(990);	% pdxJ
b2320 = chromosome(991);	% pdxB
b3546 = chromosome(992);	% eptB
b3916 = chromosome(993);	% pfkA
b1723 = chromosome(994);	% pfkB
b3951 = chromosome(995);	% pflD
b3952 = chromosome(996);	% pflC
b3176 = chromosome(997);	% glmM
b2913 = chromosome(998);	% serA
b4025 = chromosome(999);	% pgi
b2926 = chromosome(1000);	% pgk
b0767 = chromosome(1001);	% pgl
b3385 = chromosome(1002);	% gph
b3612 = chromosome(1003);	% gpmM
b4395 = chromosome(1004);	% ytjC
b0755 = chromosome(1005);	% gpmA
b2690 = chromosome(1006);	% yqaB
b0688 = chromosome(1007);	% pgm
b0418 = chromosome(1008);	% pgpA
b1912 = chromosome(1009);	% pgsA
b2201 = chromosome(1010);	% ccmA
b2200 = chromosome(1011);	% ccmB
b2199 = chromosome(1012);	% ccmC
b1713 = chromosome(1013);	% pheT
b1714 = chromosome(1014);	% pheS
b0576 = chromosome(1015);	% pheP
b2987 = chromosome(1016);	% pitB
b3493 = chromosome(1017);	% pitA
b3726 = chromosome(1018);	% pstA
b3725 = chromosome(1019);	% pstB
b3727 = chromosome(1020);	% pstC
b3728 = chromosome(1021);	% pstS
b3821 = chromosome(1022);	% pldA
b2048 = chromosome(1023);	% cpsG
b3974 = chromosome(1024);	% coaA
b3258 = chromosome(1025);	% panF
b0871 = chromosome(1026);	% poxB
b4226 = chromosome(1027);	% ppa
b2502 = chromosome(1028);	% ppx
b1015 = chromosome(1029);	% putP
b0369 = chromosome(1030);	% hemB
b3956 = chromosome(1031);	% ppc
b3639 = chromosome(1032);	% dfp
b3403 = chromosome(1033);	% pck
b2920 = chromosome(1034);	% scpC
b2501 = chromosome(1035);	% ppk
b4383 = chromosome(1036);	% deoB
b3380 = chromosome(1037);	% yhfW
b3850 = chromosome(1038);	% hemG
b2536 = chromosome(1039);	% hcaT
b1702 = chromosome(1040);	% ppsA
b0383 = chromosome(1041);	% phoA
b4005 = chromosome(1042);	% purD
b2499 = chromosome(1043);	% purM
b2026 = chromosome(1044);	% hisI
b2476 = chromosome(1045);	% purC
b2557 = chromosome(1046);	% purL
b2024 = chromosome(1047);	% hisA
b0194 = chromosome(1048);	% proS
b1207 = chromosome(1049);	% prs
b0908 = chromosome(1050);	% aroA
b4160 = chromosome(1051);	% psd
b4388 = chromosome(1052);	% serB
b2585 = chromosome(1053);	% pssA
b2297 = chromosome(1054);	% pta
b2458 = chromosome(1055);	% eutD
b3634 = chromosome(1056);	% coaD
b0692 = chromosome(1057);	% potE
b3073 = chromosome(1058);	% patA
b0854 = chromosome(1059);	% potF
b0855 = chromosome(1060);	% potG
b0856 = chromosome(1061);	% potH
b0857 = chromosome(1062);	% potI
b1126 = chromosome(1063);	% potA
b1125 = chromosome(1064);	% potB
b1124 = chromosome(1065);	% potC
b1123 = chromosome(1066);	% potD
b1440 = chromosome(1067);	% ydcS
b1441 = chromosome(1068);	% ydcT
b1442 = chromosome(1069);	% ydcU
b1443 = chromosome(1070);	% ydcV
b1296 = chromosome(1071);	% puuP
b2407 = chromosome(1072);	% xapA
b1636 = chromosome(1073);	% pdxY
b1854 = chromosome(1074);	% pykA
b1676 = chromosome(1075);	% pykF
b3831 = chromosome(1076);	% udp
b3029 = chromosome(1077);	% ygiN
b0750 = chromosome(1078);	% nadA
b4094 = chromosome(1079);	% phnN
b1662 = chromosome(1080);	% ribC
b0415 = chromosome(1081);	% ribE
b3752 = chromosome(1082);	% rbsK
b0063 = chromosome(1083);	% araB
b0061 = chromosome(1084);	% araD
b4198 = chromosome(1085);	% ulaF
b3583 = chromosome(1086);	% sgbE
b3629 = chromosome(1087);	% waaS
b2687 = chromosome(1088);	% luxS
b4231 = chromosome(1089);	% yjfF
b4227 = chromosome(1090);	% ytfQ
b4485 = chromosome(1091);	% ytfR
b4230 = chromosome(1092);	% ytfT
b3749 = chromosome(1093);	% rbsA
b3751 = chromosome(1094);	% rbsB
b3750 = chromosome(1095);	% rbsC
b3748 = chromosome(1096);	% rbsD
b3904 = chromosome(1097);	% rhaB
b3902 = chromosome(1098);	% rhaD
b2234 = chromosome(1099);	% nrdA
b2235 = chromosome(1100);	% nrdB
b2675 = chromosome(1101);	% nrdE
b2676 = chromosome(1102);	% nrdF
b4238 = chromosome(1103);	% nrdD
b4237 = chromosome(1104);	% nrdG
b4301 = chromosome(1105);	% sgcE
b3386 = chromosome(1106);	% rpe
b2914 = chromosome(1107);	% rpiA
b0638 = chromosome(1108);	% cobC
b0222 = chromosome(1109);	% lpcA
b1745 = chromosome(1110);	% astB
b2751 = chromosome(1111);	% cysN
b2752 = chromosome(1112);	% cysD
b2705 = chromosome(1113);	% srlD
b2702 = chromosome(1114);	% srlA
b2704 = chromosome(1115);	% srlB
b2703 = chromosome(1116);	% srlE
b2472 = chromosome(1117);	% dapE
b3591 = chromosome(1118);	% selA
b1764 = chromosome(1119);	% selD
b0586 = chromosome(1120);	% entF
b3607 = chromosome(1121);	% cysE
b2366 = chromosome(1122);	% dsdA
b4471 = chromosome(1123);	% tdcG
b1814 = chromosome(1124);	% sdaA
b2797 = chromosome(1125);	% sdaB
b0893 = chromosome(1126);	% serS
b2796 = chromosome(1127);	% sdaC
b3116 = chromosome(1128);	% tdcC
b3089 = chromosome(1129);	% sstT
b2154 = chromosome(1130);	% yeiG
b0355 = chromosome(1131);	% frmB
b1744 = chromosome(1132);	% astE
b1746 = chromosome(1133);	% astD
b3368 = chromosome(1134);	% cysG
b3281 = chromosome(1135);	% aroE
b1692 = chromosome(1136);	% ydiB
b3390 = chromosome(1137);	% aroK
b0388 = chromosome(1138);	% aroL
b3939 = chromosome(1139);	% metB
b1981 = chromosome(1140);	% shiA
b1584 = chromosome(1141);	% speG
b0121 = chromosome(1142);	% speE
b3908 = chromosome(1143);	% sodA
b1656 = chromosome(1144);	% sodB
b1646 = chromosome(1145);	% sodC
b2661 = chromosome(1146);	% gabD
b2260 = chromosome(1147);	% menE
b2261 = chromosome(1148);	% menC
b0721 = chromosome(1149);	% sdhC
b0722 = chromosome(1150);	% sdhD
b0723 = chromosome(1151);	% sdhA
b0724 = chromosome(1152);	% sdhB
b0728 = chromosome(1153);	% sucC
b0729 = chromosome(1154);	% sucD
b1521 = chromosome(1155);	% uxaB
b2464 = chromosome(1156);	% talA
b0008 = chromosome(1157);	% talB
b3061 = chromosome(1158);	% ttdA
b3062 = chromosome(1159);	% ttdB
b3063 = chromosome(1160);	% ttdT
b0368 = chromosome(1161);	% tauD
b3790 = chromosome(1162);	% rffC
b3791 = chromosome(1163);	% rffA
b2038 = chromosome(1164);	% rfbC
b2040 = chromosome(1165);	% rfbD
b3788 = chromosome(1166);	% rffG
b2041 = chromosome(1167);	% rfbB
b0915 = chromosome(1168);	% lpxK
b3132 = chromosome(1169);	% kbaZ
b3137 = chromosome(1170);	% kbaY
b2095 = chromosome(1171);	% gatZ
b2096 = chromosome(1172);	% gatY
b0166 = chromosome(1173);	% dapD
b2480 = chromosome(1174);	% bcp
b0068 = chromosome(1175);	% tbpA
b0067 = chromosome(1176);	% thiP
b0066 = chromosome(1177);	% thiQ
b3616 = chromosome(1178);	% tdh
b3117 = chromosome(1179);	% tdcB
b3772 = chromosome(1180);	% ilvA
b1719 = chromosome(1181);	% thrS
b3823 = chromosome(1182);	% rhtC
b2530 = chromosome(1183);	% iscS
b3992 = chromosome(1184);	% thiF
b3990 = chromosome(1185);	% thiH
b3991 = chromosome(1186);	% thiG
b0423 = chromosome(1187);	% thiI
b4407 = chromosome(1188);	% thiS
b2935 = chromosome(1189);	% tktA
b2465 = chromosome(1190);	% tktB
b0996 = chromosome(1191);	% torC
b0997 = chromosome(1192);	% torA
b2827 = chromosome(1193);	% thyA
b1106 = chromosome(1194);	% thiK
b0417 = chromosome(1195);	% thiL
b3993 = chromosome(1196);	% thiE
b3919 = chromosome(1197);	% tpiA
b0613 = chromosome(1198);	% citG
b0888 = chromosome(1199);	% trxB
b4239 = chromosome(1200);	% treC
b1897 = chromosome(1201);	% otsB
b1896 = chromosome(1202);	% otsA
b3519 = chromosome(1203);	% treF
b1197 = chromosome(1204);	% treA
b4240 = chromosome(1205);	% treB
b1260 = chromosome(1206);	% trpA
b1261 = chromosome(1207);	% trpB
b3384 = chromosome(1208);	% trpS
b3709 = chromosome(1209);	% tnaB
b0509 = chromosome(1210);	% glxR
b3125 = chromosome(1211);	% garR
b1637 = chromosome(1212);	% tyrS
b1907 = chromosome(1213);	% tyrP
b0179 = chromosome(1214);	% lpxD
b0085 = chromosome(1215);	% murE
b3787 = chromosome(1216);	% rffD
b3786 = chromosome(1217);	% rffE
b0181 = chromosome(1218);	% lpxA
b3189 = chromosome(1219);	% murA
b0090 = chromosome(1220);	% murG
b0088 = chromosome(1221);	% murD
b0091 = chromosome(1222);	% murC
b3972 = chromosome(1223);	% murB
b3057 = chromosome(1224);	% bacA
b0841 = chromosome(1225);	% ybjG
b0174 = chromosome(1226);	% ispU
b0759 = chromosome(1227);	% galE
b2036 = chromosome(1228);	% glf
b2028 = chromosome(1229);	% ugd
b2255 = chromosome(1230);	% arnA
b2253 = chromosome(1231);	% arnB
b0758 = chromosome(1232);	% galT
b0505 = chromosome(1233);	% allA
b0086 = chromosome(1234);	% murF
b0096 = chromosome(1235);	% lpxC
b4233 = chromosome(1236);	% mpl
b0171 = chromosome(1237);	% pyrH
b2254 = chromosome(1238);	% arnC
b3803 = chromosome(1239);	% hemX
b3804 = chromosome(1240);	% hemD
b3997 = chromosome(1241);	% hemE
b2498 = chromosome(1242);	% upp
b2497 = chromosome(1243);	% uraA
b1006 = chromosome(1244);	% rutG
b0517 = chromosome(1245);	% allD
b0524 = chromosome(1246);	% lpxH
b4258 = chromosome(1247);	% valS
b3572 = chromosome(1248);	% avtA
b4197 = chromosome(1249);	% ulaE
b3565 = chromosome(1250);	% xylA
b3577 = chromosome(1251);	% yiaM
b3578 = chromosome(1252);	% yiaN
b3579 = chromosome(1253);	% yiaO
b3566 = chromosome(1254);	% xylF
b3567 = chromosome(1255);	% xylG
b3568 = chromosome(1256);	% xylH
b4031 = chromosome(1257);	% xylE
b1857 = chromosome(1258);	% znuA
b1859 = chromosome(1259);	% znuB
b1858 = chromosome(1260);	% znuC
 
rxtLogic = [
 1 ; 	% 1	M_12dgr120_p --> M_12dgr120_c
 1 ; 	% 2	M_12dgr140_p --> M_12dgr140_c
 1 ; 	% 3	M_12dgr141_p --> M_12dgr141_c
 1 ; 	% 4	M_12dgr160_p --> M_12dgr160_c
 1 ; 	% 5	M_12dgr161_p --> M_12dgr161_c
 1 ; 	% 6	M_12dgr180_p --> M_12dgr180_c
 1 ; 	% 7	M_12dgr181_p --> M_12dgr181_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 8	M_12ppd_R_e <--> M_12ppd_R_p
 1 ; 	% 9	M_12ppd_R_p <--> M_12ppd_R_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 10	M_12ppd_S_e <--> M_12ppd_S_p
 1 ; 	% 11	M_12ppd_S_p <--> M_12ppd_S_c
 ( b4034  &&  b4033  &&  b4032  &&  b4035 ) ; 	% 12	M_atp_c + M_h2o_c + M_14glucan_p --> M_14glucan_c + M_adp_c + M_h_c + M_pi_c
 b4036 ; 	% 13	M_14glucan_e --> M_14glucan_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 14	M_23camp_e <--> M_23camp_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 15	M_23ccmp_e <--> M_23ccmp_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 16	M_23cgmp_e <--> M_23cgmp_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 17	M_23cump_e <--> M_23cump_p
 1 ; 	% 18	M_23dappa_p + M_h_p --> M_23dappa_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 19	M_23dappa_e <--> M_23dappa_p
 b4213 ; 	% 20	M_23cump_p + M_h2o_p --> M_3ump_p + M_h_p
 b4213 ; 	% 21	M_23ccmp_p + M_h2o_p --> M_3cmp_p + M_h_p
 b4213 ; 	% 22	M_23camp_p + M_h2o_p --> M_3amp_p + M_h_p
 b4213 ; 	% 23	M_23cgmp_p + M_h2o_p --> M_3gmp_p + M_h_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 24	M_26dap_M_e <--> M_26dap_M_p
 b2835 ; 	% 25	M_2ddecg3p_p --> M_2ddecg3p_c
 b2835 ; 	% 26	M_2tdecg3p_p --> M_2tdecg3p_c
 b2835 ; 	% 27	M_2tdec7eg3p_p --> M_2tdec7eg3p_c
 b2835 ; 	% 28	M_2hdecg3p_p --> M_2hdecg3p_c
 b2835 ; 	% 29	M_2hdec9eg3p_p --> M_2hdec9eg3p_c
 b2835 ; 	% 30	M_2odecg3p_p --> M_2odecg3p_c
 b2835 ; 	% 31	M_2odec11eg3p_p --> M_2odec11eg3p_c
 b2835 ; 	% 32	M_2agpe120_p --> M_2agpe120_c
 b2835 ; 	% 33	M_2agpe140_p --> M_2agpe140_c
 b2835 ; 	% 34	M_2agpe141_p --> M_2agpe141_c
 b2835 ; 	% 35	M_2agpe160_p --> M_2agpe160_c
 b2835 ; 	% 36	M_2agpe161_p --> M_2agpe161_c
 b2835 ; 	% 37	M_2agpe180_p --> M_2agpe180_c
 b2835 ; 	% 38	M_2agpe181_p --> M_2agpe181_c
 b2836 ; 	% 39	M_2agpe120_c + M_atp_c + M_ddca_c --> M_amp_c + M_pe120_c + M_ppi_c
 b2836 ; 	% 40	M_2agpe140_c + M_atp_c + M_ttdca_c --> M_amp_c + M_pe140_c + M_ppi_c
 b2836 ; 	% 41	M_2agpe141_c + M_atp_c + M_ttdcea_c --> M_amp_c + M_pe141_c + M_ppi_c
 b2836 ; 	% 42	M_2agpe160_c + M_atp_c + M_hdca_c --> M_amp_c + M_pe160_c + M_ppi_c
 b2836 ; 	% 43	M_2agpe161_c + M_atp_c + M_hdcea_c --> M_amp_c + M_pe161_c + M_ppi_c
 b2836 ; 	% 44	M_2agpe180_c + M_atp_c + M_ocdca_c --> M_amp_c + M_pe180_c + M_ppi_c
 b2836 ; 	% 45	M_2agpe181_c + M_atp_c + M_ocdcea_c --> M_amp_c + M_pe181_c + M_ppi_c
 b2835 ; 	% 46	M_2agpg120_p --> M_2agpg120_c
 b2835 ; 	% 47	M_2agpg140_p --> M_2agpg140_c
 b2835 ; 	% 48	M_2agpg141_p --> M_2agpg141_c
 b2835 ; 	% 49	M_2agpg160_p --> M_2agpg160_c
 b2835 ; 	% 50	M_2agpg161_p --> M_2agpg161_c
 b2835 ; 	% 51	M_2agpg180_p --> M_2agpg180_c
 b2835 ; 	% 52	M_2agpg181_p --> M_2agpg181_c
 b2836 ; 	% 53	M_2agpg120_c + M_atp_c + M_ddca_c --> M_amp_c + M_pg120_c + M_ppi_c
 b2836 ; 	% 54	M_2agpg140_c + M_atp_c + M_ttdca_c --> M_amp_c + M_pg140_c + M_ppi_c
 b2836 ; 	% 55	M_2agpg141_c + M_atp_c + M_ttdcea_c --> M_amp_c + M_pg141_c + M_ppi_c
 b2836 ; 	% 56	M_2agpg160_c + M_atp_c + M_hdca_c --> M_amp_c + M_pg160_c + M_ppi_c
 b2836 ; 	% 57	M_2agpg161_c + M_atp_c + M_hdcea_c --> M_amp_c + M_pg161_c + M_ppi_c
 b2836 ; 	% 58	M_2agpg180_c + M_atp_c + M_ocdca_c --> M_amp_c + M_pg180_c + M_ppi_c
 b2836 ; 	% 59	M_2agpg181_c + M_atp_c + M_ocdcea_c --> M_amp_c + M_pg181_c + M_ppi_c
 b3553 ; 	% 60	M_2dhglcn_c + M_h_c + M_nadh_c --> M_glcn_c + M_nad_c
 b3553 ; 	% 61	M_2dhglcn_c + M_h_c + M_nadph_c --> M_glcn_c + M_nadp_c
 b3553 ; 	% 62	M_2dhguln_c + M_h_c + M_nadh_c --> M_idon_L_c + M_nad_c
 b3553 ; 	% 63	M_2dhguln_c + M_h_c + M_nadph_c --> M_idon_L_c + M_nadp_c
 ( b0446  ||  b1134 ) ; 	% 64	M_2mahmp_c + M_h2o_c --> M_4ampm_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 65	M_34dhpac_e <--> M_34dhpac_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 66	M_3amp_e <--> M_3amp_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 67	M_3cmp_e <--> M_3cmp_p
 ( b0241  ||  b1377  ||  b2215  ||  b0929 ) ; 	% 68	M_3gmp_e <--> M_3gmp_p
 ( b0954  ||  b0180 ) ; 	% 69	M_3hdecACP_c --> M_h2o_c + M_tdec2eACP_c
 ( b0954  ||  b0180 ) ; 	% 70	M_3hddecACP_c --> M_h2o_c + M_tddec2eACP_c
 ( b0180  ||  b0954 ) ; 	% 71	M_3hcddec5eACP_c --> M_h2o_c + M_t3c5ddeceACP_c
 ( b0954  ||  b0180 ) ; 	% 72	M_3hmrsACP_c --> M_h2o_c + M_tmrs2eACP_c
 ( b0954  ||  b0180 ) ; 	% 73	M_3hcmrs7eACP_c --> M_h2o_c + M_t3c7mrseACP_c
 ( b0954  ||  b0180 ) ; 	% 74	M_3hpalmACP_c --> M_h2o_c + M_tpalm2eACP_c
 ( b0180  ||  b0954 ) ; 	% 75	M_3hcpalm9eACP_c --> M_h2o_c + M_t3c9palmeACP_c
 ( b0954  ||  b0180 ) ; 	% 76	M_3hoctaACP_c --> M_h2o_c + M_toctd2eACP_c
 ( b0180  ||  b0954 ) ; 	% 77	M_3hcvac11eACP_c --> M_h2o_c + M_t3c11vaceACP_c
 ( b0954  ||  b0180 ) ; 	% 78	M_3haACP_c --> M_but2eACP_c + M_h2o_c
 ( b0954  ||  b0180 ) ; 	% 79	M_3hhexACP_c --> M_h2o_c + M_thex2eACP_c
 ( b0954  ||  b0180 ) ; 	% 80	M_3hoctACP_c --> M_h2o_c + M_toct2eACP_c
 b0347 ; 	% 81	M_3hcinnm_c + M_h_c + M_nadh_c + M_o2_c --> M_dhcinnm_c + M_h2o_c + M_nad_c
 b0347 ; 	% 82	M_3hpppn_c + M_h_c + M_nadh_c + M_o2_c --> M_dhpppn_c + M_h2o_c + M_nad_c
 b3580 ; 	% 83	M_3dhguln_c + M_atp_c --> M_3dhgulnp_c + M_adp_c + M_h_c
 b4213 ; 	% 84	M_3ump_p + M_h2o_p --> M_pi_p + M_uri_p
 b4213 ; 	% 85	M_3cmp_p + M_h2o_p --> M_cytd_p + M_pi_p
 b4213 ; 	% 86	M_3amp_p + M_h2o_p --> M_adn_p + M_pi_p
 b4213 ; 	% 87	M_3gmp_p + M_h2o_p --> M_gsn_p + M_pi_p
 b1093 ; 	% 88	M_3odecACP_c + M_h_c + M_nadph_c <--> M_3hdecACP_c + M_nadp_c
 b1093 ; 	% 89	M_3oddecACP_c + M_h_c + M_nadph_c <--> M_3hddecACP_c + M_nadp_c
 b1093 ; 	% 90	M_3ocddec5eACP_c + M_h_c + M_nadph_c --> M_3hcddec5eACP_c + M_nadp_c
 b1093 ; 	% 91	M_3omrsACP_c + M_h_c + M_nadph_c <--> M_3hmrsACP_c + M_nadp_c
 b1093 ; 	% 92	M_3ocmrs7eACP_c + M_h_c + M_nadph_c --> M_3hcmrs7eACP_c + M_nadp_c
 b1093 ; 	% 93	M_3opalmACP_c + M_h_c + M_nadph_c <--> M_3hpalmACP_c + M_nadp_c
 b1093 ; 	% 94	M_3ocpalm9eACP_c + M_h_c + M_nadph_c --> M_3hcpalm9eACP_c + M_nadp_c
 b1093 ; 	% 95	M_3ooctdACP_c + M_h_c + M_nadph_c <--> M_3hoctaACP_c + M_nadp_c
 b1093 ; 	% 96	M_3ocvac11eACP_c + M_h_c + M_nadph_c --> M_3hcvac11eACP_c + M_nadp_c
 b1093 ; 	% 97	M_actACP_c + M_h_c + M_nadph_c <--> M_3haACP_c + M_nadp_c
 b1093 ; 	% 98	M_3ohexACP_c + M_h_c + M_nadph_c <--> M_3hhexACP_c + M_nadp_c
 b1093 ; 	% 99	M_3ooctACP_c + M_h_c + M_nadph_c <--> M_3hoctACP_c + M_nadp_c
 ( b2323  ||  b1095 ) ; 	% 100	M_h_c + M_malACP_c + M_ocACP_c --> M_3odecACP_c + M_ACP_c + M_co2_c
 ( b2323  ||  b1095 ) ; 	% 101	M_dcaACP_c + M_h_c + M_malACP_c --> M_3oddecACP_c + M_ACP_c + M_co2_c
 b2323 ; 	% 102	M_cdec3eACP_c + M_h_c + M_malACP_c --> M_3ocddec5eACP_c + M_ACP_c + M_co2_c
 ( b2323  ||  b1095 ) ; 	% 103	M_ddcaACP_c + M_h_c + M_malACP_c --> M_3omrsACP_c + M_ACP_c + M_co2_c
 b2323 ; 	% 104	M_cddec5eACP_c + M_h_c + M_malACP_c --> M_3ocmrs7eACP_c + M_ACP_c + M_co2_c
 ( b2323  ||  b1095 ) ; 	% 105	M_h_c + M_malACP_c + M_myrsACP_c --> M_3opalmACP_c + M_ACP_c + M_co2_c
 b2323 ; 	% 106	M_h_c + M_malACP_c + M_tdeACP_c --> M_3ocpalm9eACP_c + M_ACP_c + M_co2_c
 ( b1095  ||  b2323 ) ; 	% 107	M_h_c + M_malACP_c + M_palmACP_c --> M_3ooctdACP_c + M_ACP_c + M_co2_c
 b1095 ; 	% 108	M_h_c + M_hdeACP_c + M_malACP_c --> M_3ocvac11eACP_c + M_ACP_c + M_co2_c
 ( b2323  ||  b1095 ) ; 	% 109	M_butACP_c + M_h_c + M_malACP_c --> M_3ohexACP_c + M_ACP_c + M_co2_c
 ( b2323  ||  b1095 ) ; 	% 110	M_h_c + M_hexACP_c + M_malACP_c --> M_3ooctACP_c + M_ACP_c + M_co2_c
 ( b1329  &&  b1244  &&  b1245  &&  b1246  &&  b1247 ) ; 	% 111	M_atp_c + M_h2o_c + M_LalaDgluMdap_p --> M_LalaDgluMdap_c + M_adp_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 112	M_LalaDgluMdap_e <--> M_LalaDgluMdap_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 113	M_3ump_e <--> M_3ump_p
 b1386 ; 	% 114	M_dopa_p + M_h2o_p + M_o2_p --> M_34dhpac_p + M_h2o2_p + M_nh4_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 115	M_4hoxpacd_e <--> M_4hoxpacd_p
 b0004 ; 	% 116	M_h2o_c + M_phthr_c --> M_4hthr_c + M_pi_c
 b1192 ; 	% 117	M_LalaDgluMdapDala_c + M_h2o_c --> M_LalaDgluMdap_c + M_ala_D_c
 1 ; 	% 118	M_LalaDgluMdapDala_p + M_h2o_p --> M_LalaDgluMdap_p + M_ala_D_p
 ( b1243  &&  b1244  &&  b1245  &&  b1246  &&  b1247 ) ; 	% 119	M_atp_c + M_h2o_c + M_LalaDgluMdapDala_p --> M_LalaDgluMdapDala_c + M_adp_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 120	M_LalaDgluMdapDala_e <--> M_LalaDgluMdapDala_p
 b4266 ; 	% 121	M_5dglcn_c + M_h_c + M_nadph_c <--> M_glcn_c + M_nadp_c
 b4265 ; 	% 122	M_5dglcn_p + M_h_p <--> M_5dglcn_c + M_h_c
 ( b0241  ||  b1377  ||  b0929  ||  b2215 ) ; 	% 123	M_5dglcn_e <--> M_5dglcn_p
 b0159 ; 	% 124	M_dad_5_c + M_h2o_c --> M_5drib_c + M_ade_c
 ( b2708  ||  b3197 ) ; 	% 125	M_ru5p_D_c <--> M_ara5p_c
 ( b2836  &&  b1094 ) ; 	% 126	M_ACP_c + M_atp_c + M_ttdca_c --> M_amp_c + M_myrsACP_c + M_ppi_c
 ( b2836  &&  b1094 ) ; 	% 127	M_ACP_c + M_atp_c + M_ttdcea_c --> M_amp_c + M_ppi_c + M_tdeACP_c
 ( b2836  &&  b1094 ) ; 	% 128	M_ACP_c + M_atp_c + M_hdca_c --> M_amp_c + M_palmACP_c + M_ppi_c
 ( b2836  &&  b1094 ) ; 	% 129	M_ACP_c + M_atp_c + M_hdcea_c --> M_amp_c + M_hdeACP_c + M_ppi_c
 ( b2836  &&  b1094 ) ; 	% 130	M_ACP_c + M_atp_c + M_ocdcea_c --> M_amp_c + M_octeACP_c + M_ppi_c
 ( b2836  &&  b1094 ) ; 	% 131	M_ACP_c + M_atp_c + M_ocdca_c --> M_amp_c + M_ocdcaACP_c + M_ppi_c
 ( b2836  &&  b1094 ) ; 	% 132	M_ACP_c + M_atp_c + M_ddca_c --> M_amp_c + M_ddcaACP_c + M_ppi_c
 ( b2836  &&  b1094 ) ; 	% 133	M_ACP_c + M_atp_c + M_dca_c --> M_amp_c + M_dcaACP_c + M_ppi_c
 ( b2836  &&  b1094 ) ; 	% 134	M_ACP_c + M_atp_c + M_octa_c --> M_amp_c + M_ocACP_c + M_ppi_c
 1 ; 	% 135	M_aact_c + M_h2o_c + M_o2_c --> M_h2o2_c + M_mthgxl_c + M_nh4_c
 b4481 ; 	% 136	M_dtdp4aaddg_c + M_unagamu_c --> M_dtdp_c + M_h_c + M_unagamuf_c
 b1927 ; 	% 137	M_14glucan_c --> M_malthx_c
 b3571 ; 	% 138	M_14glucan_p --> M_malthx_p
 b2901 ; 	% 139	M_arbt6p_c + M_h2o_c --> M_g6p_c + M_hqn_c
 ( b2662  ||  b1302 ) ; 	% 140	M_4abut_c + M_akg_c --> M_glu_L_c + M_sucsal_c
 b1444 ; 	% 141	M_4abutn_c + M_h2o_c + M_nad_c --> M_4abut_c + M_h_c + M_nadh_c
 b2663 ; 	% 142	M_4abut_p + M_h_p --> M_4abut_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 143	M_4abut_e <--> M_4abut_p
 ( b2221  &&  b2222 ) ; 	% 144	M_acac_c + M_accoa_c --> M_aacoa_c + M_ac_c
 b2224 ; 	% 145	M_accoa_c <--> M_aacoa_c + M_coa_c
 b2223 ; 	% 146	M_acac_p + M_h_p <--> M_acac_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 147	M_acac_e <--> M_acac_p
 ( b0351  ||  b1241 ) ; 	% 148	M_acald_c + M_coa_c + M_nad_c <--> M_accoa_c + M_h_c + M_nadh_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 149	M_acald_e <--> M_acald_p
 1 ; 	% 150	M_acald_p <--> M_acald_c
 b1463 ; 	% 151	M_accoa_c + M_anth_c --> M_acanth_c + M_coa_c
 b1993 ; 	% 152	M_adocbip_c + M_gtp_c + M_h_c --> M_agdpcbi_c + M_ppi_c
 ( b0185  &&  b2316  &&  b3255  &&  b3256 ) ; 	% 153	M_accoa_c + M_atp_c + M_hco3_c --> M_adp_c + M_h_c + M_malcoa_c + M_pi_c
 b0335 ; 	% 154	M_atp_c + M_coa_c + M_ppa_c --> M_adp_c + M_pi_c + M_ppcoa_c
 1 ; 	% 155	M_acgal1p_p + M_h2o_p --> M_acgal_p + M_pi_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 156	M_acgal1p_e <--> M_acgal1p_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 157	M_acgal_e <--> M_acgal_p
 1 ; 	% 158	M_acgam1p_p + M_h2o_p --> M_acgam_p + M_pi_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 159	M_acgam1p_e <--> M_acgam1p_p
 b1119 ; 	% 160	M_acgam_c + M_atp_c --> M_acgam6p_c + M_adp_c + M_h_c
 b3784 ; 	% 161	M_uacgam_c + M_udcpp_c --> M_ump_c + M_unaga_c
 ( ( b2417  &&  b1101  &&  b2415  &&  b2416 )  ||  ( b0679  &&  b2415  &&  b2416 ) ) ; 	% 162	M_pep_c + M_acgam_p --> M_acgam6p_c + M_pyr_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 163	M_acgam_e <--> M_acgam_p
 b3959 ; 	% 164	M_acglu_c + M_atp_c --> M_acg5p_c + M_adp_c
 b2818 ; 	% 165	M_accoa_c + M_glu_L_c --> M_acglu_c + M_coa_c + M_h_c
 ( ( b3670  &&  b3671 )  ||  ( b0077  &&  b0078 ) ) ; 	% 166	M_2obut_c + M_h_c + M_pyr_c --> M_2ahbut_c + M_co2_c
 ( b3115  ||  b2296  ||  b1849 ) ; 	% 167	M_ac_c + M_atp_c <--> M_actp_c + M_adp_c
 ( ( b0077  &&  b0078 )  ||  ( b3670  &&  b3671 ) ) ; 	% 168	M_h_c + M_pyr_c --> M_alac_S_c + M_co2_c
 1 ; 	% 169	M_acmum6p_c + M_h2o_c --> M_acgam6p_c + M_lac_D_c
 b3794 ; 	% 170	M_uacmamu_c + M_unaga_c --> M_h_c + M_udp_c + M_unagamu_c
 ( b1817  &&  b1818  &&  b1819  &&  b2415  &&  b2416 ) ; 	% 171	M_pep_c + M_acmana_p --> M_acmanap_c + M_pyr_c
 ( b2215  ||  b0241  ||  b0929  ||  b1377 ) ; 	% 172	M_acmana_e <--> M_acmana_p
 ( b2417  &&  b2429  &&  b2415  &&  b2416 ) ; 	% 173	M_pep_c + M_acmum_p --> M_acmum6p_c + M_pyr_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 174	M_acmum_e --> M_acmum_p
 b3224 ; 	% 175	M_acnam_p + M_h_p --> M_acnam_c + M_h_c
 ( b4311  ||  b0929  ||  b2215 ) ; 	% 176	M_acnam_e <--> M_acnam_p
 b3225 ; 	% 177	M_acnam_c --> M_acmana_c + M_pyr_c
 b0221 ; 	% 178	M_btcoa_c + M_fad_c <--> M_b2coa_c + M_fadh2_c
 b0221 ; 	% 179	M_fad_c + M_hxcoa_c <--> M_fadh2_c + M_hx2coa_c
 b0221 ; 	% 180	M_fad_c + M_occoa_c <--> M_fadh2_c + M_oc2coa_c
 b0221 ; 	% 181	M_dcacoa_c + M_fad_c <--> M_dc2coa_c + M_fadh2_c
 b0221 ; 	% 182	M_ddcacoa_c + M_fad_c <--> M_dd2coa_c + M_fadh2_c
 b0221 ; 	% 183	M_fad_c + M_tdcoa_c <--> M_fadh2_c + M_td2coa_c
 b0221 ; 	% 184	M_fad_c + M_pmtcoa_c <--> M_fadh2_c + M_hdd2coa_c
 b0221 ; 	% 185	M_fad_c + M_stcoa_c <--> M_fadh2_c + M_od2coa_c
 ( b1094  &&  b1091 ) ; 	% 186	M_ACP_c + M_accoa_c <--> M_acACP_c + M_coa_c
 b3957 ; 	% 187	M_acorn_c + M_h2o_c --> M_ac_c + M_orn_c
 1 ; 	% 188	M_acolipa_p --> M_acolipa_e
 1 ; 	% 189	M_acon_T_c <--> M_acon_C_c
 b1519 ; 	% 190	M_acon_T_c + M_amet_c --> M_aconm_c + M_ahcys_c
 ( b0118  ||  b1276 ) ; 	% 191	M_cit_c <--> M_acon_C_c + M_h2o_c
 ( b0118  ||  b1276 ) ; 	% 192	M_acon_C_c + M_h2o_c <--> M_icit_c
 ( b3359  ||  b1748 ) ; 	% 193	M_acorn_c + M_akg_c <--> M_acg5sa_c + M_glu_L_c
 ( b2563  ||  b3475 ) ; 	% 194	M_apoACP_c + M_coa_c --> M_ACP_c + M_h_c + M_pap_c
 b4069 ; 	% 195	M_ac_c + M_atp_c + M_coa_c --> M_accoa_c + M_amp_c + M_ppi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 196	M_acser_e <--> M_acser_p
 ( b2578  ||  b1533 ) ; 	% 197	M_acser_c --> M_acser_p
 1 ; 	% 198	M_ac_p + M_h_p <--> M_ac_c + M_h_c
 b4067 ; 	% 199	M_ac_p + M_na1_p --> M_ac_c + M_na1_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 200	M_ac_e <--> M_ac_p
 b1623 ; 	% 201	M_adn_c + M_h_c + M_h2o_c --> M_ins_c + M_nh4_c
 b1096 ; 	% 202	M_4adcho_c --> M_4abz_c + M_h_c + M_pyr_c
 ( b3360  &&  b1812 ) ; 	% 203	M_chor_c + M_gln_L_c --> M_4adcho_c + M_glu_L_c
 b3665 ; 	% 204	M_ade_c + M_h_c + M_h2o_c --> M_hxan_c + M_nh4_c
 b3654 ; 	% 205	M_ade_p + M_h_p <--> M_ade_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 206	M_ade_e <--> M_ade_p
 b0474 ; 	% 207	M_amp_c + M_atp_c <--> M_adp_c
 b0474 ; 	% 208	M_amp_c + M_gtp_c <--> M_adp_c + M_gdp_c
 b0474 ; 	% 209	M_amp_c + M_itp_c <--> M_adp_c + M_idp_c
 b0120 ; 	% 210	M_amet_c + M_h_c --> M_ametam_c + M_co2_c
 b3806 ; 	% 211	M_atp_c --> M_camp_c + M_ppi_c
 b0474 ; 	% 212	M_adn_c + M_atp_c --> M_adp_c + M_amp_c + M_h_c
 b0030 ; 	% 213	M_adn_c + M_h2o_c --> M_ade_c + M_rib_D_c
 ( b2964  ||  b2393 ) ; 	% 214	M_adn_p + M_h_p --> M_adn_c + M_h_c
 b2406 ; 	% 215	M_adn_p + M_h_p <--> M_adn_c + M_h_c
 b0411 ; 	% 216	M_adn_e <--> M_adn_p
 b1993 ; 	% 217	M_adocbi_c + M_atp_c --> M_adocbip_c + M_adp_c + M_h_c
 b1992 ; 	% 218	M_agdpcbi_c + M_rdmbzi_c --> M_adocbl_c + M_gmp_c + M_h_c
 ( b1711  &&  b1709  &&  b0158 ) ; 	% 219	M_atp_c + M_h2o_c + M_adocbl_p --> M_adocbl_c + M_adp_c + M_h_c + M_pi_c
 ( b3966  &&  ( b1252  &&  b3005  &&  b3006 ) ) ; 	% 220	M_adocbl_e + M_h_p --> M_h_c + M_adocbl_p
 b3397 ; 	% 221	M_adprib_c + M_h2o_c --> M_amp_c + M_h_c + M_r5p_c
 b0469 ; 	% 222	M_ade_c + M_prpp_c --> M_amp_c + M_ppi_c
 b2750 ; 	% 223	M_aps_c + M_atp_c --> M_adp_c + M_h_c + M_paps_c
 b1131 ; 	% 224	M_dcamp_c <--> M_amp_c + M_fum_c
 b1131 ; 	% 225	M_25aics_c <--> M_aicar_c + M_fum_c
 b4177 ; 	% 226	M_asp_L_c + M_gtp_c + M_imp_c --> M_dcamp_c + M_gdp_c + M_h_c + M_pi_c
 b0677 ; 	% 227	M_acgam6p_c + M_h2o_c --> M_ac_c + M_gam6p_c
 b0110 ; 	% 228	M_anhgm3p_c + M_h2o_c --> M_LalaDgluMdap_c + M_anhgm_c
 ( b4169  ||  b2435  ||  b2817 ) ; 	% 229	M_anhgm3p_p + M_h2o_p --> M_LalaDgluMdap_p + M_anhgm_p
 b1107 ; 	% 230	M_anhgm3p_c + M_h2o_c --> M_acgam_c + M_anhm3p_c
 b0433 ; 	% 231	M_anhgm3p_p + M_h_p --> M_anhgm3p_c + M_h_c
 b0110 ; 	% 232	M_anhgm4p_c + M_h2o_c --> M_LalaDgluMdapDala_c + M_anhgm_c
 ( b2817  ||  b4169  ||  b2435 ) ; 	% 233	M_anhgm4p_p + M_h2o_p --> M_LalaDgluMdapDala_p + M_anhgm_p
 b1192 ; 	% 234	M_anhgm4p_c + M_h2o_c --> M_ala_D_c + M_anhgm3p_c
 1 ; 	% 235	M_anhgm4p_p + M_h2o_p --> M_ala_D_p + M_anhgm3p_p
 b1107 ; 	% 236	M_anhgm4p_c + M_h2o_c --> M_acgam_c + M_anhm4p_c
 b0433 ; 	% 237	M_anhgm4p_p + M_h_p --> M_anhgm4p_c + M_h_c
 b1107 ; 	% 238	M_anhgm_c + M_h2o_c --> M_acgam_c + M_anhm_c
 b3619 ; 	% 239	M_adphep_DD_c --> M_adphep_LD_c
 b2937 ; 	% 240	M_agm_c + M_h2o_c --> M_ptrc_c + M_urea_c
 b0433 ; 	% 241	M_anhgm_p + M_h_p --> M_anhgm_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 242	M_agm_e <--> M_agm_p
 b3018 ; 	% 243	M_1ddecg3p_c + M_ddcaACP_c --> M_ACP_c + M_pa120_c
 b3018 ; 	% 244	M_1tdecg3p_c + M_myrsACP_c --> M_ACP_c + M_pa140_c
 b3018 ; 	% 245	M_1tdec7eg3p_c + M_tdeACP_c --> M_ACP_c + M_pa141_c
 b3018 ; 	% 246	M_1hdecg3p_c + M_palmACP_c --> M_ACP_c + M_pa160_c
 b3018 ; 	% 247	M_1hdec9eg3p_c + M_hdeACP_c --> M_ACP_c + M_pa161_c
 b3018 ; 	% 248	M_1odecg3p_c + M_ocdcaACP_c --> M_ACP_c + M_pa180_c
 b3018 ; 	% 249	M_1odec11eg3p_c + M_octeACP_c --> M_ACP_c + M_pa181_c
 b3958 ; 	% 250	M_acg5sa_c + M_nadp_c + M_pi_c <--> M_acg5p_c + M_h_c + M_nadph_c
 ( b0572  &&  b0573  &&  b0574  &&  b0575 ) ; 	% 251	M_ag_c + M_h_e --> M_h_c + M_ag_e
 b0159 ; 	% 252	M_ahcys_c + M_h2o_c --> M_ade_c + M_rhcys_c
 b4006 ; 	% 253	M_10fthf_c + M_aicar_c <--> M_fprica_c + M_thf_c
 b0522 ; 	% 254	M_air_c + M_atp_c + M_hco3_c --> M_5caiz_c + M_adp_c + M_h_c + M_pi_c
 b0523 ; 	% 255	M_5aizc_c <--> M_5caiz_c
 ( b0116  &&  b0726  &&  b0727 ) ; 	% 256	M_akg_c + M_coa_c + M_nad_c --> M_co2_c + M_nadh_c + M_succoa_c
 b2587 ; 	% 257	M_akg_p + M_h_p <--> M_akg_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 258	M_akg_e <--> M_akg_p
 b1488 ; 	% 259	M_alaala_c + M_h2o_c --> M_ala_D_c
 ( ( b1487  &&  b1486  &&  b1485  &&  b1484  &&  b1483 )  ||  ( b3544  &&  b3543  &&  b3542  &&  b3541  &&  b3540 ) ) ; 	% 260	M_atp_c + M_h2o_c + M_alaala_p --> M_adp_c + M_alaala_c + M_h_c + M_pi_c
 ( b0381  ||  b0092 ) ; 	% 261	M_ala_D_c + M_atp_c <--> M_adp_c + M_alaala_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 262	M_alaala_e <--> M_alaala_p
 b1325 ; 	% 263	M_LalaDglu_c <--> M_LalaLglu_c
 ( b4053  ||  b1190 ) ; 	% 264	M_ala_L_c <--> M_ala_D_c
 ( b2551  ||  b0870 ) ; 	% 265	M_ala_D_c + M_pydx5p_c --> M_pyam5p_c + M_pyr_c
 1 ; 	% 266	M_akg_c + M_ala_L_c <--> M_glu_L_c + M_pyr_c
 ( b0870  ||  b2551 ) ; 	% 267	M_ala_L_c + M_pydx5p_c --> M_pyam5p_c + M_pyr_c
 b2697 ; 	% 268	M_ala_L_c + M_atp_c + M_trnaala_c --> M_alatrna_c + M_amp_c + M_ppi_c
 ( b3454  &&  b3455  &&  b3457  &&  b3460  &&  b3456 ) ; 	% 269	M_atp_c + M_h2o_c + M_ala_L_p --> M_adp_c + M_ala_L_c + M_h_c + M_pi_c
 b4208 ; 	% 270	M_ala_L_p + M_h_p --> M_ala_L_c + M_h_c
 b0007 ; 	% 271	M_ala_L_p + M_na1_p --> M_ala_L_c + M_na1_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 272	M_ala_L_e <--> M_ala_L_p
 b0356 ; 	% 273	M_glyald_c + M_h_c + M_nadh_c <--> M_glyc_c + M_nad_c
 ( b0356  ||  b1478  ||  b1241 ) ; 	% 274	M_etoh_c + M_nad_c <--> M_acald_c + M_h_c + M_nadh_c
 b1385 ; 	% 275	M_h2o_c + M_nad_c + M_pacald_c --> M_h_c + M_nadh_c + M_pac_c
 b1300 ; 	% 276	M_acald_c + M_h2o_c + M_nad_c --> M_ac_c + M_h_c + M_nadh_c
 b3588 ; 	% 277	M_acald_c + M_h2o_c + M_nadp_c --> M_ac_c + M_h_c + M_nadph_c
 b3588 ; 	% 278	M_h2o_c + M_nadp_c + M_ppal_c --> M_h_c + M_nadph_c + M_ppa_c
 1 ; 	% 279	M_btal_c + M_h2o_c + M_nad_c --> M_but_c + M_h_c + M_nadh_c
 b4084 ; 	% 280	M_all_D_c + M_atp_c --> M_adp_c + M_all6p_c + M_h_c
 b4090 ; 	% 281	M_all6p_c <--> M_allul6p_c
 b0516 ; 	% 282	M_alltt_c + M_h_c + M_h2o_c --> M_co2_c + M_nh4_c + M_urdglyc_c
 b0512 ; 	% 283	M_alltn_c + M_h2o_c --> M_alltt_c + M_h_c
 b0511 ; 	% 284	M_alltn_p + M_h_p <--> M_alltn_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 285	M_alltn_e <--> M_alltn_p
 b4085 ; 	% 286	M_allul6p_c <--> M_f6p_c
 ( b4087  &&  b4088  &&  b4086 ) ; 	% 287	M_atp_c + M_h2o_c + M_all_D_p --> M_adp_c + M_all_D_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 288	M_all_D_e <--> M_all_D_p
 ( b0657  &&  b1677 ) ; 	% 289	M_alpp_p + M_pe160_p --> M_2agpe160_p + M_lpp_p
 ( b0657  &&  b1677 ) ; 	% 290	M_alpp_p + M_pg160_p --> M_2agpg160_p + M_lpp_p
 ( b3012  ||  b0207  ||  b1781  ||  b3001 ) ; 	% 291	M_h_c + M_mthgxl_c + M_nadph_c --> M_acetol_c + M_nadp_c
 b3945 ; 	% 292	M_acetol_c + M_h_c + M_nadh_c --> M_12ppd_R_c + M_nad_c
 b3091 ; 	% 293	M_altrn_c --> M_2ddglcn_c + M_h2o_c
 b0110 ; 	% 294	M_anhm3p_c + M_h2o_c --> M_LalaDgluMdap_c + M_anhm_c
 b0110 ; 	% 295	M_anhm4p_c + M_h2o_c --> M_LalaDgluMdapDala_c + M_anhm_c
 b1192 ; 	% 296	M_anhm4p_c + M_h2o_c --> M_ala_D_c + M_anhm3p_c
 b3416 ; 	% 297	M_malt_c + M_malttr_c --> M_glc_D_c + M_maltttr_c
 b3416 ; 	% 298	M_malt_c + M_maltttr_c --> M_glc_D_c + M_maltpt_c
 b3416 ; 	% 299	M_malt_c + M_maltpt_c --> M_glc_D_c + M_malthx_c
 b3416 ; 	% 300	M_malt_c + M_malthx_c --> M_glc_D_c + M_malthp_c
 b3223 ; 	% 301	M_acmanap_c <--> M_acgam6p_c
 b3222 ; 	% 302	M_acmana_c + M_atp_c --> M_acmanap_c + M_adp_c + M_h_c
 b0774 ; 	% 303	M_8aonn_c + M_amet_c <--> M_amob_c + M_dann_c
 b3833 ; 	% 304	M_2dmmql8_c + M_amet_c --> M_ahcys_c + M_h_c + M_mql8_c
 b3994 ; 	% 305	M_air_c + M_h2o_c + M_nad_c --> M_4ampm_c + M_for_c + M_h_c + M_nadh_c
 b1982 ; 	% 306	M_amp_c + M_h2o_c --> M_ade_c + M_r5p_c
 ( b0932  ||  b0237  ||  b4260  ||  b2523 ) ; 	% 307	M_cgly_c + M_h2o_c --> M_cys_L_c + M_gly_c
 ( b2523  ||  b4260  ||  b0237  ||  b0932 ) ; 	% 308	M_h2o_c + M_progly_c --> M_gly_c + M_pro_L_c
 ( b0929  ||  b1377  ||  b2215  ||  b0241 ) ; 	% 309	M_amp_e <--> M_amp_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 310	M_anhgm_e <--> M_anhgm_p
 b1640 ; 	% 311	M_anhm_c + M_atp_c + M_h2o_c --> M_acmum6p_c + M_adp_c + M_h_c
 b1263 ; 	% 312	M_anth_c + M_prpp_c --> M_ppi_c + M_pran_c
 ( b1263  &&  b1264 ) ; 	% 313	M_chor_c + M_gln_L_c --> M_anth_c + M_glu_L_c + M_h_c + M_pyr_c
 1 ; 	% 314	M_2aobut_c + M_h_c --> M_aact_c + M_co2_c
 b0776 ; 	% 315	M_ala_L_c + M_h_c + M_pmcoa_c <--> M_8aonn_c + M_co2_c + M_coa_c
 b0049 ; 	% 316	M_ap4a_c + M_h2o_c --> M_adp_c + M_h_c
 b0049 ; 	% 317	M_ap5a_c + M_h2o_c --> M_adp_c + M_atp_c + M_h_c
 b0414 ; 	% 318	M_5apru_c + M_h_c + M_nadph_c --> M_5aprbu_c + M_nadp_c
 b0062 ; 	% 319	M_arab_L_c <--> M_rbl_L_c
 1 ; 	% 320	M_arbtn_fe3_c + M_fadh2_c --> M_arbtn_c + M_fad_c + M_fe2_c + M_h_c
 1 ; 	% 321	M_arbtn_fe3_c + M_fmnh2_c --> M_arbtn_c + M_fe2_c + M_fmn_c + M_h_c
 1 ; 	% 322	M_arbtn_fe3_c + M_rbflvrd_c --> M_arbtn_c + M_fe2_c + M_h_c + M_ribflv_c
 ( b0153  &&  b0151  &&  b0152 ) ; 	% 323	M_atp_c + M_h2o_c + M_arbtn_fe3_p --> M_adp_c + M_arbtn_fe3_c + M_h_c + M_pi_c
 1 ; 	% 324	M_arbtn_e + M_fe3_e --> M_arbtn_fe3_e
 1 ; 	% 325	M_arbtn_p + M_h_p --> M_h_c + M_arbtn_e
 1 ; 	% 326	M_arbtn_fe3_e + M_h_p --> M_h_c + M_arbtn_fe3_p
 1 ; 	% 327	M_arbtn_c + M_h_p --> M_h_c + M_arbtn_p
 ( b1901  &&  b1900  &&  b4460 ) ; 	% 328	M_atp_c + M_h2o_c + M_arab_L_p --> M_adp_c + M_arab_L_c + M_h_c + M_pi_c
 b2841 ; 	% 329	M_arab_L_p + M_h_p <--> M_arab_L_c + M_h_c
 b1528 ; 	% 330	M_arab_L_c + M_h_p --> M_h_c + M_arab_L_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 331	M_arab_L_e <--> M_arab_L_p
 b4115 ; 	% 332	M_agm_c + M_arg_L_p <--> M_arg_L_c + M_agm_p
 b4117 ; 	% 333	M_arg_L_c + M_h_c --> M_agm_c + M_co2_c
 b2938 ; 	% 334	M_arg_L_p + M_h_p --> M_agm_p + M_co2_p
 b1605 ; 	% 335	M_orn_c + M_arg_L_p <--> M_arg_L_c + M_orn_p
 b3960 ; 	% 336	M_argsuc_c <--> M_arg_L_c + M_fum_c
 b3172 ; 	% 337	M_asp_L_c + M_atp_c + M_citr_L_c --> M_amp_c + M_argsuc_c + M_h_c + M_ppi_c
 b1876 ; 	% 338	M_arg_L_c + M_atp_c + M_trnaarg_c --> M_amp_c + M_argtrna_c + M_ppi_c
 ( ( b2310  &&  b2307  &&  b2306  &&  b2308 )  ||  ( b0863  &&  b0860  &&  b0861  &&  b0864  &&  b0862 ) ) ; 	% 339	M_atp_c + M_h2o_c + M_arg_L_p --> M_adp_c + M_arg_L_c + M_h_c + M_pi_c
 b2923 ; 	% 340	M_arg_L_c + M_h_p --> M_h_c + M_arg_L_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 341	M_arg_L_e <--> M_arg_L_p
 b3433 ; 	% 342	M_aspsa_c + M_nadp_c + M_pi_c <--> M_4pasp_c + M_h_c + M_nadph_c
 b4192 ; 	% 343	M_ascb6p_c + M_h2o_c --> M_3dhgulnp_c + M_h_c
 ( b2415  &&  b2416  &&  b4195  &&  b4194  &&  b4193 ) ; 	% 344	M_pep_c + M_ascb_L_p --> M_ascb6p_c + M_pyr_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 345	M_ascb_L_e <--> M_ascb_L_p
 ( b1767  ||  b0828 ) ; 	% 346	M_asn_L_c + M_h2o_c --> M_asp_L_c + M_nh4_c
 b2957 ; 	% 347	M_asn_L_p + M_h2o_p --> M_asp_L_p + M_nh4_p
 b0674 ; 	% 348	M_asp_L_c + M_atp_c + M_gln_L_c + M_h2o_c --> M_amp_c + M_asn_L_c + M_glu_L_c + M_h_c + M_ppi_c
 b3744 ; 	% 349	M_asp_L_c + M_atp_c + M_nh4_c --> M_amp_c + M_asn_L_c + M_h_c + M_ppi_c
 b0930 ; 	% 350	M_asn_L_c + M_atp_c + M_trnaasn_c --> M_amp_c + M_asntrna_c + M_ppi_c
 1 ; 	% 351	M_atp_c + M_h2o_c + M_asn_L_p --> M_adp_c + M_asn_L_c + M_h_c + M_pi_c
 b1453 ; 	% 352	M_asn_L_p + M_h_p <--> M_asn_L_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 353	M_asn_L_e <--> M_asn_L_p
 b3502 ; 	% 354	M_aso3_c + M_atp_c + M_h2o_c --> M_adp_c + M_h_c + M_pi_c + M_aso3_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 355	M_aso3_e <--> M_aso3_p
 b0131 ; 	% 356	M_asp_L_c + M_h_c --> M_ala_B_c + M_co2_c
 ( b4244  &&  b4245 ) ; 	% 357	M_asp_L_c + M_cbp_c --> M_cbasp_c + M_h_c + M_pi_c
 ( b0002  ||  b3940  ||  b4024 ) ; 	% 358	M_asp_L_c + M_atp_c <--> M_4pasp_c + M_adp_c
 b2574 ; 	% 359	M_asp_L_c + M_q8_c --> M_h_c + M_iasp_c + M_q8h2_c
 b2574 ; 	% 360	M_asp_L_c + M_mqn8_c --> M_h_c + M_iasp_c + M_mql8_c
 b2574 ; 	% 361	M_asp_L_c + M_fum_c --> M_h_c + M_iasp_c + M_succ_c
 b2574 ; 	% 362	M_asp_L_c + M_o2_c --> M_h_c + M_h2o2_c + M_iasp_c
 b4139 ; 	% 363	M_asp_L_c --> M_fum_c + M_nh4_c
 b0928 ; 	% 364	M_akg_c + M_asp_L_c <--> M_glu_L_c + M_oaa_c
 b1866 ; 	% 365	M_asp_L_c + M_atp_c + M_trnaasp_c --> M_amp_c + M_asptrna_c + M_ppi_c
 ( b0655  &&  b0654  &&  b0653  &&  b0652 ) ; 	% 366	M_atp_c + M_h2o_c + M_asp_L_p --> M_adp_c + M_asp_L_c + M_h_c + M_pi_c
 b3528 ; 	% 367	M_asp_L_p + M_h_p --> M_asp_L_c + M_h_c
 ( b4138  ||  b4123 ) ; 	% 368	M_asp_L_p + M_h_p --> M_asp_L_c + M_h_c
 b4077 ; 	% 369	M_asp_L_p + M_h_p --> M_asp_L_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 370	M_asp_L_e <--> M_asp_L_p
 ( b3503  &&  b1064 ) ; 	% 371	M_aso4_c + M_gthrd_c --> M_aso3_c + M_gthox_c + M_h2o_c
 b1747 ; 	% 372	M_arg_L_c + M_succoa_c --> M_coa_c + M_h_c + M_sucarg_c
 b1539 ; 	% 373	M_athr_L_c + M_nadp_c <--> M_2aobut_c + M_h_c + M_nadph_c
 1 ; 	% 374	M_atp_c + M_h_c + M_h2o_c --> M_itp_c + M_nh4_c
 1 ; 	% 375	M_atp_c + M_h2o_c --> M_adp_c + M_h_c + M_pi_c
 b2019 ; 	% 376	M_atp_c + M_prpp_c --> M_ppi_c + M_prbatp_c
 ( ( ( b3736  &&  b3737  &&  b3738 )  &&  ( b3731  &&  b3732  &&  b3733  &&  b3734  &&  b3735 ) )  ||  ( ( b3736  &&  b3737  &&  b3738 )  &&  ( b3731  &&  b3732  &&  b3733  &&  b3734  &&  b3735 )  &&  b3739 ) ) ; 	% 377	M_adp_c + M_pi_c + M_h_p <--> M_atp_c + M_h_c + M_h2o_c
 b4208 ; 	% 378	M_ala_B_p + M_h_p --> M_ala_B_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 379	M_ala_B_e <--> M_ala_B_p
 b0312 ; 	% 380	M_betald_c + M_h2o_c + M_nad_c --> M_glyb_c + M_h_c + M_nadh_c
 b0312 ; 	% 381	M_betald_c + M_h2o_c + M_nadp_c --> M_glyb_c + M_h_c + M_nadph_c
 1 ; 	% 382	M_h2o_c + M_pap_c --> M_amp_c + M_pi_c
 b3551 ; 	% 383	M_btnso_c + M_h_c + M_nadh_c --> M_btn_c + M_h2o_c + M_nad_c
 b3551 ; 	% 384	M_btnso_c + M_h_c + M_nadph_c --> M_btn_c + M_h2o_c + M_nadp_c
 b0775 ; 	% 385	M_amet_c + M_dtbt_c + M_s_c --> M_btn_c + M_dad_5_c + M_h_c + M_met_L_c
 ( b2221  &&  b2222 ) ; 	% 386	M_accoa_c + M_but_c --> M_ac_c + M_btcoa_c
 ( ( b0936  &&  b0933  &&  b0934 )  ||  ( b0365  &&  b0366  &&  b0367 ) ) ; 	% 387	M_atp_c + M_h2o_c + M_butso3_p --> M_adp_c + M_butso3_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 388	M_butso3_e <--> M_butso3_p
 b2223 ; 	% 389	M_but_p + M_h_p <--> M_but_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 390	M_but_e <--> M_but_p
 b1216 ; 	% 391	M_ca2_c + M_h_p --> M_h_c + M_ca2_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 392	M_ca2_e <--> M_ca2_p
 b4132 ; 	% 393	M_15dap_c + M_h_p + M_lys_L_p --> M_h_c + M_lys_L_c + M_15dap_p
 ( b1732  ||  b3942 ) ; 	% 394	M_h2o2_c --> M_h2o_c + M_o2_c
 b3196 ; 	% 395	M_ca2_c + M_na1_p <--> M_na1_c + M_ca2_p
 b1270 ; 	% 396	M_atp_c + M_cbi_c + M_h_c <--> M_adocbi_c + M_pppi_c
 ( b3966  &&  ( b1252  &&  b3005  &&  b3006 ) ) ; 	% 397	M_cbi_e + M_h_p --> M_h_c + M_cbi_p
 ( b1711  &&  b1709  &&  b0158 ) ; 	% 398	M_atp_c + M_h2o_c + M_cbi_p --> M_adp_c + M_cbi_c + M_h_c + M_pi_c
 ( b1711  &&  b1709  &&  b0158 ) ; 	% 399	M_atp_c + M_h2o_c + M_cbl1_p --> M_adp_c + M_cbl1_c + M_h_c + M_pi_c
 ( b3966  &&  ( b1252  &&  b3005  &&  b3006 ) ) ; 	% 400	M_cbl1_e + M_h_p --> M_h_c + M_cbl1_p
 b1270 ; 	% 401	M_atp_c + M_cbl1_c + M_h_c <--> M_adocbl_c + M_pppi_c
 ( b0521  ||  b0323  ||  b2874 ) ; 	% 402	M_atp_c + M_co2_c + M_nh4_c <--> M_adp_c + M_cbp_c + M_h_c
 ( b0032  &&  b0033 ) ; 	% 403	M_atp_c + M_gln_L_c + M_h2o_c + M_hco3_c --> M_adp_c + M_cbp_c + M_glu_L_c + M_h_c + M_pi_c
 b3469 ; 	% 404	M_atp_c + M_cd2_c + M_h2o_c --> M_adp_c + M_h_c + M_pi_c + M_cd2_p
 ( b0752  ||  b3915 ) ; 	% 405	M_cd2_c + M_h_p --> M_h_c + M_cd2_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 406	M_cd2_e <--> M_cd2_p
 b3040 ; 	% 407	M_cd2_p --> M_cd2_c
 b3918 ; 	% 408	M_cdpdddecg_c + M_h2o_c --> M_cmp_c + M_h_c + M_pa120_c
 b3918 ; 	% 409	M_cdpdtdecg_c + M_h2o_c --> M_cmp_c + M_h_c + M_pa140_c
 b3918 ; 	% 410	M_cdpdtdec7eg_c + M_h2o_c --> M_cmp_c + M_h_c + M_pa141_c
 b3918 ; 	% 411	M_cdpdhdecg_c + M_h2o_c --> M_cmp_c + M_h_c + M_pa160_c
 b3918 ; 	% 412	M_cdpdhdec9eg_c + M_h2o_c --> M_cmp_c + M_h_c + M_pa161_c
 b3918 ; 	% 413	M_cdpdodecg_c + M_h2o_c --> M_cmp_c + M_h_c + M_pa180_c
 b3918 ; 	% 414	M_cdpdodec11eg_c + M_h2o_c --> M_cmp_c + M_h_c + M_pa181_c
 b1208 ; 	% 415	M_4c2me_c + M_atp_c --> M_2p4c2me_c + M_adp_c + M_h_c
 b1661 ; 	% 416	M_amet_c + M_pe161_c --> M_ahcys_c + M_cpe160_c + M_h_c
 b1661 ; 	% 417	M_amet_c + M_pg161_c --> M_ahcys_c + M_cpg160_c + M_h_c
 b1661 ; 	% 418	M_amet_c + M_pe181_c --> M_ahcys_c + M_cpe180_c + M_h_c
 b1661 ; 	% 419	M_amet_c + M_pg181_c --> M_ahcys_c + M_cpg180_c + M_h_c
 ( b3544  &&  b3543  &&  b3542  &&  b3541  &&  b3540 ) ; 	% 420	M_atp_c + M_h2o_c + M_cgly_p --> M_adp_c + M_cgly_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 421	M_cgly_e <--> M_cgly_p
 ( b2128  &&  b2129  &&  b2130  &&  b2131 ) ; 	% 422	M_atp_c + M_h2o_c + M_chol_p --> M_adp_c + M_chol_c + M_h_c + M_pi_c
 ( b0314  ||  b1801 ) ; 	% 423	M_chol_p + M_h_p --> M_chol_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 424	M_chol_e <--> M_chol_p
 ( b2599  ||  b2600 ) ; 	% 425	M_chor_c --> M_pphn_c
 b2329 ; 	% 426	M_3psme_c --> M_chor_c + M_pi_c
 b4039 ; 	% 427	M_chor_c --> M_4hbz_c + M_pyr_c
 ( b2538  &&  b2539  &&  b2540  &&  b2542 ) ; 	% 428	M_cinnm_c + M_h_c + M_nadh_c + M_o2_c --> M_cenchddd_c + M_nad_c
 ( ( b0615  &&  b0616  &&  b0617 )  &&  b0614 ) ; 	% 429	M_cit_c --> M_ac_c + M_oaa_c
 b0612 ; 	% 430	M_succ_c + M_cit_p --> M_cit_c + M_succ_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 431	M_cit_e <--> M_cit_p
 1 ; 	% 432	M_lipa_cold_p --> M_lipa_cold_e
 1 ; 	% 433	M_clpn120_p + M_h2o_p --> M_h_p + M_pa120_p + M_pg120_p
 1 ; 	% 434	M_clpn140_p + M_h2o_p --> M_h_p + M_pa140_p + M_pg140_p
 1 ; 	% 435	M_clpn141_p + M_h2o_p --> M_h_p + M_pa141_p + M_pg141_p
 1 ; 	% 436	M_clpn160_p + M_h2o_p --> M_h_p + M_pa160_p + M_pg160_p
 1 ; 	% 437	M_clpn161_p + M_h2o_p --> M_h_p + M_pa161_p + M_pg161_p
 1 ; 	% 438	M_clpn180_p + M_h2o_p --> M_h_p + M_pa180_p + M_pg180_p
 1 ; 	% 439	M_clpn181_p + M_h2o_p --> M_h_p + M_pa181_p + M_pg181_p
 ( b1249  ||  b0789 ) ; 	% 440	M_pg120_p <--> M_clpn120_p + M_glyc_p
 ( b1249  ||  b0789 ) ; 	% 441	M_pg140_p <--> M_clpn140_p + M_glyc_p
 ( b1249  ||  b0789 ) ; 	% 442	M_pg141_p <--> M_clpn141_p + M_glyc_p
 ( b1249  ||  b0789 ) ; 	% 443	M_pg160_p <--> M_clpn160_p + M_glyc_p
 ( b1249  ||  b0789 ) ; 	% 444	M_pg161_p <--> M_clpn161_p + M_glyc_p
 ( b1249  ||  b0789 ) ; 	% 445	M_pg180_p <--> M_clpn180_p + M_glyc_p
 ( b1249  ||  b0789 ) ; 	% 446	M_pg181_p <--> M_clpn181_p + M_glyc_p
 ( b0155  ||  b1592 ) ; 	% 447	M_h_c + M_cl_p --> M_cl_c + M_h_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 448	M_cl_e <--> M_cl_p
 1 ; 	% 449	M_cmp_c + M_h2o_c --> M_csn_c + M_r5p_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 450	M_cmp_e <--> M_cmp_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 451	M_co2_e <--> M_co2_p
 1 ; 	% 452	M_co2_p <--> M_co2_c
 b3469 ; 	% 453	M_atp_c + M_cobalt2_c + M_h2o_c --> M_adp_c + M_h_c + M_pi_c + M_cobalt2_p
 ( b3915  ||  b0752 ) ; 	% 454	M_cobalt2_c + M_h_p --> M_h_c + M_cobalt2_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 455	M_cobalt2_e <--> M_cobalt2_p
 ( b3040  ||  b3816 ) ; 	% 456	M_cobalt2_p --> M_cobalt2_c
 b0914 ; 	% 457	M_atp_c + M_colipa_c + M_h2o_c --> M_adp_c + M_h_c + M_pi_c + M_colipa_p
 1 ; 	% 458	M_colipa_p --> M_colipa_e
 1 ; 	% 459	M_cpgn_c + M_fadh2_c --> M_cpgn_un_c + M_fad_c + M_fe2_c + M_h_c
 1 ; 	% 460	M_cpgn_c + M_fmnh2_c --> M_cpgn_un_c + M_fe2_c + M_fmn_c + M_h_c
 1 ; 	% 461	M_cpgn_c + M_rbflvrd_c --> M_cpgn_un_c + M_fe2_c + M_h_c + M_ribflv_c
 1 ; 	% 462	M_cpgn_un_p + M_h_p --> M_h_c + M_cpgn_un_e
 1 ; 	% 463	M_cpgn_un_c + M_h_p --> M_h_c + M_cpgn_un_p
 ( b0153  &&  b0151  &&  b0152 ) ; 	% 464	M_atp_c + M_h2o_c + M_cpgn_p --> M_adp_c + M_cpgn_c + M_h_c + M_pi_c
 1 ; 	% 465	M_cpgn_un_e + M_fe3_e --> M_cpgn_e
 ( b1102  &&  ( b1252  &&  b3005  &&  b3006 ) ) ; 	% 466	M_cpgn_e + M_h_p --> M_h_c + M_cpgn_p
 b2436 ; 	% 467	M_cpppg3_c + M_h_c + M_o2_c --> M_co2_c + M_h2o_c + M_pppg9_c
 b3867 ; 	% 468	M_amet_c + M_cpppg3_c --> M_co2_c + M_dad_5_c + M_met_L_c + M_pppg9_c
 b0038 ; 	% 469	M_bbtcoa_c + M_crn_c <--> M_crncoa_c + M_gbbtn_c
 b0037 ; 	% 470	M_atp_c + M_coa_c + M_crn_c --> M_adp_c + M_crncoa_c + M_pi_c
 b0036 ; 	% 471	M_crncoa_c <--> M_crnDcoa_c
 b0038 ; 	% 472	M_crn_c + M_ctbtcoa_c <--> M_crncoa_c + M_ctbt_c
 b0036 ; 	% 473	M_crncoa_c <--> M_ctbtcoa_c + M_h2o_c
 b0037 ; 	% 474	M_atp_c + M_coa_c + M_crn_D_c --> M_adp_c + M_crnDcoa_c + M_pi_c
 ( b2677  &&  b2678  &&  b2679 ) ; 	% 475	M_atp_c + M_h2o_c + M_crn_D_p --> M_adp_c + M_crn_D_c + M_h_c + M_pi_c
 b4111 ; 	% 476	M_crn_D_p + M_h_p <--> M_crn_D_c + M_h_c
 ( b2677  &&  b2678  &&  b2679 ) ; 	% 477	M_atp_c + M_h2o_c + M_crn_p --> M_adp_c + M_crn_c + M_h_c + M_pi_c
 b4111 ; 	% 478	M_crn_p + M_h_p <--> M_crn_c + M_h_c
 b0040 ; 	% 479	M_gbbtn_c + M_crn_p --> M_crn_c + M_gbbtn_p
 b0040 ; 	% 480	M_crn_D_c + M_crn_p --> M_crn_c + M_crn_D_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 481	M_crn_e <--> M_crn_p
 b0720 ; 	% 482	M_accoa_c + M_h2o_c + M_oaa_c --> M_cit_c + M_coa_c + M_h_c
 b0337 ; 	% 483	M_csn_c + M_h_c + M_h2o_c --> M_nh4_c + M_ura_c
 b0336 ; 	% 484	M_csn_p + M_h_p --> M_csn_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 485	M_csn_e <--> M_csn_p
 b0037 ; 	% 486	M_atp_c + M_coa_c + M_ctbt_c --> M_adp_c + M_ctbtcoa_c + M_pi_c
 ( b2677  &&  b2678  &&  b2679 ) ; 	% 487	M_atp_c + M_h2o_c + M_ctbt_p --> M_adp_c + M_ctbt_c + M_h_c + M_pi_c
 b4111 ; 	% 488	M_ctbt_p + M_h_p <--> M_ctbt_c + M_h_c
 b2780 ; 	% 489	M_atp_c + M_gln_L_c + M_h2o_c + M_utp_c --> M_adp_c + M_ctp_c + M_glu_L_c + M_h_c + M_pi_c
 b0123 ; 	% 490	M_cu_p + M_h_p + M_o2_p --> M_cu2_p + M_h2o_p
 b0484 ; 	% 491	M_atp_c + M_cu_c + M_h2o_c --> M_adp_c + M_h_c + M_pi_c + M_cu_p
 b3469 ; 	% 492	M_atp_c + M_cu2_c + M_h2o_c --> M_adp_c + M_h_c + M_pi_c + M_cu2_p
 ( b2215  ||  b0241  ||  b0929  ||  b1377 ) ; 	% 493	M_cu2_e <--> M_cu2_p
 b3040 ; 	% 494	M_cu2_p --> M_cu2_c
 ( b0572  &&  b0573  &&  b0574  &&  b0575 ) ; 	% 495	M_cu_c + M_h_e --> M_h_c + M_cu_e
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 496	M_cu_e <--> M_cu_p
 b3425 ; 	% 497	M_cyan_c + M_tsul_c --> M_h_c + M_so3_c + M_tcynt_c
 b1308 ; 	% 498	M_cyan_p + M_tsul_p --> M_h_p + M_so3_p + M_tcynt_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 499	M_cyan_e <--> M_cyan_p
 b0340 ; 	% 500	M_cynt_c + M_h_c + M_hco3_c --> M_co2_c + M_nh4_c
 b0341 ; 	% 501	M_cynt_p + M_h_p --> M_cynt_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 502	M_cynt_e <--> M_cynt_p
 b1919 ; 	% 503	M_cys_D_c + M_h2o_c --> M_h2s_c + M_nh4_c + M_pyr_c
 ( b3708  ||  b3008 ) ; 	% 504	M_cys_L_c + M_h2o_c --> M_h2s_c + M_nh4_c + M_pyr_c
 1 ; 	% 505	M_atp_c + M_h2o_c + M_cys_D_p --> M_adp_c + M_cys_D_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 506	M_cys_D_e <--> M_cys_D_p
 ( b2414  ||  b2421 ) ; 	% 507	M_acser_c + M_h2s_c --> M_ac_c + M_cys_L_c + M_h_c
 b2810 ; 	% 508	M_3sala_c + M_h_c --> M_ala_L_c + M_so2_c
 ( b1622  ||  b3008 ) ; 	% 509	M_cyst_L_c + M_h2o_c --> M_hcys_L_c + M_nh4_c + M_pyr_c
 b0526 ; 	% 510	M_atp_c + M_cys_L_c + M_trnacys_c --> M_amp_c + M_cystrna_c + M_ppi_c
 ( b0886  &&  b0887 ) ; 	% 511	M_atp_c + M_cys_L_c + M_h2o_c --> M_adp_c + M_h_c + M_pi_c + M_cys_L_p
 1 ; 	% 512	M_atp_c + M_h2o_c + M_cys_L_p --> M_adp_c + M_cys_L_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 513	M_cys_L_e <--> M_cys_L_p
 ( b2578  ||  b1533 ) ; 	% 514	M_cys_L_c --> M_cys_L_p
 ( b0978  &&  b0979 ) ; 	% 515	M_h_c + M_mql8_c + M_o2_c --> M_h2o_c + M_mqn8_c + M_h_p
 ( ( b0978  &&  b0979 )  ||  ( b0733  &&  b0734 ) ) ; 	% 516	M_h_c + M_o2_c + M_q8h2_c --> M_h2o_c + M_q8_c + M_h_p
 ( b0429  &&  b0430  &&  b0431  &&  b0432 ) ; 	% 517	M_h_c + M_o2_c + M_q8h2_c --> M_h2o_c + M_q8_c + M_h_p
 b2143 ; 	% 518	M_cytd_c + M_h_c + M_h2o_c --> M_nh4_c + M_uri_c
 ( b2162  ||  b0651  ||  b0030 ) ; 	% 519	M_cytd_c + M_h2o_c --> M_csn_c + M_rib_D_c
 b2066 ; 	% 520	M_cytd_c + M_gtp_c --> M_cmp_c + M_gdp_c + M_h_c
 ( b2964  ||  b2393 ) ; 	% 521	M_cytd_p + M_h_p --> M_cytd_c + M_h_c
 b2406 ; 	% 522	M_cytd_p + M_h_p <--> M_cytd_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 523	M_cytd_e <--> M_cytd_p
 b0910 ; 	% 524	M_atp_c + M_cmp_c <--> M_adp_c + M_cdp_c
 b0910 ; 	% 525	M_atp_c + M_dcmp_c <--> M_adp_c + M_dcdp_c
 b1189 ; 	% 526	M_ala_D_c + M_fad_c + M_h2o_c --> M_fadh2_c + M_nh4_c + M_pyr_c
 b1623 ; 	% 527	M_dad_2_c + M_h_c + M_h2o_c --> M_din_c + M_nh4_c
 b0474 ; 	% 528	M_atp_c + M_damp_c <--> M_adp_c + M_dadp_c
 ( b2393  ||  b2964 ) ; 	% 529	M_dad_2_p + M_h_p --> M_dad_2_c + M_h_c
 b0411 ; 	% 530	M_dad_2_e <--> M_dad_2_p
 b4042 ; 	% 531	M_12dgr120_c + M_atp_c --> M_adp_c + M_h_c + M_pa120_c
 b4042 ; 	% 532	M_12dgr140_c + M_atp_c --> M_adp_c + M_h_c + M_pa140_c
 b4042 ; 	% 533	M_12dgr141_c + M_atp_c --> M_adp_c + M_h_c + M_pa141_c
 b4042 ; 	% 534	M_12dgr160_c + M_atp_c --> M_adp_c + M_h_c + M_pa160_c
 b4042 ; 	% 535	M_12dgr161_c + M_atp_c --> M_adp_c + M_h_c + M_pa161_c
 b4042 ; 	% 536	M_12dgr180_c + M_atp_c --> M_adp_c + M_h_c + M_pa180_c
 b4042 ; 	% 537	M_12dgr181_c + M_atp_c --> M_adp_c + M_h_c + M_pa181_c
 b4208 ; 	% 538	M_ala_D_p + M_h_p --> M_ala_D_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 539	M_ala_D_e <--> M_ala_D_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 540	M_damp_e <--> M_damp_p
 b2871 ; 	% 541	M_23dappa_c + M_h2o_c --> M_nh4_c + M_pyr_c
 b2838 ; 	% 542	M_26dap_M_c + M_h_c --> M_co2_c + M_lys_L_c
 b3809 ; 	% 543	M_26dap_LL_c <--> M_26dap_M_c
 1 ; 	% 544	M_atp_c + M_h2o_c + M_26dap_M_p --> M_26dap_M_c + M_adp_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 545	M_15dap_e <--> M_15dap_p
 b0175 ; 	% 546	M_ctp_c + M_h_c + M_pa120_c --> M_cdpdddecg_c + M_ppi_c
 b0175 ; 	% 547	M_ctp_c + M_h_c + M_pa140_c --> M_cdpdtdecg_c + M_ppi_c
 b0175 ; 	% 548	M_ctp_c + M_h_c + M_pa141_c --> M_cdpdtdec7eg_c + M_ppi_c
 b0175 ; 	% 549	M_ctp_c + M_h_c + M_pa160_c --> M_cdpdhdecg_c + M_ppi_c
 b0175 ; 	% 550	M_ctp_c + M_h_c + M_pa161_c --> M_cdpdhdec9eg_c + M_ppi_c
 b0175 ; 	% 551	M_ctp_c + M_h_c + M_pa180_c --> M_cdpdodecg_c + M_ppi_c
 b0175 ; 	% 552	M_ctp_c + M_h_c + M_pa181_c --> M_cdpdodec11eg_c + M_ppi_c
 1 ; 	% 553	M_datp_c + M_h_c + M_h2o_c --> M_ditp_c + M_nh4_c
 b3041 ; 	% 554	M_ru5p_D_c --> M_db4p_c + M_for_c + M_h_c
 b0778 ; 	% 555	M_atp_c + M_co2_c + M_dann_c --> M_adp_c + M_dtbt_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 556	M_dca_e <--> M_dca_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 557	M_dcmp_e <--> M_dcmp_p
 b2065 ; 	% 558	M_dctp_c + M_h_c + M_h2o_c --> M_dutp_c + M_nh4_c
 b2143 ; 	% 559	M_dcyt_c + M_h_c + M_h2o_c --> M_duri_c + M_nh4_c
 ( b2964  ||  b2393 ) ; 	% 560	M_dcyt_p + M_h_p --> M_dcyt_c + M_h_c
 b0411 ; 	% 561	M_dcyt_e <--> M_dcyt_p
 b2344 ; 	% 562	M_ddca_e --> M_ddca_p
 b3693 ; 	% 563	M_2dh3dgal_c + M_atp_c --> M_2dh3dgal6p_c + M_adp_c + M_h_c
 b3909 ; 	% 564	M_2ddglcn_p + M_h_p <--> M_2ddglcn_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 565	M_2ddglcn_e <--> M_2ddglcn_p
 b3526 ; 	% 566	M_2ddglcn_c + M_atp_c --> M_2ddg6p_c + M_adp_c + M_h_c
 ( b2601  ||  b0754  ||  b1704 ) ; 	% 567	M_e4p_c + M_h2o_c + M_pep_c --> M_2dda7p_c + M_pi_c
 b4477 ; 	% 568	M_2dh3dgal6p_c <--> M_g3p_c + M_pyr_c
 b3648 ; 	% 569	M_atp_c + M_dgmp_c <--> M_adp_c + M_dgdp_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 570	M_dgmp_e <--> M_dgmp_p
 b2964 ; 	% 571	M_dgsn_p + M_h_p --> M_dgsn_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 572	M_dgsn_e <--> M_dgsn_p
 b3771 ; 	% 573	M_23dhmb_c --> M_3mob_c + M_h2o_c
 b3771 ; 	% 574	M_23dhmp_c --> M_3mop_c + M_h2o_c
 ( b1200  &&  b1199  &&  b1198  &&  b2415  &&  b2416 ) ; 	% 575	M_dha_c + M_pep_c --> M_dhap_c + M_pyr_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 576	M_dha_e <--> M_dha_p
 1 ; 	% 577	M_dha_p <--> M_dha_c
 b0596 ; 	% 578	M_23ddhb_c + M_nad_c <--> M_23dhb_c + M_h_c + M_nadh_c
 b0594 ; 	% 579	M_23dhb_c + M_atp_c + M_h_c --> M_23dhba_c + M_ppi_c
 1 ; 	% 580	M_23dhbzs_c + M_h2o_c --> M_23dhb_c + M_ser_L_c
 b2541 ; 	% 581	M_cenchddd_c + M_nad_c --> M_dhcinnm_c + M_h_c + M_nadh_c
 b0348 ; 	% 582	M_dhcinnm_c + M_o2_c --> M_h_c + M_hkntd_c
 b0031 ; 	% 583	M_23dhdp_c + M_h_c + M_nadph_c --> M_nadp_c + M_thdp_c
 b2478 ; 	% 584	M_aspsa_c + M_pyr_c --> M_23dhdp_c + M_h_c + M_h2o_c
 ( b1606  ||  b0048 ) ; 	% 585	M_dhf_c + M_h_c + M_nadph_c <--> M_nadp_c + M_thf_c
 b2315 ; 	% 586	M_atp_c + M_dhpt_c + M_glu_L_c --> M_adp_c + M_dhf_c + M_h_c + M_pi_c
 b3930 ; 	% 587	M_dhna_c + M_h_c + M_octdp_c --> M_2dmmql8_c + M_co2_c + M_ppi_c
 b3058 ; 	% 588	M_dhnpt_c --> M_6hmhpt_c + M_gcald_c
 b0945 ; 	% 589	M_dhor_S_c + M_q8_c --> M_orot_c + M_q8h2_c
 b0945 ; 	% 590	M_dhor_S_c + M_mqn8_c --> M_mql8_c + M_orot_c
 b1062 ; 	% 591	M_dhor_S_c + M_h2o_c <--> M_cbasp_c + M_h_c
 b2541 ; 	% 592	M_cechddd_c + M_nad_c --> M_dhpppn_c + M_h_c + M_nadh_c
 b0414 ; 	% 593	M_25drapp_c + M_h_c + M_h2o_c --> M_5apru_c + M_nh4_c
 b3177 ; 	% 594	M_4abz_c + M_6hmhptpp_c --> M_dhpt_c + M_ppi_c
 1 ; 	% 595	M_dhptd_c --> M_h2o_c + M_hmfurn_c
 b2303 ; 	% 596	M_ahdt_c <--> M_dhmptp_c
 b3389 ; 	% 597	M_2dda7p_c --> M_3dhq_c + M_pi_c
 b1693 ; 	% 598	M_3dhq_c --> M_3dhsk_c + M_h2o_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 599	M_dimp_e <--> M_dimp_p
 b2964 ; 	% 600	M_din_p + M_h_p --> M_din_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 601	M_din_e <--> M_din_p
 ( b3012  ||  b0207 ) ; 	% 602	M_25dkglcn_c + M_h_c + M_nadph_c --> M_2dhguln_c + M_nadp_c
 b3553 ; 	% 603	M_25dkglcn_c + M_h_c + M_nadh_c --> M_5dglcn_c + M_nad_c
 b3553 ; 	% 604	M_25dkglcn_c + M_h_c + M_nadph_c --> M_5dglcn_c + M_nadp_c
 1 ; 	% 605	M_dkmpp_c + M_h2o_c + M_o2_c --> M_2kmb_c + M_for_c + M_h_c + M_pi_c
 1 ; 	% 606	M_dkmpp_c + M_h2o_c + M_nad_c --> M_2kmb_c + M_for_c + M_h_c + M_nadh_c + M_pi_c
 b0421 ; 	% 607	M_dmpp_c + M_ipdp_c --> M_grdp_c + M_ppi_c
 b0029 ; 	% 608	M_h_c + M_h2mb4p_c + M_nadh_c --> M_dmpp_c + M_h2o_c + M_nad_c
 b2232 ; 	% 609	M_2omhmbl_c + M_amet_c --> M_ahcys_c + M_h_c + M_q8h2_c
 ( ( b1587  &&  b1588  &&  b1589  &&  b1590 )  ||  ( b0894  &&  b0895  &&  b0896 ) ) ; 	% 610	M_dmso_c + M_mql8_c --> M_dms_c + M_h2o_c + M_mqn8_c
 ( b1872  &&  b1873 ) ; 	% 611	M_mql8_c + M_dmso_p --> M_mqn8_c + M_dms_p + M_h2o_p
 ( b0894  &&  b0895  &&  b0896 ) ; 	% 612	M_2dmmql8_c + M_dmso_c --> M_2dmmq8_c + M_dms_c + M_h2o_c
 ( b1872  &&  b1873 ) ; 	% 613	M_2dmmql8_c + M_dmso_p --> M_2dmmq8_c + M_dms_p + M_h2o_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 614	M_dmso_e <--> M_dmso_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 615	M_dms_e <--> M_dms_p
 1 ; 	% 616	M_4hba_c --> M_4hba_b
 1 ; 	% 617	M_5drib_c --> M_5drib_b
 1 ; 	% 618	M_aacald_c --> M_aacald_b
 1 ; 	% 619	M_hmfurn_c --> M_hmfurn_b
 1 ; 	% 620	M_oxam_c --> M_oxam_b
 1 ; 	% 621	M_dhpmp_c + M_h2o_c --> M_dhnpt_c + M_pi_c
 ( b1865  ||  b0099 ) ; 	% 622	M_ahdt_c + M_h2o_c --> M_dhpmp_c + M_h_c + M_ppi_c
 b3575 ; 	% 623	M_23doguln_c + M_h_c + M_nadh_c --> M_3dhguln_c + M_nad_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 624	M_dopa_e <--> M_dopa_p
 b0103 ; 	% 625	M_atp_c + M_dpcoa_c --> M_adp_c + M_coa_c + M_h_c
 ( b0425  ||  b3774 ) ; 	% 626	M_2dhp_c + M_h_c + M_nadph_c --> M_nadp_c + M_pant_R_c
 b4381 ; 	% 627	M_2dr5p_c --> M_acald_c + M_g3p_c
 ( b3860  &&  b1185 ) ; 	% 628	M_q8_c + M_dsbard_p --> M_q8h2_c + M_dsbaox_p
 ( b3860  &&  b1185 ) ; 	% 629	M_mqn8_c + M_dsbard_p --> M_mql8_c + M_dsbaox_p
 b2893 ; 	% 630	M_dsbcox_p + M_gthrd_p --> M_dsbcrd_p + M_gthox_p
 ( ( b4136  &&  b3781 )  ||  ( b4136  &&  b2582 ) ) ; 	% 631	M_dsbdox_c + M_trdrd_c --> M_dsbdrd_c + M_trdox_c
 b0604 ; 	% 632	M_dsbgox_p + M_gthrd_p --> M_dsbgrd_p + M_gthox_p
 b1539 ; 	% 633	M_nadp_c + M_ser_D_c <--> M_2amsa_c + M_h_c + M_nadph_c
 b4208 ; 	% 634	M_h_p + M_ser_D_p --> M_h_c + M_ser_D_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 635	M_ser_D_e <--> M_ser_D_p
 b1098 ; 	% 636	M_atp_c + M_dtmp_c <--> M_adp_c + M_dtdp_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 637	M_dtmp_e <--> M_dtmp_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 638	M_dump_e <--> M_dump_p
 b1238 ; 	% 639	M_atp_c + M_duri_c --> M_adp_c + M_dump_c + M_h_c
 ( b4382  ||  b4384 ) ; 	% 640	M_duri_c + M_pi_c <--> M_2dr1p_c + M_ura_c
 ( b2393  ||  b2964 ) ; 	% 641	M_duri_p + M_h_p --> M_duri_c + M_h_c
 b0411 ; 	% 642	M_duri_e <--> M_duri_p
 ( b2251  ||  b3640 ) ; 	% 643	M_dutp_c + M_h2o_c --> M_dump_c + M_h_c + M_ppi_c
 b0173 ; 	% 644	M_dxyl5p_c + M_h_c + M_nadph_c --> M_2me4p_c + M_nadp_c
 b0420 ; 	% 645	M_g3p_c + M_h_c + M_pyr_c --> M_co2_c + M_dxyl5p_c
 b3564 ; 	% 646	M_atp_c + M_dxyl_c --> M_adp_c + M_dxyl5p_c + M_h_c
 ( b3603  ||  b2975 ) ; 	% 647	M_h_p + M_lac_D_p <--> M_h_c + M_lac_D_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 648	M_lac_D_e <--> M_lac_D_p
 b2927 ; 	% 649	M_e4p_c + M_h2o_c + M_nad_c <--> M_4per_c + M_h_c + M_nadh_c
 b1288 ; 	% 650	M_h_c + M_nadh_c + M_tdec2eACP_c --> M_dcaACP_c + M_nad_c
 b1288 ; 	% 651	M_h_c + M_nadph_c + M_tdec2eACP_c --> M_dcaACP_c + M_nadp_c
 b1288 ; 	% 652	M_h_c + M_nadh_c + M_tddec2eACP_c --> M_ddcaACP_c + M_nad_c
 b1288 ; 	% 653	M_h_c + M_nadph_c + M_tddec2eACP_c --> M_ddcaACP_c + M_nadp_c
 b1288 ; 	% 654	M_h_c + M_nadh_c + M_t3c5ddeceACP_c --> M_cddec5eACP_c + M_nad_c
 b1288 ; 	% 655	M_h_c + M_nadph_c + M_t3c5ddeceACP_c --> M_cddec5eACP_c + M_nadp_c
 b1288 ; 	% 656	M_h_c + M_nadh_c + M_tmrs2eACP_c --> M_myrsACP_c + M_nad_c
 b1288 ; 	% 657	M_h_c + M_nadph_c + M_tmrs2eACP_c --> M_myrsACP_c + M_nadp_c
 b1288 ; 	% 658	M_h_c + M_nadh_c + M_t3c7mrseACP_c --> M_nad_c + M_tdeACP_c
 b1288 ; 	% 659	M_h_c + M_nadph_c + M_t3c7mrseACP_c --> M_nadp_c + M_tdeACP_c
 b1288 ; 	% 660	M_h_c + M_nadh_c + M_tpalm2eACP_c --> M_nad_c + M_palmACP_c
 b1288 ; 	% 661	M_h_c + M_nadph_c + M_tpalm2eACP_c --> M_nadp_c + M_palmACP_c
 b1288 ; 	% 662	M_h_c + M_nadh_c + M_t3c9palmeACP_c --> M_hdeACP_c + M_nad_c
 b1288 ; 	% 663	M_h_c + M_nadph_c + M_t3c9palmeACP_c --> M_hdeACP_c + M_nadp_c
 b1288 ; 	% 664	M_h_c + M_nadh_c + M_toctd2eACP_c --> M_nad_c + M_ocdcaACP_c
 b1288 ; 	% 665	M_h_c + M_nadph_c + M_toctd2eACP_c --> M_nadp_c + M_ocdcaACP_c
 b1288 ; 	% 666	M_h_c + M_nadh_c + M_t3c11vaceACP_c --> M_nad_c + M_octeACP_c
 b1288 ; 	% 667	M_h_c + M_nadph_c + M_t3c11vaceACP_c --> M_nadp_c + M_octeACP_c
 b1288 ; 	% 668	M_but2eACP_c + M_h_c + M_nadh_c --> M_butACP_c + M_nad_c
 b1288 ; 	% 669	M_but2eACP_c + M_h_c + M_nadph_c --> M_butACP_c + M_nadp_c
 b1288 ; 	% 670	M_h_c + M_nadh_c + M_thex2eACP_c --> M_hexACP_c + M_nad_c
 b1288 ; 	% 671	M_h_c + M_nadph_c + M_thex2eACP_c --> M_hexACP_c + M_nadp_c
 b1288 ; 	% 672	M_h_c + M_nadh_c + M_toct2eACP_c --> M_nad_c + M_ocACP_c
 b1288 ; 	% 673	M_h_c + M_nadph_c + M_toct2eACP_c --> M_nadp_c + M_ocACP_c
 1 ; 	% 674	M_eca4colipa_p --> M_eca4colipa_e
 b3622 ; 	% 675	M_colipa_p + M_eca4und_p --> M_eca4colipa_p + M_h_p + M_udcpdp_p
 ( b3793  &&  b3785 ) ; 	% 676	M_unagamuf_p --> M_eca2und_p + M_h_p + M_udcpdp_p
 ( b3793  &&  b3785 ) ; 	% 677	M_eca2und_p + M_unagamuf_p --> M_eca3und_p + M_h_p + M_udcpdp_p
 ( b3793  &&  b3785 ) ; 	% 678	M_eca3und_p + M_unagamuf_p --> M_eca4und_p + M_h_p + M_udcpdp_p
 b3792 ; 	% 679	M_unagamuf_c --> M_unagamuf_p
 ( b3846  ||  b2341 ) ; 	% 680	M_3hbcoa_c <--> M_b2coa_c + M_h2o_c
 ( b3846  ||  b2341 ) ; 	% 681	M_3hhcoa_c <--> M_h2o_c + M_hx2coa_c
 ( b2341  ||  b3846 ) ; 	% 682	M_3hocoa_c <--> M_h2o_c + M_oc2coa_c
 ( b3846  ||  b2341 ) ; 	% 683	M_3hdcoa_c <--> M_dc2coa_c + M_h2o_c
 ( b3846  ||  b2341 ) ; 	% 684	M_3hddcoa_c <--> M_dd2coa_c + M_h2o_c
 ( b3846  ||  b2341 ) ; 	% 685	M_3htdcoa_c <--> M_h2o_c + M_td2coa_c
 ( b3846  ||  b2341 ) ; 	% 686	M_3hhdcoa_c <--> M_h2o_c + M_hdd2coa_c
 ( b3846  ||  b2341 ) ; 	% 687	M_3hodcoa_c <--> M_h2o_c + M_od2coa_c
 b1850 ; 	% 688	M_2ddg6p_c --> M_g3p_c + M_pyr_c
 b1851 ; 	% 689	M_6pgc_c --> M_2ddg6p_c + M_h2o_c
 b1054 ; 	% 690	M_ddcaACP_c + M_kdo2lipid4_c --> M_ACP_c + M_kdo2lipid4L_c
 b1855 ; 	% 691	M_kdo2lipid4L_c + M_myrsACP_c --> M_ACP_c + M_lipa_c
 b2378 ; 	% 692	M_hdeACP_c + M_kdo2lipid4_c --> M_ACP_c + M_kdo2lipid4p_c
 b1855 ; 	% 693	M_kdo2lipid4p_c + M_myrsACP_c --> M_ACP_c + M_lipa_cold_c
 1 ; 	% 694	M_enlipa_p --> M_enlipa_e
 b2779 ; 	% 695	M_2pg_c <--> M_h2o_c + M_pep_c
 b0583 ; 	% 696	M_23dhba_c + M_seramp_c --> M_amp_c + M_enter_c + M_h_c
 b0585 ; 	% 697	M_enter_c + M_h2o_c --> M_23dhbzs_c + M_h_c
 b0585 ; 	% 698	M_feenter_c + M_h2o_c --> M_23dhbzs_c + M_fe3_c + M_h_c
 ( b2440  &&  b2441 ) ; 	% 699	M_etha_c --> M_acald_c + M_nh4_c
 1 ; 	% 700	M_etha_p + M_h_p --> M_etha_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 701	M_etha_e <--> M_etha_p
 ( b0936  &&  b0933  &&  b0934 ) ; 	% 702	M_atp_c + M_h2o_c + M_ethso3_p --> M_adp_c + M_ethso3_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 703	M_ethso3_e <--> M_ethso3_p
 1 ; 	% 704	M_etoh_p + M_h_p <--> M_etoh_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 705	M_etoh_e <--> M_etoh_p
 1 ; 	% 706	M_12ppd_R_e <--> M_12ppd_R_b
 1 ; 	% 707	M_12ppd_S_e <--> M_12ppd_S_b
 1 ; 	% 708	M_14glucan_e <--> M_14glucan_b
 1 ; 	% 709	M_15dap_e <--> M_15dap_b
 1 ; 	% 710	M_23camp_e <--> M_23camp_b
 1 ; 	% 711	M_23ccmp_e <--> M_23ccmp_b
 1 ; 	% 712	M_23cgmp_e <--> M_23cgmp_b
 1 ; 	% 713	M_23cump_e <--> M_23cump_b
 1 ; 	% 714	M_23dappa_e <--> M_23dappa_b
 1 ; 	% 715	M_26dap_M_e <--> M_26dap_M_b
 1 ; 	% 716	M_2ddglcn_e <--> M_2ddglcn_b
 1 ; 	% 717	M_34dhpac_e <--> M_34dhpac_b
 1 ; 	% 718	M_3amp_e <--> M_3amp_b
 1 ; 	% 719	M_3cmp_e <--> M_3cmp_b
 1 ; 	% 720	M_3gmp_e <--> M_3gmp_b
 1 ; 	% 721	M_3hcinnm_e <--> M_3hcinnm_b
 1 ; 	% 722	M_3hpppn_e <--> M_3hpppn_b
 1 ; 	% 723	M_3ump_e <--> M_3ump_b
 1 ; 	% 724	M_4abut_e <--> M_4abut_b
 1 ; 	% 725	M_4hoxpacd_e <--> M_4hoxpacd_b
 1 ; 	% 726	M_5dglcn_e <--> M_5dglcn_b
 1 ; 	% 727	M_LalaDgluMdapDala_e <--> M_LalaDgluMdapDala_b
 1 ; 	% 728	M_LalaDgluMdap_e <--> M_LalaDgluMdap_b
 1 ; 	% 729	M_ac_e <--> M_ac_b
 1 ; 	% 730	M_acac_e <--> M_acac_b
 1 ; 	% 731	M_acald_e <--> M_acald_b
 1 ; 	% 732	M_acgal1p_e <--> M_acgal1p_b
 1 ; 	% 733	M_acgal_e <--> M_acgal_b
 1 ; 	% 734	M_acgam1p_e <--> M_acgam1p_b
 1 ; 	% 735	M_acgam_e <--> M_acgam_b
 1 ; 	% 736	M_acmana_e <--> M_acmana_b
 1 ; 	% 737	M_acmum_e <--> M_acmum_b
 1 ; 	% 738	M_acnam_e <--> M_acnam_b
 1 ; 	% 739	M_acolipa_e <--> M_acolipa_b
 1 ; 	% 740	M_acser_e <--> M_acser_b
 1 ; 	% 741	M_ade_e <--> M_ade_b
 1 ; 	% 742	M_adn_e <--> M_adn_b
 1 ; 	% 743	M_adocbl_e <--> M_adocbl_b
 1 ; 	% 744	M_ag_e <--> M_ag_b
 1 ; 	% 745	M_agm_e <--> M_agm_b
 1 ; 	% 746	M_akg_e <--> M_akg_b
 1 ; 	% 747	M_ala_B_e <--> M_ala_B_b
 1 ; 	% 748	M_ala_D_e <--> M_ala_D_b
 1 ; 	% 749	M_ala_L_e <--> M_ala_L_b
 1 ; 	% 750	M_alaala_e <--> M_alaala_b
 1 ; 	% 751	M_all_D_e <--> M_all_D_b
 1 ; 	% 752	M_alltn_e <--> M_alltn_b
 1 ; 	% 753	M_amp_e <--> M_amp_b
 1 ; 	% 754	M_anhgm_e <--> M_anhgm_b
 1 ; 	% 755	M_arab_L_e <--> M_arab_L_b
 1 ; 	% 756	M_arbtn_e <--> M_arbtn_b
 1 ; 	% 757	M_arbtn_fe3_e <--> M_arbtn_fe3_b
 1 ; 	% 758	M_arg_L_e <--> M_arg_L_b
 1 ; 	% 759	M_ascb_L_e <--> M_ascb_L_b
 1 ; 	% 760	M_asn_L_e <--> M_asn_L_b
 1 ; 	% 761	M_aso3_e <--> M_aso3_b
 1 ; 	% 762	M_asp_L_e <--> M_asp_L_b
 1 ; 	% 763	M_but_e <--> M_but_b
 1 ; 	% 764	M_butso3_e <--> M_butso3_b
 1 ; 	% 765	M_ca2_e <--> M_ca2_b
 1 ; 	% 766	M_cbi_e <--> M_cbi_b
 1 ; 	% 767	M_cbl1_e <--> M_cbl1_b
 1 ; 	% 768	M_cd2_e <--> M_cd2_b
 1 ; 	% 769	M_cgly_e <--> M_cgly_b
 1 ; 	% 770	M_chol_e <--> M_chol_b
 1 ; 	% 771	M_cit_e <--> M_cit_b
 1 ; 	% 772	M_cl_e <--> M_cl_b
 1 ; 	% 773	M_cmp_e <--> M_cmp_b
 1 ; 	% 774	M_co2_e <--> M_co2_b
 1 ; 	% 775	M_cobalt2_e <--> M_cobalt2_b
 1 ; 	% 776	M_colipa_e <--> M_colipa_b
 1 ; 	% 777	M_cpgn_e <--> M_cpgn_b
 1 ; 	% 778	M_cpgn_un_e <--> M_cpgn_un_b
 1 ; 	% 779	M_crn_e <--> M_crn_b
 1 ; 	% 780	M_csn_e <--> M_csn_b
 1 ; 	% 781	M_cu2_e <--> M_cu2_b
 1 ; 	% 782	M_cu_e <--> M_cu_b
 1 ; 	% 783	M_cyan_e <--> M_cyan_b
 1 ; 	% 784	M_cynt_e <--> M_cynt_b
 1 ; 	% 785	M_cys_D_e <--> M_cys_D_b
 1 ; 	% 786	M_cys_L_e <--> M_cys_L_b
 1 ; 	% 787	M_cytd_e <--> M_cytd_b
 1 ; 	% 788	M_dad_2_e <--> M_dad_2_b
 1 ; 	% 789	M_damp_e <--> M_damp_b
 1 ; 	% 790	M_dca_e <--> M_dca_b
 1 ; 	% 791	M_dcmp_e <--> M_dcmp_b
 1 ; 	% 792	M_dcyt_e <--> M_dcyt_b
 1 ; 	% 793	M_ddca_e <--> M_ddca_b
 1 ; 	% 794	M_dgmp_e <--> M_dgmp_b
 1 ; 	% 795	M_dgsn_e <--> M_dgsn_b
 1 ; 	% 796	M_dha_e <--> M_dha_b
 1 ; 	% 797	M_dimp_e <--> M_dimp_b
 1 ; 	% 798	M_din_e <--> M_din_b
 1 ; 	% 799	M_dms_e <--> M_dms_b
 1 ; 	% 800	M_dmso_e <--> M_dmso_b
 1 ; 	% 801	M_dopa_e <--> M_dopa_b
 1 ; 	% 802	M_dtmp_e <--> M_dtmp_b
 1 ; 	% 803	M_dump_e <--> M_dump_b
 1 ; 	% 804	M_duri_e <--> M_duri_b
 1 ; 	% 805	M_eca4colipa_e <--> M_eca4colipa_b
 1 ; 	% 806	M_enlipa_e <--> M_enlipa_b
 1 ; 	% 807	M_enter_e <--> M_enter_b
 1 ; 	% 808	M_etha_e <--> M_etha_b
 1 ; 	% 809	M_ethso3_e <--> M_ethso3_b
 1 ; 	% 810	M_etoh_e <--> M_etoh_b
 1 ; 	% 811	M_f6p_e <--> M_f6p_b
 1 ; 	% 812	M_fald_e <--> M_fald_b
 1 ; 	% 813	M_fe2_e <--> M_fe2_b
 1 ; 	% 814	M_fe3_e <--> M_fe3_b
 1 ; 	% 815	M_fe3dcit_e <--> M_fe3dcit_b
 1 ; 	% 816	M_fe3dhbzs_e <--> M_fe3dhbzs_b
 1 ; 	% 817	M_fe3hox_e <--> M_fe3hox_b
 1 ; 	% 818	M_fe3hox_un_e <--> M_fe3hox_un_b
 1 ; 	% 819	M_fecrm_e <--> M_fecrm_b
 1 ; 	% 820	M_fecrm_un_e <--> M_fecrm_un_b
 1 ; 	% 821	M_feenter_e <--> M_feenter_b
 1 ; 	% 822	M_feoxam_e <--> M_feoxam_b
 1 ; 	% 823	M_feoxam_un_e <--> M_feoxam_un_b
 1 ; 	% 824	M_for_e <--> M_for_b
 1 ; 	% 825	M_fru_e <--> M_fru_b
 1 ; 	% 826	M_frulys_e <--> M_frulys_b
 1 ; 	% 827	M_fruur_e <--> M_fruur_b
 1 ; 	% 828	M_fuc_L_e <--> M_fuc_L_b
 1 ; 	% 829	M_fum_e <--> M_fum_b
 1 ; 	% 830	M_g1p_e <--> M_g1p_b
 1 ; 	% 831	M_g3pc_e <--> M_g3pc_b
 1 ; 	% 832	M_g3pe_e <--> M_g3pe_b
 1 ; 	% 833	M_g3pg_e <--> M_g3pg_b
 1 ; 	% 834	M_g3pi_e <--> M_g3pi_b
 1 ; 	% 835	M_g3ps_e <--> M_g3ps_b
 1 ; 	% 836	M_g6p_e <--> M_g6p_b
 1 ; 	% 837	M_gal1p_e <--> M_gal1p_b
 1 ; 	% 838	M_gal_bD_e <--> M_gal_bD_b
 1 ; 	% 839	M_gal_e <--> M_gal_b
 1 ; 	% 840	M_galct_D_e <--> M_galct_D_b
 1 ; 	% 841	M_galctn_D_e <--> M_galctn_D_b
 1 ; 	% 842	M_galctn_L_e <--> M_galctn_L_b
 1 ; 	% 843	M_galt_e <--> M_galt_b
 1 ; 	% 844	M_galur_e <--> M_galur_b
 1 ; 	% 845	M_gam6p_e <--> M_gam6p_b
 1 ; 	% 846	M_gam_e <--> M_gam_b
 1 ; 	% 847	M_gbbtn_e <--> M_gbbtn_b
 1 ; 	% 848	M_gdp_e <--> M_gdp_b
 1 ; 	% 849	M_glc_D_e <--> M_glc_D_b
 1 ; 	% 850	M_glcn_e <--> M_glcn_b
 1 ; 	% 851	M_glcr_e <--> M_glcr_b
 1 ; 	% 852	M_glcur1p_e <--> M_glcur1p_b
 1 ; 	% 853	M_glcur_e <--> M_glcur_b
 1 ; 	% 854	M_gln_L_e <--> M_gln_L_b
 1 ; 	% 855	M_glu_L_e <--> M_glu_L_b
 1 ; 	% 856	M_gly_e <--> M_gly_b
 1 ; 	% 857	M_glyald_e <--> M_glyald_b
 1 ; 	% 858	M_glyb_e <--> M_glyb_b
 1 ; 	% 859	M_glyc2p_e <--> M_glyc2p_b
 1 ; 	% 860	M_glyc3p_e <--> M_glyc3p_b
 1 ; 	% 861	M_glyc_R_e <--> M_glyc_R_b
 1 ; 	% 862	M_glyc_e <--> M_glyc_b
 1 ; 	% 863	M_glyclt_e <--> M_glyclt_b
 1 ; 	% 864	M_gmp_e <--> M_gmp_b
 1 ; 	% 865	M_gsn_e <--> M_gsn_b
 1 ; 	% 866	M_gthox_e <--> M_gthox_b
 1 ; 	% 867	M_gthrd_e <--> M_gthrd_b
 1 ; 	% 868	M_gtp_e <--> M_gtp_b
 1 ; 	% 869	M_gua_e <--> M_gua_b
 1 ; 	% 870	M_h2_e <--> M_h2_b
 1 ; 	% 871	M_h2o2_e <--> M_h2o2_b
 1 ; 	% 872	M_h2o_e <--> M_h2o_b
 1 ; 	% 873	M_h2s_e <--> M_h2s_b
 1 ; 	% 874	M_h_e <--> M_h_b
 1 ; 	% 875	M_hacolipa_e <--> M_hacolipa_b
 1 ; 	% 876	M_halipa_e <--> M_halipa_b
 1 ; 	% 877	M_hdca_e <--> M_hdca_b
 1 ; 	% 878	M_hdcea_e <--> M_hdcea_b
 1 ; 	% 879	M_hg2_e <--> M_hg2_b
 1 ; 	% 880	M_his_L_e <--> M_his_L_b
 1 ; 	% 881	M_hom_L_e <--> M_hom_L_b
 1 ; 	% 882	M_hxa_e <--> M_hxa_b
 1 ; 	% 883	M_hxan_e <--> M_hxan_b
 1 ; 	% 884	M_idon_L_e <--> M_idon_L_b
 1 ; 	% 885	M_ile_L_e <--> M_ile_L_b
 1 ; 	% 886	M_imp_e <--> M_imp_b
 1 ; 	% 887	M_indole_e <--> M_indole_b
 1 ; 	% 888	M_inost_e <--> M_inost_b
 1 ; 	% 889	M_ins_e <--> M_ins_b
 1 ; 	% 890	M_isetac_e <--> M_isetac_b
 1 ; 	% 891	M_k_e <--> M_k_b
 1 ; 	% 892	M_kdo2lipid4_e <--> M_kdo2lipid4_b
 1 ; 	% 893	M_lac_D_e <--> M_lac_D_b
 1 ; 	% 894	M_lac_L_e <--> M_lac_L_b
 1 ; 	% 895	M_lcts_e <--> M_lcts_b
 1 ; 	% 896	M_leu_L_e <--> M_leu_L_b
 1 ; 	% 897	M_lipa_cold_e <--> M_lipa_cold_b
 1 ; 	% 898	M_lipa_e <--> M_lipa_b
 1 ; 	% 899	M_lys_L_e <--> M_lys_L_b
 1 ; 	% 900	M_lyx_L_e <--> M_lyx_L_b
 1 ; 	% 901	M_mal_D_e <--> M_mal_D_b
 1 ; 	% 902	M_mal_L_e <--> M_mal_L_b
 1 ; 	% 903	M_malt_e <--> M_malt_b
 1 ; 	% 904	M_malthx_e <--> M_malthx_b
 1 ; 	% 905	M_maltpt_e <--> M_maltpt_b
 1 ; 	% 906	M_malttr_e <--> M_malttr_b
 1 ; 	% 907	M_maltttr_e <--> M_maltttr_b
 1 ; 	% 908	M_man6p_e <--> M_man6p_b
 1 ; 	% 909	M_man_e <--> M_man_b
 1 ; 	% 910	M_manglyc_e <--> M_manglyc_b
 1 ; 	% 911	M_melib_e <--> M_melib_b
 1 ; 	% 912	M_met_D_e <--> M_met_D_b
 1 ; 	% 913	M_met_L_e <--> M_met_L_b
 1 ; 	% 914	M_metsox_R_L_e <--> M_metsox_R_L_b
 1 ; 	% 915	M_metsox_S_L_e <--> M_metsox_S_L_b
 1 ; 	% 916	M_mg2_e <--> M_mg2_b
 1 ; 	% 917	M_minohp_e <--> M_minohp_b
 1 ; 	% 918	M_mmet_e <--> M_mmet_b
 1 ; 	% 919	M_mn2_e <--> M_mn2_b
 1 ; 	% 920	M_mnl_e <--> M_mnl_b
 1 ; 	% 921	M_mobd_e <--> M_mobd_b
 1 ; 	% 922	M_mso3_e <--> M_mso3_b
 1 ; 	% 923	M_n2o_e <--> M_n2o_b
 1 ; 	% 924	M_na1_e <--> M_na1_b
 1 ; 	% 925	M_nac_e <--> M_nac_b
 1 ; 	% 926	M_nh4_e <--> M_nh4_b
 1 ; 	% 927	M_ni2_e <--> M_ni2_b
 1 ; 	% 928	M_nmn_e <--> M_nmn_b
 1 ; 	% 929	M_no2_e <--> M_no2_b
 1 ; 	% 930	M_no3_e <--> M_no3_b
 1 ; 	% 931	M_no_e <--> M_no_b
 1 ; 	% 932	M_o16a4colipa_e <--> M_o16a4colipa_b
 1 ; 	% 933	M_o2_e <--> M_o2_b
 1 ; 	% 934	M_o2s_e <--> M_o2s_b
 1 ; 	% 935	M_ocdca_e <--> M_ocdca_b
 1 ; 	% 936	M_ocdcea_e <--> M_ocdcea_b
 1 ; 	% 937	M_octa_e <--> M_octa_b
 1 ; 	% 938	M_orn_e <--> M_orn_b
 1 ; 	% 939	M_orot_e <--> M_orot_b
 1 ; 	% 940	M_pacald_e <--> M_pacald_b
 1 ; 	% 941	M_peamn_e <--> M_peamn_b
 1 ; 	% 942	M_phe_L_e <--> M_phe_L_b
 1 ; 	% 943	M_pheme_e <--> M_pheme_b
 1 ; 	% 944	M_pi_e <--> M_pi_b
 1 ; 	% 945	M_pnto_R_e <--> M_pnto_R_b
 1 ; 	% 946	M_ppa_e <--> M_ppa_b
 1 ; 	% 947	M_ppal_e <--> M_ppal_b
 1 ; 	% 948	M_pppn_e <--> M_pppn_b
 1 ; 	% 949	M_ppt_e <--> M_ppt_b
 1 ; 	% 950	M_pro_L_e <--> M_pro_L_b
 1 ; 	% 951	M_progly_e <--> M_progly_b
 1 ; 	% 952	M_psclys_e <--> M_psclys_b
 1 ; 	% 953	M_pser_L_e <--> M_pser_L_b
 1 ; 	% 954	M_ptrc_e <--> M_ptrc_b
 1 ; 	% 955	M_pyr_e <--> M_pyr_b
 1 ; 	% 956	M_r5p_e <--> M_r5p_b
 1 ; 	% 957	M_rib_D_e <--> M_rib_D_b
 1 ; 	% 958	M_rmn_e <--> M_rmn_b
 1 ; 	% 959	M_sbt_D_e <--> M_sbt_D_b
 1 ; 	% 960	M_ser_D_e <--> M_ser_D_b
 1 ; 	% 961	M_ser_L_e <--> M_ser_L_b
 1 ; 	% 962	M_skm_e <--> M_skm_b
 1 ; 	% 963	M_so2_e <--> M_so2_b
 1 ; 	% 964	M_so3_e <--> M_so3_b
 1 ; 	% 965	M_so4_e <--> M_so4_b
 1 ; 	% 966	M_spmd_e <--> M_spmd_b
 1 ; 	% 967	M_succ_e <--> M_succ_b
 1 ; 	% 968	M_sucr_e <--> M_sucr_b
 1 ; 	% 969	M_sulfac_e <--> M_sulfac_b
 1 ; 	% 970	M_tartr_L_e <--> M_tartr_L_b
 1 ; 	% 971	M_taur_e <--> M_taur_b
 1 ; 	% 972	M_tcynt_e <--> M_tcynt_b
 1 ; 	% 973	M_thm_e <--> M_thm_b
 1 ; 	% 974	M_thr_L_e <--> M_thr_L_b
 1 ; 	% 975	M_thrp_e <--> M_thrp_b
 1 ; 	% 976	M_thym_e <--> M_thym_b
 1 ; 	% 977	M_thymd_e <--> M_thymd_b
 1 ; 	% 978	M_tma_e <--> M_tma_b
 1 ; 	% 979	M_tmao_e <--> M_tmao_b
 1 ; 	% 980	M_tre_e <--> M_tre_b
 1 ; 	% 981	M_trp_L_e <--> M_trp_L_b
 1 ; 	% 982	M_tsul_e <--> M_tsul_b
 1 ; 	% 983	M_ttdca_e <--> M_ttdca_b
 1 ; 	% 984	M_ttdcea_e <--> M_ttdcea_b
 1 ; 	% 985	M_tungs_e <--> M_tungs_b
 1 ; 	% 986	M_tym_e <--> M_tym_b
 1 ; 	% 987	M_tyr_L_e <--> M_tyr_L_b
 1 ; 	% 988	M_tyrp_e <--> M_tyrp_b
 1 ; 	% 989	M_uacgam_e <--> M_uacgam_b
 1 ; 	% 990	M_udpacgal_e <--> M_udpacgal_b
 1 ; 	% 991	M_udpg_e <--> M_udpg_b
 1 ; 	% 992	M_udpgal_e <--> M_udpgal_b
 1 ; 	% 993	M_udpglcur_e <--> M_udpglcur_b
 1 ; 	% 994	M_ump_e <--> M_ump_b
 1 ; 	% 995	M_ura_e <--> M_ura_b
 1 ; 	% 996	M_urea_e <--> M_urea_b
 1 ; 	% 997	M_uri_e <--> M_uri_b
 1 ; 	% 998	M_val_L_e <--> M_val_L_b
 1 ; 	% 999	M_xan_e <--> M_xan_b
 1 ; 	% 1000	M_xmp_e <--> M_xmp_b
 1 ; 	% 1001	M_xtsn_e <--> M_xtsn_b
 1 ; 	% 1002	M_xyl_D_e <--> M_xyl_D_b
 1 ; 	% 1003	M_xylu_L_e <--> M_xylu_L_b
 1 ; 	% 1004	M_zn2_e <--> M_zn2_b
 1 ; 	% 1005	M_10fthf_c + M_2ohph_c + M_ala_L_c + M_amet_c + M_arg_L_c + M_asn_L_c + M_asp_L_c + M_atp_c + M_ca2_c + M_cl_c + M_coa_c + M_cobalt2_c + M_ctp_c + M_cu2_c + M_cys_L_c + M_datp_c + M_dctp_c + M_dgtp_c + M_dttp_c + M_fad_c + M_fe2_c + M_fe3_c + M_gln_L_c + M_glu_L_c + M_gly_c + M_gtp_c + M_h2o_c + M_his_L_c + M_ile_L_c + M_k_c + M_leu_L_c + M_lys_L_c + M_met_L_c + M_mg2_c + M_mlthf_c + M_mn2_c + M_mobd_c + M_nad_c + M_nadp_c + M_nh4_c + M_pe160_c + M_pe161_c + M_phe_L_c + M_pheme_c + M_pro_L_c + M_pydx5p_c + M_ribflv_c + M_ser_L_c + M_sheme_c + M_so4_c + M_thf_c + M_thmpp_c + M_thr_L_c + M_trp_L_c + M_tyr_L_c + M_udcpdp_c + M_utp_c + M_val_L_c + M_zn2_c + M_kdo2lipid4_e + M_murein5px4p_p + M_pe160_p + M_pe161_p --> M_adp_c + M_h_c + M_pi_c + M_ppi_c
 ( b0825  ||  b3946 ) ; 	% 1006	M_f6p_c <--> M_dha_c + M_g3p_c
 b0822 ; 	% 1007	M_f6p_c + M_h2o_c --> M_fru_c + M_pi_c
 b3666 ; 	% 1008	M_pi_c + M_f6p_p --> M_f6p_c + M_pi_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1009	M_f6p_e <--> M_f6p_p
 b0404 ; 	% 1010	M_dcaACP_c + M_h2o_c --> M_ACP_c + M_dca_c + M_h_c
 b0404 ; 	% 1011	M_ddcaACP_c + M_h2o_c --> M_ACP_c + M_ddca_c + M_h_c
 b0404 ; 	% 1012	M_h2o_c + M_myrsACP_c --> M_ACP_c + M_h_c + M_ttdca_c
 b0404 ; 	% 1013	M_h2o_c + M_tdeACP_c --> M_ACP_c + M_h_c + M_ttdcea_c
 b0404 ; 	% 1014	M_h2o_c + M_palmACP_c --> M_ACP_c + M_h_c + M_hdca_c
 b0404 ; 	% 1015	M_h2o_c + M_hdeACP_c --> M_ACP_c + M_h_c + M_hdcea_c
 b0404 ; 	% 1016	M_h2o_c + M_ocACP_c --> M_ACP_c + M_h_c + M_octa_c
 b0452 ; 	% 1017	M_dcacoa_c + M_h2o_c --> M_coa_c + M_dca_c + M_h_c
 b0452 ; 	% 1018	M_ddcacoa_c + M_h2o_c --> M_coa_c + M_ddca_c + M_h_c
 b0452 ; 	% 1019	M_h2o_c + M_tdcoa_c --> M_coa_c + M_h_c + M_ttdca_c
 b0452 ; 	% 1020	M_h2o_c + M_tdecoa_c --> M_coa_c + M_h_c + M_ttdcea_c
 b0452 ; 	% 1021	M_h2o_c + M_pmtcoa_c --> M_coa_c + M_h_c + M_hdca_c
 b0452 ; 	% 1022	M_h2o_c + M_hdcoa_c --> M_coa_c + M_h_c + M_hdcea_c
 b0452 ; 	% 1023	M_h2o_c + M_stcoa_c --> M_coa_c + M_h_c + M_ocdca_c
 b0452 ; 	% 1024	M_h2o_c + M_odecoa_c --> M_coa_c + M_h_c + M_ocdcea_c
 b0452 ; 	% 1025	M_h2o_c + M_hxcoa_c --> M_coa_c + M_h_c + M_hxa_c
 b0452 ; 	% 1026	M_h2o_c + M_occoa_c --> M_coa_c + M_h_c + M_octa_c
 ( b1805  ||  b1701 ) ; 	% 1027	M_atp_c + M_coa_c + M_dca_p + M_h_p --> M_amp_c + M_dcacoa_c + M_h_c + M_ppi_c
 ( b1701  ||  b1805 ) ; 	% 1028	M_atp_c + M_coa_c + M_ddca_p + M_h_p --> M_amp_c + M_ddcacoa_c + M_h_c + M_ppi_c
 ( b1805  ||  b1701 ) ; 	% 1029	M_atp_c + M_coa_c + M_h_p + M_ttdca_p --> M_amp_c + M_h_c + M_ppi_c + M_tdcoa_c
 ( b1701  ||  b1805 ) ; 	% 1030	M_atp_c + M_coa_c + M_h_p + M_ttdcea_p --> M_amp_c + M_h_c + M_ppi_c + M_tdecoa_c
 ( b1701  ||  b1805 ) ; 	% 1031	M_atp_c + M_coa_c + M_h_p + M_hdca_p --> M_amp_c + M_h_c + M_pmtcoa_c + M_ppi_c
 ( b1805  ||  b1701 ) ; 	% 1032	M_atp_c + M_coa_c + M_h_p + M_hdcea_p --> M_amp_c + M_h_c + M_hdcoa_c + M_ppi_c
 ( b1805  ||  b1701 ) ; 	% 1033	M_atp_c + M_coa_c + M_h_p + M_ocdca_p --> M_amp_c + M_h_c + M_ppi_c + M_stcoa_c
 ( b1805  ||  b1701 ) ; 	% 1034	M_atp_c + M_coa_c + M_h_p + M_ocdcea_p --> M_amp_c + M_h_c + M_odecoa_c + M_ppi_c
 ( b1805  ||  b1701 ) ; 	% 1035	M_atp_c + M_coa_c + M_h_p + M_hxa_p --> M_amp_c + M_h_c + M_hxcoa_c + M_ppi_c
 ( b1805  ||  b1701 ) ; 	% 1036	M_atp_c + M_coa_c + M_h_p + M_octa_p --> M_amp_c + M_h_c + M_occoa_c + M_ppi_c
 b3844 ; 	% 1037	M_fad_c + M_h_c + M_nadh_c --> M_fadh2_c + M_nad_c
 ( b2763  &&  b2764 ) ; 	% 1038	M_fad_c + M_h_c + M_nadph_c --> M_fadh2_c + M_nadp_c
 b0356 ; 	% 1039	M_hmgth_c + M_nad_c <--> M_Sfglutth_c + M_h_c + M_nadh_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1040	M_fald_e <--> M_fald_p
 1 ; 	% 1041	M_fald_p <--> M_fald_c
 1 ; 	% 1042	M_fald_c + M_gthrd_c <--> M_hmgth_c
 ( b2097  ||  b1773  ||  b2925 ) ; 	% 1043	M_fdp_c <--> M_dhap_c + M_g3p_c
 ( b3925  ||  b4232 ) ; 	% 1044	M_fdp_c + M_h2o_c --> M_f6p_c + M_pi_c
 b2802 ; 	% 1045	M_fuc_L_c <--> M_fcl_L_c
 b2803 ; 	% 1046	M_atp_c + M_fcl_L_c --> M_adp_c + M_fc1p_c + M_h_c
 ( b2800  ||  b2738 ) ; 	% 1047	M_fc1p_c <--> M_dhap_c + M_lald_L_c
 b0475 ; 	% 1048	M_fe2_c + M_ppp9_c --> M_h_c + M_pheme_c
 ( ( b3892  &&  b3893  &&  b3894 )  ||  ( b1474  &&  b1475  &&  b1476 ) ) ; 	% 1049	M_h_c + M_q8_c + M_for_p --> M_co2_c + M_q8h2_c + M_h_p
 ( ( b1474  &&  b1475  &&  b1476 )  ||  ( b3892  &&  b3893  &&  b3894 ) ) ; 	% 1050	M_h_c + M_mqn8_c + M_for_p --> M_co2_c + M_mql8_c + M_h_p
 b0935 ; 	% 1051	M_fmnh2_c + M_isetac_c + M_o2_c --> M_fmn_c + M_gcald_c + M_h_c + M_h2o_c + M_so3_c
 b0935 ; 	% 1052	M_fmnh2_c + M_mso3_c + M_o2_c --> M_fald_c + M_fmn_c + M_h_c + M_h2o_c + M_so3_c
 b0935 ; 	% 1053	M_ethso3_c + M_fmnh2_c + M_o2_c --> M_acald_c + M_fmn_c + M_h_c + M_h2o_c + M_so3_c
 b0935 ; 	% 1054	M_butso3_c + M_fmnh2_c + M_o2_c --> M_btal_c + M_fmn_c + M_h_c + M_h2o_c + M_so3_c
 b0935 ; 	% 1055	M_fmnh2_c + M_o2_c + M_sulfac_c --> M_fmn_c + M_glx_c + M_h_c + M_h2o_c + M_so3_c
 b3409 ; 	% 1056	M_atp_c + M_h2o_c + M_fe2_p --> M_adp_c + M_fe2_c + M_h_c + M_pi_c
 b2392 ; 	% 1057	M_fe2_p + M_h_p --> M_fe2_c + M_h_c
 b3915 ; 	% 1058	M_fe2_c + M_h_p --> M_h_c + M_fe2_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1059	M_fe2_e <--> M_fe2_p
 b3040 ; 	% 1060	M_fe2_p --> M_fe2_c
 ( b4290  &&  b4289  &&  b4288  &&  b4287 ) ; 	% 1061	M_atp_c + M_h2o_c + M_fe3dcit_p --> M_adp_c + M_cit_c + M_fe3_c + M_h_c + M_pi_c
 ( b4291  &&  ( b1252  &&  b3005  &&  b3006 ) ) ; 	% 1062	M_fe3dcit_e + M_h_p --> M_h_c + M_fe3dcit_p
 1 ; 	% 1063	M_fe3dhbzs_c --> M_23dhbzs_c + M_fe3_c
 ( b0592  &&  b0588  &&  b0590  &&  b0589 ) ; 	% 1064	M_atp_c + M_h2o_c + M_fe3dhbzs_p --> M_adp_c + M_fe3dhbzs_c + M_h_c + M_pi_c
 ( ( b0805  &&  ( b1252  &&  b3005  &&  b3006 ) )  ||  ( b2155  &&  ( b1252  &&  b3005  &&  b3006 ) ) ) ; 	% 1065	M_fe3dhbzs_e + M_h_p --> M_h_c + M_fe3dhbzs_p
 1 ; 	% 1066	M_fadh2_c + M_fe3hox_c --> M_fad_c + M_fe2_c + M_fe3hox_un_c + M_h_c
 1 ; 	% 1067	M_fe3hox_c + M_fmnh2_c --> M_fe2_c + M_fe3hox_un_c + M_fmn_c + M_h_c
 1 ; 	% 1068	M_fe3hox_c + M_rbflvrd_c --> M_fe2_c + M_fe3hox_un_c + M_h_c + M_ribflv_c
 1 ; 	% 1069	M_fe3hox_un_c + M_h_p --> M_h_c + M_fe3hox_un_p
 1 ; 	% 1070	M_fe3hox_un_p + M_h_p --> M_h_c + M_fe3hox_un_e
 ( b0153  &&  b0151  &&  b0152 ) ; 	% 1071	M_atp_c + M_h2o_c + M_fe3hox_p --> M_adp_c + M_fe3hox_c + M_h_c + M_pi_c
 1 ; 	% 1072	M_fe3_e + M_fe3hox_un_e --> M_fe3hox_e
 ( b0150  &&  ( b1252  &&  b3005  &&  b3006 ) ) ; 	% 1073	M_fe3hox_e + M_h_p --> M_h_c + M_fe3hox_p
 b3844 ; 	% 1074	M_fadh2_c + M_fe3_c --> M_fad_c + M_fe2_c + M_h_c
 1 ; 	% 1075	M_atp_c + M_h2o_c + M_fe3_p --> M_adp_c + M_fe3_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1076	M_fe3_e <--> M_fe3_p
 1 ; 	% 1077	M_fadh2_c + M_fecrm_c --> M_fad_c + M_fe2_c + M_fecrm_un_c + M_h_c
 1 ; 	% 1078	M_fecrm_c + M_fmnh2_c --> M_fe2_c + M_fecrm_un_c + M_fmn_c + M_h_c
 1 ; 	% 1079	M_fecrm_c + M_rbflvrd_c --> M_fe2_c + M_fecrm_un_c + M_h_c + M_ribflv_c
 1 ; 	% 1080	M_fecrm_un_p + M_h_p --> M_h_c + M_fecrm_un_e
 1 ; 	% 1081	M_fecrm_un_c + M_h_p --> M_h_c + M_fecrm_un_p
 ( b0153  &&  b0151  &&  b0152 ) ; 	% 1082	M_atp_c + M_h2o_c + M_fecrm_p --> M_adp_c + M_fecrm_c + M_h_c + M_pi_c
 1 ; 	% 1083	M_fe3_e + M_fecrm_un_e --> M_fecrm_e
 ( b0150  &&  ( b1252  &&  b3005  &&  b3006 ) ) ; 	% 1084	M_fecrm_e + M_h_p --> M_h_c + M_fecrm_p
 1 ; 	% 1085	M_fadh2_c + M_feenter_c --> M_enter_c + M_fad_c + M_fe2_c + M_h_c
 1 ; 	% 1086	M_feenter_c + M_fmnh2_c --> M_enter_c + M_fe2_c + M_fmn_c + M_h_c
 1 ; 	% 1087	M_feenter_c + M_rbflvrd_c --> M_enter_c + M_fe2_c + M_h_c + M_ribflv_c
 ( b0592  &&  b0588  &&  b0590  &&  b0589 ) ; 	% 1088	M_atp_c + M_h2o_c + M_feenter_p --> M_adp_c + M_feenter_c + M_h_c + M_pi_c
 1 ; 	% 1089	M_enter_e + M_fe3_e --> M_feenter_e
 1 ; 	% 1090	M_enter_p + M_h_p --> M_h_c + M_enter_e
 ( b0584  &&  ( b1252  &&  b3005  &&  b3006 ) ) ; 	% 1091	M_feenter_e + M_h_p --> M_h_c + M_feenter_p
 b0591 ; 	% 1092	M_enter_c + M_h_p --> M_h_c + M_enter_p
 1 ; 	% 1093	M_fadh2_c + M_feoxam_c --> M_fad_c + M_fe2_c + M_feoxam_un_c + M_h_c
 1 ; 	% 1094	M_feoxam_c + M_fmnh2_c --> M_fe2_c + M_feoxam_un_c + M_fmn_c + M_h_c
 1 ; 	% 1095	M_feoxam_c + M_rbflvrd_c --> M_fe2_c + M_feoxam_un_c + M_h_c + M_ribflv_c
 1 ; 	% 1096	M_feoxam_un_p + M_h_p --> M_h_c + M_feoxam_un_e
 1 ; 	% 1097	M_feoxam_un_c + M_h_p --> M_h_c + M_feoxam_un_p
 ( b0153  &&  b0151  &&  b0152 ) ; 	% 1098	M_atp_c + M_h2o_c + M_feoxam_p --> M_adp_c + M_feoxam_c + M_h_c + M_pi_c
 1 ; 	% 1099	M_fe3_e + M_feoxam_un_e --> M_feoxam_e
 ( b0150  &&  ( b1252  &&  b3005  &&  b3006 ) ) ; 	% 1100	M_feoxam_e + M_h_p --> M_h_c + M_feoxam_p
 b0123 ; 	% 1101	M_fe2_p + M_h_p + M_o2_p --> M_fe3_p + M_h2o_p
 1 ; 	% 1102	M_h2o_c + M_suc6p_c --> M_fru_c + M_g6p_c
 ( ( b4079  &&  ( b2481  &&  b2482  &&  b2483  &&  b2484  &&  b2485  &&  b2486  &&  b2487  &&  b2488  &&  b2489  &&  b2490 ) )  ||  ( b4079  &&  ( b2719  &&  b2720  &&  b2721  &&  b2722  &&  b2723  &&  b2724 ) ) ) ; 	% 1103	M_for_c + M_h_c --> M_co2_c + M_h2_c
 ( ( b0684  &&  b3924 )  ||  ( b2895  &&  b3924 ) ) ; 	% 1104	M_fldox_c + M_h_c + M_nadph_c --> M_fldrd_c + M_nadp_c
 ( ( b2763  &&  b2764 )  ||  b3844 ) ; 	% 1105	M_h_c + M_nadph_c + M_ribflv_c --> M_nadp_c + M_rbflvrd_c
 b3844 ; 	% 1106	M_h_c + M_nadh_c + M_ribflv_c --> M_nad_c + M_rbflvrd_c
 b3288 ; 	% 1107	M_10fthf_c + M_mettrna_c --> M_fmettrna_c + M_h_c + M_thf_c
 b0025 ; 	% 1108	M_atp_c + M_fmn_c + M_h_c --> M_fad_c + M_ppi_c
 ( b0937  ||  b3844 ) ; 	% 1109	M_fmn_c + M_h_c + M_nadh_c --> M_fmnh2_c + M_nad_c
 ( b0937  ||  ( b2763  &&  b2764 )  ||  b3844 ) ; 	% 1110	M_fmn_c + M_h_c + M_nadph_c --> M_fmnh2_c + M_nadp_c
 ( b0904  ||  b2492 ) ; 	% 1111	M_for_p + M_h_p --> M_for_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1112	M_for_e <--> M_for_p
 ( b0904  ||  b2492 ) ; 	% 1113	M_for_c --> M_for_p
 ( b4151  &&  b4152  &&  b4153  &&  b4154 ) ; 	% 1114	M_fum_c + M_mql8_c --> M_mqn8_c + M_succ_c
 ( b4151  &&  b4152  &&  b4153  &&  b4154 ) ; 	% 1115	M_2dmmql8_c + M_fum_c --> M_2dmmq8_c + M_succ_c
 b2168 ; 	% 1116	M_atp_c + M_f1p_c --> M_adp_c + M_fdp_c + M_h_c
 b3371 ; 	% 1117	M_frulysp_c + M_h2o_c <--> M_g6p_c + M_lys_L_c
 b4474 ; 	% 1118	M_psclys_c <--> M_frulys_c
 b3374 ; 	% 1119	M_atp_c + M_frulys_c --> M_adp_c + M_frulysp_c + M_h_c
 b3370 ; 	% 1120	M_frulys_p + M_h_p --> M_frulys_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1121	M_frulys_e <--> M_frulys_p
 b4321 ; 	% 1122	M_fruur_p + M_h_p <--> M_fruur_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1123	M_fruur_e <--> M_fruur_p
 ( b1817  &&  b1818  &&  b1819  &&  b2415  &&  b2416 ) ; 	% 1124	M_pep_c + M_fru_p --> M_f6p_c + M_pyr_c
 ( b2167  &&  b2169  &&  b2415  &&  b2416 ) ; 	% 1125	M_pep_c + M_fru_p --> M_f1p_c + M_pyr_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1126	M_fru_e <--> M_fru_p
 b1232 ; 	% 1127	M_10fthf_c + M_h2o_c --> M_for_c + M_h_c + M_thf_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1128	M_fuc_L_e <--> M_fuc_L_p
 b2801 ; 	% 1129	M_fuc_L_p + M_h_p <--> M_fuc_L_c + M_h_c
 ( b1612  ||  b4122  ||  b1611 ) ; 	% 1130	M_fum_c + M_h2o_c <--> M_mal_L_c
 b3528 ; 	% 1131	M_fum_p + M_h_p --> M_fum_c + M_h_c
 ( b4138  ||  b4123  ||  b0621 ) ; 	% 1132	M_fum_p + M_h_p --> M_fum_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1133	M_fum_e <--> M_fum_p
 b3730 ; 	% 1134	M_accoa_c + M_gam1p_c --> M_acgam1p_c + M_coa_c + M_h_c
 b1002 ; 	% 1135	M_g1p_p + M_h2o_p --> M_glc_D_p + M_pi_p
 ( b3789  ||  b2039 ) ; 	% 1136	M_dttp_c + M_g1p_c + M_h_c --> M_dtdpglu_c + M_ppi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1137	M_g1p_e <--> M_g1p_p
 b0154 ; 	% 1138	M_glu1sa_c <--> M_5aop_c
 b4055 ; 	% 1139	M_glyc2p_p + M_h2o_p --> M_glyc_p + M_pi_p
 b4041 ; 	% 1140	M_ddcaACP_c + M_glyc3p_c --> M_1ddecg3p_c + M_ACP_c
 b4041 ; 	% 1141	M_glyc3p_c + M_myrsACP_c --> M_1tdecg3p_c + M_ACP_c
 b4041 ; 	% 1142	M_glyc3p_c + M_tdeACP_c --> M_1tdec7eg3p_c + M_ACP_c
 b4041 ; 	% 1143	M_glyc3p_c + M_palmACP_c --> M_1hdecg3p_c + M_ACP_c
 b4041 ; 	% 1144	M_glyc3p_c + M_hdeACP_c --> M_1hdec9eg3p_c + M_ACP_c
 b4041 ; 	% 1145	M_glyc3p_c + M_ocdcaACP_c --> M_1odecg3p_c + M_ACP_c
 b4041 ; 	% 1146	M_glyc3p_c + M_octeACP_c --> M_1odec11eg3p_c + M_ACP_c
 ( b3452  &&  b3453  &&  b3450  &&  b3451 ) ; 	% 1147	M_atp_c + M_h2o_c + M_g3pc_p --> M_adp_c + M_g3pc_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1148	M_g3pc_e <--> M_g3pc_p
 b3608 ; 	% 1149	M_glyc3p_c + M_nadp_c <--> M_dhap_c + M_h_c + M_nadph_c
 ( ( b2241  &&  b2242  &&  b2243 )  ||  b3426 ) ; 	% 1150	M_glyc3p_c + M_q8_c --> M_dhap_c + M_q8h2_c
 ( b2241  &&  b2242  &&  b2243 ) ; 	% 1151	M_glyc3p_c + M_mqn8_c --> M_dhap_c + M_mql8_c
 ( b2241  &&  b2242  &&  b2243 ) ; 	% 1152	M_2dmmq8_c + M_glyc3p_c --> M_2dmmql8_c + M_dhap_c
 ( b3452  &&  b3453  &&  b3450  &&  b3451 ) ; 	% 1153	M_atp_c + M_h2o_c + M_g3pe_p --> M_adp_c + M_g3pe_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1154	M_g3pe_e <--> M_g3pe_p
 ( b3452  &&  b3453  &&  b3450  &&  b3451 ) ; 	% 1155	M_atp_c + M_h2o_c + M_g3pg_p --> M_adp_c + M_g3pg_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1156	M_g3pg_e <--> M_g3pg_p
 ( b3452  &&  b3453  &&  b3450  &&  b3451 ) ; 	% 1157	M_atp_c + M_h2o_c + M_g3pi_p --> M_adp_c + M_g3pi_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1158	M_g3pi_e <--> M_g3pi_p
 ( b3452  &&  b3453  &&  b3450  &&  b3451 ) ; 	% 1159	M_atp_c + M_h2o_c + M_g3ps_p --> M_adp_c + M_g3ps_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1160	M_g3ps_e <--> M_g3ps_p
 b0822 ; 	% 1161	M_glyc3p_c + M_h2o_c --> M_glyc_c + M_pi_c
 1 ; 	% 1162	M_glu5sa_c --> M_1pyr5c_c + M_h_c + M_h2o_c
 b0243 ; 	% 1163	M_glu5p_c + M_h_c + M_nadph_c --> M_glu5sa_c + M_nadp_c + M_pi_c
 b0678 ; 	% 1164	M_gam6p_c + M_h2o_c --> M_f6p_c + M_nh4_c
 b1852 ; 	% 1165	M_g6p_c + M_nadp_c <--> M_6pgl_c + M_h_c + M_nadph_c
 b0822 ; 	% 1166	M_g6p_c + M_h2o_c --> M_glc_D_c + M_pi_c
 b3666 ; 	% 1167	M_pi_c + M_g6p_p --> M_g6p_c + M_pi_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1168	M_g6p_e <--> M_g6p_p
 b1002 ; 	% 1169	M_gal1p_p + M_h2o_p --> M_gal_p + M_pi_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1170	M_gal1p_e <--> M_gal1p_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1171	M_gal_bD_e <--> M_gal_bD_p
 b3128 ; 	% 1172	M_galct_D_c --> M_5dh4dglc_c + M_h2o_c
 b4358 ; 	% 1173	M_galctn_L_c + M_nad_c --> M_h_c + M_nadh_c + M_tagur_c
 b4478 ; 	% 1174	M_galctn_D_c --> M_2dh3dgal_c + M_h2o_c
 b4356 ; 	% 1175	M_galctn_L_p + M_h_p --> M_galctn_L_c + M_h_c
 ( b2215  ||  b1377  ||  b0929  ||  b0241 ) ; 	% 1176	M_galctn_L_e <--> M_galctn_L_p
 b3691 ; 	% 1177	M_galctn_D_p + M_h_p --> M_galctn_D_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1178	M_galctn_D_e <--> M_galctn_D_p
 ( b3127  ||  b2789 ) ; 	% 1179	M_galct_D_p + M_h_p <--> M_galct_D_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1180	M_galct_D_e <--> M_galct_D_p
 ( b0757  ||  b2045 ) ; 	% 1181	M_atp_c + M_gal_c <--> M_adp_c + M_gal1p_c + M_h_c
 b0756 ; 	% 1182	M_gal_bD_p --> M_gal_p
 b4119 ; 	% 1183	M_h2o_c + M_melib_c --> M_gal_c + M_glc_D_c
 b3628 ; 	% 1184	M_gicolipa_c + M_udpg_c --> M_gagicolipa_c + M_h_c + M_udp_c
 ( b2094  &&  b2093  &&  b2092  &&  b2415  &&  b2416 ) ; 	% 1185	M_pep_c + M_galt_p --> M_galt1p_c + M_pyr_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1186	M_galt_e <--> M_galt_p
 b3093 ; 	% 1187	M_galur_p + M_h_p <--> M_galur_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1188	M_galur_e <--> M_galur_p
 b1236 ; 	% 1189	M_g1p_c + M_h_c + M_utp_c --> M_ppi_c + M_udpg_c
 ( b2149  &&  b2150  &&  b2148 ) ; 	% 1190	M_atp_c + M_h2o_c + M_gal_p --> M_adp_c + M_gal_c + M_h_c + M_pi_c
 b2943 ; 	% 1191	M_gal_p + M_h_p --> M_gal_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1192	M_gal_e <--> M_gal_p
 b3666 ; 	% 1193	M_pi_c + M_gam6p_p --> M_gam6p_c + M_pi_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1194	M_gam6p_e <--> M_gam6p_p
 ( b1817  &&  b1818  &&  b1819  &&  b2415  &&  b2416 ) ; 	% 1195	M_pep_c + M_gam_p --> M_gam6p_c + M_pyr_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1196	M_gam_e <--> M_gam_p
 b1779 ; 	% 1197	M_g3p_c + M_nad_c + M_pi_c <--> M_13dpg_c + M_h_c + M_nadh_c
 b2500 ; 	% 1198	M_10fthf_c + M_gar_c <--> M_fgam_c + M_h_c + M_thf_c
 b1849 ; 	% 1199	M_atp_c + M_for_c + M_gar_c --> M_adp_c + M_fgam_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1200	M_gbbtn_e <--> M_gbbtn_p
 b1415 ; 	% 1201	M_gcald_c + M_h2o_c + M_nad_c --> M_glyclt_c + M_h_c + M_nadh_c
 b2052 ; 	% 1202	M_gdpddman_c --> M_gdpofuc_c
 ( b2784  ||  b3650 ) ; 	% 1203	M_atp_c + M_gdp_c --> M_amp_c + M_h_c + M_ppgpp_c
 b2051 ; 	% 1204	M_gdpmann_c + M_h2o_c --> M_gdp_c + M_h_c + M_man_c
 b2467 ; 	% 1205	M_gdpmann_c + M_h2o_c --> M_gmp_c + M_h_c + M_man1p_c
 ( b0241  ||  b1377  ||  b2215  ||  b0929 ) ; 	% 1206	M_gdp_e <--> M_gdp_p
 b3729 ; 	% 1207	M_f6p_c + M_gln_L_c --> M_gam6p_c + M_glu_L_c
 b1300 ; 	% 1208	M_ggbutal_c + M_h2o_c + M_nadp_c <--> M_gg4abut_c + M_h_c + M_nadph_c
 b1298 ; 	% 1209	M_gg4abut_c + M_h2o_c --> M_4abut_c + M_glu_L_c
 b1301 ; 	% 1210	M_ggptrc_c + M_h2o_c + M_o2_c --> M_ggbutal_c + M_h2o2_c + M_nh4_c
 b1297 ; 	% 1211	M_atp_c + M_glu_L_c + M_ptrc_c --> M_adp_c + M_ggptrc_c + M_h_c + M_pi_c
 b2551 ; 	% 1212	M_ser_L_c + M_thf_c <--> M_gly_c + M_h2o_c + M_mlthf_c
 b3648 ; 	% 1213	M_atp_c + M_gmp_c <--> M_adp_c + M_gdp_c
 b3432 ; 	% 1214	M_glycogen_c --> M_bglycogen_c
 b0459 ; 	% 1215	M_accoa_c + M_glc_D_c <--> M_acglc_D_c + M_coa_c
 ( b0837  ||  b0124 ) ; 	% 1216	M_q8_c + M_glc_D_p + M_h2o_p --> M_q8h2_c + M_glcn_p + M_h_p
 ( b4321  ||  b4476  ||  b3415  ||  b4265 ) ; 	% 1217	M_glcn_p + M_h_p <--> M_glcn_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1218	M_glcn_e <--> M_glcn_p
 ( b3428  ||  b3417 ) ; 	% 1219	M_glycogen_c + M_pi_c --> M_g1p_c
 ( b3417  ||  b3428 ) ; 	% 1220	M_bglycogen_c + M_pi_c --> M_g1p_c
 b3126 ; 	% 1221	M_5dh4dglc_c --> M_2h3oppan_c + M_pyr_c
 ( b2787  ||  b2788 ) ; 	% 1222	M_glcr_c --> M_5dh4dglc_c + M_h2o_c
 ( b3127  ||  b2789 ) ; 	% 1223	M_glcr_p + M_h_p <--> M_glcr_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1224	M_glcr_e <--> M_glcr_p
 b3429 ; 	% 1225	M_adpglc_c --> M_adp_c + M_glycogen_c + M_h_c
 b3631 ; 	% 1226	M_icolipa_c + M_udpg_c --> M_gicolipa_c + M_h_c + M_udp_c
 b3627 ; 	% 1227	M_gagicolipa_c + M_udpg_c --> M_ggagicolipa_c + M_h_c + M_udp_c
 b3626 ; 	% 1228	M_ggagicolipa_c + M_udpg_c --> M_gggagicolipa_c + M_h_c + M_udp_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1229	M_glcur1p_e <--> M_glcur1p_p
 ( b3909  ||  b3093 ) ; 	% 1230	M_glcur_p + M_h_p <--> M_glcur_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1231	M_glcur_e <--> M_glcur_p
 ( b2149  &&  b2150  &&  b2148 ) ; 	% 1232	M_atp_c + M_h2o_c + M_glc_D_p --> M_adp_c + M_glc_D_c + M_h_c + M_pi_c
 ( ( b2417  &&  b1101  &&  b2415  &&  b2416 )  ||  ( b1817  &&  b1818  &&  b1819  &&  b2415  &&  b2416 )  ||  ( b2417  &&  b1621  &&  b2415  &&  b2416 ) ) ; 	% 1233	M_pep_c + M_glc_D_p --> M_g6p_c + M_pyr_c
 b2943 ; 	% 1234	M_glc_D_p + M_h_p --> M_glc_D_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1235	M_glc_D_e <--> M_glc_D_p
 b4036 ; 	% 1236	M_glc_D_e --> M_glc_D_p
 b3431 ; 	% 1237	M_bglycogen_c --> M_glycogen_c
 b3430 ; 	% 1238	M_atp_c + M_g1p_c + M_h_c --> M_adpglc_c + M_ppi_c
 ( b3870  ||  b1297 ) ; 	% 1239	M_atp_c + M_glu_L_c + M_nh4_c --> M_adp_c + M_gln_L_c + M_h_c + M_pi_c
 b0680 ; 	% 1240	M_atp_c + M_gln_L_c + M_trnagln_c --> M_amp_c + M_glntrna_c + M_ppi_c
 ( b0811  &&  b0810  &&  b0809 ) ; 	% 1241	M_atp_c + M_h2o_c + M_gln_L_p --> M_adp_c + M_gln_L_c + M_h_c + M_pi_c
 ( b0929  ||  b1377  ||  b2215  ||  b0241 ) ; 	% 1242	M_gln_L_e <--> M_gln_L_p
 b2091 ; 	% 1243	M_galt1p_c + M_nad_c <--> M_h_c + M_nadh_c + M_tag6p_D_c
 b0242 ; 	% 1244	M_atp_c + M_glu_L_c --> M_adp_c + M_glu5p_c
 b1492 ; 	% 1245	M_4abut_c + M_glu_L_p <--> M_glu_L_c + M_4abut_p
 b2688 ; 	% 1246	M_atp_c + M_cys_L_c + M_glu_L_c --> M_adp_c + M_glucys_c + M_h_c + M_pi_c
 ( b3517  ||  b1493 ) ; 	% 1247	M_glu_L_c + M_h_c --> M_4abut_c + M_co2_c
 b1761 ; 	% 1248	M_glu_L_c + M_h2o_c + M_nadp_c <--> M_akg_c + M_h_c + M_nadph_c + M_nh4_c
 ( b1812  ||  b0485  ||  b1524 ) ; 	% 1249	M_gln_L_c + M_h2o_c --> M_glu_L_c + M_nh4_c
 b2957 ; 	% 1250	M_gln_L_p + M_h2o_p --> M_glu_L_p + M_nh4_p
 b2312 ; 	% 1251	M_gln_L_c + M_h2o_c + M_prpp_c --> M_glu_L_c + M_ppi_c + M_pram_c
 b3967 ; 	% 1252	M_glu_D_c <--> M_glu_L_c
 ( b3212  &&  b3213 ) ; 	% 1253	M_akg_c + M_gln_L_c + M_h_c + M_nadph_c --> M_glu_L_c + M_nadp_c
 b1210 ; 	% 1254	M_glutrna_c + M_h_c + M_nadph_c --> M_glu1sa_c + M_nadp_c + M_trnaglu_c
 b2400 ; 	% 1255	M_atp_c + M_glu_L_c + M_trnaglu_c --> M_amp_c + M_glutrna_c + M_ppi_c
 ( b0655  &&  b0654  &&  b0653  &&  b0652 ) ; 	% 1256	M_atp_c + M_h2o_c + M_glu_L_p --> M_adp_c + M_glu_L_c + M_h_c + M_pi_c
 b4077 ; 	% 1257	M_glu_L_p + M_h_p <--> M_glu_L_c + M_h_c
 b3653 ; 	% 1258	M_glu_L_p + M_na1_p --> M_glu_L_c + M_na1_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1259	M_glu_L_e <--> M_glu_L_p
 b0507 ; 	% 1260	M_glx_c + M_h_c --> M_2h3oppan_c + M_co2_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1261	M_glyald_e <--> M_glyald_p
 b3927 ; 	% 1262	M_glyald_p <--> M_glyald_c
 b3617 ; 	% 1263	M_accoa_c + M_gly_c <--> M_2aobut_c + M_coa_c
 ( b2128  &&  b2129  &&  b2130  &&  b2131 ) ; 	% 1264	M_atp_c + M_h2o_c + M_glyb_p --> M_adp_c + M_glyb_c + M_h_c + M_pi_c
 b1801 ; 	% 1265	M_glyb_p + M_h_p --> M_glyb_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1266	M_glyb_e <--> M_glyb_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1267	M_glyc2p_e <--> M_glyc2p_p
 ( b3452  &&  b3453  &&  b3450  &&  b3451 ) ; 	% 1268	M_atp_c + M_h2o_c + M_glyc3p_p --> M_adp_c + M_glyc3p_c + M_h_c + M_pi_c
 b2240 ; 	% 1269	M_pi_c + M_glyc3p_p --> M_glyc3p_c + M_pi_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1270	M_glyc3p_e <--> M_glyc3p_p
 ( b3127  ||  b2789 ) ; 	% 1271	M_glyc_R_p + M_h_p <--> M_glyc_R_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1272	M_glyc_R_e <--> M_glyc_R_p
 b3945 ; 	% 1273	M_glyc_c + M_nad_c --> M_dha_c + M_h_c + M_nadh_c
 b0514 ; 	% 1274	M_atp_c + M_glyc_R_c --> M_3pg_c + M_adp_c + M_h_c
 b3124 ; 	% 1275	M_atp_c + M_glyc_R_c --> M_2pg_c + M_adp_c + M_h_c
 ( b2904  &&  b2903  &&  b2905  &&  b0116 ) ; 	% 1276	M_gly_c + M_nad_c + M_thf_c --> M_co2_c + M_mlthf_c + M_nadh_c + M_nh4_c
 ( b3553  ||  b1033 ) ; 	% 1277	M_glx_c + M_h_c + M_nadh_c --> M_glyclt_c + M_nad_c
 ( b3553  ||  b1033 ) ; 	% 1278	M_glx_c + M_h_c + M_nadph_c --> M_glyclt_c + M_nadp_c
 ( b3603  ||  b2975 ) ; 	% 1279	M_glyclt_p + M_h_p <--> M_glyclt_c + M_h_c
 b4067 ; 	% 1280	M_glyclt_p + M_na1_p --> M_glyclt_c + M_na1_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1281	M_glyclt_e <--> M_glyclt_p
 ( b2979  &&  b4467  &&  b4468 ) ; 	% 1282	M_glyclt_c + M_q8_c --> M_glx_c + M_q8h2_c
 ( b2979  &&  b4467  &&  b4468 ) ; 	% 1283	M_glyclt_c + M_mqn8_c --> M_glx_c + M_mql8_c
 ( b2979  &&  b4467  &&  b4468 ) ; 	% 1284	M_2dmmq8_c + M_glyclt_c --> M_2dmmql8_c + M_glx_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1285	M_glyc_e <--> M_glyc_p
 ( b3927 ) ; 	% 1286	M_glyc_c <--> M_glyc_p
 b3926 ; 	% 1287	M_atp_c + M_glyc_c --> M_adp_c + M_glyc3p_c + M_h_c
 b0212 ; 	% 1288	M_h2o_c + M_lgt_S_c --> M_gthrd_c + M_h_c + M_lac_D_c
 1 ; 	% 1289	M_h2o_c + M_mthgxl_c --> M_h_c + M_lac_D_c
 ( b3559  &&  b3560 ) ; 	% 1290	M_atp_c + M_gly_c + M_trnagly_c --> M_amp_c + M_glytrna_c + M_ppi_c
 ( b4208  ||  b1801 ) ; 	% 1291	M_gly_p + M_h_p --> M_gly_c + M_h_c
 b0007 ; 	% 1292	M_gly_p + M_na1_p --> M_gly_c + M_na1_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1293	M_gly_e <--> M_gly_p
 b2053 ; 	% 1294	M_gdpmann_c --> M_gdpddman_c + M_h2o_c
 b3052 ; 	% 1295	M_atp_c + M_gmhep1p_c + M_h_c --> M_adphep_DD_c + M_ppi_c
 b3052 ; 	% 1296	M_atp_c + M_gmhep7p_c --> M_adp_c + M_gmhep17bp_c + M_h_c
 b0200 ; 	% 1297	M_gmhep17bp_c + M_h2o_c --> M_gmhep1p_c + M_pi_c
 b0104 ; 	% 1298	M_gmp_c + M_h_c + M_nadph_c --> M_imp_c + M_nadp_c + M_nh4_c
 b2507 ; 	% 1299	M_atp_c + M_gln_L_c + M_h2o_c + M_xmp_c --> M_amp_c + M_glu_L_c + M_gmp_c + M_h_c + M_ppi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1300	M_gmp_e <--> M_gmp_p
 b2029 ; 	% 1301	M_6pgc_c + M_nadp_c --> M_co2_c + M_nadph_c + M_ru5p_D_c
 ( b4268  ||  b3437 ) ; 	% 1302	M_atp_c + M_glcn_c --> M_6pgc_c + M_adp_c + M_h_c
 b2052 ; 	% 1303	M_gdpofuc_c + M_h_c + M_nadph_c --> M_gdpfuc_c + M_nadp_c
 b0049 ; 	% 1304	M_gp4g_c + M_h2o_c --> M_gdp_c + M_h_c
 b3449 ; 	% 1305	M_g3pc_c + M_h2o_c --> M_chol_c + M_glyc3p_c + M_h_c
 b2239 ; 	% 1306	M_g3pc_p + M_h2o_p --> M_chol_p + M_glyc3p_p + M_h_p
 b3449 ; 	% 1307	M_g3pe_c + M_h2o_c --> M_etha_c + M_glyc3p_c + M_h_c
 b2239 ; 	% 1308	M_g3pe_p + M_h2o_p --> M_etha_p + M_glyc3p_p + M_h_p
 b3449 ; 	% 1309	M_g3ps_c + M_h2o_c --> M_glyc3p_c + M_h_c + M_ser_L_c
 b2239 ; 	% 1310	M_g3ps_p + M_h2o_p --> M_glyc3p_p + M_h_p + M_ser_L_p
 b3449 ; 	% 1311	M_g3pg_c + M_h2o_c --> M_glyc_c + M_glyc3p_c + M_h_c
 b2239 ; 	% 1312	M_g3pg_p + M_h2o_p --> M_glyc_p + M_glyc3p_p + M_h_p
 b3449 ; 	% 1313	M_g3pi_c + M_h2o_c --> M_glyc3p_c + M_h_c + M_inost_c
 b2239 ; 	% 1314	M_g3pi_p + M_h2o_p --> M_glyc3p_p + M_h_p + M_inost_p
 b0421 ; 	% 1315	M_grdp_c + M_ipdp_c --> M_frdp_c + M_ppi_c
 ( b3610  ||  b0849  ||  b1654  ||  b1064 ) ; 	% 1316	M_grxox_c + M_gthrd_c --> M_grxrd_c + M_gthox_c
 b0477 ; 	% 1317	M_atp_c + M_gsn_c --> M_adp_c + M_gmp_c + M_h_c
 b2964 ; 	% 1318	M_gsn_p + M_h_p --> M_gsn_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1319	M_gsn_e <--> M_gsn_p
 b2988 ; 	% 1320	M_gtspmd_c + M_h2o_c --> M_gthrd_c + M_spmd_c
 b2988 ; 	% 1321	M_atp_c + M_gthrd_c + M_spmd_c --> M_adp_c + M_gtspmd_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1322	M_gthox_e <--> M_gthox_p
 b3500 ; 	% 1323	M_gthox_c + M_h_c + M_nadph_c <--> M_gthrd_c + M_nadp_c
 b3447 ; 	% 1324	M_gthrd_p + M_h2o_p --> M_cgly_p + M_glu_L_p
 ( b0886  &&  b0887 ) ; 	% 1325	M_atp_c + M_gthrd_c + M_h2o_c --> M_adp_c + M_h_c + M_pi_c + M_gthrd_p
 ( b0829  &&  b0830  &&  b0831  &&  b0832 ) ; 	% 1326	M_atp_c + M_h2o_c + M_gthrd_p --> M_adp_c + M_gthrd_c + M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1327	M_gthrd_e <--> M_gthrd_p
 b2947 ; 	% 1328	M_atp_c + M_glucys_c + M_gly_c --> M_adp_c + M_gthrd_c + M_h_c + M_pi_c
 b2153 ; 	% 1329	M_gtp_c + M_h2o_c --> M_ahdt_c + M_for_c + M_h_c
 b1277 ; 	% 1330	M_gtp_c + M_h2o_c --> M_25drapp_c + M_for_c + M_h_c + M_ppi_c
 b3779 ; 	% 1331	M_gdptp_c + M_h2o_c --> M_h_c + M_pi_c + M_ppgpp_c
 b2784 ; 	% 1332	M_atp_c + M_gtp_c --> M_amp_c + M_gdptp_c + M_h_c
 1 ; 	% 1333	M_gtp_c + M_h_c + M_h2o_c --> M_nh4_c + M_xtp_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1334	M_gtp_e <--> M_gtp_p
 b2883 ; 	% 1335	M_gua_c + M_h_c + M_h2o_c --> M_nh4_c + M_xan_c
 ( b0238  ||  b0125 ) ; 	% 1336	M_gua_c + M_prpp_c --> M_gmp_c + M_ppi_c
 b3654 ; 	% 1337	M_gua_p + M_h_p --> M_gua_c + M_h_c
 b0411 ; 	% 1338	M_gua_e <--> M_gua_p
 1 ; 	% 1339	M_gua_p <--> M_gua_c
 b3092 ; 	% 1340	M_glcur_c <--> M_fruur_c
 b3092 ; 	% 1341	M_galur_c <--> M_tagur_c
 1 ; 	% 1342	M_glcur1p_p + M_h2o_p --> M_glcur_p + M_pi_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1343	M_h2o2_e <--> M_h2o2_p
 ( b1377  ||  b0929  ||  b2215  ||  b0241  ||  b3875  ||  b1319  ||  b0957 ) ; 	% 1344	M_h2o_e <--> M_h2o_p
 ( b0875 ) ; 	% 1345	M_h2o_p <--> M_h2o_c
 1 ; 	% 1346	M_h2s_c + M_o2_c --> M_h_c + M_so4_c
 1 ; 	% 1347	M_h2s_c --> M_h2s_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1348	M_h2s_e <--> M_h2s_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1349	M_h2_e <--> M_h2_p
 1 ; 	% 1350	M_h2_p <--> M_h2_c
 ( b3846  ||  b2341 ) ; 	% 1351	M_3hbcoa_c + M_nad_c --> M_aacoa_c + M_h_c + M_nadh_c
 ( b3846  ||  b2341 ) ; 	% 1352	M_3hhcoa_c + M_nad_c --> M_3ohcoa_c + M_h_c + M_nadh_c
 ( b2341  ||  b3846 ) ; 	% 1353	M_3hocoa_c + M_nad_c --> M_3oocoa_c + M_h_c + M_nadh_c
 ( b3846  ||  b2341 ) ; 	% 1354	M_3hdcoa_c + M_nad_c --> M_3odcoa_c + M_h_c + M_nadh_c
 ( b3846  ||  b2341 ) ; 	% 1355	M_3hddcoa_c + M_nad_c --> M_3oddcoa_c + M_h_c + M_nadh_c
 ( b3846  ||  b2341 ) ; 	% 1356	M_3htdcoa_c + M_nad_c --> M_3otdcoa_c + M_h_c + M_nadh_c
 ( b3846  ||  b2341 ) ; 	% 1357	M_3hhdcoa_c + M_nad_c --> M_3ohdcoa_c + M_h_c + M_nadh_c
 ( b3846  ||  b2341 ) ; 	% 1358	M_3hodcoa_c + M_nad_c --> M_3oodcoa_c + M_h_c + M_nadh_c
 b4040 ; 	% 1359	M_4hbz_c + M_octdp_c --> M_3ophb_c + M_ppi_c
 b0353 ; 	% 1360	M_3hcinnm_p + M_h_p <--> M_3hcinnm_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1361	M_3hcinnm_e <--> M_3hcinnm_p
 ( b0339  ||  b0126 ) ; 	% 1362	M_co2_c + M_h2o_c <--> M_h_c + M_hco3_c
 b0261 ; 	% 1363	M_amet_c + M_hcys_L_c --> M_ahcys_c + M_h_c + M_met_L_c
 b0261 ; 	% 1364	M_hcys_L_c + M_mmet_c --> M_h_c + M_met_L_c
 b2344 ; 	% 1365	M_hdca_e --> M_hdca_p
 b2344 ; 	% 1366	M_hdcea_e --> M_hdcea_p
 b3846 ; 	% 1367	M_hdcoa_c --> M_hdd2coa_c
 b0428 ; 	% 1368	M_frdp_c + M_h2o_c + M_pheme_c --> M_hemeO_c + M_ppi_c
 b3630 ; 	% 1369	M_atp_c + M_hhlipa_c --> M_adp_c + M_h_c + M_phhlipa_c
 b3625 ; 	% 1370	M_atp_c + M_hphhlipa_c --> M_adp_c + M_h_c + M_phphhlipa_c
 b3621 ; 	% 1371	M_adphep_LD_c + M_lipa_c --> M_adp_c + M_h_c + M_hlipa_c
 b3620 ; 	% 1372	M_adphep_LD_c + M_hlipa_c --> M_adp_c + M_h_c + M_hhlipa_c
 b3632 ; 	% 1373	M_adphep_LD_c + M_phhlipa_c --> M_adp_c + M_h_c + M_hphhlipa_c
 b3623 ; 	% 1374	M_adphep_LD_c + M_gggagicolipa_c --> M_adp_c + M_colipa_c + M_h_c
 b2104 ; 	% 1375	M_4mhetz_c + M_atp_c --> M_4mpetz_c + M_adp_c + M_h_c
 b2388 ; 	% 1376	M_atp_c + M_glc_D_c --> M_adp_c + M_g6p_c + M_h_c
 1 ; 	% 1377	M_atp_c + M_man_c --> M_adp_c + M_h_c + M_man6p_c
 b0394 ; 	% 1378	M_atp_c + M_fru_c --> M_adp_c + M_f6p_c + M_h_c
 b2223 ; 	% 1379	M_h_p + M_hxa_p <--> M_h_c + M_hxa_c
 b3469 ; 	% 1380	M_atp_c + M_h2o_c + M_hg2_c --> M_adp_c + M_h_c + M_pi_c + M_hg2_p
 b3915 ; 	% 1381	M_hg2_c + M_h_p --> M_h_c + M_hg2_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1382	M_hg2_e <--> M_hg2_p
 b2020 ; 	% 1383	M_h2o_c + M_histd_c + M_nad_c --> M_h_c + M_his_L_c + M_nadh_c
 b2022 ; 	% 1384	M_h2o_c + M_hisp_c --> M_histd_c + M_pi_c
 b2514 ; 	% 1385	M_atp_c + M_his_L_c + M_trnahis_c --> M_amp_c + M_histrna_c + M_ppi_c
 ( b2309  &&  b2307  &&  b2306  &&  b2308 ) ; 	% 1386	M_atp_c + M_h2o_c + M_his_L_p --> M_adp_c + M_h_c + M_his_L_c + M_pi_c
 b0112 ; 	% 1387	M_h_p + M_his_L_p <--> M_h_c + M_his_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1388	M_his_L_e <--> M_his_L_p
 b0349 ; 	% 1389	M_h2o_c + M_hkndd_c --> M_h_c + M_op4en_c + M_succ_c
 b0349 ; 	% 1390	M_h2o_c + M_hkntd_c --> M_fum_c + M_h_c + M_op4en_c
 b3805 ; 	% 1391	M_h2o_c + M_ppbng_c --> M_hmbil_c + M_nh4_c
 ( b2103  ||  b2418 ) ; 	% 1392	M_4ahmmp_c + M_atp_c --> M_4ampm_c + M_adp_c + M_h_c
 ( b0813  ||  b3824 ) ; 	% 1393	M_hom_L_c + M_h_p --> M_h_c + M_hom_L_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1394	M_hom_L_e <--> M_hom_L_p
 b0352 ; 	% 1395	M_4h2opntn_c --> M_acald_c + M_pyr_c
 b0142 ; 	% 1396	M_6hmhpt_c + M_atp_c --> M_6hmhptpp_c + M_amp_c + M_h_c
 b0348 ; 	% 1397	M_dhpppn_c + M_o2_c --> M_h_c + M_hkndd_c
 b0353 ; 	% 1398	M_3hpppn_p + M_h_p <--> M_3hpppn_c + M_h_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1399	M_3hpppn_e <--> M_3hpppn_p
 b0508 ; 	% 1400	M_hpyr_c <--> M_2h3oppan_c
 ( b1033  ||  b3553 ) ; 	% 1401	M_h_c + M_hpyr_c + M_nadh_c --> M_glyc_R_c + M_nad_c
 ( b3553  ||  b1033 ) ; 	% 1402	M_h_c + M_hpyr_c + M_nadph_c --> M_glyc_R_c + M_nadp_c
 ( b3940  ||  b0002 ) ; 	% 1403	M_hom_L_c + M_nadp_c <--> M_aspsa_c + M_h_c + M_nadph_c
 b0003 ; 	% 1404	M_atp_c + M_hom_L_c --> M_adp_c + M_h_c + M_phom_c
 b4013 ; 	% 1405	M_hom_L_c + M_succoa_c --> M_coa_c + M_suchms_c
 b2021 ; 	% 1406	M_glu_L_c + M_imacp_c --> M_akg_c + M_hisp_c
 ( b2866  &&  b2867  &&  b2868 ) ; 	% 1407	M_h2o_c + M_hxan_c + M_nad_c --> M_h_c + M_nadh_c + M_xan_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1408	M_hxa_e <--> M_hxa_p
 ( b2221  &&  b2222 ) ; 	% 1409	M_accoa_c + M_hxa_c --> M_ac_c + M_hxcoa_c
 ( b0238  ||  b0125 ) ; 	% 1410	M_hxan_c + M_prpp_c --> M_imp_c + M_ppi_c
 ( ( b0972  &&  b0973  &&  b0974 )  ||  ( b2994  &&  b2997 )  ||  ( b2719  &&  b2720  &&  b2721  &&  b2722  &&  b2723  &&  b2724 ) ) ; 	% 1411	M_h_c + M_h2_c + M_q8_c --> M_q8h2_c + M_h_p
 ( ( b0972  &&  b0973  &&  b0974 )  ||  ( b2994  &&  b2997 ) ) ; 	% 1412	M_h_c + M_h2_c + M_mqn8_c --> M_mql8_c + M_h_p
 ( ( b0972  &&  b0973  &&  b0974 )  ||  ( b2994  &&  b2997 ) ) ; 	% 1413	M_2dmmq8_c + M_h_c + M_h2_c --> M_2dmmql8_c + M_h_p
 1 ; 	% 1414	M_h2o_c + M_pyam5p_c --> M_pi_c + M_pydam_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1415	M_hxan_e <--> M_hxan_p
 1 ; 	% 1416	M_hxan_p <--> M_hxan_c
 ( b0929  ||  b1377  ||  b2215  ||  b0241 ) ; 	% 1417	M_h_e <--> M_h_p
 b1136 ; 	% 1418	M_icit_c + M_nadp_c <--> M_akg_c + M_co2_c + M_nadph_c
 b2265 ; 	% 1419	M_chor_c <--> M_ichor_c
 b0593 ; 	% 1420	M_chor_c --> M_ichor_c
 b0595 ; 	% 1421	M_h2o_c + M_ichor_c --> M_23ddhb_c + M_pyr_c
 b4015 ; 	% 1422	M_icit_c --> M_glx_c + M_succ_c
 b4267 ; 	% 1423	M_5dglcn_c + M_h_c + M_nadh_c <--> M_idon_L_c + M_nad_c
 b4267 ; 	% 1424	M_5dglcn_c + M_h_c + M_nadph_c --> M_idon_L_c + M_nadp_c
 b4265 ; 	% 1425	M_h_p + M_idon_L_p <--> M_h_c + M_idon_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1426	M_idon_L_e <--> M_idon_L_p
 ( b2023  &&  b2025 ) ; 	% 1427	M_gln_L_c + M_prlp_c --> M_aicar_c + M_eig3p_c + M_glu_L_c + M_h_c
 b2022 ; 	% 1428	M_eig3p_c --> M_h2o_c + M_imacp_c
 b1262 ; 	% 1429	M_2cpr5p_c + M_h_c --> M_3ig3p_c + M_co2_c + M_h2o_c
 b3770 ; 	% 1430	M_akg_c + M_ile_L_c <--> M_3mop_c + M_glu_L_c
 b0026 ; 	% 1431	M_atp_c + M_ile_L_c + M_trnaile_c --> M_amp_c + M_iletrna_c + M_ppi_c
 ( b3454  &&  b3455  &&  b3457  &&  b3460  &&  b3456 ) ; 	% 1432	M_atp_c + M_h2o_c + M_ile_L_p --> M_adp_c + M_h_c + M_ile_L_c + M_pi_c
 b0401 ; 	% 1433	M_h_p + M_ile_L_p <--> M_h_c + M_ile_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1434	M_ile_L_e <--> M_ile_L_p
 b4006 ; 	% 1435	M_h2o_c + M_imp_c <--> M_fprica_c
 b2508 ; 	% 1436	M_h2o_c + M_imp_c + M_nad_c --> M_h_c + M_nadh_c + M_xmp_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1437	M_imp_e <--> M_imp_p
 ( b3265  &&  b3266 ) ; 	% 1438	M_h_c + M_indole_c --> M_h_p + M_indole_p
 b3161 ; 	% 1439	M_h_p + M_indole_p <--> M_h_c + M_indole_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1440	M_indole_e <--> M_indole_p
 b3679 ; 	% 1441	M_inost_p + M_na1_p --> M_inost_c + M_na1_c
 b0030 ; 	% 1442	M_h2o_c + M_ins_c --> M_hxan_c + M_rib_D_c
 b0477 ; 	% 1443	M_atp_c + M_ins_c --> M_adp_c + M_h_c + M_imp_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1444	M_inost_e <--> M_inost_p
 b2964 ; 	% 1445	M_h_p + M_ins_p --> M_h_c + M_ins_c
 b2406 ; 	% 1446	M_h_p + M_ins_p <--> M_h_c + M_ins_c
 b0411 ; 	% 1447	M_ins_e <--> M_ins_p
 b2889 ; 	% 1448	M_ipdp_c <--> M_dmpp_c
 b0029 ; 	% 1449	M_h_c + M_h2mb4p_c + M_nadh_c --> M_h2o_c + M_ipdp_c + M_nad_c
 b0073 ; 	% 1450	M_3c2hmp_c + M_nad_c --> M_3c4mop_c + M_h_c + M_nadh_c
 ( b0071  &&  b0072 ) ; 	% 1451	M_3c2hmp_c <--> M_2ippm_c + M_h2o_c
 ( b0071  &&  b0072 ) ; 	% 1452	M_2ippm_c + M_h2o_c <--> M_3c3hmp_c
 b0074 ; 	% 1453	M_3mob_c + M_accoa_c + M_h2o_c --> M_3c3hmp_c + M_coa_c + M_h_c
 ( ( b0365  &&  b0366  &&  b0367 )  ||  ( b0936  &&  b0933  &&  b0934 ) ) ; 	% 1454	M_atp_c + M_h2o_c + M_isetac_p --> M_adp_c + M_h_c + M_isetac_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1455	M_isetac_e <--> M_isetac_p
 b0914 ; 	% 1456	M_atp_c + M_h2o_c + M_kdo2lipid4_c --> M_adp_c + M_h_c + M_pi_c + M_kdo2lipid4_p
 1 ; 	% 1457	M_kdo2lipid4_p --> M_kdo2lipid4_e
 b3774 ; 	% 1458	M_23dhmb_c + M_nadp_c <--> M_alac_S_c + M_h_c + M_nadph_c
 b3774 ; 	% 1459	M_2ahbut_c + M_h_c + M_nadph_c <--> M_23dhmp_c + M_nadp_c
 ( b2323  ||  b1095 ) ; 	% 1460	M_acACP_c + M_h_c + M_malACP_c --> M_ACP_c + M_actACP_c + M_co2_c
 b1091 ; 	% 1461	M_accoa_c + M_h_c + M_malACP_c --> M_actACP_c + M_co2_c + M_coa_c
 ( b2342  ||  b3845 ) ; 	% 1462	M_aacoa_c + M_coa_c --> M_accoa_c
 ( b3845  ||  b2342 ) ; 	% 1463	M_3ohcoa_c + M_coa_c --> M_accoa_c + M_btcoa_c
 ( b2342  ||  b3845 ) ; 	% 1464	M_3oocoa_c + M_coa_c --> M_accoa_c + M_hxcoa_c
 ( b2342  ||  b3845 ) ; 	% 1465	M_3odcoa_c + M_coa_c --> M_accoa_c + M_occoa_c
 ( b2342  ||  b3845 ) ; 	% 1466	M_3oddcoa_c + M_coa_c --> M_accoa_c + M_dcacoa_c
 ( b3845  ||  b2342 ) ; 	% 1467	M_3otdcoa_c + M_coa_c --> M_accoa_c + M_ddcacoa_c
 ( b3845  ||  b2342 ) ; 	% 1468	M_3ohdcoa_c + M_coa_c --> M_accoa_c + M_tdcoa_c
 ( b3845  ||  b2342 ) ; 	% 1469	M_3oodcoa_c + M_coa_c --> M_accoa_c + M_pmtcoa_c
 b0918 ; 	% 1470	M_ctp_c + M_kdo_c --> M_ckdo_c + M_ppi_c
 b3198 ; 	% 1471	M_h2o_c + M_kdo8p_c --> M_kdo_c + M_pi_c
 b1215 ; 	% 1472	M_ara5p_c + M_h2o_c + M_pep_c --> M_kdo8p_c + M_pi_c
 ( b4196  ||  b3581 ) ; 	% 1473	M_3dhgulnp_c + M_h_c --> M_co2_c + M_xu5p_L_c
 ( b0698  &&  b0697  &&  b0696 ) ; 	% 1474	M_atp_c + M_h2o_c + M_k_p --> M_adp_c + M_h_c + M_k_c + M_pi_c
 ( b1250  ||  ( b1291  &&  b3290  &&  b1363 )  ||  b3747  ||  ( b1291  &&  b3290  &&  b3849 ) ) ; 	% 1475	M_h_p + M_k_p --> M_h_c + M_k_c
 ( b3350  ||  b0047  ||  b1216  ||  b0842 ) ; 	% 1476	M_k_c + M_h_p --> M_h_c + M_k_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1477	M_k_e <--> M_k_p
 b2257 ; 	% 1478	M_colipa_p + M_uLa4n_p --> M_acolipa_p + M_udcpp_p
 b0344 ; 	% 1479	M_h2o_c + M_lcts_c --> M_gal_c + M_glc_D_c
 b2132 ; 	% 1480	M_h2o_p + M_lcts_p --> M_gal_p + M_glc_D_p
 b1326 ; 	% 1481	M_LalaDgluMdap_c + M_h2o_c --> M_26dap_M_c + M_LalaDglu_c
 b3945 ; 	% 1482	M_h_c + M_mthgxl_c + M_nadh_c --> M_lald_D_c + M_nad_c
 b0237 ; 	% 1483	M_LalaLglu_c + M_h2o_c --> M_ala_L_c + M_glu_L_c
 b1415 ; 	% 1484	M_h2o_c + M_lald_L_c + M_nad_c --> M_h_c + M_lac_L_c + M_nadh_c
 1 ; 	% 1485	M_h_c + M_lald_D_c + M_nadh_c <--> M_12ppd_R_c + M_nad_c
 b2799 ; 	% 1486	M_h_c + M_lald_L_c + M_nadh_c <--> M_12ppd_S_c + M_nad_c
 ( b2170  ||  b0070  ||  b1528 ) ; 	% 1487	M_lcts_c + M_h_p --> M_h_c + M_lcts_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1488	M_lcts_e <--> M_lcts_p
 b0343 ; 	% 1489	M_h_p + M_lcts_p <--> M_h_c + M_lcts_c
 ( b2133  ||  b1380 ) ; 	% 1490	M_lac_D_c + M_nad_c <--> M_h_c + M_nadh_c + M_pyr_c
 b2133 ; 	% 1491	M_lac_D_c + M_q8_c --> M_pyr_c + M_q8h2_c
 ( b3770  ||  b4054 ) ; 	% 1492	M_4mop_c + M_glu_L_c --> M_akg_c + M_leu_L_c
 b0642 ; 	% 1493	M_atp_c + M_leu_L_c + M_trnaleu_c --> M_amp_c + M_leutrna_c + M_ppi_c
 ( ( b3454  &&  b3455  &&  b3457  &&  b3460  &&  b3456 )  ||  ( b3454  &&  b3455  &&  b3457  &&  b3458  &&  b3456 ) ) ; 	% 1494	M_atp_c + M_h2o_c + M_leu_L_p --> M_adp_c + M_h_c + M_leu_L_c + M_pi_c
 b0401 ; 	% 1495	M_h_p + M_leu_L_p <--> M_h_c + M_leu_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1496	M_leu_L_e <--> M_leu_L_p
 b1651 ; 	% 1497	M_gthrd_c + M_mthgxl_c --> M_lgt_S_c
 b0914 ; 	% 1498	M_atp_c + M_h2o_c + M_lipa_cold_c --> M_adp_c + M_h_c + M_pi_c + M_lipa_cold_p
 b0622 ; 	% 1499	M_colipa_e + M_h_e + M_hdca_e --> M_h2o_e + M_hacolipa_e
 b0622 ; 	% 1500	M_h_e + M_hdca_e + M_lipa_e --> M_h2o_e + M_halipa_e
 b0914 ; 	% 1501	M_atp_c + M_h2o_c + M_lipa_c --> M_adp_c + M_h_c + M_pi_c + M_lipa_p
 1 ; 	% 1502	M_lipa_p --> M_lipa_e
 b0182 ; 	% 1503	M_lipidX_c + M_u23ga_c --> M_h_c + M_lipidAds_c + M_udp_c
 b0494 ; 	% 1504	M_1ddecg3p_p + M_h2o_p --> M_ddca_p + M_glyc3p_p + M_h_p
 b0494 ; 	% 1505	M_1tdecg3p_p + M_h2o_p --> M_glyc3p_p + M_h_p + M_ttdca_p
 b0494 ; 	% 1506	M_1tdec7eg3p_p + M_h2o_p --> M_glyc3p_p + M_h_p + M_ttdcea_p
 b0494 ; 	% 1507	M_1hdecg3p_p + M_h2o_p --> M_glyc3p_p + M_h_p + M_hdca_p
 b0494 ; 	% 1508	M_1hdec9eg3p_p + M_h2o_p --> M_glyc3p_p + M_h_p + M_hdcea_p
 b0494 ; 	% 1509	M_1odecg3p_p + M_h2o_p --> M_glyc3p_p + M_h_p + M_ocdca_p
 b0494 ; 	% 1510	M_1odec11eg3p_p + M_h2o_p --> M_glyc3p_p + M_h_p + M_ocdcea_p
 b0494 ; 	% 1511	M_1agpe120_p + M_h2o_p --> M_ddca_p + M_g3pe_p + M_h_p
 b0494 ; 	% 1512	M_1agpe140_p + M_h2o_p --> M_g3pe_p + M_h_p + M_ttdca_p
 b0494 ; 	% 1513	M_1agpe141_p + M_h2o_p --> M_g3pe_p + M_h_p + M_ttdcea_p
 b0494 ; 	% 1514	M_1agpe160_p + M_h2o_p --> M_g3pe_p + M_h_p + M_hdca_p
 b0494 ; 	% 1515	M_1agpe161_p + M_h2o_p --> M_g3pe_p + M_h_p + M_hdcea_p
 b0494 ; 	% 1516	M_1agpe180_p + M_h2o_p --> M_g3pe_p + M_h_p + M_ocdca_p
 b0494 ; 	% 1517	M_1agpe181_p + M_h2o_p --> M_g3pe_p + M_h_p + M_ocdcea_p
 b0494 ; 	% 1518	M_1agpg120_p + M_h2o_p --> M_ddca_p + M_g3pg_p + M_h_p
 b0494 ; 	% 1519	M_1agpg140_p + M_h2o_p --> M_g3pg_p + M_h_p + M_ttdca_p
 b0494 ; 	% 1520	M_1agpg141_p + M_h2o_p --> M_g3pg_p + M_h_p + M_ttdcea_p
 b0494 ; 	% 1521	M_1agpg160_p + M_h2o_p --> M_g3pg_p + M_h_p + M_hdca_p
 b0494 ; 	% 1522	M_1agpg161_p + M_h2o_p --> M_g3pg_p + M_h_p + M_hdcea_p
 b0494 ; 	% 1523	M_1agpg180_p + M_h2o_p --> M_g3pg_p + M_h_p + M_ocdca_p
 b0494 ; 	% 1524	M_1agpg181_p + M_h2o_p --> M_g3pg_p + M_h_p + M_ocdcea_p
 b3825 ; 	% 1525	M_2ddecg3p_c + M_h2o_c --> M_ddca_c + M_glyc3p_c + M_h_c
 b3825 ; 	% 1526	M_2tdecg3p_c + M_h2o_c --> M_glyc3p_c + M_h_c + M_ttdca_c
 b3825 ; 	% 1527	M_2tdec7eg3p_c + M_h2o_c --> M_glyc3p_c + M_h_c + M_ttdcea_c
 b3825 ; 	% 1528	M_2hdecg3p_c + M_h2o_c --> M_glyc3p_c + M_h_c + M_hdca_c
 b3825 ; 	% 1529	M_2hdec9eg3p_c + M_h2o_c --> M_glyc3p_c + M_h_c + M_hdcea_c
 b3825 ; 	% 1530	M_2odecg3p_c + M_h2o_c --> M_glyc3p_c + M_h_c + M_ocdca_c
 b3825 ; 	% 1531	M_2odec11eg3p_c + M_h2o_c --> M_glyc3p_c + M_h_c + M_ocdcea_c
 b3825 ; 	% 1532	M_2agpe120_c + M_pg120_c --> M_apg120_c + M_g3pe_c
 b3825 ; 	% 1533	M_2agpe140_c + M_pg140_c --> M_apg140_c + M_g3pe_c
 b3825 ; 	% 1534	M_2agpe141_c + M_pg141_c --> M_apg141_c + M_g3pe_c
 b3825 ; 	% 1535	M_2agpe160_c + M_pg160_c --> M_apg160_c + M_g3pe_c
 b3825 ; 	% 1536	M_2agpe161_c + M_pg161_c --> M_apg161_c + M_g3pe_c
 b3825 ; 	% 1537	M_2agpe180_c + M_pg180_c --> M_apg180_c + M_g3pe_c
 b3825 ; 	% 1538	M_2agpe181_c + M_pg181_c --> M_apg181_c + M_g3pe_c
 b3825 ; 	% 1539	M_2agpg120_c + M_pg120_c --> M_apg120_c + M_g3pg_c
 b3825 ; 	% 1540	M_2agpg140_c + M_pg140_c --> M_apg140_c + M_g3pg_c
 b3825 ; 	% 1541	M_2agpg141_c + M_pg141_c --> M_apg141_c + M_g3pg_c
 b3825 ; 	% 1542	M_2agpg160_c + M_pg160_c --> M_apg160_c + M_g3pg_c
 b3825 ; 	% 1543	M_2agpg161_c + M_pg161_c --> M_apg161_c + M_g3pg_c
 b3825 ; 	% 1544	M_2agpg180_c + M_pg180_c --> M_apg180_c + M_g3pg_c
 b3825 ; 	% 1545	M_2agpg181_c + M_pg181_c --> M_apg181_c + M_g3pg_c
 b3825 ; 	% 1546	M_2agpe120_c + M_h2o_c --> M_ddca_c + M_g3pe_c + M_h_c
 b3825 ; 	% 1547	M_2agpe140_c + M_h2o_c --> M_g3pe_c + M_h_c + M_ttdca_c
 b3825 ; 	% 1548	M_2agpe141_c + M_h2o_c --> M_g3pe_c + M_h_c + M_ttdcea_c
 b3825 ; 	% 1549	M_2agpe160_c + M_h2o_c --> M_g3pe_c + M_h_c + M_hdca_c
 b3825 ; 	% 1550	M_2agpe161_c + M_h2o_c --> M_g3pe_c + M_h_c + M_hdcea_c
 b3825 ; 	% 1551	M_2agpe180_c + M_h2o_c --> M_g3pe_c + M_h_c + M_ocdca_c
 b3825 ; 	% 1552	M_2agpe181_c + M_h2o_c --> M_g3pe_c + M_h_c + M_ocdcea_c
 b3825 ; 	% 1553	M_2agpg120_c + M_h2o_c --> M_ddca_c + M_g3pg_c + M_h_c
 b3825 ; 	% 1554	M_2agpg140_c + M_h2o_c --> M_g3pg_c + M_h_c + M_ttdca_c
 b3825 ; 	% 1555	M_2agpg141_c + M_h2o_c --> M_g3pg_c + M_h_c + M_ttdcea_c
 b3825 ; 	% 1556	M_2agpg160_c + M_h2o_c --> M_g3pg_c + M_h_c + M_hdca_c
 b3825 ; 	% 1557	M_2agpg161_c + M_h2o_c --> M_g3pg_c + M_h_c + M_hdcea_c
 b3825 ; 	% 1558	M_2agpg180_c + M_h2o_c --> M_g3pg_c + M_h_c + M_ocdca_c
 b3825 ; 	% 1559	M_2agpg181_c + M_h2o_c --> M_g3pg_c + M_h_c + M_ocdcea_c
 b1539 ; 	% 1560	M_nadp_c + M_ser_L_c <--> M_2amsa_c + M_h_c + M_nadph_c
 ( b0186  ||  b4131 ) ; 	% 1561	M_h_c + M_lys_L_c --> M_15dap_c + M_co2_c
 ( b4129  ||  b2890 ) ; 	% 1562	M_atp_c + M_lys_L_c + M_trnalys_c --> M_amp_c + M_lystrna_c + M_ppi_c
 ( b2310  &&  b2307  &&  b2306  &&  b2308 ) ; 	% 1563	M_atp_c + M_h2o_c + M_lys_L_p --> M_adp_c + M_h_c + M_lys_L_c + M_pi_c
 b2156 ; 	% 1564	M_h_p + M_lys_L_p --> M_h_c + M_lys_L_c
 b2923 ; 	% 1565	M_lys_L_c + M_h_p --> M_h_c + M_lys_L_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1566	M_lys_L_e <--> M_lys_L_p
 b3903 ; 	% 1567	M_lyx_L_c --> M_xylu_L_c
 b3907 ; 	% 1568	M_h_p + M_lyx_L_p --> M_h_c + M_lyx_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1569	M_lyx_L_e <--> M_lyx_L_p
 b3605 ; 	% 1570	M_lac_L_c + M_q8_c --> M_pyr_c + M_q8h2_c
 b3605 ; 	% 1571	M_lac_L_c + M_mqn8_c --> M_mql8_c + M_pyr_c
 ( b3603  ||  b2975 ) ; 	% 1572	M_h_p + M_lac_L_p <--> M_h_c + M_lac_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1573	M_lac_L_e <--> M_lac_L_p
 b3600 ; 	% 1574	M_mnl1p_c + M_nad_c <--> M_f6p_c + M_h_c + M_nadh_c
 b2323 ; 	% 1575	M_h_c + M_malACP_c --> M_acACP_c + M_co2_c
 b1800 ; 	% 1576	M_mal_D_c + M_nad_c --> M_co2_c + M_nadh_c + M_pyr_c
 b3528 ; 	% 1577	M_h_p + M_mal_D_p --> M_h_c + M_mal_D_c
 ( b1377  ||  b0929  ||  b2215  ||  b0241 ) ; 	% 1578	M_mal_D_e <--> M_mal_D_p
 ( b4014  ||  b2976 ) ; 	% 1579	M_accoa_c + M_glx_c + M_h2o_c --> M_coa_c + M_h_c + M_mal_L_c
 b0459 ; 	% 1580	M_accoa_c + M_malt_c <--> M_acmalt_c + M_coa_c
 ( b4034  &&  b4033  &&  b4032  &&  b4035 ) ; 	% 1581	M_atp_c + M_h2o_c + M_malthx_p --> M_adp_c + M_h_c + M_malthx_c + M_pi_c
 b4036 ; 	% 1582	M_malthx_e --> M_malthx_p
 ( b4034  &&  b4033  &&  b4032  &&  b4035 ) ; 	% 1583	M_atp_c + M_h2o_c + M_maltpt_p --> M_adp_c + M_h_c + M_maltpt_c + M_pi_c
 b4036 ; 	% 1584	M_maltpt_e --> M_maltpt_p
 ( b4034  &&  b4033  &&  b4032  &&  b4035 ) ; 	% 1585	M_atp_c + M_h2o_c + M_malttr_p --> M_adp_c + M_h_c + M_malttr_c + M_pi_c
 b4036 ; 	% 1586	M_malttr_e --> M_malttr_p
 ( b4034  &&  b4033  &&  b4032  &&  b4035 ) ; 	% 1587	M_atp_c + M_h2o_c + M_maltttr_p --> M_adp_c + M_h_c + M_maltttr_c + M_pi_c
 b4036 ; 	% 1588	M_maltttr_e --> M_maltttr_p
 ( b4034  &&  b4033  &&  b4032  &&  b4035 ) ; 	% 1589	M_atp_c + M_h2o_c + M_malt_p --> M_adp_c + M_h_c + M_malt_c + M_pi_c
 ( b2417  &&  b1621  &&  b2415  &&  b2416 ) ; 	% 1590	M_pep_c + M_malt_p --> M_malt6p_c + M_pyr_c
 b4036 ; 	% 1591	M_malt_e --> M_malt_p
 b3528 ; 	% 1592	M_h_p + M_mal_L_p --> M_h_c + M_mal_L_c
 ( b4123  ||  b4138 ) ; 	% 1593	M_h_p + M_mal_L_p --> M_h_c + M_mal_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1594	M_mal_L_e <--> M_mal_L_p
 b2049 ; 	% 1595	M_gdp_c + M_h_c + M_man1p_c --> M_gdpmann_c + M_pi_c
 b1613 ; 	% 1596	M_man6p_c <--> M_f6p_c
 b3666 ; 	% 1597	M_pi_c + M_man6p_p --> M_man6p_c + M_pi_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1598	M_man6p_e <--> M_man6p_p
 b4323 ; 	% 1599	M_mana_c + M_nad_c <--> M_fruur_c + M_h_c + M_nadh_c
 ( b0731  &&  b2415  &&  b2416 ) ; 	% 1600	M_pep_c + M_manglyc_p --> M_man6pglyc_c + M_pyr_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1601	M_manglyc_e <--> M_manglyc_p
 b0732 ; 	% 1602	M_h2o_c + M_man6pglyc_c --> M_glyc_R_c + M_man6p_c
 ( b1817  &&  b1818  &&  b1819  &&  b2415  &&  b2416 ) ; 	% 1603	M_pep_c + M_man_p --> M_man6p_c + M_pyr_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1604	M_man_e <--> M_man_p
 b0334 ; 	% 1605	M_2mcit_c --> M_2mcacn_c + M_h2o_c
 b0331 ; 	% 1606	M_micit_c <--> M_pyr_c + M_succ_c
 b0333 ; 	% 1607	M_h2o_c + M_oaa_c + M_ppcoa_c --> M_2mcit_c + M_coa_c + M_h_c
 ( b1094  &&  b1092 ) ; 	% 1608	M_ACP_c + M_malcoa_c <--> M_coa_c + M_malACP_c
 b2521 ; 	% 1609	M_cyan_c + M_mercppyr_c --> M_h_c + M_pyr_c + M_tcynt_c
 ( b0084  ||  b0635  ||  b0149  ||  b3396 ) ; 	% 1610	M_murein5p5p_p --> M_ala_D_p + M_murein5px4p_p
 ( b0149  ||  b3396 ) ; 	% 1611	M_murein5p5p_p --> M_alaala_p + M_murein5px3p_p
 ( b0084  ||  b0635  ||  b3396  ||  b0149 ) ; 	% 1612	M_murein5p5p5p_p --> M_ala_D_p + M_murein5px4px4p_p
 ( b0632  ||  b3182  ||  b0839  ||  b2010 ) ; 	% 1613	M_h2o_p + M_murein5px4p_p --> M_ala_D_p + M_murein4px4p_p
 ( b0632  ||  b3182  ||  b0839  ||  b2010 ) ; 	% 1614	M_h2o_p + M_murein5px4px4p_p --> M_ala_D_p + M_murein4px4px4p_p
 ( b0632  ||  b3182  ||  b0839  ||  b2010 ) ; 	% 1615	M_h2o_p + M_murein5p5p_p --> M_ala_D_p + M_murein5p4p_p
 ( b0632  ||  b3182  ||  b0839  ||  b2010 ) ; 	% 1616	M_h2o_p + M_murein5p4p_p --> M_ala_D_p + M_murein4p4p_p
 ( b0632  ||  b3182  ||  b0839  ||  b2010 ) ; 	% 1617	M_h2o_p + M_murein5p3p_p --> M_ala_D_p + M_murein4p3p_p
 ( b3182  ||  b2328  ||  b2134 ) ; 	% 1618	M_h2o_p + M_murein4px4p_p --> M_murein4p4p_p
 ( b3182  ||  b2328  ||  b2134 ) ; 	% 1619	M_h2o_p + M_murein3px4p_p --> M_murein4p3p_p
 ( b3182  ||  b2328  ||  b2134 ) ; 	% 1620	M_h2o_p + M_murein5px4p_p --> M_murein5p4p_p
 ( b3182  ||  b2328  ||  b2134 ) ; 	% 1621	M_h2o_p + M_murein4px4px4p_p --> M_murein4px4p4p_p
 b3236 ; 	% 1622	M_mal_L_c + M_nad_c <--> M_h_c + M_nadh_c + M_oaa_c
 b2210 ; 	% 1623	M_mal_L_c + M_q8_c --> M_oaa_c + M_q8h2_c
 b2210 ; 	% 1624	M_mal_L_c + M_mqn8_c --> M_mql8_c + M_oaa_c
 1 ; 	% 1625	M_5mdru1p_c --> M_dkmpp_c + M_h2o_c
 b1479 ; 	% 1626	M_mal_L_c + M_nad_c --> M_co2_c + M_nadh_c + M_pyr_c
 b2463 ; 	% 1627	M_mal_L_c + M_nadp_c --> M_co2_c + M_nadph_c + M_pyr_c
 b2515 ; 	% 1628	M_2mecdp_c + M_nadh_c --> M_h2mb4p_c + M_h2o_c + M_nad_c
 b2746 ; 	% 1629	M_2p4c2me_c --> M_2mecdp_c + M_cmp_c
 b4120 ; 	% 1630	M_h_p + M_melib_p --> M_h_c + M_melib_c
 b1528 ; 	% 1631	M_melib_c + M_h_p --> M_h_c + M_melib_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1632	M_melib_e <--> M_melib_p
 b2747 ; 	% 1633	M_2me4p_c + M_ctp_c + M_h_c --> M_4c2me_c + M_ppi_c
 b2942 ; 	% 1634	M_atp_c + M_h2o_c + M_met_L_c --> M_amet_c + M_pi_c + M_ppi_c
 ( b0198  &&  b0199  &&  b0197 ) ; 	% 1635	M_atp_c + M_h2o_c + M_met_D_p --> M_adp_c + M_h_c + M_met_D_c + M_pi_c
 ( b1377  ||  b2215  ||  b0241  ||  b0929 ) ; 	% 1636	M_met_D_e <--> M_met_D_p
 1 ; 	% 1637	M_h2o2_c + M_met_L_c --> M_h2o_c + M_metsox_S_L_c
 1 ; 	% 1638	M_h2o2_c + M_met_L_c --> M_h2o_c + M_metsox_R_L_c
 ( b4019  ||  b3829 ) ; 	% 1639	M_5mthf_c + M_hcys_L_c --> M_h_c + M_met_L_c + M_thf_c
 1 ; 	% 1640	M_atp_c + M_h2o_c + M_metsox_S_L_p --> M_adp_c + M_h_c + M_metsox_S_L_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1641	M_metsox_S_L_e <--> M_metsox_S_L_p
 1 ; 	% 1642	M_atp_c + M_h2o_c + M_metsox_R_L_p --> M_adp_c + M_h_c + M_metsox_R_L_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1643	M_metsox_R_L_e <--> M_metsox_R_L_p
 ( ( b4219  &&  b2582 )  ||  ( b4219  &&  b3781 ) ) ; 	% 1644	M_metsox_S_L_c + M_trdrd_c --> M_h2o_c + M_met_L_c + M_trdox_c
 ( ( b1778  &&  b2582 )  ||  ( b1778  &&  b3781 ) ) ; 	% 1645	M_metsox_R_L_c + M_trdrd_c --> M_h2o_c + M_met_L_c + M_trdox_c
 b2114 ; 	% 1646	M_atp_c + M_met_L_c + M_trnamet_c --> M_amp_c + M_mettrna_c + M_ppi_c
 ( b0198  &&  b0199  &&  b0197 ) ; 	% 1647	M_atp_c + M_h2o_c + M_met_L_p --> M_adp_c + M_h_c + M_met_L_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1648	M_met_L_e <--> M_met_L_p
 1 ; 	% 1649	M_h_c + M_mg2_p <--> M_mg2_c + M_h_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1650	M_mg2_e <--> M_mg2_p
 b3816 ; 	% 1651	M_mg2_p --> M_mg2_c
 b4242 ; 	% 1652	M_atp_c + M_h2o_c + M_mg2_p --> M_adp_c + M_h_c + M_mg2_c + M_pi_c
 b0963 ; 	% 1653	M_dhap_c --> M_mthgxl_c + M_pi_c
 b2533 ; 	% 1654	M_h2o_c + M_mi1p_D_c --> M_inost_c + M_pi_c
 b0118 ; 	% 1655	M_2mcacn_c + M_h2o_c --> M_micit_c
 1 ; 	% 1656	M_minohp_e --> M_minohp_p
 1 ; 	% 1657	M_h2o_p + M_murein5px4p_p --> M_alaala_p + M_murein3px4p_p
 1 ; 	% 1658	M_h2o_p + M_murein4p4p_p --> M_ala_D_p + M_murein4p3p_p
 1 ; 	% 1659	M_h2o_p + M_murein5p5p_p --> M_alaala_p + M_murein5p3p_p
 1 ; 	% 1660	M_h2o_p + M_murein4p3p_p --> M_ala_D_p + M_murein3p3p_p
 1 ; 	% 1661	M_h2o_p + M_murein5px3p_p --> M_alaala_p + M_murein3px3p_p
 1 ; 	% 1662	M_h2o_p + M_murein3px3p_p --> M_murein3p3p_p
 1 ; 	% 1663	M_h2o_p + M_murein5px3p_p --> M_murein5p3p_p
 b0403 ; 	% 1664	M_h2o_c + M_malttr_c --> M_glc_D_c + M_malt_c
 b0403 ; 	% 1665	M_h2o_c + M_maltttr_c --> M_glc_D_c + M_malttr_c
 b0403 ; 	% 1666	M_h2o_c + M_maltpt_c --> M_glc_D_c + M_maltttr_c
 b0403 ; 	% 1667	M_h2o_c + M_malthx_c --> M_glc_D_c + M_maltpt_c
 b0403 ; 	% 1668	M_h2o_c + M_malthp_c --> M_glc_D_c + M_malthx_c
 ( b4392  ||  b2813  ||  b2701  ||  b1193  ||  b2963 ) ; 	% 1669	M_murein4p4p_p --> M_anhgm4p_p
 ( b4392  ||  b2813  ||  b2701  ||  b1193  ||  b2963 ) ; 	% 1670	M_murein4p3p_p --> M_anhgm3p_p + M_anhgm4p_p
 ( b4392  ||  b2813  ||  b2701  ||  b1193  ||  b2963 ) ; 	% 1671	M_murein3p3p_p --> M_anhgm3p_p
 ( b4392  ||  b2813  ||  b2701  ||  b1193  ||  b2963 ) ; 	% 1672	M_murein4px4p4p_p --> M_anhgm4p_p + M_murein4px4p_p
 b3417 ; 	% 1673	M_maltpt_c + M_pi_c <--> M_g1p_c + M_maltttr_c
 b3417 ; 	% 1674	M_malthx_c + M_pi_c <--> M_g1p_c + M_maltpt_c
 b3417 ; 	% 1675	M_malthp_c + M_pi_c <--> M_g1p_c + M_malthx_c
 b2919 ; 	% 1676	M_h_c + M_mmcoa_S_c --> M_co2_c + M_ppcoa_c
 1 ; 	% 1677	M_mmcoa_R_c <--> M_mmcoa_S_c
 b0260 ; 	% 1678	M_h_p + M_mmet_p --> M_h_c + M_mmet_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1679	M_mmet_e <--> M_mmet_p
 b2917 ; 	% 1680	M_succoa_c --> M_mmcoa_R_c
 ( b3915  ||  b0752 ) ; 	% 1681	M_mn2_c + M_h_p --> M_h_c + M_mn2_p
 b3040 ; 	% 1682	M_mn2_p --> M_mn2_c
 b0822 ; 	% 1683	M_h2o_c + M_man6p_c --> M_man_c + M_pi_c
 ( b3599  &&  b2415  &&  b2416 ) ; 	% 1684	M_pep_c + M_mnl_p --> M_mnl1p_c + M_pyr_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1685	M_mnl_e <--> M_mnl_p
 b4322 ; 	% 1686	M_mana_c --> M_2ddglcn_c + M_h2o_c
 b2392 ; 	% 1687	M_h_p + M_mn2_p --> M_h_c + M_mn2_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1688	M_mn2_e <--> M_mn2_p
 b3633 ; 	% 1689	M_ckdo_c + M_lipidA_c --> M_cmp_c + M_h_c + M_kdolipid4_c
 b3633 ; 	% 1690	M_ckdo_c + M_kdolipid4_c --> M_cmp_c + M_h_c + M_kdo2lipid4_c
 b3624 ; 	% 1691	M_ckdo_c + M_phphhlipa_c --> M_cmp_c + M_h_c + M_kphphhlipa_c
 ( ( b2422  &&  b2425  &&  b2424  &&  b2423 )  ||  ( b0763  &&  b0764  &&  b0765 )  ||  ( b2422  &&  b2424  &&  b2423  &&  b3917 ) ) ; 	% 1692	M_atp_c + M_h2o_c + M_mobd_p --> M_adp_c + M_h_c + M_mobd_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1693	M_mobd_e <--> M_mobd_p
 b0134 ; 	% 1694	M_3mob_c + M_h2o_c + M_mlthf_c --> M_2dhp_c + M_thf_c
 ( b2519  ||  b0149  ||  b3396 ) ; 	% 1695	M_uaagmda_c --> M_h_c + M_udcpdp_c + M_murein5p5p_p
 ( b0149  ||  b2519  ||  b3396 ) ; 	% 1696	M_uaagmda_c + M_murein5p5p_p --> M_h_c + M_udcpdp_c + M_murein5p5p5p_p
 ( b0936  &&  b0933  &&  b0934 ) ; 	% 1697	M_atp_c + M_h2o_c + M_mso3_p --> M_adp_c + M_h_c + M_mso3_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1698	M_mso3_e <--> M_mso3_p
 b0159 ; 	% 1699	M_5mta_c + M_h2o_c --> M_5mtr_c + M_ade_c
 b0529 ; 	% 1700	M_h2o_c + M_methf_c <--> M_10fthf_c + M_h_c
 b0529 ; 	% 1701	M_mlthf_c + M_nadp_c <--> M_methf_c + M_nadph_c
 b3941 ; 	% 1702	M_h_c + M_mlthf_c + M_nadh_c --> M_5mthf_c + M_nad_c
 1 ; 	% 1703	M_5mdr1p_c <--> M_5mdru1p_c
 1 ; 	% 1704	M_5mtr_c + M_atp_c --> M_5mdr1p_c + M_adp_c + M_h_c
 b1059 ; 	% 1705	M_Nmtrp_c + M_h2o_c + M_o2_c --> M_fald_c + M_h2o2_c + M_trp_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1706	M_n2o_e <--> M_n2o_p
 1 ; 	% 1707	M_n2o_p <--> M_n2o_c
 b3957 ; 	% 1708	M_acg5sa_c + M_h2o_c --> M_ac_c + M_glu5sa_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1709	M_nac_e <--> M_nac_p
 1 ; 	% 1710	M_nac_p --> M_nac_c
 ( b2411  ||  b3996 ) ; 	% 1711	M_h2o_c + M_nad_c --> M_amp_c + M_h_c + M_nmn_c
 b1109 ; 	% 1712	M_h_c + M_mqn8_c + M_nadh_c --> M_mql8_c + M_nad_c
 ( b2276  &&  b2277  &&  b2278  &&  b2279  &&  b2280  &&  b2281  &&  b2282  &&  b2283  &&  b2284  &&  b2285  &&  b2286  &&  b2287  &&  b2288 ) ; 	% 1713	M_h_c + M_nadh_c + M_q8_c --> M_nad_c + M_q8h2_c + M_h_p
 ( b2276  &&  b2277  &&  b2278  &&  b2279  &&  b2280  &&  b2281  &&  b2282  &&  b2283  &&  b2284  &&  b2285  &&  b2286  &&  b2287  &&  b2288 ) ; 	% 1714	M_h_c + M_mqn8_c + M_nadh_c --> M_mql8_c + M_nad_c + M_h_p
 ( b2276  &&  b2277  &&  b2278  &&  b2279  &&  b2280  &&  b2281  &&  b2282  &&  b2283  &&  b2284  &&  b2285  &&  b2286  &&  b2287  &&  b2288 ) ; 	% 1715	M_2dmmq8_c + M_h_c + M_nadh_c --> M_2dmmql8_c + M_nad_c + M_h_p
 b1109 ; 	% 1716	M_h_c + M_nadh_c + M_q8_c --> M_nad_c + M_q8h2_c
 b1109 ; 	% 1717	M_2dmmq8_c + M_h_c + M_nadh_c --> M_2dmmql8_c + M_nad_c
 b2615 ; 	% 1718	M_atp_c + M_nad_c --> M_adp_c + M_h_c + M_nadp_c
 1 ; 	% 1719	M_h2o_c + M_nad_c --> M_adprib_c + M_h_c + M_ncam_c
 b3028 ; 	% 1720	M_h_c + M_nadph_c + M_q8_c --> M_nadp_c + M_q8h2_c
 b3028 ; 	% 1721	M_h_c + M_mqn8_c + M_nadph_c --> M_mql8_c + M_nadp_c
 b3028 ; 	% 1722	M_2dmmq8_c + M_h_c + M_nadph_c --> M_2dmmql8_c + M_nadp_c
 1 ; 	% 1723	M_h2o_c + M_nadp_c --> M_nad_c + M_pi_c
 b1740 ; 	% 1724	M_atp_c + M_dnad_c + M_nh4_c --> M_amp_c + M_h_c + M_nad_c + M_ppi_c
 ( b3962  ||  ( b1602  &&  b1603 ) ) ; 	% 1725	M_nad_c + M_nadph_c --> M_nadh_c + M_nadp_c
 b0931 ; 	% 1726	M_atp_c + M_h2o_c + M_nac_c + M_prpp_c --> M_adp_c + M_nicrnt_c + M_pi_c + M_ppi_c
 b1186 ; 	% 1727	M_na1_c + M_h_p --> M_h_c + M_na1_p
 b0019 ; 	% 1728	M_na1_c + M_h_p --> M_h_c + M_na1_p
 ( b0842  ||  b1216 ) ; 	% 1729	M_na1_c + M_h_p --> M_h_c + M_na1_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1730	M_na1_e <--> M_na1_p
 ( b0474  ||  b2518 ) ; 	% 1731	M_atp_c + M_gdp_c <--> M_adp_c + M_gtp_c
 ( b0474  ||  b2518 ) ; 	% 1732	M_atp_c + M_udp_c <--> M_adp_c + M_utp_c
 ( b0474  ||  b2518 ) ; 	% 1733	M_atp_c + M_cdp_c <--> M_adp_c + M_ctp_c
 ( b2518  ||  b0474 ) ; 	% 1734	M_atp_c + M_dtdp_c <--> M_adp_c + M_dttp_c
 ( b2518  ||  b0474 ) ; 	% 1735	M_atp_c + M_dgdp_c <--> M_adp_c + M_dgtp_c
 ( b0474  ||  b2518 ) ; 	% 1736	M_atp_c + M_dudp_c <--> M_adp_c + M_dutp_c
 ( b2518  ||  b0474 ) ; 	% 1737	M_atp_c + M_dcdp_c <--> M_adp_c + M_dctp_c
 ( b2518  ||  b0474 ) ; 	% 1738	M_atp_c + M_dadp_c <--> M_adp_c + M_datp_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1739	M_nh4_e <--> M_nh4_p
 ( b0451 ) ; 	% 1740	M_nh4_p <--> M_nh4_c
 ( b2710  &&  b2711 ) ; 	% 1741	M_h_c + M_nadh_c + M_no_c --> M_h2o_c + M_n2o_c + M_nad_c
 b3469 ; 	% 1742	M_atp_c + M_h2o_c + M_ni2_c --> M_adp_c + M_h_c + M_pi_c + M_ni2_p
 ( b3915  ||  b0752 ) ; 	% 1743	M_ni2_c + M_h_p --> M_h_c + M_ni2_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1744	M_ni2_e <--> M_ni2_p
 b3816 ; 	% 1745	M_ni2_p --> M_ni2_c
 ( b4242  ||  ( b3476  &&  b3477  &&  b3478  &&  b3479  &&  b3480 ) ) ; 	% 1746	M_atp_c + M_h2o_c + M_ni2_p --> M_adp_c + M_h_c + M_ni2_c + M_pi_c
 ( b0639  ||  b4390 ) ; 	% 1747	M_atp_c + M_h_c + M_nmn_c --> M_nad_c + M_ppi_c
 1 ; 	% 1748	M_h2o_c + M_nmn_c --> M_nh4_c + M_nicrnt_c
 1 ; 	% 1749	M_h2o_c + M_nmn_c --> M_h_c + M_ncam_c + M_r5p_c
 b0751 ; 	% 1750	M_nmn_p --> M_nmn_c
 1 ; 	% 1751	M_h2o_c + M_nmn_p --> M_h_c + M_ncam_c + M_r5p_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1752	M_nmn_e <--> M_nmn_p
 b1768 ; 	% 1753	M_h2o_c + M_ncam_c --> M_nac_c + M_nh4_c
 b0639 ; 	% 1754	M_atp_c + M_h_c + M_nicrnt_c <--> M_dnad_c + M_ppi_c
 b1991 ; 	% 1755	M_dmbzid_c + M_nicrnt_c --> M_5prdmbz_c + M_h_c + M_nac_c
 b0109 ; 	% 1756	M_h_c + M_prpp_c + M_quln_c --> M_co2_c + M_nicrnt_c + M_ppi_c
 ( b1223  ||  b3367 ) ; 	% 1757	M_h_p + M_no2_p <--> M_h_c + M_no2_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1758	M_no2_e <--> M_no2_p
 ( ( b2203  &&  b2206 )  &&  b2202  &&  b2205  &&  b2204 ) ; 	% 1759	M_q8h2_c + M_no3_p --> M_q8_c + M_h2o_p + M_no2_p
 ( ( b1465  &&  b1466  &&  b1467  &&  b1468 )  ||  ( b1224  &&  b1225  &&  b1226  &&  b1227 ) ) ; 	% 1760	M_h_c + M_no3_c + M_q8h2_c --> M_h2o_c + M_no2_c + M_q8_c + M_h_p
 ( ( b2203  &&  b2206 )  &&  b2202 ) ; 	% 1761	M_mql8_c + M_no3_p --> M_mqn8_c + M_h2o_p + M_no2_p
 ( ( b1465  &&  b1466  &&  b1467  &&  b1468 )  ||  ( b1224  &&  b1225  &&  b1226  &&  b1227 ) ) ; 	% 1762	M_h_c + M_mql8_c + M_no3_c --> M_h2o_c + M_mqn8_c + M_no2_c + M_h_p
 ( b1223  ||  b1469 ) ; 	% 1763	M_no2_c + M_no3_p --> M_no3_c + M_no2_p
 ( b0241  ||  b0929  ||  b2215  ||  b1377 ) ; 	% 1764	M_no3_e <--> M_no3_p
 b2552 ; 	% 1765	M_nadh_c + M_no_c + M_o2_c --> M_h_c + M_nad_c + M_no3_c
 b2552 ; 	% 1766	M_nadph_c + M_no_c + M_o2_c --> M_h_c + M_nadp_c + M_no3_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1767	M_no_e <--> M_no_p
 1 ; 	% 1768	M_no_p <--> M_no_c
 b2262 ; 	% 1769	M_sbzcoa_c --> M_coa_c + M_dhna_c
 ( b2291  ||  b2744  ||  b4374 ) ; 	% 1770	M_dump_c + M_h2o_c --> M_duri_c + M_pi_c
 b2744 ; 	% 1771	M_h2o_c + M_xmp_c --> M_pi_c + M_xtsn_c
 ( b0480  ||  b4055 ) ; 	% 1772	M_h2o_p + M_xmp_p --> M_pi_p + M_xtsn_p
 b2744 ; 	% 1773	M_h2o_c + M_imp_c --> M_ins_c + M_pi_c
 ( b4055  ||  b0480 ) ; 	% 1774	M_h2o_p + M_imp_p --> M_ins_p + M_pi_p
 ( b2291  ||  b2744 ) ; 	% 1775	M_dimp_c + M_h2o_c --> M_din_c + M_pi_c
 ( b0480  ||  b4055 ) ; 	% 1776	M_dimp_p + M_h2o_p --> M_din_p + M_pi_p
 ( b0480  ||  b4055 ) ; 	% 1777	M_dump_p + M_h2o_p --> M_duri_p + M_pi_p
 ( b4374  ||  b2744 ) ; 	% 1778	M_h2o_c + M_ump_c --> M_pi_c + M_uri_c
 ( b4055  ||  b0480 ) ; 	% 1779	M_h2o_p + M_ump_p --> M_pi_p + M_uri_p
 ( b2744  ||  b2291 ) ; 	% 1780	M_dcmp_c + M_h2o_c --> M_dcyt_c + M_pi_c
 ( b0480  ||  b4055 ) ; 	% 1781	M_dcmp_p + M_h2o_p --> M_dcyt_p + M_pi_p
 b2744 ; 	% 1782	M_cmp_c + M_h2o_c --> M_cytd_c + M_pi_c
 ( b4055  ||  b0480 ) ; 	% 1783	M_cmp_p + M_h2o_p --> M_cytd_p + M_pi_p
 ( b2291  ||  b2744  ||  b4374 ) ; 	% 1784	M_dtmp_c + M_h2o_c --> M_pi_c + M_thymd_c
 ( b0480  ||  b4055 ) ; 	% 1785	M_dtmp_p + M_h2o_p --> M_pi_p + M_thymd_p
 ( b2291  ||  b2744 ) ; 	% 1786	M_damp_c + M_h2o_c --> M_dad_2_c + M_pi_c
 ( b4055  ||  b0480 ) ; 	% 1787	M_damp_p + M_h2o_p --> M_dad_2_p + M_pi_p
 b2744 ; 	% 1788	M_amp_c + M_h2o_c --> M_adn_c + M_pi_c
 ( b0480  ||  b4055 ) ; 	% 1789	M_amp_p + M_h2o_p --> M_adn_p + M_pi_p
 ( b2291  ||  b2744 ) ; 	% 1790	M_dgmp_c + M_h2o_c --> M_dgsn_c + M_pi_c
 ( b0480  ||  b4055 ) ; 	% 1791	M_dgmp_p + M_h2o_p --> M_dgsn_p + M_pi_p
 b2744 ; 	% 1792	M_gmp_c + M_h2o_c --> M_gsn_c + M_pi_c
 ( b4055  ||  b0480 ) ; 	% 1793	M_gmp_p + M_h2o_p --> M_gsn_p + M_pi_p
 ( b0650  ||  b4161 ) ; 	% 1794	M_atp_c + M_h2o_c --> M_adp_c + M_h_c + M_pi_c
 ( b4394  ||  b4161 ) ; 	% 1795	M_h2o_c + M_itp_c --> M_h_c + M_idp_c + M_pi_c
 b4394 ; 	% 1796	M_ditp_c + M_h2o_c --> M_didp_c + M_h_c + M_pi_c
 b4394 ; 	% 1797	M_h2o_c + M_xtp_c --> M_h_c + M_pi_c + M_xdp_c
 b4161 ; 	% 1798	M_gtp_c + M_h2o_c --> M_gdp_c + M_h_c + M_pi_c
 b0980 ; 	% 1799	M_gtp_p + M_h2o_p --> M_gdp_p + M_h_p + M_pi_p
 b4161 ; 	% 1800	M_ctp_c + M_h2o_c --> M_cdp_c + M_h_c + M_pi_c
 ( b2781  ||  b0099 ) ; 	% 1801	M_dgtp_c + M_h2o_c --> M_dgmp_c + M_h_c + M_ppi_c
 b2954 ; 	% 1802	M_ditp_c + M_h2o_c --> M_dimp_c + M_h_c + M_ppi_c
 b2954 ; 	% 1803	M_h2o_c + M_xtp_c --> M_h_c + M_ppi_c + M_xmp_c
 ( b0099  ||  b2781 ) ; 	% 1804	M_gtp_c + M_h2o_c --> M_gmp_c + M_h_c + M_ppi_c
 ( b2781  ||  b2251  ||  b1759 ) ; 	% 1805	M_dctp_c + M_h2o_c --> M_dcmp_c + M_h_c + M_ppi_c
 ( b2781  ||  b1759 ) ; 	% 1806	M_ctp_c + M_h2o_c --> M_cmp_c + M_h_c + M_ppi_c
 ( b2781  ||  b1865 ) ; 	% 1807	M_datp_c + M_h2o_c --> M_damp_c + M_h_c + M_ppi_c
 b2781 ; 	% 1808	M_atp_c + M_h2o_c --> M_amp_c + M_h_c + M_ppi_c
 ( b2251  ||  b2781 ) ; 	% 1809	M_dttp_c + M_h2o_c --> M_dtmp_c + M_h_c + M_ppi_c
 b2781 ; 	% 1810	M_h2o_c + M_utp_c --> M_h_c + M_ppi_c + M_ump_c
 b2954 ; 	% 1811	M_h2o_c + M_itp_c --> M_h_c + M_imp_c + M_ppi_c
 b0160 ; 	% 1812	M_dgtp_c + M_h2o_c --> M_dgsn_c + M_pppi_c
 b0160 ; 	% 1813	M_gtp_c + M_h2o_c --> M_gsn_c + M_pppi_c
 ( b3365  &&  b3366 ) ; 	% 1814	M_h_c + M_nadh_c + M_no2_c --> M_h2o_c + M_nad_c + M_nh4_c
 ( b4070  &&  b4071  &&  b4072  &&  b4073 ) ; 	% 1815	M_q8h2_c + M_h_p + M_no2_p --> M_q8_c + M_h2o_p + M_nh4_p
 ( b4070  &&  b4071  &&  b4072  &&  b4073 ) ; 	% 1816	M_mql8_c + M_h_p + M_no2_p --> M_mqn8_c + M_h2o_p + M_nh4_p
 1 ; 	% 1817	M_o16a4colipa_p --> M_o16a4colipa_e
 b3622 ; 	% 1818	M_colipa_p + M_o16a4und_p --> M_h_p + M_o16a4colipa_p + M_udcpdp_p
 ( b2035  &&  b2027 ) ; 	% 1819	M_o16aund_p --> M_h_p + M_o16a2und_p + M_udcpdp_p
 ( b2035  &&  b2027 ) ; 	% 1820	M_o16a2und_p + M_o16aund_p --> M_h_p + M_o16a3und_p + M_udcpdp_p
 ( b2035  &&  b2027 ) ; 	% 1821	M_o16a3und_p + M_o16aund_p --> M_h_p + M_o16a4und_p + M_udcpdp_p
 b2033 ; 	% 1822	M_accoa_c + M_ragund_c --> M_aragund_c + M_coa_c
 b2037 ; 	% 1823	M_o16aund_c --> M_o16aund_p
 b2034 ; 	% 1824	M_garagund_c + M_udpgalfur_c --> M_gfgaragund_c + M_h_c + M_udp_c
 b2032 ; 	% 1825	M_aragund_c + M_udpg_c --> M_garagund_c + M_h_c + M_udp_c
 1 ; 	% 1826	M_gfgaragund_c + M_udpg_c --> M_h_c + M_o16aund_c + M_udp_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1827	M_o2s_e <--> M_o2s_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1828	M_o2_e <--> M_o2_p
 1 ; 	% 1829	M_o2_p <--> M_o2_c
 b1850 ; 	% 1830	M_h_c + M_oaa_c --> M_co2_c + M_pyr_c
 ( ( ( b0902  &&  b0903 )  &&  b2579 )  ||  ( b0902  &&  b0903 )  ||  ( b0902  &&  b3114 ) ) ; 	% 1831	M_2obut_c + M_coa_c --> M_for_c + M_ppcoa_c
 ( b4254  ||  b0273 ) ; 	% 1832	M_cbp_c + M_orn_c <--> M_citr_L_c + M_h_c + M_pi_c
 b2344 ; 	% 1833	M_ocdca_e --> M_ocdca_p
 b2344 ; 	% 1834	M_ocdcea_e --> M_ocdcea_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1835	M_octa_e <--> M_octa_p
 b3187 ; 	% 1836	M_frdp_c + M_ipdp_c --> M_octdp_c + M_ppi_c
 b3846 ; 	% 1837	M_odecoa_c --> M_od2coa_c
 b0907 ; 	% 1838	M_glu_L_c + M_ohpb_c <--> M_akg_c + M_phthr_c
 b2232 ; 	% 1839	M_2ohph_c + M_amet_c --> M_2omph_c + M_ahcys_c + M_h_c
 b3833 ; 	% 1840	M_2ombzl_c + M_amet_c --> M_2ommbl_c + M_ahcys_c + M_h_c
 b0073 ; 	% 1841	M_3c4mop_c + M_h_c --> M_4mop_c + M_co2_c
 b0662 ; 	% 1842	M_2ommbl_c + M_o2_c --> M_2omhmbl_c
 1 ; 	% 1843	M_2ommbl_c + M_atp_c + M_h2o_c + M_nad_c --> M_2omhmbl_c + M_adp_c + M_h_c + M_nadh_c + M_pi_c
 b1281 ; 	% 1844	M_h_c + M_orot5p_c --> M_co2_c + M_ump_c
 b2907 ; 	% 1845	M_2omph_c + M_o2_c --> M_2ombzl_c
 1 ; 	% 1846	M_2omph_c + M_atp_c + M_h2o_c + M_nad_c --> M_2ombzl_c + M_adp_c + M_h_c + M_nadh_c + M_pi_c
 b0350 ; 	% 1847	M_h2o_c + M_op4en_c --> M_4h2opntn_c
 ( b3843  ||  b2311 ) ; 	% 1848	M_3ophb_c + M_h_c --> M_2oph_c + M_co2_c
 b3835 ; 	% 1849	M_2oph_c + M_o2_c --> M_2ohph_c
 1 ; 	% 1850	M_2oph_c + M_atp_c + M_h2o_c + M_nad_c --> M_2ohph_c + M_adp_c + M_h_c + M_nadh_c + M_pi_c
 ( b2965  ||  b0693 ) ; 	% 1851	M_h_c + M_orn_c --> M_co2_c + M_ptrc_c
 ( b2310  &&  b2307  &&  b2306  &&  b2308 ) ; 	% 1852	M_atp_c + M_h2o_c + M_orn_p --> M_adp_c + M_h_c + M_orn_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1853	M_orn_e <--> M_orn_p
 b3528 ; 	% 1854	M_h_p + M_orot_p --> M_h_c + M_orot_c
 ( b1377  ||  b0929  ||  b0241  ||  b2215 ) ; 	% 1855	M_orot_e <--> M_orot_p
 b3642 ; 	% 1856	M_orot5p_c + M_ppi_c <--> M_orot_c + M_prpp_c
 1 ; 	% 1857	M_oxur_c + M_pi_c --> M_cbp_c + M_oxam_c
 b2264 ; 	% 1858	M_akg_c + M_h_c + M_thmpp_c --> M_co2_c + M_ssaltpp_c
 b1014 ; 	% 1859	M_1pyr5c_c + M_h2o_c + M_nad_c --> M_glu_L_c + M_h_c + M_nadh_c
 b0386 ; 	% 1860	M_1pyr5c_c + M_h_c + M_nadph_c --> M_nadp_c + M_pro_L_c
 b0914 ; 	% 1861	M_atp_c + M_h2o_c + M_pa120_c --> M_adp_c + M_h_c + M_pi_c + M_pa120_p
 b0914 ; 	% 1862	M_atp_c + M_h2o_c + M_pa140_c --> M_adp_c + M_h_c + M_pi_c + M_pa140_p
 b0914 ; 	% 1863	M_atp_c + M_h2o_c + M_pa141_c --> M_adp_c + M_h_c + M_pi_c + M_pa141_p
 b0914 ; 	% 1864	M_atp_c + M_h2o_c + M_pa160_c --> M_adp_c + M_h_c + M_pi_c + M_pa160_p
 b0914 ; 	% 1865	M_atp_c + M_h2o_c + M_pa161_c --> M_adp_c + M_h_c + M_pi_c + M_pa161_p
 b0914 ; 	% 1866	M_atp_c + M_h2o_c + M_pa180_c --> M_adp_c + M_h_c + M_pi_c + M_pa180_p
 b0914 ; 	% 1867	M_atp_c + M_h2o_c + M_pa181_c --> M_adp_c + M_h_c + M_pi_c + M_pa181_p
 1 ; 	% 1868	M_h_p + M_pacald_p <--> M_h_c + M_pacald_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1869	M_pacald_e <--> M_pacald_p
 b1398 ; 	% 1870	M_atp_c + M_coa_c + M_pac_c --> M_amp_c + M_phaccoa_c + M_ppi_c
 b0133 ; 	% 1871	M_ala_B_c + M_atp_c + M_pant_R_c --> M_amp_c + M_h_c + M_pnto_R_c + M_ppi_c
 b1278 ; 	% 1872	M_h2o_c + M_pa120_c --> M_12dgr120_c + M_pi_c
 b1278 ; 	% 1873	M_h2o_p + M_pa120_p --> M_12dgr120_p + M_pi_p
 b1278 ; 	% 1874	M_h2o_c + M_pa140_c --> M_12dgr140_c + M_pi_c
 b1278 ; 	% 1875	M_h2o_p + M_pa140_p --> M_12dgr140_p + M_pi_p
 b1278 ; 	% 1876	M_h2o_c + M_pa141_c --> M_12dgr141_c + M_pi_c
 b1278 ; 	% 1877	M_h2o_p + M_pa141_p --> M_12dgr141_p + M_pi_p
 b1278 ; 	% 1878	M_h2o_c + M_pa160_c --> M_12dgr160_c + M_pi_c
 b1278 ; 	% 1879	M_h2o_p + M_pa160_p --> M_12dgr160_p + M_pi_p
 b1278 ; 	% 1880	M_h2o_c + M_pa161_c --> M_12dgr161_c + M_pi_c
 b1278 ; 	% 1881	M_h2o_p + M_pa161_p --> M_12dgr161_p + M_pi_p
 b1278 ; 	% 1882	M_h2o_c + M_pa180_c --> M_12dgr180_c + M_pi_c
 b1278 ; 	% 1883	M_h2o_p + M_pa180_p --> M_12dgr180_p + M_pi_p
 b1278 ; 	% 1884	M_h2o_c + M_pa181_c --> M_12dgr181_c + M_pi_c
 b1278 ; 	% 1885	M_h2o_p + M_pa181_p --> M_12dgr181_p + M_pi_p
 b0087 ; 	% 1886	M_udcpp_c + M_ugmda_c --> M_uagmda_c + M_ump_c
 ( ( b2762  &&  b2582 )  ||  ( b2762  &&  b3781 ) ) ; 	% 1887	M_paps_c + M_trdrd_c --> M_h_c + M_pap_c + M_so3_c + M_trdox_c
 ( ( b2762  &&  b0849 )  ||  ( b2762  &&  b1064 )  ||  ( b2762  &&  b1654 )  ||  ( b2762  &&  b3610 ) ) ; 	% 1888	M_grxrd_c + M_paps_c --> M_grxox_c + M_h_c + M_pap_c + M_so3_c
 b1489 ; 	% 1889	M_camp_c + M_h2o_c --> M_amp_c + M_h_c
 ( b0114  &&  b0115  &&  b0116 ) ; 	% 1890	M_coa_c + M_nad_c + M_pyr_c --> M_accoa_c + M_co2_c + M_nadh_c
 1 ; 	% 1891	M_nad_c + M_pdx5p_c --> M_h_c + M_nadh_c + M_pydx5p_c
 b1638 ; 	% 1892	M_o2_c + M_pdx5p_c --> M_h2o2_c + M_pydx5p_c
 ( b0052  &&  b2564 ) ; 	% 1893	M_dxyl5p_c + M_nad_c + M_phthr_c --> M_co2_c + M_h_c + M_h2o_c + M_nadh_c + M_pdx5p_c + M_pi_c
 1 ; 	% 1894	M_h2o_c + M_pdx5p_c --> M_pi_c + M_pydxn_c
 b0914 ; 	% 1895	M_atp_c + M_h2o_c + M_pe120_c --> M_adp_c + M_h_c + M_pi_c + M_pe120_p
 b0914 ; 	% 1896	M_atp_c + M_h2o_c + M_pe140_c --> M_adp_c + M_h_c + M_pi_c + M_pe140_p
 b0914 ; 	% 1897	M_atp_c + M_h2o_c + M_pe141_c --> M_adp_c + M_h_c + M_pi_c + M_pe141_p
 b0914 ; 	% 1898	M_atp_c + M_h2o_c + M_pe160_c --> M_adp_c + M_h_c + M_pi_c + M_pe160_p
 b0914 ; 	% 1899	M_atp_c + M_h2o_c + M_pe161_c --> M_adp_c + M_h_c + M_pi_c + M_pe161_p
 b0914 ; 	% 1900	M_atp_c + M_h2o_c + M_pe180_c --> M_adp_c + M_h_c + M_pi_c + M_pe180_p
 b0914 ; 	% 1901	M_atp_c + M_h2o_c + M_pe181_c --> M_adp_c + M_h_c + M_pi_c + M_pe181_p
 b1386 ; 	% 1902	M_h2o_p + M_o2_p + M_peamn_p --> M_h2o2_p + M_nh4_p + M_pacald_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1903	M_peamn_e <--> M_peamn_p
 b2320 ; 	% 1904	M_4per_c + M_nad_c <--> M_h_c + M_nadh_c + M_ohpb_c
 b3546 ; 	% 1905	M_lipa_p + M_pe161_p --> M_12dgr161_p + M_enlipa_p
 b3546 ; 	% 1906	M_lipa_p + M_pe181_p --> M_12dgr181_p + M_enlipa_p
 ( b3916  ||  b1723 ) ; 	% 1907	M_atp_c + M_f6p_c --> M_adp_c + M_fdp_c + M_h_c
 b3916 ; 	% 1908	M_atp_c + M_tag6p_D_c --> M_adp_c + M_h_c + M_tagdp_D_c
 ( ( ( b0902  &&  b0903 )  &&  b2579 )  ||  ( b0902  &&  b0903 )  ||  ( b0902  &&  b3114 )  ||  ( b3951  &&  b3952 ) ) ; 	% 1909	M_coa_c + M_pyr_c --> M_accoa_c + M_for_c
 b0914 ; 	% 1910	M_atp_c + M_h2o_c + M_pg120_c --> M_adp_c + M_h_c + M_pi_c + M_pg120_p
 b0914 ; 	% 1911	M_atp_c + M_h2o_c + M_pg140_c --> M_adp_c + M_h_c + M_pi_c + M_pg140_p
 b0914 ; 	% 1912	M_atp_c + M_h2o_c + M_pg141_c --> M_adp_c + M_h_c + M_pi_c + M_pg141_p
 b0914 ; 	% 1913	M_atp_c + M_h2o_c + M_pg160_c --> M_adp_c + M_h_c + M_pi_c + M_pg160_p
 b0914 ; 	% 1914	M_atp_c + M_h2o_c + M_pg161_c --> M_adp_c + M_h_c + M_pi_c + M_pg161_p
 b0914 ; 	% 1915	M_atp_c + M_h2o_c + M_pg180_c --> M_adp_c + M_h_c + M_pi_c + M_pg180_p
 b0914 ; 	% 1916	M_atp_c + M_h2o_c + M_pg181_c --> M_adp_c + M_h_c + M_pi_c + M_pg181_p
 b3176 ; 	% 1917	M_gam1p_c <--> M_gam6p_c
 b2913 ; 	% 1918	M_3pg_c + M_nad_c --> M_3php_c + M_h_c + M_nadh_c
 b4025 ; 	% 1919	M_g6p_c <--> M_f6p_c
 b2926 ; 	% 1920	M_3pg_c + M_atp_c <--> M_13dpg_c + M_adp_c
 b0767 ; 	% 1921	M_6pgl_c + M_h2o_c --> M_6pgc_c + M_h_c
 b3385 ; 	% 1922	M_2pglyc_c + M_h2o_c --> M_glyclt_c + M_pi_c
 ( b3612  ||  b4395  ||  b0755 ) ; 	% 1923	M_2pg_c <--> M_3pg_c
 ( b0688  ||  b2690 ) ; 	% 1924	M_g1p_c <--> M_g6p_c
 b0914 ; 	% 1925	M_atp_c + M_h2o_c + M_pgp120_c --> M_adp_c + M_h_c + M_pi_c + M_pgp120_p
 b0914 ; 	% 1926	M_atp_c + M_h2o_c + M_pgp140_c --> M_adp_c + M_h_c + M_pi_c + M_pgp140_p
 b0914 ; 	% 1927	M_atp_c + M_h2o_c + M_pgp141_c --> M_adp_c + M_h_c + M_pi_c + M_pgp141_p
 b0914 ; 	% 1928	M_atp_c + M_h2o_c + M_pgp160_c --> M_adp_c + M_h_c + M_pi_c + M_pgp160_p
 b0914 ; 	% 1929	M_atp_c + M_h2o_c + M_pgp161_c --> M_adp_c + M_h_c + M_pi_c + M_pgp161_p
 b0914 ; 	% 1930	M_atp_c + M_h2o_c + M_pgp180_c --> M_adp_c + M_h_c + M_pi_c + M_pgp180_p
 b0914 ; 	% 1931	M_atp_c + M_h2o_c + M_pgp181_c --> M_adp_c + M_h_c + M_pi_c + M_pgp181_p
 ( b0418  ||  b1278 ) ; 	% 1932	M_h2o_c + M_pgp120_c --> M_pg120_c + M_pi_c
 ( b1278  ||  b0418 ) ; 	% 1933	M_h2o_p + M_pgp120_p --> M_pg120_p + M_pi_p
 ( b0418  ||  b1278 ) ; 	% 1934	M_h2o_c + M_pgp140_c --> M_pg140_c + M_pi_c
 ( b1278  ||  b0418 ) ; 	% 1935	M_h2o_p + M_pgp140_p --> M_pg140_p + M_pi_p
 ( b0418  ||  b1278 ) ; 	% 1936	M_h2o_c + M_pgp141_c --> M_pg141_c + M_pi_c
 ( b0418  ||  b1278 ) ; 	% 1937	M_h2o_p + M_pgp141_p --> M_pg141_p + M_pi_p
 ( b0418  ||  b1278 ) ; 	% 1938	M_h2o_c + M_pgp160_c --> M_pg160_c + M_pi_c
 ( b0418  ||  b1278 ) ; 	% 1939	M_h2o_p + M_pgp160_p --> M_pg160_p + M_pi_p
 ( b0418  ||  b1278 ) ; 	% 1940	M_h2o_c + M_pgp161_c --> M_pg161_c + M_pi_c
 ( b1278  ||  b0418 ) ; 	% 1941	M_h2o_p + M_pgp161_p --> M_pg161_p + M_pi_p
 ( b0418  ||  b1278 ) ; 	% 1942	M_h2o_c + M_pgp180_c --> M_pg180_c + M_pi_c
 ( b1278  ||  b0418 ) ; 	% 1943	M_h2o_p + M_pgp180_p --> M_pg180_p + M_pi_p
 ( b1278  ||  b0418 ) ; 	% 1944	M_h2o_c + M_pgp181_c --> M_pg181_c + M_pi_c
 ( b0418  ||  b1278 ) ; 	% 1945	M_h2o_p + M_pgp181_p --> M_pg181_p + M_pi_p
 b1912 ; 	% 1946	M_cdpdddecg_c + M_glyc3p_c --> M_cmp_c + M_h_c + M_pgp120_c
 b1912 ; 	% 1947	M_cdpdtdecg_c + M_glyc3p_c --> M_cmp_c + M_h_c + M_pgp140_c
 b1912 ; 	% 1948	M_cdpdtdec7eg_c + M_glyc3p_c --> M_cmp_c + M_h_c + M_pgp141_c
 b1912 ; 	% 1949	M_cdpdhdecg_c + M_glyc3p_c --> M_cmp_c + M_h_c + M_pgp160_c
 b1912 ; 	% 1950	M_cdpdhdec9eg_c + M_glyc3p_c --> M_cmp_c + M_h_c + M_pgp161_c
 b1912 ; 	% 1951	M_cdpdodecg_c + M_glyc3p_c --> M_cmp_c + M_h_c + M_pgp180_c
 b1912 ; 	% 1952	M_cdpdodec11eg_c + M_glyc3p_c --> M_cmp_c + M_h_c + M_pgp181_c
 ( b2201  &&  b2200  &&  b2199 ) ; 	% 1953	M_atp_c + M_h2o_c + M_pheme_c --> M_adp_c + M_h_c + M_pi_c + M_pheme_p
 1 ; 	% 1954	M_pheme_p --> M_pheme_e
 ( b3770  ||  b0928  ||  b4054 ) ; 	% 1955	M_akg_c + M_phe_L_c <--> M_glu_L_c + M_phpyr_c
 ( b1713  &&  b1714 ) ; 	% 1956	M_atp_c + M_phe_L_c + M_trnaphe_c --> M_amp_c + M_phetrna_c + M_ppi_c
 ( b0576  ||  b0112 ) ; 	% 1957	M_h_p + M_phe_L_p <--> M_h_c + M_phe_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1958	M_phe_L_e <--> M_phe_L_p
 b0980 ; 	% 1959	M_h2o_p + M_minohp_p --> M_inost_p + M_pi_p
 ( b2987  ||  b3493 ) ; 	% 1960	M_h_p + M_pi_p <--> M_h_c + M_pi_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 1961	M_pi_e <--> M_pi_p
 ( b3726  &&  b3725  &&  b3727  &&  b3728 ) ; 	% 1962	M_atp_c + M_h2o_c + M_pi_p --> M_adp_c + M_h_c + M_pi_c
 b3821 ; 	% 1963	M_h2o_p + M_pa120_p --> M_2ddecg3p_p + M_ddca_p
 b3821 ; 	% 1964	M_h2o_p + M_pa140_p --> M_2tdecg3p_p + M_ttdca_p
 b3821 ; 	% 1965	M_h2o_p + M_pa141_p --> M_2tdec7eg3p_p + M_ttdcea_p
 b3821 ; 	% 1966	M_h2o_p + M_pa160_p --> M_2hdecg3p_p + M_hdca_p
 b3821 ; 	% 1967	M_h2o_p + M_pa161_p --> M_2hdec9eg3p_p + M_hdcea_p
 b3821 ; 	% 1968	M_h2o_p + M_pa180_p --> M_2odecg3p_p + M_ocdca_p
 b3821 ; 	% 1969	M_h2o_p + M_pa181_p --> M_2odec11eg3p_p + M_ocdcea_p
 b3821 ; 	% 1970	M_h2o_p + M_pe120_p --> M_2agpe120_p + M_ddca_p + M_h_p
 b3821 ; 	% 1971	M_h2o_p + M_pe140_p --> M_2agpe140_p + M_h_p + M_ttdca_p
 b3821 ; 	% 1972	M_h2o_p + M_pe141_p --> M_2agpe141_p + M_h_p + M_ttdcea_p
 b3821 ; 	% 1973	M_h2o_p + M_pe160_p --> M_2agpe160_p + M_h_p + M_hdca_p
 b3821 ; 	% 1974	M_h2o_p + M_pe161_p --> M_2agpe161_p + M_h_p + M_hdcea_p
 b3821 ; 	% 1975	M_h2o_p + M_pe180_p --> M_2agpe180_p + M_h_p + M_ocdca_p
 b3821 ; 	% 1976	M_h2o_p + M_pe181_p --> M_2agpe181_p + M_h_p + M_ocdcea_p
 b3821 ; 	% 1977	M_h2o_p + M_pg120_p --> M_2agpg120_p + M_ddca_p + M_h_p
 b3821 ; 	% 1978	M_h2o_p + M_pg140_p --> M_2agpg140_p + M_h_p + M_ttdca_p
 b3821 ; 	% 1979	M_h2o_p + M_pg141_p --> M_2agpg141_p + M_h_p + M_ttdcea_p
 b3821 ; 	% 1980	M_h2o_p + M_pg160_p --> M_2agpg160_p + M_h_p + M_hdca_p
 b3821 ; 	% 1981	M_h2o_p + M_pg161_p --> M_2agpg161_p + M_h_p + M_hdcea_p
 b3821 ; 	% 1982	M_h2o_p + M_pg180_p --> M_2agpg180_p + M_h_p + M_ocdca_p
 b3821 ; 	% 1983	M_h2o_p + M_pg181_p --> M_2agpg181_p + M_h_p + M_ocdcea_p
 b3821 ; 	% 1984	M_h2o_p + M_pa120_p --> M_1ddecg3p_p + M_ddca_p + M_h_p
 b3821 ; 	% 1985	M_h2o_p + M_pa140_p --> M_1tdecg3p_p + M_h_p + M_ttdca_p
 b3821 ; 	% 1986	M_h2o_p + M_pa141_p --> M_1tdec7eg3p_p + M_h_p + M_ttdcea_p
 b3821 ; 	% 1987	M_h2o_p + M_pa160_p --> M_1hdecg3p_p + M_h_p + M_hdca_p
 b3821 ; 	% 1988	M_h2o_p + M_pa161_p --> M_1hdec9eg3p_p + M_h_p + M_hdcea_p
 b3821 ; 	% 1989	M_h2o_p + M_pa180_p --> M_1odecg3p_p + M_h_p + M_ocdca_p
 b3821 ; 	% 1990	M_h2o_p + M_pa181_p --> M_1odec11eg3p_p + M_h_p + M_ocdcea_p
 b3821 ; 	% 1991	M_h2o_p + M_pe120_p --> M_1agpe120_p + M_ddca_p + M_h_p
 b3821 ; 	% 1992	M_h2o_p + M_pe140_p --> M_1agpe140_p + M_h_p + M_ttdca_p
 b3821 ; 	% 1993	M_h2o_p + M_pe141_p --> M_1agpe141_p + M_h_p + M_ttdcea_p
 b3821 ; 	% 1994	M_h2o_p + M_pe160_p --> M_1agpe160_p + M_h_p + M_hdca_p
 b3821 ; 	% 1995	M_h2o_p + M_pe161_p --> M_1agpe161_p + M_h_p + M_hdcea_p
 b3821 ; 	% 1996	M_h2o_p + M_pe180_p --> M_1agpe180_p + M_h_p + M_ocdca_p
 b3821 ; 	% 1997	M_h2o_p + M_pe181_p --> M_1agpe181_p + M_h_p + M_ocdcea_p
 b3821 ; 	% 1998	M_h2o_p + M_pg120_p --> M_1agpg120_p + M_ddca_p + M_h_p
 b3821 ; 	% 1999	M_h2o_p + M_pg140_p --> M_1agpg140_p + M_h_p + M_ttdca_p
 b3821 ; 	% 2000	M_h2o_p + M_pg141_p --> M_1agpg141_p + M_h_p + M_ttdcea_p
 b3821 ; 	% 2001	M_h2o_p + M_pg160_p --> M_1agpg160_p + M_h_p + M_hdca_p
 b3821 ; 	% 2002	M_h2o_p + M_pg161_p --> M_1agpg161_p + M_h_p + M_hdcea_p
 b3821 ; 	% 2003	M_h2o_p + M_pg180_p --> M_1agpg180_p + M_h_p + M_ocdca_p
 b3821 ; 	% 2004	M_h2o_p + M_pg181_p --> M_1agpg181_p + M_h_p + M_ocdcea_p
 b2048 ; 	% 2005	M_man1p_c <--> M_man6p_c
 1 ; 	% 2006	M_5aprbu_c + M_h2o_c --> M_4r5au_c + M_pi_c
 b2103 ; 	% 2007	M_4ampm_c + M_atp_c --> M_2mahmp_c + M_adp_c
 b3974 ; 	% 2008	M_atp_c + M_pnto_R_c --> M_4ppan_c + M_adp_c + M_h_c
 b3258 ; 	% 2009	M_na1_p + M_pnto_R_p --> M_na1_c + M_pnto_R_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2010	M_pnto_R_e <--> M_pnto_R_p
 b0871 ; 	% 2011	M_h2o_c + M_pyr_c + M_q8_c --> M_ac_c + M_co2_c + M_q8h2_c
 ( b4226  ||  b2502  ||  b2744 ) ; 	% 2012	M_h2o_c + M_ppi_c --> M_h_c + M_pi_c
 ( b2744  ||  b2502 ) ; 	% 2013	M_h2o_c + M_pppi_c --> M_h_c + M_pi_c + M_ppi_c
 b3115 ; 	% 2014	M_adp_c + M_ppap_c <--> M_atp_c + M_ppa_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2015	M_ppal_e <--> M_ppal_p
 1 ; 	% 2016	M_ppal_c <--> M_ppal_p
 b1015 ; 	% 2017	M_na1_p + M_ppa_p --> M_na1_c + M_ppa_c
 ( b1377  ||  b0929  ||  b2215  ||  b0241 ) ; 	% 2018	M_ppa_e <--> M_ppa_p
 b0369 ; 	% 2019	M_5aop_c --> M_h_c + M_h2o_c + M_ppbng_c
 b3956 ; 	% 2020	M_co2_c + M_h2o_c + M_pep_c --> M_h_c + M_oaa_c + M_pi_c
 b3639 ; 	% 2021	M_4ppcys_c + M_h_c --> M_co2_c + M_pan4p_c
 b3403 ; 	% 2022	M_atp_c + M_oaa_c --> M_adp_c + M_co2_c + M_pep_c
 b2920 ; 	% 2023	M_ppcoa_c + M_succ_c --> M_ppa_c + M_succoa_c
 b3650 ; 	% 2024	M_h2o_c + M_ppgpp_c --> M_gdp_c + M_ppi_c
 b2501 ; 	% 2025	M_atp_c + M_ppi_c <--> M_adp_c + M_pppi_c
 b2501 ; 	% 2026	M_atp_c + M_pi_c <--> M_adp_c + M_ppi_c
 ( b4383  ||  b3380 ) ; 	% 2027	M_r1p_c <--> M_r5p_c
 b4383 ; 	% 2028	M_2dr1p_c <--> M_2dr5p_c
 b3639 ; 	% 2029	M_4ppan_c + M_ctp_c + M_cys_L_c --> M_4ppcys_c + M_cmp_c + M_h_c + M_ppi_c
 b2600 ; 	% 2030	M_nad_c + M_pphn_c --> M_34hpp_c + M_co2_c + M_nadh_c
 b2599 ; 	% 2031	M_h_c + M_pphn_c --> M_co2_c + M_h2o_c + M_phpyr_c
 b3850 ; 	% 2032	M_o2_c + M_pppg9_c --> M_h2o_c + M_ppp9_c
 b3850 ; 	% 2033	M_fum_c + M_pppg9_c --> M_ppp9_c + M_succ_c
 ( b2538  &&  b2539  &&  b2540  &&  b2542 ) ; 	% 2034	M_h_c + M_nadh_c + M_o2_c + M_pppn_c --> M_cechddd_c + M_nad_c
 b2536 ; 	% 2035	M_h_p + M_pppn_p <--> M_h_c + M_pppn_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2036	M_pppn_e <--> M_pppn_p
 b1702 ; 	% 2037	M_atp_c + M_h2o_c + M_pyr_c --> M_amp_c + M_h_c + M_pep_c + M_pi_c
 b0383 ; 	% 2038	M_h2o_p + M_ppt_p --> M_h2_p + M_pi_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2039	M_ppt_e <--> M_ppt_p
 b4005 ; 	% 2040	M_atp_c + M_gly_c + M_pram_c <--> M_adp_c + M_gar_c + M_h_c + M_pi_c
 b2499 ; 	% 2041	M_atp_c + M_fpram_c --> M_adp_c + M_air_c + M_h_c + M_pi_c
 b1262 ; 	% 2042	M_pran_c --> M_2cpr5p_c
 b2026 ; 	% 2043	M_h2o_c + M_prbamp_c --> M_prfp_c
 b2476 ; 	% 2044	M_5aizc_c + M_asp_L_c + M_atp_c --> M_25aics_c + M_adp_c + M_h_c + M_pi_c
 b2026 ; 	% 2045	M_h2o_c + M_prbatp_c --> M_h_c + M_ppi_c + M_prbamp_c
 b2557 ; 	% 2046	M_atp_c + M_fgam_c + M_gln_L_c + M_h2o_c --> M_adp_c + M_fpram_c + M_glu_L_c + M_h_c + M_pi_c
 b2024 ; 	% 2047	M_prfp_c <--> M_prlp_c
 b1014 ; 	% 2048	M_fad_c + M_pro_L_c --> M_1pyr5c_c + M_fadh2_c + M_h_c
 ( b3544  &&  b3543  &&  b3542  &&  b3541  &&  b3540 ) ; 	% 2049	M_atp_c + M_h2o_c + M_progly_p --> M_adp_c + M_h_c + M_pi_c + M_progly_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2050	M_progly_e <--> M_progly_p
 b0194 ; 	% 2051	M_atp_c + M_pro_L_c + M_trnapro_c --> M_amp_c + M_ppi_c + M_protrna_c
 ( b2677  &&  b2678  &&  b2679 ) ; 	% 2052	M_atp_c + M_h2o_c + M_pro_L_p --> M_adp_c + M_h_c + M_pi_c + M_pro_L_c
 b4111 ; 	% 2053	M_h_p + M_pro_L_p <--> M_h_c + M_pro_L_c
 b1015 ; 	% 2054	M_na1_p + M_pro_L_p --> M_na1_c + M_pro_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2055	M_pro_L_e <--> M_pro_L_p
 b1207 ; 	% 2056	M_atp_c + M_r5p_c <--> M_amp_c + M_h_c + M_prpp_c
 b3370 ; 	% 2057	M_h_p + M_psclys_p --> M_h_c + M_psclys_c
 ( b2215  ||  b1377  ||  b0241  ||  b0929 ) ; 	% 2058	M_psclys_e <--> M_psclys_p
 b0908 ; 	% 2059	M_pep_c + M_skm5p_c <--> M_3psme_c + M_pi_c
 b4160 ; 	% 2060	M_h_c + M_ps120_c --> M_co2_c + M_pe120_c
 b4160 ; 	% 2061	M_h_c + M_ps140_c --> M_co2_c + M_pe140_c
 b4160 ; 	% 2062	M_h_c + M_ps141_c --> M_co2_c + M_pe141_c
 b4160 ; 	% 2063	M_h_c + M_ps160_c --> M_co2_c + M_pe160_c
 b4160 ; 	% 2064	M_h_c + M_ps161_c --> M_co2_c + M_pe161_c
 b4160 ; 	% 2065	M_h_c + M_ps180_c --> M_co2_c + M_pe180_c
 b4160 ; 	% 2066	M_h_c + M_ps181_c --> M_co2_c + M_pe181_c
 b0907 ; 	% 2067	M_3php_c + M_glu_L_c --> M_akg_c + M_pser_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2068	M_pser_L_e <--> M_pser_L_p
 b4388 ; 	% 2069	M_h2o_c + M_pser_L_c --> M_pi_c + M_ser_L_c
 b4055 ; 	% 2070	M_h2o_p + M_pser_L_p --> M_pi_p + M_ser_L_p
 b2585 ; 	% 2071	M_cdpdddecg_c + M_ser_L_c --> M_cmp_c + M_h_c + M_ps120_c
 b2585 ; 	% 2072	M_cdpdtdecg_c + M_ser_L_c --> M_cmp_c + M_h_c + M_ps140_c
 b2585 ; 	% 2073	M_cdpdtdec7eg_c + M_ser_L_c --> M_cmp_c + M_h_c + M_ps141_c
 b2585 ; 	% 2074	M_cdpdhdecg_c + M_ser_L_c --> M_cmp_c + M_h_c + M_ps160_c
 b2585 ; 	% 2075	M_cdpdhdec9eg_c + M_ser_L_c --> M_cmp_c + M_h_c + M_ps161_c
 b2585 ; 	% 2076	M_cdpdodecg_c + M_ser_L_c --> M_cmp_c + M_h_c + M_ps180_c
 b2585 ; 	% 2077	M_cdpdodec11eg_c + M_ser_L_c --> M_cmp_c + M_h_c + M_ps181_c
 b2297 ; 	% 2078	M_pi_c + M_ppcoa_c --> M_coa_c + M_ppap_c
 ( b2297  ||  b2458 ) ; 	% 2079	M_accoa_c + M_pi_c <--> M_actp_c + M_coa_c
 b4055 ; 	% 2080	M_h2o_p + M_thrp_p --> M_pi_p + M_thr_L_p
 b3634 ; 	% 2081	M_atp_c + M_h_c + M_pan4p_c --> M_dpcoa_c + M_ppi_c
 b0692 ; 	% 2082	M_orn_c + M_ptrc_p <--> M_ptrc_c + M_orn_p
 b3073 ; 	% 2083	M_akg_c + M_ptrc_c --> M_4abutn_c + M_glu_L_c
 ( ( b1440  &&  b1441  &&  b1442  &&  b1443 )  ||  ( b0854  &&  b0855  &&  b0856  &&  b0857 )  ||  ( b1126  &&  b1125  &&  b1124  &&  b1123 ) ) ; 	% 2084	M_atp_c + M_h2o_c + M_ptrc_p --> M_adp_c + M_h_c + M_pi_c + M_ptrc_c
 ( b1296  ||  b0692 ) ; 	% 2085	M_h_p + M_ptrc_p --> M_h_c + M_ptrc_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2086	M_ptrc_e <--> M_ptrc_p
 b4384 ; 	% 2087	M_adn_c + M_pi_c <--> M_ade_c + M_r1p_c
 b4384 ; 	% 2088	M_dad_2_c + M_pi_c <--> M_2dr1p_c + M_ade_c
 ( b2407  ||  b4384 ) ; 	% 2089	M_gsn_c + M_pi_c <--> M_gua_c + M_r1p_c
 ( b2407  ||  b4384 ) ; 	% 2090	M_dgsn_c + M_pi_c <--> M_2dr1p_c + M_gua_c
 ( b2407  ||  b4384 ) ; 	% 2091	M_ins_c + M_pi_c <--> M_hxan_c + M_r1p_c
 ( b2407  ||  b4384 ) ; 	% 2092	M_din_c + M_pi_c <--> M_2dr1p_c + M_hxan_c
 b2407 ; 	% 2093	M_pi_c + M_xtsn_c <--> M_r1p_c + M_xan_c
 b1638 ; 	% 2094	M_h2o_c + M_o2_c + M_pyam5p_c --> M_h2o2_c + M_nh4_c + M_pydx5p_c
 b2418 ; 	% 2095	M_atp_c + M_pydam_c --> M_adp_c + M_h_c + M_pyam5p_c
 ( b2418  ||  b1636 ) ; 	% 2096	M_atp_c + M_pydx_c --> M_adp_c + M_h_c + M_pydx5p_c
 b2418 ; 	% 2097	M_atp_c + M_pydxn_c --> M_adp_c + M_h_c + M_pdx5p_c
 1 ; 	% 2098	M_h2o_c + M_pydx5p_c --> M_pi_c + M_pydx_c
 ( b1854  ||  b1676 ) ; 	% 2099	M_adp_c + M_h_c + M_pep_c --> M_atp_c + M_pyr_c
 b3831 ; 	% 2100	M_pi_c + M_uri_c <--> M_r1p_c + M_ura_c
 1 ; 	% 2101	M_h_p + M_pyr_p <--> M_h_c + M_pyr_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2102	M_pyr_e <--> M_pyr_p
 b3029 ; 	% 2103	M_o2_c + M_q8h2_c --> M_h_c + M_o2s_c + M_q8_c
 b3029 ; 	% 2104	M_mql8_c + M_o2_c --> M_h_c + M_mqn8_c + M_o2s_c
 b0750 ; 	% 2105	M_dhap_c + M_iasp_c --> M_h2o_c + M_pi_c + M_quln_c
 b4094 ; 	% 2106	M_atp_c + M_r15bp_c --> M_adp_c + M_prpp_c
 1 ; 	% 2107	M_atp_c + M_r1p_c --> M_adp_c + M_h_c + M_r15bp_c
 b0822 ; 	% 2108	M_h2o_c + M_r5p_c --> M_pi_c + M_rib_D_c
 b4055 ; 	% 2109	M_h2o_p + M_r5p_p --> M_pi_p + M_rib_D_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2110	M_r5p_e <--> M_r5p_p
 b0025 ; 	% 2111	M_atp_c + M_ribflv_c --> M_adp_c + M_fmn_c + M_h_c
 b1662 ; 	% 2112	M_4r5au_c + M_db4p_c --> M_dmlz_c + M_h2o_c + M_pi_c
 b0415 ; 	% 2113	M_dmlz_c --> M_4r5au_c + M_ribflv_c
 b3752 ; 	% 2114	M_atp_c + M_rib_D_c --> M_adp_c + M_h_c + M_r5p_c
 b0063 ; 	% 2115	M_atp_c + M_rbl_L_c --> M_adp_c + M_h_c + M_ru5p_L_c
 ( b0061  ||  b4198  ||  b3583 ) ; 	% 2116	M_ru5p_L_c <--> M_xu5p_D_c
 b3629 ; 	% 2117	M_dtdprmn_c + M_kphphhlipa_c --> M_dtdp_c + M_h_c + M_icolipa_c
 b2687 ; 	% 2118	M_rhcys_c --> M_dhptd_c + M_hcys_L_c
 ( ( b4231  &&  b4227  &&  b4485  &&  b4230 )  ||  ( b3749  &&  b3751  &&  b3750  &&  b3748 )  ||  ( b4087  &&  b4088  &&  b4086 ) ) ; 	% 2119	M_atp_c + M_h2o_c + M_rib_D_p --> M_adp_c + M_h_c + M_pi_c + M_rib_D_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2120	M_rib_D_e <--> M_rib_D_p
 b3903 ; 	% 2121	M_rmn_c <--> M_rml_c
 b3904 ; 	% 2122	M_atp_c + M_rml_c --> M_adp_c + M_h_c + M_rml1p_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2123	M_rmn_e <--> M_rmn_p
 b3907 ; 	% 2124	M_h_p + M_rmn_p --> M_h_c + M_rmn_c
 b3902 ; 	% 2125	M_rml1p_c <--> M_dhap_c + M_lald_L_c
 ( ( ( b2234  &&  b2235 )  &&  b3781 )  ||  ( ( b2234  &&  b2235 )  &&  b2582 ) ) ; 	% 2126	M_adp_c + M_trdrd_c --> M_dadp_c + M_h2o_c + M_trdox_c
 ( ( b1654  &&  ( b2675  &&  b2676 ) )  ||  ( b0849  &&  ( b2675  &&  b2676 ) )  ||  ( b1064  &&  ( b2675  &&  b2676 ) )  ||  ( b3610  &&  ( b2675  &&  b2676 ) ) ) ; 	% 2127	M_adp_c + M_grxrd_c --> M_dadp_c + M_grxox_c + M_h2o_c
 ( ( ( b2234  &&  b2235 )  &&  b2582 )  ||  ( ( b2234  &&  b2235 )  &&  b3781 ) ) ; 	% 2128	M_gdp_c + M_trdrd_c --> M_dgdp_c + M_h2o_c + M_trdox_c
 ( ( b3610  &&  ( b2675  &&  b2676 ) )  ||  ( b1064  &&  ( b2675  &&  b2676 ) )  ||  ( b1654  &&  ( b2675  &&  b2676 ) )  ||  ( b0849  &&  ( b2675  &&  b2676 ) ) ) ; 	% 2129	M_gdp_c + M_grxrd_c --> M_dgdp_c + M_grxox_c + M_h2o_c
 ( ( ( b2234  &&  b2235 )  &&  b2582 )  ||  ( ( b2234  &&  b2235 )  &&  b3781 ) ) ; 	% 2130	M_cdp_c + M_trdrd_c --> M_dcdp_c + M_h2o_c + M_trdox_c
 ( ( b1654  &&  ( b2675  &&  b2676 ) )  ||  ( b1064  &&  ( b2675  &&  b2676 ) )  ||  ( b0849  &&  ( b2675  &&  b2676 ) )  ||  ( b3610  &&  ( b2675  &&  b2676 ) ) ) ; 	% 2131	M_cdp_c + M_grxrd_c --> M_dcdp_c + M_grxox_c + M_h2o_c
 ( ( ( b2234  &&  b2235 )  &&  b2582 )  ||  ( ( b2234  &&  b2235 )  &&  b3781 ) ) ; 	% 2132	M_trdrd_c + M_udp_c --> M_dudp_c + M_h2o_c + M_trdox_c
 ( ( b1064  &&  ( b2675  &&  b2676 ) )  ||  ( b3610  &&  ( b2675  &&  b2676 ) )  ||  ( b1654  &&  ( b2675  &&  b2676 ) )  ||  ( b0849  &&  ( b2675  &&  b2676 ) ) ) ; 	% 2133	M_grxrd_c + M_udp_c --> M_dudp_c + M_grxox_c + M_h2o_c
 ( ( b2895  &&  b3924  &&  b4238  &&  b4237 )  ||  ( b2895  &&  b4238 )  ||  ( b0684  &&  b4238 )  ||  ( b0684  &&  b3924  &&  b4238  &&  b4237 ) ) ; 	% 2134	M_atp_c + M_fldrd_c --> M_datp_c + M_fldox_c + M_h2o_c
 ( ( b0684  &&  b4238 )  ||  ( b2895  &&  b4238 )  ||  ( b2895  &&  b3924  &&  b4238  &&  b4237 )  ||  ( b0684  &&  b3924  &&  b4238  &&  b4237 ) ) ; 	% 2135	M_fldrd_c + M_gtp_c --> M_dgtp_c + M_fldox_c + M_h2o_c
 ( ( b2895  &&  b4238 )  ||  ( b0684  &&  b3924  &&  b4238  &&  b4237 )  ||  ( b0684  &&  b4238 )  ||  ( b2895  &&  b3924  &&  b4238  &&  b4237 ) ) ; 	% 2136	M_ctp_c + M_fldrd_c --> M_dctp_c + M_fldox_c + M_h2o_c
 ( ( b0684  &&  b3924  &&  b4238  &&  b4237 )  ||  ( b2895  &&  b4238 )  ||  ( b0684  &&  b4238 )  ||  ( b2895  &&  b3924  &&  b4238  &&  b4237 ) ) ; 	% 2137	M_fldrd_c + M_utp_c --> M_dutp_c + M_fldox_c + M_h2o_c
 ( b3386  ||  b4301 ) ; 	% 2138	M_ru5p_D_c <--> M_xu5p_D_c
 ( b2914  ||  b4090 ) ; 	% 2139	M_r5p_c <--> M_ru5p_D_c
 b0638 ; 	% 2140	M_5prdmbz_c + M_h2o_c --> M_pi_c + M_rdmbzi_c
 b0222 ; 	% 2141	M_s7p_c --> M_gmhep7p_c
 b1745 ; 	% 2142	M_h_c + M_h2o_c + M_sucarg_c --> M_co2_c + M_nh4_c + M_sucorn_c
 ( b2751  &&  b2752 ) ; 	% 2143	M_atp_c + M_gtp_c + M_h2o_c + M_so4_c --> M_aps_c + M_gdp_c + M_pi_c + M_ppi_c
 b1059 ; 	% 2144	M_h2o_c + M_o2_c + M_sarcs_c --> M_fald_c + M_gly_c + M_h2o2_c
 b2705 ; 	% 2145	M_nad_c + M_sbt6p_c <--> M_f6p_c + M_h_c + M_nadh_c
 ( b2415  &&  b2416  &&  b2702  &&  b2704  &&  b2703 ) ; 	% 2146	M_pep_c + M_sbt_D_p --> M_pyr_c + M_sbt6p_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2147	M_sbt_D_e <--> M_sbt_D_p
 b2472 ; 	% 2148	M_h2o_c + M_sl26da_c --> M_26dap_LL_c + M_succ_c
 b3359 ; 	% 2149	M_akg_c + M_sl26da_c <--> M_glu_L_c + M_sl2a6o_c
 b3591 ; 	% 2150	M_selnp_c + M_sertrna_sec__c --> M_h_c + M_pi_c + M_sectrna_c
 b1764 ; 	% 2151	M_atp_c + M_h2o_c + M_seln_c --> M_amp_c + M_pi_c + M_selnp_c
 b0586 ; 	% 2152	M_atp_c + M_h_c + M_ser_L_c <--> M_ppi_c + M_seramp_c
 b3607 ; 	% 2153	M_accoa_c + M_ser_L_c <--> M_acser_c + M_coa_c
 b2366 ; 	% 2154	M_ser_D_c --> M_nh4_c + M_pyr_c
 ( b4471  ||  b1814  ||  b2797  ||  b3708 ) ; 	% 2155	M_ser_L_c --> M_nh4_c + M_pyr_c
 b0893 ; 	% 2156	M_atp_c + M_ser_L_c + M_trnaser_c --> M_amp_c + M_ppi_c + M_sertrna_c
 b0893 ; 	% 2157	M_atp_c + M_ser_L_c + M_trnasecys_c --> M_amp_c + M_ppi_c + M_sertrna_sec__c
 ( b2796  ||  b3116 ) ; 	% 2158	M_h_p + M_ser_L_p <--> M_h_c + M_ser_L_c
 b3089 ; 	% 2159	M_na1_p + M_ser_L_p --> M_na1_c + M_ser_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2160	M_ser_L_e <--> M_ser_L_p
 ( b0355  ||  b2154 ) ; 	% 2161	M_Sfglutth_c + M_h2o_c --> M_for_c + M_gthrd_c + M_h_c
 b1744 ; 	% 2162	M_h2o_c + M_sucglu_c --> M_glu_L_c + M_succ_c
 b1746 ; 	% 2163	M_h2o_c + M_nad_c + M_sucgsa_c --> M_h_c + M_nadh_c + M_sucglu_c
 b2264 ; 	% 2164	M_ichor_c + M_ssaltpp_c --> M_2shchc_c + M_pyr_c + M_thmpp_c
 b3368 ; 	% 2165	M_dscl_c + M_nad_c --> M_h_c + M_nadh_c + M_scl_c
 b3368 ; 	% 2166	M_fe2_c + M_scl_c --> M_h_c + M_sheme_c
 ( b1692  ||  b3281 ) ; 	% 2167	M_3dhsk_c + M_h_c + M_nadph_c <--> M_nadp_c + M_skm_c
 ( b3390  ||  b0388 ) ; 	% 2168	M_atp_c + M_skm_c --> M_adp_c + M_h_c + M_skm5p_c
 b3939 ; 	% 2169	M_cys_L_c + M_suchms_c --> M_cyst_L_c + M_h_c + M_succ_c
 b1981 ; 	% 2170	M_h_p + M_skm_p --> M_h_c + M_skm_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2171	M_skm_e <--> M_skm_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2172	M_so2_e <--> M_so2_p
 1 ; 	% 2173	M_so2_p <--> M_so2_c
 ( b1377  ||  b2215  ||  b0241  ||  b0929 ) ; 	% 2174	M_so3_e <--> M_so3_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2175	M_so4_e <--> M_so4_p
 b1748 ; 	% 2176	M_akg_c + M_sucorn_c --> M_glu_L_c + M_sucgsa_c
 b1584 ; 	% 2177	M_accoa_c + M_spmd_c --> M_N1aspmd_c + M_coa_c + M_h_c
 b1584 ; 	% 2178	M_accoa_c + M_spmd_c --> M_coa_c + M_h_c + M_n8aspmd_c
 ( ( b1126  &&  b1125  &&  b1124  &&  b1123 )  ||  ( b1440  &&  b1441  &&  b1442  &&  b1443 ) ) ; 	% 2179	M_atp_c + M_h2o_c + M_spmd_p --> M_adp_c + M_h_c + M_pi_c + M_spmd_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2180	M_spmd_e <--> M_spmd_p
 b0121 ; 	% 2181	M_ametam_c + M_ptrc_c --> M_5mta_c + M_h_c + M_spmd_c
 ( b3908  ||  b1656 ) ; 	% 2182	M_h_c + M_o2s_c --> M_h2o2_c + M_o2_c
 b1646 ; 	% 2183	M_h_p + M_o2s_p --> M_h2o2_p + M_o2_p
 1 ; 	% 2184	M_h2o_c + M_nad_c + M_sucsal_c --> M_h_c + M_nadh_c + M_succ_c
 b2661 ; 	% 2185	M_h2o_c + M_nadp_c + M_sucsal_c --> M_h_c + M_nadph_c + M_succ_c
 b2260 ; 	% 2186	M_atp_c + M_coa_c + M_sucbz_c --> M_amp_c + M_ppi_c + M_sbzcoa_c
 b2261 ; 	% 2187	M_2shchc_c --> M_h2o_c + M_sucbz_c
 b3528 ; 	% 2188	M_h_p + M_succ_p --> M_h_c + M_succ_c
 ( b4123  ||  b4138 ) ; 	% 2189	M_h_p + M_succ_p --> M_h_c + M_succ_c
 1 ; 	% 2190	M_succ_c + M_h_p --> M_h_c + M_succ_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2191	M_succ_e <--> M_succ_p
 ( b0721  &&  b0722  &&  b0723  &&  b0724 ) ; 	% 2192	M_q8_c + M_succ_c --> M_fum_c + M_q8h2_c
 ( b4123  ||  b0621  ||  b4138 ) ; 	% 2193	M_succ_c + M_fum_p <--> M_fum_c + M_succ_p
 ( b0728  &&  b0729 ) ; 	% 2194	M_atp_c + M_coa_c + M_succ_c <--> M_adp_c + M_pi_c + M_succoa_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2195	M_sucr_e <--> M_sucr_p
 ( b2417  &&  b2429  &&  b2415  &&  b2416 ) ; 	% 2196	M_pep_c + M_sucr_p --> M_pyr_c + M_suc6p_c
 ( b0936  &&  b0933  &&  b0934 ) ; 	% 2197	M_atp_c + M_h2o_c + M_sulfac_p --> M_adp_c + M_h_c + M_pi_c + M_sulfac_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2198	M_sulfac_e <--> M_sulfac_p
 ( b2763  &&  b2764 ) ; 	% 2199	M_h_c + M_nadph_c + M_so3_c --> M_h2o_c + M_h2s_c + M_nadp_c
 ( ( b2422  &&  b2424  &&  b2423  &&  b3917 )  ||  ( b0763  &&  b0764  &&  b0765 )  ||  ( b2422  &&  b2425  &&  b2424  &&  b2423 ) ) ; 	% 2200	M_atp_c + M_h2o_c + M_so4_p --> M_adp_c + M_h_c + M_pi_c + M_so4_c
 b0954 ; 	% 2201	M_tdec2eACP_c <--> M_cdec3eACP_c
 b1521 ; 	% 2202	M_altrn_c + M_nad_c <--> M_h_c + M_nadh_c + M_tagur_c
 ( b2464  ||  b0008 ) ; 	% 2203	M_g3p_c + M_s7p_c <--> M_e4p_c + M_f6p_c
 ( b3061  &&  b3062 ) ; 	% 2204	M_tartr_L_c --> M_h2o_c + M_oaa_c
 b3063 ; 	% 2205	M_succ_c + M_tartr_L_p <--> M_tartr_L_c + M_succ_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2206	M_tartr_L_e <--> M_tartr_L_p
 b0368 ; 	% 2207	M_akg_c + M_o2_c + M_taur_c --> M_aacald_c + M_co2_c + M_h_c + M_so3_c + M_succ_c
 ( b0365  &&  b0366  &&  b0367 ) ; 	% 2208	M_atp_c + M_h2o_c + M_taur_p --> M_adp_c + M_h_c + M_pi_c + M_taur_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2209	M_taur_e <--> M_taur_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2210	M_tcynt_e <--> M_tcynt_p
 b3846 ; 	% 2211	M_tdecoa_c --> M_td2coa_c
 b1134 ; 	% 2212	M_h2o_c + M_thmpp_c --> M_h_c + M_pi_c + M_thmmp_c
 b3790 ; 	% 2213	M_accoa_c + M_dtdp4addg_c --> M_coa_c + M_dtdp4aaddg_c + M_h_c
 b3791 ; 	% 2214	M_dtdp4d6dg_c + M_glu_L_c --> M_akg_c + M_dtdp4addg_c
 b2038 ; 	% 2215	M_dtdp4d6dg_c --> M_dtdp4d6dm_c
 b2040 ; 	% 2216	M_dtdp4d6dm_c + M_h_c + M_nadph_c --> M_dtdprmn_c + M_nadp_c
 ( b2041  ||  b3788 ) ; 	% 2217	M_dtdpglu_c --> M_dtdp4d6dg_c + M_h2o_c
 b0915 ; 	% 2218	M_atp_c + M_lipidAds_c --> M_adp_c + M_h_c + M_lipidA_c
 ( b2893  &&  b4136 ) ; 	% 2219	M_dsbdrd_c + M_dsbcox_p --> M_dsbdox_c + M_dsbcrd_p
 ( b4136  &&  b0604 ) ; 	% 2220	M_dsbdrd_c + M_dsbgox_p --> M_dsbdox_c + M_dsbgrd_p
 ( ( b3132  &&  b3137 )  ||  ( b2095  &&  b2096 ) ) ; 	% 2221	M_tagdp_D_c <--> M_dhap_c + M_g3p_c
 ( b1602  &&  b1603 ) ; 	% 2222	M_nadh_c + M_nadp_c + M_h_p --> M_h_c + M_nad_c + M_nadph_c
 b0166 ; 	% 2223	M_h2o_c + M_succoa_c + M_thdp_c --> M_coa_c + M_sl2a6o_c
 ( ( b2480  &&  b2582 )  ||  ( b2480  &&  b3781 ) ) ; 	% 2224	M_h2o2_c + M_trdrd_c --> M_h2o_c + M_trdox_c
 ( b2964  ||  b2393 ) ; 	% 2225	M_h_p + M_thymd_p --> M_h_c + M_thymd_c
 b2406 ; 	% 2226	M_h_p + M_thymd_p <--> M_h_c + M_thymd_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2227	M_thymd_e <--> M_thymd_p
 ( b0068  &&  b0067  &&  b0066 ) ; 	% 2228	M_atp_c + M_h2o_c + M_thm_p --> M_adp_c + M_h_c + M_pi_c + M_thm_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2229	M_thm_e <--> M_thm_p
 ( b2551  ||  b0870 ) ; 	% 2230	M_athr_L_c --> M_acald_c + M_gly_c
 ( b2551  ||  b0870 ) ; 	% 2231	M_thr_L_c --> M_acald_c + M_gly_c
 b3616 ; 	% 2232	M_nad_c + M_thr_L_c --> M_2aobut_c + M_h_c + M_nadh_c
 ( b3117  ||  b1814  ||  b2797  ||  b3772 ) ; 	% 2233	M_thr_L_c --> M_2obut_c + M_nh4_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2234	M_thrp_e <--> M_thrp_p
 b0004 ; 	% 2235	M_h2o_c + M_phom_c --> M_pi_c + M_thr_L_c
 b1719 ; 	% 2236	M_atp_c + M_thr_L_c + M_trnathr_c --> M_amp_c + M_ppi_c + M_thrtrna_c
 ( b3454  &&  b3455  &&  b3457  &&  b3460  &&  b3456 ) ; 	% 2237	M_atp_c + M_h2o_c + M_thr_L_p --> M_adp_c + M_h_c + M_pi_c + M_thr_L_c
 ( b0813  ||  b3823 ) ; 	% 2238	M_thr_L_c + M_h_p --> M_h_c + M_thr_L_p
 b3116 ; 	% 2239	M_h_p + M_thr_L_p <--> M_h_c + M_thr_L_c
 b3089 ; 	% 2240	M_na1_p + M_thr_L_p --> M_na1_c + M_thr_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2241	M_thr_L_e <--> M_thr_L_p
 1 ; 	% 2242	M_thym_c + M_h_p --> M_h_c + M_thym_p
 ( b1377  ||  b2215  ||  b0241  ||  b0929 ) ; 	% 2243	M_thym_e <--> M_thym_p
 ( b2530  &&  b3992  &&  ( b3990  &&  b3991 )  &&  b0423  &&  b4407 ) ; 	% 2244	M_atp_c + M_cys_L_c + M_dxyl5p_c + M_tyr_L_c --> M_4hba_c + M_4mpetz_c + M_ala_L_c + M_amp_c + M_co2_c + M_h_c + M_h2o_c + M_ppi_c
 ( b2935  ||  b2465 ) ; 	% 2245	M_r5p_c + M_xu5p_D_c <--> M_g3p_c + M_s7p_c
 ( b2935  ||  b2465 ) ; 	% 2246	M_e4p_c + M_xu5p_D_c <--> M_f6p_c + M_g3p_c
 ( ( b1587  &&  b1588  &&  b1589  &&  b1590 )  ||  ( b0894  &&  b0895  &&  b0896 ) ) ; 	% 2247	M_h_c + M_mql8_c + M_tmao_c --> M_h2o_c + M_mqn8_c + M_tma_c
 ( ( b1872  &&  b1873 )  ||  ( b0996  &&  b0997 ) ) ; 	% 2248	M_mql8_c + M_h_p + M_tmao_p --> M_mqn8_c + M_h2o_p + M_tma_p
 ( b0894  &&  b0895  &&  b0896 ) ; 	% 2249	M_2dmmql8_c + M_h_c + M_tmao_c --> M_2dmmq8_c + M_h2o_c + M_tma_c
 ( ( b1872  &&  b1873 )  ||  ( b0996  &&  b0997 ) ) ; 	% 2250	M_2dmmql8_c + M_h_p + M_tmao_p --> M_2dmmq8_c + M_h2o_p + M_tma_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2251	M_tmao_e <--> M_tmao_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2252	M_tma_e <--> M_tma_p
 b1238 ; 	% 2253	M_atp_c + M_thymd_c --> M_adp_c + M_dtmp_c + M_h_c
 b4382 ; 	% 2254	M_pi_c + M_thymd_c <--> M_2dr1p_c + M_thym_c
 b2827 ; 	% 2255	M_dump_c + M_mlthf_c --> M_dhf_c + M_dtmp_c
 b1106 ; 	% 2256	M_atp_c + M_thm_c --> M_adp_c + M_h_c + M_thmmp_c
 b0417 ; 	% 2257	M_atp_c + M_thmmp_c --> M_adp_c + M_thmpp_c
 b3993 ; 	% 2258	M_2mahmp_c + M_4mpetz_c + M_h_c --> M_ppi_c + M_thmmp_c
 b3919 ; 	% 2259	M_dhap_c <--> M_g3p_c
 b0613 ; 	% 2260	M_atp_c + M_dpcoa_c --> M_2tpr3dpcoa_c + M_ade_c
 ( ( b3781  &&  ( b0888  &&  b0888 ) )  ||  b2582 ) ; 	% 2261	M_h_c + M_nadph_c + M_trdox_c --> M_nadp_c + M_trdrd_c
 b4239 ; 	% 2262	M_h2o_c + M_tre6p_c --> M_g6p_c + M_glc_D_c
 b1897 ; 	% 2263	M_h2o_c + M_tre6p_c --> M_pi_c + M_tre_c
 b1896 ; 	% 2264	M_g6p_c + M_udpg_c --> M_h_c + M_tre6p_c + M_udp_c
 b3519 ; 	% 2265	M_h2o_c + M_tre_c --> M_glc_D_c
 b1197 ; 	% 2266	M_h2o_p + M_tre_p --> M_glc_D_p
 ( b2417  &&  b2415  &&  b2416  &&  b4240 ) ; 	% 2267	M_pep_c + M_tre_p --> M_pyr_c + M_tre6p_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2268	M_tre_e <--> M_tre_p
 b3708 ; 	% 2269	M_h2o_c + M_trp_L_c <--> M_indole_c + M_nh4_c + M_pyr_c
 ( b1260  &&  b1261 ) ; 	% 2270	M_3ig3p_c + M_ser_L_c --> M_g3p_c + M_h2o_c + M_trp_L_c
 ( b1260  &&  b1261 ) ; 	% 2271	M_indole_c + M_ser_L_c --> M_h2o_c + M_trp_L_c
 ( b1260  &&  b1261 ) ; 	% 2272	M_3ig3p_c --> M_g3p_c + M_indole_c
 b3384 ; 	% 2273	M_atp_c + M_trnatrp_c + M_trp_L_c --> M_amp_c + M_ppi_c + M_trptrna_c
 ( b0112  ||  b3161  ||  b3709 ) ; 	% 2274	M_h_p + M_trp_L_p <--> M_h_c + M_trp_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2275	M_trp_L_e <--> M_trp_L_p
 ( b0509  ||  b3125 ) ; 	% 2276	M_2h3oppan_c + M_h_c + M_nadh_c <--> M_glyc_R_c + M_nad_c
 ( ( b2422  &&  b2425  &&  b2424  &&  b2423 )  ||  ( b2422  &&  b2424  &&  b2423  &&  b3917 ) ) ; 	% 2277	M_atp_c + M_h2o_c + M_tsul_p --> M_adp_c + M_h_c + M_pi_c + M_tsul_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2278	M_tsul_e <--> M_tsul_p
 b2344 ; 	% 2279	M_ttdca_e --> M_ttdca_p
 b2344 ; 	% 2280	M_ttdcea_e --> M_ttdcea_p
 ( b0763  &&  b0764  &&  b0765 ) ; 	% 2281	M_atp_c + M_h2o_c + M_tungs_p --> M_adp_c + M_h_c + M_pi_c + M_tungs_c
 ( b2215  ||  b1377  ||  b0241  ||  b0929 ) ; 	% 2282	M_tungs_e <--> M_tungs_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2283	M_tym_e <--> M_tym_p
 b1386 ; 	% 2284	M_h2o_p + M_o2_p + M_tym_p --> M_4hoxpacd_p + M_h2o2_p + M_nh4_p
 b4055 ; 	% 2285	M_h2o_p + M_tyrp_p --> M_pi_p + M_tyr_L_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2286	M_tyrp_e <--> M_tyrp_p
 ( b4054  ||  b0928 ) ; 	% 2287	M_akg_c + M_tyr_L_c <--> M_34hpp_c + M_glu_L_c
 b1637 ; 	% 2288	M_atp_c + M_trnatyr_c + M_tyr_L_c --> M_amp_c + M_ppi_c + M_tyrtrna_c
 ( b1907  ||  b0112  ||  b0576 ) ; 	% 2289	M_h_p + M_tyr_L_p <--> M_h_c + M_tyr_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2290	M_tyr_L_e <--> M_tyr_L_p
 b0179 ; 	% 2291	M_3hmrsACP_c + M_u3hga_c --> M_ACP_c + M_h_c + M_u23ga_c
 b0085 ; 	% 2292	M_26dap_M_c + M_atp_c + M_uamag_c --> M_adp_c + M_h_c + M_pi_c + M_ugmd_c
 b0480 ; 	% 2293	M_h2o_p + M_udpacgal_p --> M_acgal1p_p + M_h_p + M_ump_p
 b0480 ; 	% 2294	M_h2o_p + M_uacgam_p --> M_acgam1p_p + M_h_p + M_ump_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2295	M_uacgam_e <--> M_uacgam_p
 b3787 ; 	% 2296	M_h2o_c + M_nad_c + M_uacmam_c --> M_h_c + M_nadh_c + M_uacmamu_c
 b3786 ; 	% 2297	M_uacgam_c <--> M_uacmam_c
 ( b1094  &&  b0181 ) ; 	% 2298	M_3hmrsACP_c + M_uacgam_c <--> M_ACP_c + M_u3aga_c
 b3189 ; 	% 2299	M_pep_c + M_uacgam_c --> M_pi_c + M_uaccg_c
 b3730 ; 	% 2300	M_acgam1p_c + M_h_c + M_utp_c --> M_ppi_c + M_uacgam_c
 b0090 ; 	% 2301	M_uacgam_c + M_uagmda_c --> M_h_c + M_uaagmda_c + M_udp_c
 b0088 ; 	% 2302	M_atp_c + M_glu_D_c + M_uama_c --> M_adp_c + M_h_c + M_pi_c + M_uamag_c
 b0091 ; 	% 2303	M_ala_L_c + M_atp_c + M_uamr_c --> M_adp_c + M_h_c + M_pi_c + M_uama_c
 b3972 ; 	% 2304	M_h_c + M_nadph_c + M_uaccg_c --> M_nadp_c + M_uamr_c
 ( b1278  ||  b0841  ||  b3057 ) ; 	% 2305	M_h2o_c + M_udcpdp_c --> M_h_c + M_pi_c + M_udcpp_c
 b0174 ; 	% 2306	M_frdp_c + M_ipdp_c --> M_ppi_c + M_udcpdp_c
 ( b0841  ||  b1278  ||  b3057 ) ; 	% 2307	M_h2o_p + M_udcpdp_p --> M_h_p + M_pi_p + M_udcpp_p
 1 ; 	% 2308	M_udcpp_p --> M_udcpp_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2309	M_udpacgal_e <--> M_udpacgal_p
 b0759 ; 	% 2310	M_udpg_c <--> M_udpgal_c
 b2036 ; 	% 2311	M_udpgal_c --> M_udpgalfur_c
 b0480 ; 	% 2312	M_h2o_p + M_udpgal_p --> M_gal1p_p + M_h_p + M_ump_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2313	M_udpgal_e <--> M_udpgal_p
 b2028 ; 	% 2314	M_h2o_c + M_nad_c + M_udpg_c --> M_h_c + M_nadh_c + M_udpglcur_c
 b2255 ; 	% 2315	M_nad_c + M_udpglcur_c --> M_co2_c + M_nadh_c + M_udpLa4o_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2316	M_udpglcur_e <--> M_udpglcur_p
 b0480 ; 	% 2317	M_h2o_p + M_udpg_p --> M_g1p_p + M_h_p + M_ump_p
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2318	M_udpg_e <--> M_udpg_p
 b2253 ; 	% 2319	M_glu_L_c + M_udpLa4o_c <--> M_akg_c + M_udpLa4n_c
 b0480 ; 	% 2320	M_h2o_p + M_udpglcur_p --> M_glcur1p_p + M_h_p + M_ump_p
 b0758 ; 	% 2321	M_gal1p_c + M_udpg_c <--> M_g1p_c + M_udpgal_c
 b0505 ; 	% 2322	M_h_c + M_h2o_c + M_urdglyc_c --> M_co2_c + M_glx_c + M_nh4_c
 b0086 ; 	% 2323	M_alaala_c + M_atp_c + M_ugmd_c --> M_adp_c + M_h_c + M_pi_c + M_ugmda_c
 b0096 ; 	% 2324	M_h2o_c + M_u3aga_c --> M_ac_c + M_u3hga_c
 b2255 ; 	% 2325	M_10fthf_c + M_udpLa4n_c --> M_h_c + M_thf_c + M_udpLa4fn_c
 1 ; 	% 2326	M_uLa4n_c --> M_uLa4n_p
 b4233 ; 	% 2327	M_LalaDgluMdap_c + M_atp_c + M_uamr_c --> M_adp_c + M_h_c + M_pi_c + M_ugmd_c
 b1192 ; 	% 2328	M_h2o_c + M_um4p_c --> M_ala_D_c + M_ugmd_c
 b4233 ; 	% 2329	M_LalaDgluMdapDala_c + M_atp_c + M_uamr_c --> M_adp_c + M_h_c + M_pi_c + M_um4p_c
 ( b0910  ||  b0171 ) ; 	% 2330	M_atp_c + M_ump_c <--> M_adp_c + M_udp_c
 ( b0929  ||  b1377  ||  b2215  ||  b0241 ) ; 	% 2331	M_ump_e <--> M_ump_p
 1 ; 	% 2332	M_2kmb_c + M_glu_L_c --> M_akg_c + M_met_L_c
 1 ; 	% 2333	M_h2o_c + M_uLa4fn_c --> M_for_c + M_uLa4n_c
 b2254 ; 	% 2334	M_udcpp_c + M_udpLa4fn_c --> M_uLa4fn_c + M_udp_c
 ( b3803  ||  b3368 ) ; 	% 2335	M_amet_c + M_uppg3_c --> M_ahcys_c + M_dscl_c + M_h_c
 b3804 ; 	% 2336	M_hmbil_c --> M_h2o_c + M_uppg3_c
 b3997 ; 	% 2337	M_h_c + M_uppg3_c --> M_co2_c + M_cpppg3_c
 b2498 ; 	% 2338	M_prpp_c + M_ura_c --> M_ppi_c + M_ump_c
 b2497 ; 	% 2339	M_h_p + M_ura_p --> M_h_c + M_ura_c
 b1006 ; 	% 2340	M_h_p + M_ura_p <--> M_h_c + M_ura_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2341	M_ura_e <--> M_ura_p
 b0517 ; 	% 2342	M_nad_c + M_urdglyc_c --> M_h_c + M_nadh_c + M_oxur_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2343	M_urea_e <--> M_urea_p
 b3927 ; 	% 2344	M_urea_p <--> M_urea_c
 1 ; 	% 2345	M_h2o_c + M_o2_c + M_urate_c --> M_alltn_c + M_co2_c + M_h2o2_c
 b0171 ; 	% 2346	M_atp_c + M_dump_c <--> M_adp_c + M_dudp_c
 ( b2162  ||  b0651  ||  b0030 ) ; 	% 2347	M_h2o_c + M_uri_c --> M_rib_D_c + M_ura_c
 b2066 ; 	% 2348	M_gtp_c + M_uri_c --> M_gdp_c + M_h_c + M_ump_c
 ( b2964  ||  b2393 ) ; 	% 2349	M_h_p + M_uri_p --> M_h_c + M_uri_c
 b2406 ; 	% 2350	M_h_p + M_uri_p <--> M_h_c + M_uri_c
 b0411 ; 	% 2351	M_uri_e <--> M_uri_p
 b0524 ; 	% 2352	M_h2o_c + M_u23ga_c --> M_h_c + M_lipidX_c + M_ump_c
 b3770 ; 	% 2353	M_akg_c + M_val_L_c <--> M_3mob_c + M_glu_L_c
 b4258 ; 	% 2354	M_atp_c + M_trnaval_c + M_val_L_c --> M_amp_c + M_ppi_c + M_valtrna_c
 ( b3454  &&  b3455  &&  b3457  &&  b3460  &&  b3456 ) ; 	% 2355	M_atp_c + M_h2o_c + M_val_L_p --> M_adp_c + M_h_c + M_pi_c + M_val_L_c
 b0401 ; 	% 2356	M_h_p + M_val_L_p <--> M_h_c + M_val_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2357	M_val_L_e <--> M_val_L_p
 b3572 ; 	% 2358	M_3mob_c + M_ala_L_c --> M_pyr_c + M_val_L_c
 b4197 ; 	% 2359	M_xu5p_L_c --> M_ru5p_L_c
 ( b2866  &&  b2867  &&  b2868 ) ; 	% 2360	M_h2o_c + M_nad_c + M_xan_c --> M_h_c + M_nadh_c + M_urate_c
 b3654 ; 	% 2361	M_h_p + M_xan_p --> M_h_c + M_xan_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2362	M_xan_e <--> M_xan_p
 1 ; 	% 2363	M_xan_p <--> M_xan_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2364	M_xmp_e <--> M_xmp_p
 b0238 ; 	% 2365	M_prpp_c + M_xan_c --> M_ppi_c + M_xmp_c
 b0030 ; 	% 2366	M_h2o_c + M_xtsn_c --> M_rib_D_c + M_xan_c
 b2406 ; 	% 2367	M_h_p + M_xtsn_p <--> M_h_c + M_xtsn_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2368	M_xtsn_e <--> M_xtsn_p
 b3565 ; 	% 2369	M_xyl_D_c <--> M_xylu_D_c
 b3565 ; 	% 2370	M_glc_D_c <--> M_fru_c
 ( b3564  ||  b0063 ) ; 	% 2371	M_atp_c + M_xylu_D_c --> M_adp_c + M_h_c + M_xu5p_D_c
 ( b0063  ||  b3580 ) ; 	% 2372	M_atp_c + M_xylu_L_c --> M_adp_c + M_h_c + M_xu5p_L_c
 ( b3577  &&  b3578  &&  b3579 ) ; 	% 2373	M_h_p + M_xylu_L_p --> M_h_c + M_xylu_L_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2374	M_xylu_L_e <--> M_xylu_L_p
 ( b3566  &&  b3567  &&  b3568 ) ; 	% 2375	M_atp_c + M_h2o_c + M_xyl_D_p --> M_adp_c + M_h_c + M_pi_c + M_xyl_D_c
 b4031 ; 	% 2376	M_h_p + M_xyl_D_p --> M_h_c + M_xyl_D_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2377	M_xyl_D_e <--> M_xyl_D_p
 b3469 ; 	% 2378	M_atp_c + M_h2o_c + M_zn2_c --> M_adp_c + M_h_c + M_pi_c + M_zn2_p
 ( b0752  ||  b3915 ) ; 	% 2379	M_zn2_c + M_h_p --> M_h_c + M_zn2_p
 b3040 ; 	% 2380	M_zn2_p --> M_zn2_c
 ( b1857  &&  b1859  &&  b1858 ) ; 	% 2381	M_atp_c + M_h2o_c + M_zn2_p --> M_adp_c + M_h_c + M_pi_c + M_zn2_c
 ( b0241  ||  b0929  ||  b1377  ||  b2215 ) ; 	% 2382	M_zn2_e <--> M_zn2_p
 1 ; 	% 2383 GLYCO: M_udpg_c --> M_udpg_GLYCO_b
 1 ; 	% 2384 GLYCO: M_uacgam_c --> M_uacgam_GLYCO_b
 1 ; 	% 2385 GLYCO: (gne) M_uacgam_c --> M_udpacgal_c
 1 ; 	% 2386 GLYCO: (pglF) M_uacgam_c --> M_ketobac_c + M_h2o_c
 1 ; 	% 2387 GLYCO: (pglE) M_ketobac_c + M_glu_L_c --> M_aminobac_c + M_akg_c
 1 ; 	% 2388 GLYCO: (pglD) M_aminobac_c + M_accoa_c --> M_ubac_c + M_coa_c + M_h_c
 1 ; 	% 2389 GLYCO: (pglC) M_udcpp_c + M_ubac_c --> M_udccjglycan1_c + M_ump_c
 1 ; 	% 2390 GLYCO: (pglAHJ) M_udccjglycan1_c + 5*M_udpacgal_c --> M_udccjglycan6_c + 5*M_udp_c + 5*M_h_c
 1 ; 	% 2391 GLYCO: (pglI) M_udccjglycan6_c + M_udpg_c --> M_udccjglycan_c + M_udp_c + M_h_c
 1 ; 	% 2392 GLYCO: (pglK) M_udccjglycan_c + M_atp_c + M_h2o_c --> M_udccjglycan_p + M_adp_c + M_h_c + M_pi_c
 1 ; 	% 2393 GLYCO: M_targetprot_b --> M_targetprot_p
 1 ; 	% 2394 GLYCO: (pglB) M_udccjglycan_p + M_targetprot_p --> M_glycoprot_p + M_udcpdp_p
 1 ; 	% 2395 GLYCO: M_glycoprot_p --> M_glycoprot_b
];
 
rxtLogic = rxtLogic';
 
return;
