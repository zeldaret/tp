lbl_805914A8:
/* 805914A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805914AC  7C 08 02 A6 */	mflr r0
/* 805914B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805914B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805914B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805914BC  7C 7E 1B 78 */	mr r30, r3
/* 805914C0  3C 60 80 59 */	lis r3, l_magne_scale@ha
/* 805914C4  3B E3 28 48 */	addi r31, r3, l_magne_scale@l
/* 805914C8  38 7E 0A 17 */	addi r3, r30, 0xa17
/* 805914CC  48 00 13 49 */	bl func_80592814
/* 805914D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805914D4  40 82 00 A0 */	bne lbl_80591574
/* 805914D8  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 805914DC  38 9F 00 2C */	addi r4, r31, 0x2c
/* 805914E0  A8 84 00 04 */	lha r4, 4(r4)
/* 805914E4  38 A0 00 14 */	li r5, 0x14
/* 805914E8  38 C0 00 32 */	li r6, 0x32
/* 805914EC  38 E0 00 0A */	li r7, 0xa
/* 805914F0  4B CD F0 50 */	b cLib_addCalcAngleS__FPsssss
/* 805914F4  A8 7E 0A 0C */	lha r3, 0xa0c(r30)
/* 805914F8  A8 1E 0A 00 */	lha r0, 0xa00(r30)
/* 805914FC  7C 03 00 50 */	subf r0, r3, r0
/* 80591500  B0 1E 0A 00 */	sth r0, 0xa00(r30)
/* 80591504  C0 7E 0A 04 */	lfs f3, 0xa04(r30)
/* 80591508  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 8059150C  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 80591510  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 80591514  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80591518  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059151C  3C 00 43 30 */	lis r0, 0x4330
/* 80591520  90 01 00 08 */	stw r0, 8(r1)
/* 80591524  C8 01 00 08 */	lfd f0, 8(r1)
/* 80591528  EC 00 08 28 */	fsubs f0, f0, f1
/* 8059152C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80591530  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80591534  EC 01 00 24 */	fdivs f0, f1, f0
/* 80591538  EC 03 00 28 */	fsubs f0, f3, f0
/* 8059153C  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 80591540  C0 3E 0A 04 */	lfs f1, 0xa04(r30)
/* 80591544  88 1E 0A 15 */	lbz r0, 0xa15(r30)
/* 80591548  54 00 10 3A */	slwi r0, r0, 2
/* 8059154C  38 7F 00 0C */	addi r3, r31, 0xc
/* 80591550  7C 03 04 2E */	lfsx f0, r3, r0
/* 80591554  FC 00 00 50 */	fneg f0, f0
/* 80591558  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059155C  40 80 00 10 */	bge lbl_8059156C
/* 80591560  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 80591564  7F C3 F3 78 */	mr r3, r30
/* 80591568  4B FF FE 35 */	bl init_typeC_modeLiftUp__11daObjMarm_cFv
lbl_8059156C:
/* 8059156C  7F C3 F3 78 */	mr r3, r30
/* 80591570  48 00 0A 49 */	bl seStartLevel_DOWN__11daObjMarm_cFv
lbl_80591574:
/* 80591574  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80591578  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059157C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80591580  7C 08 03 A6 */	mtlr r0
/* 80591584  38 21 00 20 */	addi r1, r1, 0x20
/* 80591588  4E 80 00 20 */	blr 
