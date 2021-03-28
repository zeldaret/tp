lbl_80603638:
/* 80603638  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8060363C  7C 08 02 A6 */	mflr r0
/* 80603640  90 01 00 44 */	stw r0, 0x44(r1)
/* 80603644  39 61 00 40 */	addi r11, r1, 0x40
/* 80603648  4B D5 EB 94 */	b _savegpr_29
/* 8060364C  7C 7D 1B 78 */	mr r29, r3
/* 80603650  3C 80 80 60 */	lis r4, lit_3646@ha
/* 80603654  3B C4 40 44 */	addi r30, r4, lit_3646@l
/* 80603658  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8060365C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80603660  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80603664  4B A1 70 AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80603668  B0 7D 06 7E */	sth r3, 0x67e(r29)
/* 8060366C  7F A3 EB 78 */	mr r3, r29
/* 80603670  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80603674  4B A1 71 6C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80603678  D0 3D 06 80 */	stfs f1, 0x680(r29)
/* 8060367C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80603680  54 00 00 3E */	slwi r0, r0, 0
/* 80603684  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80603688  38 00 00 00 */	li r0, 0
/* 8060368C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80603690  A8 1D 06 8A */	lha r0, 0x68a(r29)
/* 80603694  2C 00 00 00 */	cmpwi r0, 0
/* 80603698  40 82 00 64 */	bne lbl_806036FC
/* 8060369C  A8 1D 06 92 */	lha r0, 0x692(r29)
/* 806036A0  2C 00 00 02 */	cmpwi r0, 2
/* 806036A4  41 82 00 30 */	beq lbl_806036D4
/* 806036A8  38 00 00 02 */	li r0, 2
/* 806036AC  B0 1D 06 92 */	sth r0, 0x692(r29)
/* 806036B0  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 806036B4  4B C6 42 A0 */	b cM_rndF__Ff
/* 806036B8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 806036BC  EC 00 08 2A */	fadds f0, f0, f1
/* 806036C0  FC 00 00 1E */	fctiwz f0, f0
/* 806036C4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806036C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806036CC  B0 1D 06 8A */	sth r0, 0x68a(r29)
/* 806036D0  48 00 00 2C */	b lbl_806036FC
lbl_806036D4:
/* 806036D4  38 00 00 01 */	li r0, 1
/* 806036D8  B0 1D 06 92 */	sth r0, 0x692(r29)
/* 806036DC  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806036E0  4B C6 42 74 */	b cM_rndF__Ff
/* 806036E4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806036E8  EC 00 08 2A */	fadds f0, f0, f1
/* 806036EC  FC 00 00 1E */	fctiwz f0, f0
/* 806036F0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806036F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806036F8  B0 1D 06 8A */	sth r0, 0x68a(r29)
lbl_806036FC:
/* 806036FC  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 80603700  2C 00 00 01 */	cmpwi r0, 1
/* 80603704  41 82 00 2C */	beq lbl_80603730
/* 80603708  40 80 00 10 */	bge lbl_80603718
/* 8060370C  2C 00 00 00 */	cmpwi r0, 0
/* 80603710  40 80 00 14 */	bge lbl_80603724
/* 80603714  48 00 00 30 */	b lbl_80603744
lbl_80603718:
/* 80603718  2C 00 00 03 */	cmpwi r0, 3
/* 8060371C  40 80 00 28 */	bge lbl_80603744
/* 80603720  48 00 00 1C */	b lbl_8060373C
lbl_80603724:
/* 80603724  7F A3 EB 78 */	mr r3, r29
/* 80603728  4B FF FB F9 */	bl h_wait__FP10b_go_class
/* 8060372C  48 00 00 18 */	b lbl_80603744
lbl_80603730:
/* 80603730  7F A3 EB 78 */	mr r3, r29
/* 80603734  4B FF FC BD */	bl h_walk__FP10b_go_class
/* 80603738  48 00 00 0C */	b lbl_80603744
lbl_8060373C:
/* 8060373C  7F A3 EB 78 */	mr r3, r29
/* 80603740  4B FF FD C9 */	bl h_attack__FP10b_go_class
lbl_80603744:
/* 80603744  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80603748  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8060374C  38 A0 00 04 */	li r5, 4
/* 80603750  38 C0 20 00 */	li r6, 0x2000
/* 80603754  4B C6 CE B4 */	b cLib_addCalcAngleS2__FPssss
/* 80603758  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8060375C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80603760  80 63 00 00 */	lwz r3, 0(r3)
/* 80603764  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80603768  4B A0 8C 74 */	b mDoMtx_YrotS__FPA4_fs
/* 8060376C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80603770  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80603774  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80603778  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8060377C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80603780  38 61 00 14 */	addi r3, r1, 0x14
/* 80603784  38 81 00 08 */	addi r4, r1, 8
/* 80603788  4B C6 D7 64 */	b MtxPosition__FP4cXyzP4cXyz
/* 8060378C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80603790  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80603794  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80603798  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 8060379C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806037A0  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 806037A4  7C 65 1B 78 */	mr r5, r3
/* 806037A8  4B D4 38 E8 */	b PSVECAdd
/* 806037AC  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 806037B0  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 806037B4  EC 01 00 2A */	fadds f0, f1, f0
/* 806037B8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806037BC  38 7D 06 D4 */	addi r3, r29, 0x6d4
/* 806037C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806037C4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806037C8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806037CC  4B A7 32 E0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806037D0  39 61 00 40 */	addi r11, r1, 0x40
/* 806037D4  4B D5 EA 54 */	b _restgpr_29
/* 806037D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806037DC  7C 08 03 A6 */	mtlr r0
/* 806037E0  38 21 00 40 */	addi r1, r1, 0x40
/* 806037E4  4E 80 00 20 */	blr 
