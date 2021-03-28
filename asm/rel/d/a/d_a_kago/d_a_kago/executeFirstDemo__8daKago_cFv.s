lbl_80850384:
/* 80850384  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80850388  7C 08 02 A6 */	mflr r0
/* 8085038C  90 01 01 24 */	stw r0, 0x124(r1)
/* 80850390  39 61 01 20 */	addi r11, r1, 0x120
/* 80850394  4B B1 1E 48 */	b _savegpr_29
/* 80850398  7C 7F 1B 78 */	mr r31, r3
/* 8085039C  3C 60 80 85 */	lis r3, lit_3929@ha
/* 808503A0  3B C3 4B 04 */	addi r30, r3, lit_3929@l
/* 808503A4  4B 93 12 9C */	b dCam_getBody__Fv
/* 808503A8  7C 7D 1B 78 */	mr r29, r3
/* 808503AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808503B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808503B4  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 808503B8  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 808503BC  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 808503C0  80 63 00 00 */	lwz r3, 0(r3)
/* 808503C4  28 03 00 00 */	cmplwi r3, 0
/* 808503C8  41 82 00 1C */	beq lbl_808503E4
/* 808503CC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 808503D0  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 808503D4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 808503D8  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 808503DC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 808503E0  D0 01 00 E8 */	stfs f0, 0xe8(r1)
lbl_808503E4:
/* 808503E4  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 808503E8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 808503EC  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 808503F0  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 808503F4  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 808503F8  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 808503FC  80 9F 07 48 */	lwz r4, 0x748(r31)
/* 80850400  28 04 00 09 */	cmplwi r4, 9
/* 80850404  41 81 0F C4 */	bgt lbl_808513C8
/* 80850408  3C 60 80 85 */	lis r3, lit_6924@ha
/* 8085040C  38 63 4E 34 */	addi r3, r3, lit_6924@l
/* 80850410  54 80 10 3A */	slwi r0, r4, 2
/* 80850414  7C 03 00 2E */	lwzx r0, r3, r0
/* 80850418  7C 09 03 A6 */	mtctr r0
/* 8085041C  4E 80 04 20 */	bctr 
lbl_80850420:
/* 80850420  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80850424  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80850428  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8085042C  7F E4 FB 78 */	mr r4, r31
/* 80850430  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 80850434  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 80850438  38 C0 00 02 */	li r6, 2
/* 8085043C  4B 7F 24 D8 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80850440  38 7F 06 BC */	addi r3, r31, 0x6bc
/* 80850444  38 80 14 00 */	li r4, 0x1400
/* 80850448  38 A0 00 40 */	li r5, 0x40
/* 8085044C  4B A2 07 44 */	b cLib_chaseAngleS__FPsss
/* 80850450  38 7F 06 CC */	addi r3, r31, 0x6cc
/* 80850454  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 80850458  C0 5E 01 98 */	lfs f2, 0x198(r30)
/* 8085045C  4B A2 02 E4 */	b cLib_chaseF__FPfff
/* 80850460  38 7F 06 D0 */	addi r3, r31, 0x6d0
/* 80850464  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 80850468  C0 5E 01 A0 */	lfs f2, 0x1a0(r30)
/* 8085046C  4B A2 02 D4 */	b cLib_chaseF__FPfff
/* 80850470  C0 5F 06 CC */	lfs f2, 0x6cc(r31)
/* 80850474  C0 3F 06 D0 */	lfs f1, 0x6d0(r31)
/* 80850478  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8085047C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80850480  D0 21 00 F0 */	stfs f1, 0xf0(r1)
/* 80850484  D0 41 00 F4 */	stfs f2, 0xf4(r1)
/* 80850488  38 7F 06 98 */	addi r3, r31, 0x698
/* 8085048C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80850490  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80850494  A8 1F 06 BC */	lha r0, 0x6bc(r31)
/* 80850498  7C 05 02 14 */	add r0, r5, r0
/* 8085049C  7C 05 07 34 */	extsh r5, r0
/* 808504A0  38 C1 00 EC */	addi r6, r1, 0xec
/* 808504A4  4B A2 09 1C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 808504A8  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 808504AC  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 808504B0  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 808504B4  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 808504B8  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 808504BC  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 808504C0  38 7F 06 80 */	addi r3, r31, 0x680
/* 808504C4  38 81 00 F8 */	addi r4, r1, 0xf8
/* 808504C8  C0 3E 01 A4 */	lfs f1, 0x1a4(r30)
/* 808504CC  4B A2 02 E0 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 808504D0  38 7F 06 8C */	addi r3, r31, 0x68c
/* 808504D4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 808504D8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 808504DC  38 DF 06 80 */	addi r6, r31, 0x680
/* 808504E0  4B A2 08 E0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 808504E4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 808504E8  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 808504EC  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 808504F0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 808504F4  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 808504F8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 808504FC  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 80850500  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80850504  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 80850508  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8085050C  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 80850510  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80850514  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 80850518  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8085051C  7F A3 EB 78 */	mr r3, r29
/* 80850520  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80850524  38 A1 00 BC */	addi r5, r1, 0xbc
/* 80850528  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 8085052C  38 C0 00 00 */	li r6, 0
/* 80850530  4B 93 05 B0 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80850534  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 80850538  2C 00 00 0A */	cmpwi r0, 0xa
/* 8085053C  40 80 0E 8C */	bge lbl_808513C8
/* 80850540  7F E3 FB 78 */	mr r3, r31
/* 80850544  4B FF A5 69 */	bl setMidnaTagPos__8daKago_cFv
/* 80850548  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 8085054C  2C 00 00 00 */	cmpwi r0, 0
/* 80850550  40 82 0E 78 */	bne lbl_808513C8
/* 80850554  38 00 00 01 */	li r0, 1
/* 80850558  90 1F 07 48 */	stw r0, 0x748(r31)
/* 8085055C  38 60 00 01 */	li r3, 1
/* 80850560  48 00 0E 6C */	b lbl_808513CC
lbl_80850564:
/* 80850564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80850568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8085056C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80850570  7F E4 FB 78 */	mr r4, r31
/* 80850574  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 80850578  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 8085057C  38 C0 00 02 */	li r6, 2
/* 80850580  4B 7F 23 94 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80850584  38 7F 06 BC */	addi r3, r31, 0x6bc
/* 80850588  38 80 10 00 */	li r4, 0x1000
/* 8085058C  38 A0 00 20 */	li r5, 0x20
/* 80850590  4B A2 06 00 */	b cLib_chaseAngleS__FPsss
/* 80850594  C0 3F 06 CC */	lfs f1, 0x6cc(r31)
/* 80850598  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8085059C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 808505A0  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 808505A4  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 808505A8  38 7F 06 98 */	addi r3, r31, 0x698
/* 808505AC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 808505B0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 808505B4  A8 1F 06 BC */	lha r0, 0x6bc(r31)
/* 808505B8  7C 05 02 14 */	add r0, r5, r0
/* 808505BC  7C 05 07 34 */	extsh r5, r0
/* 808505C0  38 C1 00 EC */	addi r6, r1, 0xec
/* 808505C4  4B A2 07 FC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 808505C8  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 808505CC  2C 00 00 46 */	cmpwi r0, 0x46
/* 808505D0  40 80 00 20 */	bge lbl_808505F0
/* 808505D4  38 7F 06 8C */	addi r3, r31, 0x68c
/* 808505D8  38 81 00 E0 */	addi r4, r1, 0xe0
/* 808505DC  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 808505E0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 808505E4  FC 60 10 90 */	fmr f3, f2
/* 808505E8  4B A1 F4 D0 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 808505EC  48 00 00 1C */	b lbl_80850608
lbl_808505F0:
/* 808505F0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 808505F4  D0 1F 06 8C */	stfs f0, 0x68c(r31)
/* 808505F8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 808505FC  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 80850600  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80850604  D0 1F 06 94 */	stfs f0, 0x694(r31)
lbl_80850608:
/* 80850608  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 8085060C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80850610  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 80850614  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80850618  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 8085061C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80850620  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 80850624  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80850628  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 8085062C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80850630  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 80850634  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80850638  7F A3 EB 78 */	mr r3, r29
/* 8085063C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80850640  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 80850644  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 80850648  38 C0 00 00 */	li r6, 0
/* 8085064C  4B 93 04 94 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80850650  7F E3 FB 78 */	mr r3, r31
/* 80850654  4B FF A4 59 */	bl setMidnaTagPos__8daKago_cFv
/* 80850658  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 8085065C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80850660  40 82 00 1C */	bne lbl_8085067C
/* 80850664  7F E3 FB 78 */	mr r3, r31
/* 80850668  38 80 00 14 */	li r4, 0x14
/* 8085066C  38 A0 00 02 */	li r5, 2
/* 80850670  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80850674  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80850678  4B FF 90 79 */	bl setBck__8daKago_cFiUcff
lbl_8085067C:
/* 8085067C  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 80850680  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80850684  40 81 00 30 */	ble lbl_808506B4
/* 80850688  38 7F 06 CC */	addi r3, r31, 0x6cc
/* 8085068C  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 80850690  C0 5E 01 A4 */	lfs f2, 0x1a4(r30)
/* 80850694  4B A2 00 AC */	b cLib_chaseF__FPfff
/* 80850698  38 7F 07 18 */	addi r3, r31, 0x718
/* 8085069C  38 80 F8 00 */	li r4, -2048
/* 808506A0  38 A0 00 08 */	li r5, 8
/* 808506A4  38 C0 01 00 */	li r6, 0x100
/* 808506A8  38 E0 00 10 */	li r7, 0x10
/* 808506AC  4B A1 FE 94 */	b cLib_addCalcAngleS__FPsssss
/* 808506B0  48 00 0D 18 */	b lbl_808513C8
lbl_808506B4:
/* 808506B4  38 7F 06 CC */	addi r3, r31, 0x6cc
/* 808506B8  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 808506BC  C0 5E 01 AC */	lfs f2, 0x1ac(r30)
/* 808506C0  4B A2 00 80 */	b cLib_chaseF__FPfff
/* 808506C4  38 7F 07 18 */	addi r3, r31, 0x718
/* 808506C8  38 80 04 00 */	li r4, 0x400
/* 808506CC  38 A0 00 08 */	li r5, 8
/* 808506D0  38 C0 02 00 */	li r6, 0x200
/* 808506D4  38 E0 00 10 */	li r7, 0x10
/* 808506D8  4B A1 FE 68 */	b cLib_addCalcAngleS__FPsssss
/* 808506DC  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 808506E0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 808506E4  40 82 00 0C */	bne lbl_808506F0
/* 808506E8  7F E3 FB 78 */	mr r3, r31
/* 808506EC  4B FF A4 55 */	bl setMidnaRideOn__8daKago_cFv
lbl_808506F0:
/* 808506F0  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 808506F4  2C 00 00 14 */	cmpwi r0, 0x14
/* 808506F8  40 82 00 64 */	bne lbl_8085075C
/* 808506FC  88 1F 06 E7 */	lbz r0, 0x6e7(r31)
/* 80850700  28 00 00 01 */	cmplwi r0, 1
/* 80850704  40 82 00 30 */	bne lbl_80850734
/* 80850708  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B9@ha */
/* 8085070C  38 03 05 B9 */	addi r0, r3, 0x05B9 /* 0x000705B9@l */
/* 80850710  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80850714  38 7F 05 74 */	addi r3, r31, 0x574
/* 80850718  38 81 00 1C */	addi r4, r1, 0x1c
/* 8085071C  38 A0 FF FF */	li r5, -1
/* 80850720  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 80850724  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80850728  7D 89 03 A6 */	mtctr r12
/* 8085072C  4E 80 04 21 */	bctrl 
/* 80850730  48 00 00 2C */	b lbl_8085075C
lbl_80850734:
/* 80850734  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B8@ha */
/* 80850738  38 03 05 B8 */	addi r0, r3, 0x05B8 /* 0x000705B8@l */
/* 8085073C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80850740  38 7F 05 74 */	addi r3, r31, 0x574
/* 80850744  38 81 00 18 */	addi r4, r1, 0x18
/* 80850748  38 A0 FF FF */	li r5, -1
/* 8085074C  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 80850750  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80850754  7D 89 03 A6 */	mtctr r12
/* 80850758  4E 80 04 21 */	bctrl 
lbl_8085075C:
/* 8085075C  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 80850760  2C 00 00 00 */	cmpwi r0, 0
/* 80850764  40 82 0C 64 */	bne lbl_808513C8
/* 80850768  38 00 00 02 */	li r0, 2
/* 8085076C  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80850770  38 60 00 01 */	li r3, 1
/* 80850774  48 00 0C 58 */	b lbl_808513CC
lbl_80850778:
/* 80850778  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8085077C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80850780  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80850784  7F E4 FB 78 */	mr r4, r31
/* 80850788  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 8085078C  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 80850790  38 C0 00 03 */	li r6, 3
/* 80850794  4B 7F 21 80 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80850798  7F E3 FB 78 */	mr r3, r31
/* 8085079C  4B FF A3 11 */	bl setMidnaTagPos__8daKago_cFv
/* 808507A0  38 7F 06 8C */	addi r3, r31, 0x68c
/* 808507A4  38 81 00 E0 */	addi r4, r1, 0xe0
/* 808507A8  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 808507AC  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 808507B0  FC 60 10 90 */	fmr f3, f2
/* 808507B4  4B A1 F3 04 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 808507B8  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 808507BC  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 808507C0  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 808507C4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 808507C8  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 808507CC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 808507D0  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 808507D4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 808507D8  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 808507DC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 808507E0  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 808507E4  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 808507E8  7F A3 EB 78 */	mr r3, r29
/* 808507EC  38 81 00 98 */	addi r4, r1, 0x98
/* 808507F0  38 A1 00 8C */	addi r5, r1, 0x8c
/* 808507F4  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 808507F8  38 C0 00 00 */	li r6, 0
/* 808507FC  4B 93 02 E4 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80850800  38 7F 0B 58 */	addi r3, r31, 0xb58
/* 80850804  7F E4 FB 78 */	mr r4, r31
/* 80850808  38 A0 00 00 */	li r5, 0
/* 8085080C  38 C0 00 00 */	li r6, 0
/* 80850810  4B 9F 9A C8 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80850814  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 80850818  2C 00 00 00 */	cmpwi r0, 0
/* 8085081C  41 82 00 54 */	beq lbl_80850870
/* 80850820  2C 00 00 01 */	cmpwi r0, 1
/* 80850824  40 82 00 1C */	bne lbl_80850840
/* 80850828  7F E3 FB 78 */	mr r3, r31
/* 8085082C  38 80 00 0F */	li r4, 0xf
/* 80850830  38 A0 00 02 */	li r5, 2
/* 80850834  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 80850838  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8085083C  4B FF 8E B5 */	bl setBck__8daKago_cFiUcff
lbl_80850840:
/* 80850840  38 7F 0B 58 */	addi r3, r31, 0xb58
/* 80850844  4B 9F 9C FC */	b getNowMsgNo__10dMsgFlow_cFv
/* 80850848  28 03 17 74 */	cmplwi r3, 0x1774
/* 8085084C  40 82 00 24 */	bne lbl_80850870
/* 80850850  7F E3 FB 78 */	mr r3, r31
/* 80850854  38 80 00 0F */	li r4, 0xf
/* 80850858  38 A0 00 02 */	li r5, 2
/* 8085085C  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 80850860  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80850864  4B FF 8E 8D */	bl setBck__8daKago_cFiUcff
/* 80850868  38 00 00 00 */	li r0, 0
/* 8085086C  90 1F 07 28 */	stw r0, 0x728(r31)
lbl_80850870:
/* 80850870  38 7F 0B 58 */	addi r3, r31, 0xb58
/* 80850874  4B 9F 9C CC */	b getNowMsgNo__10dMsgFlow_cFv
/* 80850878  28 03 17 75 */	cmplwi r3, 0x1775
/* 8085087C  40 82 0B 4C */	bne lbl_808513C8
/* 80850880  38 00 00 03 */	li r0, 3
/* 80850884  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80850888  38 60 00 01 */	li r3, 1
/* 8085088C  48 00 0B 40 */	b lbl_808513CC
lbl_80850890:
/* 80850890  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80850894  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80850898  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8085089C  7F E4 FB 78 */	mr r4, r31
/* 808508A0  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 808508A4  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 808508A8  38 C0 00 03 */	li r6, 3
/* 808508AC  4B 7F 20 68 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 808508B0  7F E3 FB 78 */	mr r3, r31
/* 808508B4  4B FF A1 F9 */	bl setMidnaTagPos__8daKago_cFv
/* 808508B8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 808508BC  38 81 00 D4 */	addi r4, r1, 0xd4
/* 808508C0  4B A2 03 B4 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 808508C4  7C 60 07 34 */	extsh r0, r3
/* 808508C8  7C 00 16 70 */	srawi r0, r0, 2
/* 808508CC  7C 00 01 94 */	addze r0, r0
/* 808508D0  7C 04 07 34 */	extsh r4, r0
/* 808508D4  38 7F 07 18 */	addi r3, r31, 0x718
/* 808508D8  38 A0 00 08 */	li r5, 8
/* 808508DC  38 C0 01 00 */	li r6, 0x100
/* 808508E0  38 E0 00 10 */	li r7, 0x10
/* 808508E4  4B A1 FC 5C */	b cLib_addCalcAngleS__FPsssss
/* 808508E8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 808508EC  38 81 00 D4 */	addi r4, r1, 0xd4
/* 808508F0  4B A2 03 14 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 808508F4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 808508F8  7C 00 18 50 */	subf r0, r0, r3
/* 808508FC  7C 00 07 34 */	extsh r0, r0
/* 80850900  38 7F 07 1A */	addi r3, r31, 0x71a
/* 80850904  7C 00 16 70 */	srawi r0, r0, 2
/* 80850908  7C 00 01 94 */	addze r0, r0
/* 8085090C  7C 04 07 34 */	extsh r4, r0
/* 80850910  38 A0 00 08 */	li r5, 8
/* 80850914  38 C0 01 00 */	li r6, 0x100
/* 80850918  38 E0 00 10 */	li r7, 0x10
/* 8085091C  4B A1 FC 24 */	b cLib_addCalcAngleS__FPsssss
/* 80850920  38 7F 0B 58 */	addi r3, r31, 0xb58
/* 80850924  7F E4 FB 78 */	mr r4, r31
/* 80850928  38 A0 00 00 */	li r5, 0
/* 8085092C  38 C0 00 00 */	li r6, 0
/* 80850930  4B 9F 99 A8 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80850934  2C 03 00 00 */	cmpwi r3, 0
/* 80850938  41 82 0A 90 */	beq lbl_808513C8
/* 8085093C  38 00 00 04 */	li r0, 4
/* 80850940  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80850944  38 60 00 01 */	li r3, 1
/* 80850948  48 00 0A 84 */	b lbl_808513CC
lbl_8085094C:
/* 8085094C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80850950  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80850954  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80850958  7F E4 FB 78 */	mr r4, r31
/* 8085095C  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 80850960  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 80850964  38 C0 00 02 */	li r6, 2
/* 80850968  4B 7F 1F AC */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8085096C  38 7F 07 18 */	addi r3, r31, 0x718
/* 80850970  38 80 00 00 */	li r4, 0
/* 80850974  38 A0 00 08 */	li r5, 8
/* 80850978  38 C0 01 00 */	li r6, 0x100
/* 8085097C  38 E0 00 10 */	li r7, 0x10
/* 80850980  4B A1 FB C0 */	b cLib_addCalcAngleS__FPsssss
/* 80850984  38 7F 07 1A */	addi r3, r31, 0x71a
/* 80850988  38 80 00 00 */	li r4, 0
/* 8085098C  38 A0 00 08 */	li r5, 8
/* 80850990  38 C0 01 00 */	li r6, 0x100
/* 80850994  38 E0 00 10 */	li r7, 0x10
/* 80850998  4B A1 FB A8 */	b cLib_addCalcAngleS__FPsssss
/* 8085099C  38 7F 06 CC */	addi r3, r31, 0x6cc
/* 808509A0  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 808509A4  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 808509A8  4B A1 FD 98 */	b cLib_chaseF__FPfff
/* 808509AC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 808509B0  4B 7B C3 B4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 808509B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808509B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808509BC  A8 9F 06 BC */	lha r4, 0x6bc(r31)
/* 808509C0  4B 7B BA 74 */	b mDoMtx_YrotM__FPA4_fs
/* 808509C4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 808509C8  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 808509CC  C0 7F 06 CC */	lfs f3, 0x6cc(r31)
/* 808509D0  4B 7B C3 CC */	b transM__14mDoMtx_stack_cFfff
/* 808509D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808509D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808509DC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 808509E0  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 808509E4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 808509E8  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 808509EC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 808509F0  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
/* 808509F4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 808509F8  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 808509FC  4B A2 02 08 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80850A00  7C 64 1B 78 */	mr r4, r3
/* 80850A04  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80850A08  38 A0 00 04 */	li r5, 4
/* 80850A0C  38 C0 08 00 */	li r6, 0x800
/* 80850A10  38 E0 01 00 */	li r7, 0x100
/* 80850A14  4B A1 FB 2C */	b cLib_addCalcAngleS__FPsssss
/* 80850A18  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80850A1C  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 80850A20  4B A2 02 54 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80850A24  7C 03 00 D0 */	neg r0, r3
/* 80850A28  7C 04 07 34 */	extsh r4, r0
/* 80850A2C  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80850A30  38 A0 00 04 */	li r5, 4
/* 80850A34  38 C0 10 00 */	li r6, 0x1000
/* 80850A38  38 E0 01 00 */	li r7, 0x100
/* 80850A3C  4B A1 FB 04 */	b cLib_addCalcAngleS__FPsssss
/* 80850A40  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80850A44  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80850A48  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80850A4C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80850A50  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 80850A54  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 80850A58  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80850A5C  4B A1 FC E4 */	b cLib_chaseF__FPfff
/* 80850A60  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80850A64  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80850A68  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80850A6C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80850A70  7C 64 02 14 */	add r3, r4, r0
/* 80850A74  C0 03 00 04 */	lfs f0, 4(r3)
/* 80850A78  FC 00 02 10 */	fabs f0, f0
/* 80850A7C  FC 20 00 18 */	frsp f1, f0
/* 80850A80  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 80850A84  EC 00 00 72 */	fmuls f0, f0, f1
/* 80850A88  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80850A8C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80850A90  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80850A94  7C 24 04 2E */	lfsx f1, r4, r0
/* 80850A98  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 80850A9C  FC 00 00 50 */	fneg f0, f0
/* 80850AA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80850AA4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80850AA8  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80850AAC  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80850AB0  7C 65 1B 78 */	mr r5, r3
/* 80850AB4  4B AF 65 DC */	b PSVECAdd
/* 80850AB8  38 7F 06 98 */	addi r3, r31, 0x698
/* 80850ABC  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80850AC0  7C 65 1B 78 */	mr r5, r3
/* 80850AC4  4B AF 65 CC */	b PSVECAdd
/* 80850AC8  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80850ACC  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80850AD0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80850AD4  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80850AD8  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 80850ADC  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80850AE0  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80850AE4  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80850AE8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80850AEC  38 C1 00 EC */	addi r6, r1, 0xec
/* 80850AF0  4B A2 02 D0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80850AF4  38 7F 06 98 */	addi r3, r31, 0x698
/* 80850AF8  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80850AFC  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80850B00  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80850B04  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80850B08  4B A1 EF B0 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80850B0C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80850B10  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80850B14  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80850B18  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80850B1C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80850B20  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80850B24  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80850B28  38 C1 00 EC */	addi r6, r1, 0xec
/* 80850B2C  4B A2 02 94 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80850B30  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80850B34  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80850B38  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80850B3C  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80850B40  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80850B44  4B A1 EF 74 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80850B48  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80850B4C  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 80850B50  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 80850B54  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80850B58  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 80850B5C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80850B60  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 80850B64  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80850B68  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 80850B6C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80850B70  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 80850B74  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80850B78  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 80850B7C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80850B80  7F A3 EB 78 */	mr r3, r29
/* 80850B84  38 81 00 80 */	addi r4, r1, 0x80
/* 80850B88  38 A1 00 74 */	addi r5, r1, 0x74
/* 80850B8C  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 80850B90  38 C0 00 00 */	li r6, 0
/* 80850B94  4B 92 FF 4C */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80850B98  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 80850B9C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80850BA0  4B AF 67 FC */	b PSVECSquareDistance
/* 80850BA4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80850BA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80850BAC  40 81 00 58 */	ble lbl_80850C04
/* 80850BB0  FC 00 08 34 */	frsqrte f0, f1
/* 80850BB4  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80850BB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80850BBC  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80850BC0  FC 00 00 32 */	fmul f0, f0, f0
/* 80850BC4  FC 01 00 32 */	fmul f0, f1, f0
/* 80850BC8  FC 03 00 28 */	fsub f0, f3, f0
/* 80850BCC  FC 02 00 32 */	fmul f0, f2, f0
/* 80850BD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80850BD4  FC 00 00 32 */	fmul f0, f0, f0
/* 80850BD8  FC 01 00 32 */	fmul f0, f1, f0
/* 80850BDC  FC 03 00 28 */	fsub f0, f3, f0
/* 80850BE0  FC 02 00 32 */	fmul f0, f2, f0
/* 80850BE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80850BE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80850BEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80850BF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80850BF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80850BF8  FC 21 00 32 */	fmul f1, f1, f0
/* 80850BFC  FC 20 08 18 */	frsp f1, f1
/* 80850C00  48 00 00 88 */	b lbl_80850C88
lbl_80850C04:
/* 80850C04  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80850C08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80850C0C  40 80 00 10 */	bge lbl_80850C1C
/* 80850C10  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80850C14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80850C18  48 00 00 70 */	b lbl_80850C88
lbl_80850C1C:
/* 80850C1C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80850C20  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80850C24  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80850C28  3C 00 7F 80 */	lis r0, 0x7f80
/* 80850C2C  7C 03 00 00 */	cmpw r3, r0
/* 80850C30  41 82 00 14 */	beq lbl_80850C44
/* 80850C34  40 80 00 40 */	bge lbl_80850C74
/* 80850C38  2C 03 00 00 */	cmpwi r3, 0
/* 80850C3C  41 82 00 20 */	beq lbl_80850C5C
/* 80850C40  48 00 00 34 */	b lbl_80850C74
lbl_80850C44:
/* 80850C44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80850C48  41 82 00 0C */	beq lbl_80850C54
/* 80850C4C  38 00 00 01 */	li r0, 1
/* 80850C50  48 00 00 28 */	b lbl_80850C78
lbl_80850C54:
/* 80850C54  38 00 00 02 */	li r0, 2
/* 80850C58  48 00 00 20 */	b lbl_80850C78
lbl_80850C5C:
/* 80850C5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80850C60  41 82 00 0C */	beq lbl_80850C6C
/* 80850C64  38 00 00 05 */	li r0, 5
/* 80850C68  48 00 00 10 */	b lbl_80850C78
lbl_80850C6C:
/* 80850C6C  38 00 00 03 */	li r0, 3
/* 80850C70  48 00 00 08 */	b lbl_80850C78
lbl_80850C74:
/* 80850C74  38 00 00 04 */	li r0, 4
lbl_80850C78:
/* 80850C78  2C 00 00 01 */	cmpwi r0, 1
/* 80850C7C  40 82 00 0C */	bne lbl_80850C88
/* 80850C80  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80850C84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80850C88:
/* 80850C88  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80850C8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80850C90  40 80 07 38 */	bge lbl_808513C8
/* 80850C94  38 00 00 05 */	li r0, 5
/* 80850C98  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80850C9C  38 60 00 01 */	li r3, 1
/* 80850CA0  48 00 07 2C */	b lbl_808513CC
lbl_80850CA4:
/* 80850CA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80850CA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80850CAC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80850CB0  7F E4 FB 78 */	mr r4, r31
/* 80850CB4  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 80850CB8  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 80850CBC  38 C0 00 02 */	li r6, 2
/* 80850CC0  4B 7F 1C 54 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80850CC4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80850CC8  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 80850CCC  4B A1 FF 38 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80850CD0  7C 64 1B 78 */	mr r4, r3
/* 80850CD4  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80850CD8  38 A0 00 04 */	li r5, 4
/* 80850CDC  38 C0 08 00 */	li r6, 0x800
/* 80850CE0  38 E0 01 00 */	li r7, 0x100
/* 80850CE4  4B A1 F8 5C */	b cLib_addCalcAngleS__FPsssss
/* 80850CE8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80850CEC  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 80850CF0  4B A1 FF 84 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80850CF4  7C 03 00 D0 */	neg r0, r3
/* 80850CF8  7C 04 07 34 */	extsh r4, r0
/* 80850CFC  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80850D00  38 A0 00 04 */	li r5, 4
/* 80850D04  38 C0 04 00 */	li r6, 0x400
/* 80850D08  38 E0 01 00 */	li r7, 0x100
/* 80850D0C  4B A1 F8 34 */	b cLib_addCalcAngleS__FPsssss
/* 80850D10  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80850D14  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80850D18  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80850D1C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80850D20  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 80850D24  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 80850D28  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80850D2C  4B A1 FA 14 */	b cLib_chaseF__FPfff
/* 80850D30  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80850D34  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80850D38  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80850D3C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80850D40  7C 64 02 14 */	add r3, r4, r0
/* 80850D44  C0 03 00 04 */	lfs f0, 4(r3)
/* 80850D48  FC 00 02 10 */	fabs f0, f0
/* 80850D4C  FC 20 00 18 */	frsp f1, f0
/* 80850D50  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 80850D54  EC 00 00 72 */	fmuls f0, f0, f1
/* 80850D58  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80850D5C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80850D60  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80850D64  7C 24 04 2E */	lfsx f1, r4, r0
/* 80850D68  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 80850D6C  FC 00 00 50 */	fneg f0, f0
/* 80850D70  EC 00 00 72 */	fmuls f0, f0, f1
/* 80850D74  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80850D78  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80850D7C  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80850D80  7C 65 1B 78 */	mr r5, r3
/* 80850D84  4B AF 63 0C */	b PSVECAdd
/* 80850D88  38 7F 06 98 */	addi r3, r31, 0x698
/* 80850D8C  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80850D90  7C 65 1B 78 */	mr r5, r3
/* 80850D94  4B AF 62 FC */	b PSVECAdd
/* 80850D98  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 80850D9C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80850DA0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80850DA4  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80850DA8  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80850DAC  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80850DB0  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80850DB4  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80850DB8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80850DBC  38 C1 00 EC */	addi r6, r1, 0xec
/* 80850DC0  4B A2 00 00 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80850DC4  38 7F 06 98 */	addi r3, r31, 0x698
/* 80850DC8  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80850DCC  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80850DD0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80850DD4  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80850DD8  4B A1 EC E0 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80850DDC  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80850DE0  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 80850DE4  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80850DE8  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80850DEC  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 80850DF0  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80850DF4  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80850DF8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80850DFC  38 C1 00 EC */	addi r6, r1, 0xec
/* 80850E00  4B A1 FF C0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80850E04  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80850E08  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80850E0C  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80850E10  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80850E14  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80850E18  4B A1 EC A0 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80850E1C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80850E20  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 80850E24  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 80850E28  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80850E2C  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 80850E30  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80850E34  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 80850E38  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80850E3C  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 80850E40  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80850E44  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 80850E48  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80850E4C  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 80850E50  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80850E54  7F A3 EB 78 */	mr r3, r29
/* 80850E58  38 81 00 68 */	addi r4, r1, 0x68
/* 80850E5C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80850E60  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 80850E64  38 C0 00 00 */	li r6, 0
/* 80850E68  4B 92 FC 78 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80850E6C  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 80850E70  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80850E74  4B AF 65 28 */	b PSVECSquareDistance
/* 80850E78  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80850E7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80850E80  40 81 00 58 */	ble lbl_80850ED8
/* 80850E84  FC 00 08 34 */	frsqrte f0, f1
/* 80850E88  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80850E8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80850E90  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80850E94  FC 00 00 32 */	fmul f0, f0, f0
/* 80850E98  FC 01 00 32 */	fmul f0, f1, f0
/* 80850E9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80850EA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80850EA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80850EA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80850EAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80850EB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80850EB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80850EB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80850EBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80850EC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80850EC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80850EC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80850ECC  FC 21 00 32 */	fmul f1, f1, f0
/* 80850ED0  FC 20 08 18 */	frsp f1, f1
/* 80850ED4  48 00 00 88 */	b lbl_80850F5C
lbl_80850ED8:
/* 80850ED8  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80850EDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80850EE0  40 80 00 10 */	bge lbl_80850EF0
/* 80850EE4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80850EE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80850EEC  48 00 00 70 */	b lbl_80850F5C
lbl_80850EF0:
/* 80850EF0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80850EF4  80 81 00 08 */	lwz r4, 8(r1)
/* 80850EF8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80850EFC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80850F00  7C 03 00 00 */	cmpw r3, r0
/* 80850F04  41 82 00 14 */	beq lbl_80850F18
/* 80850F08  40 80 00 40 */	bge lbl_80850F48
/* 80850F0C  2C 03 00 00 */	cmpwi r3, 0
/* 80850F10  41 82 00 20 */	beq lbl_80850F30
/* 80850F14  48 00 00 34 */	b lbl_80850F48
lbl_80850F18:
/* 80850F18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80850F1C  41 82 00 0C */	beq lbl_80850F28
/* 80850F20  38 00 00 01 */	li r0, 1
/* 80850F24  48 00 00 28 */	b lbl_80850F4C
lbl_80850F28:
/* 80850F28  38 00 00 02 */	li r0, 2
/* 80850F2C  48 00 00 20 */	b lbl_80850F4C
lbl_80850F30:
/* 80850F30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80850F34  41 82 00 0C */	beq lbl_80850F40
/* 80850F38  38 00 00 05 */	li r0, 5
/* 80850F3C  48 00 00 10 */	b lbl_80850F4C
lbl_80850F40:
/* 80850F40  38 00 00 03 */	li r0, 3
/* 80850F44  48 00 00 08 */	b lbl_80850F4C
lbl_80850F48:
/* 80850F48  38 00 00 04 */	li r0, 4
lbl_80850F4C:
/* 80850F4C  2C 00 00 01 */	cmpwi r0, 1
/* 80850F50  40 82 00 0C */	bne lbl_80850F5C
/* 80850F54  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80850F58  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80850F5C:
/* 80850F5C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80850F60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80850F64  40 80 04 64 */	bge lbl_808513C8
/* 80850F68  38 00 00 06 */	li r0, 6
/* 80850F6C  90 1F 07 48 */	stw r0, 0x748(r31)
/* 80850F70  38 60 00 01 */	li r3, 1
/* 80850F74  48 00 04 58 */	b lbl_808513CC
lbl_80850F78:
/* 80850F78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80850F7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80850F80  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80850F84  7F E4 FB 78 */	mr r4, r31
/* 80850F88  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 80850F8C  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 80850F90  38 C0 00 02 */	li r6, 2
/* 80850F94  4B 7F 19 80 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80850F98  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80850F9C  38 80 E0 00 */	li r4, -8192
/* 80850FA0  38 A0 00 08 */	li r5, 8
/* 80850FA4  38 C0 01 00 */	li r6, 0x100
/* 80850FA8  38 E0 00 40 */	li r7, 0x40
/* 80850FAC  4B A1 F5 94 */	b cLib_addCalcAngleS__FPsssss
/* 80850FB0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80850FB4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80850FB8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80850FBC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80850FC0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80850FC4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80850FC8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80850FCC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80850FD0  7C 64 02 14 */	add r3, r4, r0
/* 80850FD4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80850FD8  FC 00 02 10 */	fabs f0, f0
/* 80850FDC  FC 20 00 18 */	frsp f1, f0
/* 80850FE0  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 80850FE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80850FE8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80850FEC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80850FF0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80850FF4  7C 24 04 2E */	lfsx f1, r4, r0
/* 80850FF8  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 80850FFC  FC 00 00 50 */	fneg f0, f0
/* 80851000  EC 00 00 72 */	fmuls f0, f0, f1
/* 80851004  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80851008  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 8085100C  2C 00 00 78 */	cmpwi r0, 0x78
/* 80851010  40 81 00 AC */	ble lbl_808510BC
/* 80851014  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80851018  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 8085101C  7C 65 1B 78 */	mr r5, r3
/* 80851020  4B AF 60 70 */	b PSVECAdd
/* 80851024  38 7F 06 98 */	addi r3, r31, 0x698
/* 80851028  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 8085102C  7C 65 1B 78 */	mr r5, r3
/* 80851030  4B AF 60 60 */	b PSVECAdd
/* 80851034  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 80851038  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 8085103C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80851040  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80851044  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80851048  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 8085104C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80851050  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80851054  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80851058  38 C1 00 EC */	addi r6, r1, 0xec
/* 8085105C  4B A1 FD 64 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80851060  38 7F 06 98 */	addi r3, r31, 0x698
/* 80851064  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80851068  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 8085106C  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80851070  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80851074  4B A1 EA 44 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80851078  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8085107C  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 80851080  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80851084  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80851088  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 8085108C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80851090  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80851094  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80851098  38 C1 00 EC */	addi r6, r1, 0xec
/* 8085109C  4B A1 FD 24 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 808510A0  38 7F 06 8C */	addi r3, r31, 0x68c
/* 808510A4  38 81 00 F8 */	addi r4, r1, 0xf8
/* 808510A8  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 808510AC  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 808510B0  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 808510B4  4B A1 EA 04 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 808510B8  48 00 00 84 */	b lbl_8085113C
lbl_808510BC:
/* 808510BC  38 7F 06 CC */	addi r3, r31, 0x6cc
/* 808510C0  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 808510C4  C0 5E 01 10 */	lfs f2, 0x110(r30)
/* 808510C8  4B A1 F6 78 */	b cLib_chaseF__FPfff
/* 808510CC  38 7F 06 8C */	addi r3, r31, 0x68c
/* 808510D0  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 808510D4  7C 65 1B 78 */	mr r5, r3
/* 808510D8  4B AF 5F B8 */	b PSVECAdd
/* 808510DC  38 61 00 50 */	addi r3, r1, 0x50
/* 808510E0  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 808510E4  C0 3F 06 CC */	lfs f1, 0x6cc(r31)
/* 808510E8  4B A1 5A 9C */	b __ml__4cXyzCFf
/* 808510EC  38 7F 06 98 */	addi r3, r31, 0x698
/* 808510F0  38 81 00 50 */	addi r4, r1, 0x50
/* 808510F4  7C 65 1B 78 */	mr r5, r3
/* 808510F8  4B AF 5F 98 */	b PSVECAdd
/* 808510FC  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80851100  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 80851104  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80851108  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 8085110C  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 80851110  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80851114  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80851118  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 8085111C  38 C1 00 EC */	addi r6, r1, 0xec
/* 80851120  4B A1 FC A0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80851124  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80851128  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8085112C  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80851130  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80851134  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80851138  4B A1 E9 80 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_8085113C:
/* 8085113C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80851140  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 80851144  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 80851148  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8085114C  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 80851150  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80851154  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 80851158  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8085115C  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 80851160  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80851164  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 80851168  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8085116C  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 80851170  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80851174  7F A3 EB 78 */	mr r3, r29
/* 80851178  38 81 00 44 */	addi r4, r1, 0x44
/* 8085117C  38 A1 00 38 */	addi r5, r1, 0x38
/* 80851180  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 80851184  38 C0 00 00 */	li r6, 0
/* 80851188  4B 92 F9 58 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 8085118C  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 80851190  2C 00 00 00 */	cmpwi r0, 0
/* 80851194  40 82 02 34 */	bne lbl_808513C8
/* 80851198  38 00 00 07 */	li r0, 7
/* 8085119C  90 1F 07 48 */	stw r0, 0x748(r31)
/* 808511A0  38 60 00 01 */	li r3, 1
/* 808511A4  48 00 02 28 */	b lbl_808513CC
lbl_808511A8:
/* 808511A8  38 60 00 00 */	li r3, 0
/* 808511AC  2C 04 00 07 */	cmpwi r4, 7
/* 808511B0  41 82 00 10 */	beq lbl_808511C0
/* 808511B4  88 1F 06 E8 */	lbz r0, 0x6e8(r31)
/* 808511B8  28 00 00 00 */	cmplwi r0, 0
/* 808511BC  40 82 00 18 */	bne lbl_808511D4
lbl_808511C0:
/* 808511C0  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 808511C4  2C 00 00 6E */	cmpwi r0, 0x6e
/* 808511C8  40 82 00 24 */	bne lbl_808511EC
/* 808511CC  38 60 00 01 */	li r3, 1
/* 808511D0  48 00 00 1C */	b lbl_808511EC
lbl_808511D4:
/* 808511D4  2C 04 00 08 */	cmpwi r4, 8
/* 808511D8  40 82 00 14 */	bne lbl_808511EC
/* 808511DC  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 808511E0  2C 00 00 8C */	cmpwi r0, 0x8c
/* 808511E4  40 82 00 08 */	bne lbl_808511EC
/* 808511E8  38 60 00 01 */	li r3, 1
lbl_808511EC:
/* 808511EC  2C 03 00 00 */	cmpwi r3, 0
/* 808511F0  41 82 00 64 */	beq lbl_80851254
/* 808511F4  88 1F 06 E7 */	lbz r0, 0x6e7(r31)
/* 808511F8  28 00 00 01 */	cmplwi r0, 1
/* 808511FC  40 82 00 30 */	bne lbl_8085122C
/* 80851200  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B9@ha */
/* 80851204  38 03 05 B9 */	addi r0, r3, 0x05B9 /* 0x000705B9@l */
/* 80851208  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085120C  38 7F 05 74 */	addi r3, r31, 0x574
/* 80851210  38 81 00 14 */	addi r4, r1, 0x14
/* 80851214  38 A0 FF FF */	li r5, -1
/* 80851218  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 8085121C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80851220  7D 89 03 A6 */	mtctr r12
/* 80851224  4E 80 04 21 */	bctrl 
/* 80851228  48 00 00 2C */	b lbl_80851254
lbl_8085122C:
/* 8085122C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B8@ha */
/* 80851230  38 03 05 B8 */	addi r0, r3, 0x05B8 /* 0x000705B8@l */
/* 80851234  90 01 00 10 */	stw r0, 0x10(r1)
/* 80851238  38 7F 05 74 */	addi r3, r31, 0x574
/* 8085123C  38 81 00 10 */	addi r4, r1, 0x10
/* 80851240  38 A0 FF FF */	li r5, -1
/* 80851244  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 80851248  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8085124C  7D 89 03 A6 */	mtctr r12
/* 80851250  4E 80 04 21 */	bctrl 
lbl_80851254:
/* 80851254  80 1F 07 28 */	lwz r0, 0x728(r31)
/* 80851258  2C 00 00 00 */	cmpwi r0, 0
/* 8085125C  41 82 00 28 */	beq lbl_80851284
/* 80851260  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80851264  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80851268  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8085126C  7F E4 FB 78 */	mr r4, r31
/* 80851270  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 80851274  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 80851278  38 C0 00 01 */	li r6, 1
/* 8085127C  4B 7F 16 98 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80851280  48 00 00 2C */	b lbl_808512AC
lbl_80851284:
/* 80851284  80 1F 07 3C */	lwz r0, 0x73c(r31)
/* 80851288  2C 00 00 00 */	cmpwi r0, 0
/* 8085128C  40 82 00 20 */	bne lbl_808512AC
/* 80851290  7F E3 FB 78 */	mr r3, r31
/* 80851294  38 80 00 00 */	li r4, 0
/* 80851298  4B FF 9B E1 */	bl setSceneChange__8daKago_cFi
/* 8085129C  2C 03 00 00 */	cmpwi r3, 0
/* 808512A0  41 82 00 0C */	beq lbl_808512AC
/* 808512A4  38 00 00 09 */	li r0, 9
/* 808512A8  90 1F 07 48 */	stw r0, 0x748(r31)
lbl_808512AC:
/* 808512AC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 808512B0  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 808512B4  4B A1 F9 50 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 808512B8  7C 64 1B 78 */	mr r4, r3
/* 808512BC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 808512C0  38 A0 00 10 */	li r5, 0x10
/* 808512C4  38 C0 01 00 */	li r6, 0x100
/* 808512C8  38 E0 00 80 */	li r7, 0x80
/* 808512CC  4B A1 F2 74 */	b cLib_addCalcAngleS__FPsssss
/* 808512D0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 808512D4  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 808512D8  4B A1 F9 9C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 808512DC  7C 03 00 D0 */	neg r0, r3
/* 808512E0  7C 04 07 34 */	extsh r4, r0
/* 808512E4  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 808512E8  38 A0 00 10 */	li r5, 0x10
/* 808512EC  38 C0 02 00 */	li r6, 0x200
/* 808512F0  38 E0 00 80 */	li r7, 0x80
/* 808512F4  4B A1 F2 4C */	b cLib_addCalcAngleS__FPsssss
/* 808512F8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 808512FC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80851300  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80851304  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80851308  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8085130C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80851310  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80851314  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80851318  7C 64 02 14 */	add r3, r4, r0
/* 8085131C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80851320  FC 00 02 10 */	fabs f0, f0
/* 80851324  FC 20 00 18 */	frsp f1, f0
/* 80851328  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 8085132C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80851330  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80851334  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80851338  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8085133C  7C 24 04 2E */	lfsx f1, r4, r0
/* 80851340  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 80851344  FC 00 00 50 */	fneg f0, f0
/* 80851348  EC 00 00 72 */	fmuls f0, f0, f1
/* 8085134C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80851350  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80851354  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 80851358  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8085135C  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80851360  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 80851364  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80851368  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8085136C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80851370  38 C1 00 EC */	addi r6, r1, 0xec
/* 80851374  4B A1 FA 4C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80851378  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8085137C  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 80851380  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 80851384  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80851388  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 8085138C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80851390  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 80851394  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80851398  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 8085139C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 808513A0  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 808513A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 808513A8  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 808513AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 808513B0  7F A3 EB 78 */	mr r3, r29
/* 808513B4  38 81 00 2C */	addi r4, r1, 0x2c
/* 808513B8  38 A1 00 20 */	addi r5, r1, 0x20
/* 808513BC  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 808513C0  38 C0 00 00 */	li r6, 0
/* 808513C4  4B 92 F7 1C */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_808513C8:
/* 808513C8  38 60 00 00 */	li r3, 0
lbl_808513CC:
/* 808513CC  39 61 01 20 */	addi r11, r1, 0x120
/* 808513D0  4B B1 0E 58 */	b _restgpr_29
/* 808513D4  80 01 01 24 */	lwz r0, 0x124(r1)
/* 808513D8  7C 08 03 A6 */	mtlr r0
/* 808513DC  38 21 01 20 */	addi r1, r1, 0x120
/* 808513E0  4E 80 00 20 */	blr 
