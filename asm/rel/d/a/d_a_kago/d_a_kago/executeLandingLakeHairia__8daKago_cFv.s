lbl_80851434:
/* 80851434  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80851438  7C 08 02 A6 */	mflr r0
/* 8085143C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80851440  39 61 00 60 */	addi r11, r1, 0x60
/* 80851444  4B B1 0D 99 */	bl _savegpr_29
/* 80851448  7C 7D 1B 78 */	mr r29, r3
/* 8085144C  3C 60 80 85 */	lis r3, lit_3929@ha /* 0x80854B04@ha */
/* 80851450  3B E3 4B 04 */	addi r31, r3, lit_3929@l /* 0x80854B04@l */
/* 80851454  4B 93 01 ED */	bl dCam_getBody__Fv
/* 80851458  7C 7E 1B 78 */	mr r30, r3
/* 8085145C  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 80851460  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80851464  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80851468  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8085146C  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80851470  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80851474  80 1D 07 44 */	lwz r0, 0x744(r29)
/* 80851478  28 00 00 06 */	cmplwi r0, 6
/* 8085147C  41 81 09 10 */	bgt lbl_80851D8C
/* 80851480  3C 80 80 85 */	lis r4, lit_7130@ha /* 0x80854E5C@ha */
/* 80851484  38 84 4E 5C */	addi r4, r4, lit_7130@l /* 0x80854E5C@l */
/* 80851488  54 00 10 3A */	slwi r0, r0, 2
/* 8085148C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80851490  7C 09 03 A6 */	mtctr r0
/* 80851494  4E 80 04 20 */	bctr 
lbl_80851498:
/* 80851498  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 8085149C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 808514A0  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 808514A4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 808514A8  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 808514AC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 808514B0  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 808514B4  28 00 00 02 */	cmplwi r0, 2
/* 808514B8  41 82 00 2C */	beq lbl_808514E4
/* 808514BC  7F A3 EB 78 */	mr r3, r29
/* 808514C0  38 80 00 02 */	li r4, 2
/* 808514C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 808514C8  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 808514CC  38 C0 00 03 */	li r6, 3
/* 808514D0  4B 7C A4 39 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 808514D4  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 808514D8  60 00 00 02 */	ori r0, r0, 2
/* 808514DC  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 808514E0  48 00 08 F4 */	b lbl_80851DD4
lbl_808514E4:
/* 808514E4  4B 90 FF ED */	bl Stop__9dCamera_cFv
/* 808514E8  7F C3 F3 78 */	mr r3, r30
/* 808514EC  38 80 00 03 */	li r4, 3
/* 808514F0  4B 91 1B 1D */	bl SetTrimSize__9dCamera_cFl
/* 808514F4  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 808514F8  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 808514FC  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80851500  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80851504  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 80851508  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8085150C  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 80851510  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 80851514  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 80851518  D0 1D 06 9C */	stfs f0, 0x69c(r29)
/* 8085151C  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 80851520  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 80851524  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80851528  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 8085152C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80851530  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 80851534  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80851538  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 8085153C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80851540  D0 1D 06 D4 */	stfs f0, 0x6d4(r29)
/* 80851544  38 00 00 00 */	li r0, 0
/* 80851548  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8085154C  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80851550  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80851554  38 9D 06 98 */	addi r4, r29, 0x698
/* 80851558  4B A1 F6 AD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8085155C  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80851560  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 80851564  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80851568  38 03 20 00 */	addi r0, r3, 0x2000
/* 8085156C  B0 1D 07 16 */	sth r0, 0x716(r29)
/* 80851570  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80851574  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 80851578  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8085157C  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 80851580  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80851584  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 80851588  38 7D 06 A4 */	addi r3, r29, 0x6a4
/* 8085158C  38 81 00 38 */	addi r4, r1, 0x38
/* 80851590  7C 65 1B 78 */	mr r5, r3
/* 80851594  4B AF 5A FD */	bl PSVECAdd
/* 80851598  38 00 00 01 */	li r0, 1
/* 8085159C  90 1D 07 44 */	stw r0, 0x744(r29)
/* 808515A0  38 00 00 00 */	li r0, 0
/* 808515A4  B0 1D 07 12 */	sth r0, 0x712(r29)
/* 808515A8  38 00 00 96 */	li r0, 0x96
/* 808515AC  90 1D 07 28 */	stw r0, 0x728(r29)
/* 808515B0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 808515B4  D0 1D 06 F8 */	stfs f0, 0x6f8(r29)
/* 808515B8  48 00 07 D4 */	b lbl_80851D8C
lbl_808515BC:
/* 808515BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 808515C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 808515C4  80 63 00 00 */	lwz r3, 0(r3)
/* 808515C8  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 808515CC  80 9D 07 60 */	lwz r4, 0x760(r29)
/* 808515D0  4B A6 4C 19 */	bl setDemoName__11Z2StatusMgrFPc
/* 808515D4  38 00 00 02 */	li r0, 2
/* 808515D8  90 1D 07 44 */	stw r0, 0x744(r29)
lbl_808515DC:
/* 808515DC  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 808515E0  2C 00 00 8C */	cmpwi r0, 0x8c
/* 808515E4  40 82 00 64 */	bne lbl_80851648
/* 808515E8  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 808515EC  28 00 00 01 */	cmplwi r0, 1
/* 808515F0  40 82 00 30 */	bne lbl_80851620
/* 808515F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B9@ha */
/* 808515F8  38 03 05 B9 */	addi r0, r3, 0x05B9 /* 0x000705B9@l */
/* 808515FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80851600  38 7D 05 74 */	addi r3, r29, 0x574
/* 80851604  38 81 00 1C */	addi r4, r1, 0x1c
/* 80851608  38 A0 FF FF */	li r5, -1
/* 8085160C  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80851610  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80851614  7D 89 03 A6 */	mtctr r12
/* 80851618  4E 80 04 21 */	bctrl 
/* 8085161C  48 00 00 2C */	b lbl_80851648
lbl_80851620:
/* 80851620  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B8@ha */
/* 80851624  38 03 05 B8 */	addi r0, r3, 0x05B8 /* 0x000705B8@l */
/* 80851628  90 01 00 18 */	stw r0, 0x18(r1)
/* 8085162C  38 7D 05 74 */	addi r3, r29, 0x574
/* 80851630  38 81 00 18 */	addi r4, r1, 0x18
/* 80851634  38 A0 FF FF */	li r5, -1
/* 80851638  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 8085163C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80851640  7D 89 03 A6 */	mtctr r12
/* 80851644  4E 80 04 21 */	bctrl 
lbl_80851648:
/* 80851648  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8085164C  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 80851650  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80851654  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 80851658  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8085165C  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 80851660  38 7D 07 12 */	addi r3, r29, 0x712
/* 80851664  38 80 00 80 */	li r4, 0x80
/* 80851668  38 A0 00 04 */	li r5, 4
/* 8085166C  4B A1 F5 25 */	bl cLib_chaseAngleS__FPsss
/* 80851670  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80851674  A8 9D 07 16 */	lha r4, 0x716(r29)
/* 80851678  A8 BD 07 12 */	lha r5, 0x712(r29)
/* 8085167C  4B A1 F5 15 */	bl cLib_chaseAngleS__FPsss
/* 80851680  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80851684  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80851688  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8085168C  38 80 10 00 */	li r4, 0x1000
/* 80851690  38 A0 00 20 */	li r5, 0x20
/* 80851694  4B A1 F4 FD */	bl cLib_chaseAngleS__FPsss
/* 80851698  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 8085169C  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 808516A0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 808516A4  D0 1D 06 F8 */	stfs f0, 0x6f8(r29)
/* 808516A8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 808516AC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 808516B0  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 808516B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 808516B8  7C 64 02 14 */	add r3, r4, r0
/* 808516BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 808516C0  FC 00 02 10 */	fabs f0, f0
/* 808516C4  FC 20 00 18 */	frsp f1, f0
/* 808516C8  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 808516CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 808516D0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 808516D4  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 808516D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 808516DC  7C 24 04 2E */	lfsx f1, r4, r0
/* 808516E0  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 808516E4  FC 00 00 50 */	fneg f0, f0
/* 808516E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 808516EC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 808516F0  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 808516F4  2C 00 00 00 */	cmpwi r0, 0
/* 808516F8  40 82 00 0C */	bne lbl_80851704
/* 808516FC  38 00 00 03 */	li r0, 3
/* 80851700  90 1D 07 44 */	stw r0, 0x744(r29)
lbl_80851704:
/* 80851704  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80851708  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085170C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80851710  7F A4 EB 78 */	mr r4, r29
/* 80851714  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha /* 0x8084AA64@ha */
/* 80851718  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l /* 0x8084AA64@l */
/* 8085171C  38 C0 00 07 */	li r6, 7
/* 80851720  4B 7F 11 F5 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80851724  48 00 06 68 */	b lbl_80851D8C
lbl_80851728:
/* 80851728  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 8085172C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80851730  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 80851734  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80851738  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 8085173C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80851740  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80851744  38 81 00 38 */	addi r4, r1, 0x38
/* 80851748  7C 65 1B 78 */	mr r5, r3
/* 8085174C  4B AF 59 45 */	bl PSVECAdd
/* 80851750  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80851754  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 80851758  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8085175C  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 80851760  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80851764  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 80851768  38 7D 06 A4 */	addi r3, r29, 0x6a4
/* 8085176C  38 81 00 38 */	addi r4, r1, 0x38
/* 80851770  7C 65 1B 78 */	mr r5, r3
/* 80851774  4B AF 59 1D */	bl PSVECAdd
/* 80851778  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 8085177C  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 80851780  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 80851784  D0 1D 06 9C */	stfs f0, 0x69c(r29)
/* 80851788  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 8085178C  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 80851790  38 7D 06 98 */	addi r3, r29, 0x698
/* 80851794  38 81 00 38 */	addi r4, r1, 0x38
/* 80851798  7C 65 1B 78 */	mr r5, r3
/* 8085179C  4B AF 58 F5 */	bl PSVECAdd
/* 808517A0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 808517A4  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 808517A8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 808517AC  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 808517B0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 808517B4  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 808517B8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 808517BC  D0 1D 06 D4 */	stfs f0, 0x6d4(r29)
/* 808517C0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 808517C4  38 9D 06 A4 */	addi r4, r29, 0x6a4
/* 808517C8  4B A1 F4 AD */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 808517CC  7C 03 00 D0 */	neg r0, r3
/* 808517D0  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 808517D4  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 808517D8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 808517DC  38 9D 06 A4 */	addi r4, r29, 0x6a4
/* 808517E0  4B A1 F4 25 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 808517E4  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 808517E8  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 808517EC  38 00 00 04 */	li r0, 4
/* 808517F0  90 1D 07 44 */	stw r0, 0x744(r29)
/* 808517F4  38 00 00 3C */	li r0, 0x3c
/* 808517F8  90 1D 07 28 */	stw r0, 0x728(r29)
/* 808517FC  7F A3 EB 78 */	mr r3, r29
/* 80851800  38 80 00 0D */	li r4, 0xd
/* 80851804  38 A0 00 02 */	li r5, 2
/* 80851808  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8085180C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80851810  4B FF 7E E1 */	bl setBck__8daKago_cFiUcff
lbl_80851814:
/* 80851814  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80851818  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 8085181C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80851820  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 80851824  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80851828  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 8085182C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80851830  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80851834  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80851838  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8085183C  7C 64 02 14 */	add r3, r4, r0
/* 80851840  C0 03 00 04 */	lfs f0, 4(r3)
/* 80851844  FC 00 02 10 */	fabs f0, f0
/* 80851848  FC 20 00 18 */	frsp f1, f0
/* 8085184C  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80851850  EC 00 00 72 */	fmuls f0, f0, f1
/* 80851854  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80851858  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8085185C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80851860  7C 24 04 2E */	lfsx f1, r4, r0
/* 80851864  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80851868  FC 00 00 50 */	fneg f0, f0
/* 8085186C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80851870  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80851874  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 80851878  2C 00 00 00 */	cmpwi r0, 0
/* 8085187C  40 82 00 14 */	bne lbl_80851890
/* 80851880  38 00 00 05 */	li r0, 5
/* 80851884  90 1D 07 44 */	stw r0, 0x744(r29)
/* 80851888  38 00 00 28 */	li r0, 0x28
/* 8085188C  90 1D 07 28 */	stw r0, 0x728(r29)
lbl_80851890:
/* 80851890  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80851894  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80851898  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8085189C  7F A4 EB 78 */	mr r4, r29
/* 808518A0  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha /* 0x8084AA64@ha */
/* 808518A4  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l /* 0x8084AA64@l */
/* 808518A8  38 C0 00 07 */	li r6, 7
/* 808518AC  4B 7F 10 69 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 808518B0  48 00 04 DC */	b lbl_80851D8C
lbl_808518B4:
/* 808518B4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 808518B8  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 808518BC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 808518C0  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 808518C4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 808518C8  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 808518CC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 808518D0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 808518D4  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 808518D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 808518DC  7C 64 02 14 */	add r3, r4, r0
/* 808518E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 808518E4  FC 00 02 10 */	fabs f0, f0
/* 808518E8  FC 20 00 18 */	frsp f1, f0
/* 808518EC  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 808518F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 808518F4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 808518F8  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 808518FC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80851900  7C 24 04 2E */	lfsx f1, r4, r0
/* 80851904  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80851908  FC 00 00 50 */	fneg f0, f0
/* 8085190C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80851910  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80851914  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80851918  38 80 00 00 */	li r4, 0
/* 8085191C  38 A0 00 80 */	li r5, 0x80
/* 80851920  4B A1 F2 71 */	bl cLib_chaseAngleS__FPsss
/* 80851924  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80851928  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8085192C  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 80851930  2C 00 00 00 */	cmpwi r0, 0
/* 80851934  40 82 00 38 */	bne lbl_8085196C
/* 80851938  7F A3 EB 78 */	mr r3, r29
/* 8085193C  4B FF 92 8D */	bl setRideOff__8daKago_cFv
/* 80851940  38 00 00 06 */	li r0, 6
/* 80851944  90 1D 07 44 */	stw r0, 0x744(r29)
/* 80851948  38 00 00 64 */	li r0, 0x64
/* 8085194C  90 1D 07 28 */	stw r0, 0x728(r29)
/* 80851950  7F A3 EB 78 */	mr r3, r29
/* 80851954  38 80 00 0F */	li r4, 0xf
/* 80851958  38 A0 00 02 */	li r5, 2
/* 8085195C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80851960  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80851964  4B FF 7D 8D */	bl setBck__8daKago_cFiUcff
/* 80851968  48 00 00 24 */	b lbl_8085198C
lbl_8085196C:
/* 8085196C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80851970  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80851974  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80851978  7F A4 EB 78 */	mr r4, r29
/* 8085197C  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha /* 0x8084AA64@ha */
/* 80851980  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l /* 0x8084AA64@l */
/* 80851984  38 C0 00 07 */	li r6, 7
/* 80851988  4B 7F 0F 8D */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_8085198C:
/* 8085198C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80851990  D0 1D 06 CC */	stfs f0, 0x6cc(r29)
/* 80851994  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80851998  D0 1D 06 D0 */	stfs f0, 0x6d0(r29)
/* 8085199C  48 00 03 F0 */	b lbl_80851D8C
lbl_808519A0:
/* 808519A0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 808519A4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 808519A8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 808519AC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 808519B0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 808519B4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 808519B8  38 61 00 44 */	addi r3, r1, 0x44
/* 808519BC  38 81 00 38 */	addi r4, r1, 0x38
/* 808519C0  7C 65 1B 78 */	mr r5, r3
/* 808519C4  4B AF 56 CD */	bl PSVECAdd
/* 808519C8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 808519CC  38 81 00 44 */	addi r4, r1, 0x44
/* 808519D0  C0 3D 06 CC */	lfs f1, 0x6cc(r29)
/* 808519D4  4B A1 ED D9 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 808519D8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 808519DC  38 81 00 44 */	addi r4, r1, 0x44
/* 808519E0  4B AF 59 BD */	bl PSVECSquareDistance
/* 808519E4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 808519E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808519EC  40 81 00 58 */	ble lbl_80851A44
/* 808519F0  FC 00 08 34 */	frsqrte f0, f1
/* 808519F4  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 808519F8  FC 44 00 32 */	fmul f2, f4, f0
/* 808519FC  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80851A00  FC 00 00 32 */	fmul f0, f0, f0
/* 80851A04  FC 01 00 32 */	fmul f0, f1, f0
/* 80851A08  FC 03 00 28 */	fsub f0, f3, f0
/* 80851A0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80851A10  FC 44 00 32 */	fmul f2, f4, f0
/* 80851A14  FC 00 00 32 */	fmul f0, f0, f0
/* 80851A18  FC 01 00 32 */	fmul f0, f1, f0
/* 80851A1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80851A20  FC 02 00 32 */	fmul f0, f2, f0
/* 80851A24  FC 44 00 32 */	fmul f2, f4, f0
/* 80851A28  FC 00 00 32 */	fmul f0, f0, f0
/* 80851A2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80851A30  FC 03 00 28 */	fsub f0, f3, f0
/* 80851A34  FC 02 00 32 */	fmul f0, f2, f0
/* 80851A38  FC 21 00 32 */	fmul f1, f1, f0
/* 80851A3C  FC 20 08 18 */	frsp f1, f1
/* 80851A40  48 00 00 88 */	b lbl_80851AC8
lbl_80851A44:
/* 80851A44  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80851A48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80851A4C  40 80 00 10 */	bge lbl_80851A5C
/* 80851A50  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80851A54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80851A58  48 00 00 70 */	b lbl_80851AC8
lbl_80851A5C:
/* 80851A5C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80851A60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80851A64  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80851A68  3C 00 7F 80 */	lis r0, 0x7f80
/* 80851A6C  7C 03 00 00 */	cmpw r3, r0
/* 80851A70  41 82 00 14 */	beq lbl_80851A84
/* 80851A74  40 80 00 40 */	bge lbl_80851AB4
/* 80851A78  2C 03 00 00 */	cmpwi r3, 0
/* 80851A7C  41 82 00 20 */	beq lbl_80851A9C
/* 80851A80  48 00 00 34 */	b lbl_80851AB4
lbl_80851A84:
/* 80851A84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80851A88  41 82 00 0C */	beq lbl_80851A94
/* 80851A8C  38 00 00 01 */	li r0, 1
/* 80851A90  48 00 00 28 */	b lbl_80851AB8
lbl_80851A94:
/* 80851A94  38 00 00 02 */	li r0, 2
/* 80851A98  48 00 00 20 */	b lbl_80851AB8
lbl_80851A9C:
/* 80851A9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80851AA0  41 82 00 0C */	beq lbl_80851AAC
/* 80851AA4  38 00 00 05 */	li r0, 5
/* 80851AA8  48 00 00 10 */	b lbl_80851AB8
lbl_80851AAC:
/* 80851AAC  38 00 00 03 */	li r0, 3
/* 80851AB0  48 00 00 08 */	b lbl_80851AB8
lbl_80851AB4:
/* 80851AB4  38 00 00 04 */	li r0, 4
lbl_80851AB8:
/* 80851AB8  2C 00 00 01 */	cmpwi r0, 1
/* 80851ABC  40 82 00 0C */	bne lbl_80851AC8
/* 80851AC0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80851AC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80851AC8:
/* 80851AC8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80851ACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80851AD0  40 80 00 14 */	bge lbl_80851AE4
/* 80851AD4  38 7D 06 CC */	addi r3, r29, 0x6cc
/* 80851AD8  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80851ADC  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80851AE0  4B A1 EC 61 */	bl cLib_chaseF__FPfff
lbl_80851AE4:
/* 80851AE4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80851AE8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80851AEC  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80851AF0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80851AF4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80851AF8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80851AFC  38 61 00 44 */	addi r3, r1, 0x44
/* 80851B00  38 81 00 38 */	addi r4, r1, 0x38
/* 80851B04  7C 65 1B 78 */	mr r5, r3
/* 80851B08  4B AF 55 89 */	bl PSVECAdd
/* 80851B0C  38 7D 06 98 */	addi r3, r29, 0x698
/* 80851B10  38 81 00 44 */	addi r4, r1, 0x44
/* 80851B14  C0 3D 06 D0 */	lfs f1, 0x6d0(r29)
/* 80851B18  4B A1 EC 95 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80851B1C  38 7D 06 98 */	addi r3, r29, 0x698
/* 80851B20  38 81 00 44 */	addi r4, r1, 0x44
/* 80851B24  4B AF 58 79 */	bl PSVECSquareDistance
/* 80851B28  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80851B2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80851B30  40 81 00 58 */	ble lbl_80851B88
/* 80851B34  FC 00 08 34 */	frsqrte f0, f1
/* 80851B38  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80851B3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80851B40  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80851B44  FC 00 00 32 */	fmul f0, f0, f0
/* 80851B48  FC 01 00 32 */	fmul f0, f1, f0
/* 80851B4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80851B50  FC 02 00 32 */	fmul f0, f2, f0
/* 80851B54  FC 44 00 32 */	fmul f2, f4, f0
/* 80851B58  FC 00 00 32 */	fmul f0, f0, f0
/* 80851B5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80851B60  FC 03 00 28 */	fsub f0, f3, f0
/* 80851B64  FC 02 00 32 */	fmul f0, f2, f0
/* 80851B68  FC 44 00 32 */	fmul f2, f4, f0
/* 80851B6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80851B70  FC 01 00 32 */	fmul f0, f1, f0
/* 80851B74  FC 03 00 28 */	fsub f0, f3, f0
/* 80851B78  FC 02 00 32 */	fmul f0, f2, f0
/* 80851B7C  FC 21 00 32 */	fmul f1, f1, f0
/* 80851B80  FC 20 08 18 */	frsp f1, f1
/* 80851B84  48 00 00 88 */	b lbl_80851C0C
lbl_80851B88:
/* 80851B88  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80851B8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80851B90  40 80 00 10 */	bge lbl_80851BA0
/* 80851B94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80851B98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80851B9C  48 00 00 70 */	b lbl_80851C0C
lbl_80851BA0:
/* 80851BA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80851BA4  80 81 00 08 */	lwz r4, 8(r1)
/* 80851BA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80851BAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80851BB0  7C 03 00 00 */	cmpw r3, r0
/* 80851BB4  41 82 00 14 */	beq lbl_80851BC8
/* 80851BB8  40 80 00 40 */	bge lbl_80851BF8
/* 80851BBC  2C 03 00 00 */	cmpwi r3, 0
/* 80851BC0  41 82 00 20 */	beq lbl_80851BE0
/* 80851BC4  48 00 00 34 */	b lbl_80851BF8
lbl_80851BC8:
/* 80851BC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80851BCC  41 82 00 0C */	beq lbl_80851BD8
/* 80851BD0  38 00 00 01 */	li r0, 1
/* 80851BD4  48 00 00 28 */	b lbl_80851BFC
lbl_80851BD8:
/* 80851BD8  38 00 00 02 */	li r0, 2
/* 80851BDC  48 00 00 20 */	b lbl_80851BFC
lbl_80851BE0:
/* 80851BE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80851BE4  41 82 00 0C */	beq lbl_80851BF0
/* 80851BE8  38 00 00 05 */	li r0, 5
/* 80851BEC  48 00 00 10 */	b lbl_80851BFC
lbl_80851BF0:
/* 80851BF0  38 00 00 03 */	li r0, 3
/* 80851BF4  48 00 00 08 */	b lbl_80851BFC
lbl_80851BF8:
/* 80851BF8  38 00 00 04 */	li r0, 4
lbl_80851BFC:
/* 80851BFC  2C 00 00 01 */	cmpwi r0, 1
/* 80851C00  40 82 00 0C */	bne lbl_80851C0C
/* 80851C04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80851C08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80851C0C:
/* 80851C0C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80851C10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80851C14  40 80 00 18 */	bge lbl_80851C2C
/* 80851C18  38 7D 06 D0 */	addi r3, r29, 0x6d0
/* 80851C1C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80851C20  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80851C24  4B A1 EB 1D */	bl cLib_chaseF__FPfff
/* 80851C28  48 00 00 14 */	b lbl_80851C3C
lbl_80851C2C:
/* 80851C2C  38 7D 06 D0 */	addi r3, r29, 0x6d0
/* 80851C30  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80851C34  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80851C38  4B A1 EB 09 */	bl cLib_chaseF__FPfff
lbl_80851C3C:
/* 80851C3C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80851C40  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80851C44  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80851C48  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80851C4C  7C 64 02 14 */	add r3, r4, r0
/* 80851C50  C0 03 00 04 */	lfs f0, 4(r3)
/* 80851C54  FC 00 02 10 */	fabs f0, f0
/* 80851C58  FC 20 00 18 */	frsp f1, f0
/* 80851C5C  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80851C60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80851C64  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80851C68  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80851C6C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80851C70  7C 24 04 2E */	lfsx f1, r4, r0
/* 80851C74  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80851C78  FC 00 00 50 */	fneg f0, f0
/* 80851C7C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80851C80  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80851C84  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80851C88  38 80 E0 00 */	li r4, -8192
/* 80851C8C  38 A0 01 00 */	li r5, 0x100
/* 80851C90  4B A1 EF 01 */	bl cLib_chaseAngleS__FPsss
/* 80851C94  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80851C98  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80851C9C  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 80851CA0  2C 00 00 5A */	cmpwi r0, 0x5a
/* 80851CA4  40 82 00 64 */	bne lbl_80851D08
/* 80851CA8  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 80851CAC  28 00 00 01 */	cmplwi r0, 1
/* 80851CB0  40 82 00 30 */	bne lbl_80851CE0
/* 80851CB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B9@ha */
/* 80851CB8  38 03 05 B9 */	addi r0, r3, 0x05B9 /* 0x000705B9@l */
/* 80851CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80851CC0  38 7D 05 74 */	addi r3, r29, 0x574
/* 80851CC4  38 81 00 14 */	addi r4, r1, 0x14
/* 80851CC8  38 A0 FF FF */	li r5, -1
/* 80851CCC  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80851CD0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80851CD4  7D 89 03 A6 */	mtctr r12
/* 80851CD8  4E 80 04 21 */	bctrl 
/* 80851CDC  48 00 00 2C */	b lbl_80851D08
lbl_80851CE0:
/* 80851CE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B8@ha */
/* 80851CE4  38 03 05 B8 */	addi r0, r3, 0x05B8 /* 0x000705B8@l */
/* 80851CE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80851CEC  38 7D 05 74 */	addi r3, r29, 0x574
/* 80851CF0  38 81 00 10 */	addi r4, r1, 0x10
/* 80851CF4  38 A0 FF FF */	li r5, -1
/* 80851CF8  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80851CFC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80851D00  7D 89 03 A6 */	mtctr r12
/* 80851D04  4E 80 04 21 */	bctrl 
lbl_80851D08:
/* 80851D08  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 80851D0C  2C 00 00 00 */	cmpwi r0, 0
/* 80851D10  40 82 00 5C */	bne lbl_80851D6C
/* 80851D14  7F A3 EB 78 */	mr r3, r29
/* 80851D18  38 80 00 04 */	li r4, 4
/* 80851D1C  38 A0 00 00 */	li r5, 0
/* 80851D20  4B FF 8D 79 */	bl setActionMode__8daKago_cFii
/* 80851D24  7F C3 F3 78 */	mr r3, r30
/* 80851D28  4B 92 EF 41 */	bl Reset__9dCamera_cFv
/* 80851D2C  7F C3 F3 78 */	mr r3, r30
/* 80851D30  4B 90 F7 7D */	bl Start__9dCamera_cFv
/* 80851D34  7F C3 F3 78 */	mr r3, r30
/* 80851D38  38 80 00 00 */	li r4, 0
/* 80851D3C  4B 91 12 D1 */	bl SetTrimSize__9dCamera_cFl
/* 80851D40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80851D44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80851D48  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80851D4C  4B 7F 07 1D */	bl reset__14dEvt_control_cFv
/* 80851D50  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80851D54  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80851D58  80 63 00 00 */	lwz r3, 0(r3)
/* 80851D5C  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80851D60  38 80 00 00 */	li r4, 0
/* 80851D64  4B A6 44 85 */	bl setDemoName__11Z2StatusMgrFPc
/* 80851D68  48 00 00 6C */	b lbl_80851DD4
lbl_80851D6C:
/* 80851D6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80851D70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80851D74  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80851D78  7F A4 EB 78 */	mr r4, r29
/* 80851D7C  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha /* 0x8084AA64@ha */
/* 80851D80  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l /* 0x8084AA64@l */
/* 80851D84  38 C0 00 08 */	li r6, 8
/* 80851D88  4B 7F 0B 8D */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80851D8C:
/* 80851D8C  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 80851D90  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80851D94  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 80851D98  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80851D9C  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 80851DA0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80851DA4  C0 1D 06 98 */	lfs f0, 0x698(r29)
/* 80851DA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80851DAC  C0 1D 06 9C */	lfs f0, 0x69c(r29)
/* 80851DB0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80851DB4  C0 1D 06 A0 */	lfs f0, 0x6a0(r29)
/* 80851DB8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80851DBC  7F C3 F3 78 */	mr r3, r30
/* 80851DC0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80851DC4  38 A1 00 20 */	addi r5, r1, 0x20
/* 80851DC8  C0 3D 06 D4 */	lfs f1, 0x6d4(r29)
/* 80851DCC  38 C0 00 00 */	li r6, 0
/* 80851DD0  4B 92 ED 11 */	bl Set__9dCamera_cF4cXyz4cXyzfs
lbl_80851DD4:
/* 80851DD4  39 61 00 60 */	addi r11, r1, 0x60
/* 80851DD8  4B B1 04 51 */	bl _restgpr_29
/* 80851DDC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80851DE0  7C 08 03 A6 */	mtlr r0
/* 80851DE4  38 21 00 60 */	addi r1, r1, 0x60
/* 80851DE8  4E 80 00 20 */	blr 
