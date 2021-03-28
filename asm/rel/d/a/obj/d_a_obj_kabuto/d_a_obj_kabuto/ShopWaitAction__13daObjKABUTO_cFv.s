lbl_80C2B36C:
/* 80C2B36C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C2B370  7C 08 02 A6 */	mflr r0
/* 80C2B374  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C2B378  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C2B37C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C2B380  7C 7F 1B 78 */	mr r31, r3
/* 80C2B384  3C 60 80 C3 */	lis r3, lit_3775@ha
/* 80C2B388  3B C3 E1 10 */	addi r30, r3, lit_3775@l
/* 80C2B38C  88 1F 07 11 */	lbz r0, 0x711(r31)
/* 80C2B390  2C 00 00 01 */	cmpwi r0, 1
/* 80C2B394  41 82 00 90 */	beq lbl_80C2B424
/* 80C2B398  40 80 01 24 */	bge lbl_80C2B4BC
/* 80C2B39C  2C 00 00 00 */	cmpwi r0, 0
/* 80C2B3A0  40 80 00 08 */	bge lbl_80C2B3A8
/* 80C2B3A4  48 00 01 18 */	b lbl_80C2B4BC
lbl_80C2B3A8:
/* 80C2B3A8  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80C2B3AC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C2B3B0  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2B3B4  38 63 E2 18 */	addi r3, r3, stringBase0@l
/* 80C2B3B8  38 80 00 07 */	li r4, 7
/* 80C2B3BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C2B3C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C2B3C4  3C A5 00 02 */	addis r5, r5, 2
/* 80C2B3C8  38 C0 00 80 */	li r6, 0x80
/* 80C2B3CC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2B3D0  4B 41 0F 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2B3D4  7C 64 1B 78 */	mr r4, r3
/* 80C2B3D8  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 80C2B3DC  38 A0 00 02 */	li r5, 2
/* 80C2B3E0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80C2B3E4  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 80C2B3E8  FC 60 10 90 */	fmr f3, f2
/* 80C2B3EC  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80C2B3F0  4B 3E 5A 80 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C2B3F4  88 7F 07 11 */	lbz r3, 0x711(r31)
/* 80C2B3F8  38 03 00 01 */	addi r0, r3, 1
/* 80C2B3FC  98 1F 07 11 */	stb r0, 0x711(r31)
/* 80C2B400  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C2B404  4B 63 C5 50 */	b cM_rndF__Ff
/* 80C2B408  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80C2B40C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2B410  FC 00 00 1E */	fctiwz f0, f0
/* 80C2B414  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C2B418  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C2B41C  B0 1F 07 12 */	sth r0, 0x712(r31)
/* 80C2B420  48 00 00 9C */	b lbl_80C2B4BC
lbl_80C2B424:
/* 80C2B424  A8 7F 07 12 */	lha r3, 0x712(r31)
/* 80C2B428  38 03 FF FF */	addi r0, r3, -1
/* 80C2B42C  B0 1F 07 12 */	sth r0, 0x712(r31)
/* 80C2B430  A8 1F 07 12 */	lha r0, 0x712(r31)
/* 80C2B434  2C 00 00 00 */	cmpwi r0, 0
/* 80C2B438  41 81 00 0C */	bgt lbl_80C2B444
/* 80C2B43C  38 00 00 00 */	li r0, 0
/* 80C2B440  B0 1F 07 12 */	sth r0, 0x712(r31)
lbl_80C2B444:
/* 80C2B444  A8 1F 07 12 */	lha r0, 0x712(r31)
/* 80C2B448  2C 00 00 00 */	cmpwi r0, 0
/* 80C2B44C  40 82 00 70 */	bne lbl_80C2B4BC
/* 80C2B450  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80C2B454  4B 63 C5 00 */	b cM_rndF__Ff
/* 80C2B458  FC 00 08 1E */	fctiwz f0, f1
/* 80C2B45C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C2B460  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C2B464  2C 00 00 28 */	cmpwi r0, 0x28
/* 80C2B468  40 80 00 18 */	bge lbl_80C2B480
/* 80C2B46C  38 00 00 02 */	li r0, 2
/* 80C2B470  98 1F 07 10 */	stb r0, 0x710(r31)
/* 80C2B474  38 00 00 00 */	li r0, 0
/* 80C2B478  98 1F 07 11 */	stb r0, 0x711(r31)
/* 80C2B47C  48 00 00 40 */	b lbl_80C2B4BC
lbl_80C2B480:
/* 80C2B480  2C 00 00 46 */	cmpwi r0, 0x46
/* 80C2B484  40 80 00 18 */	bge lbl_80C2B49C
/* 80C2B488  38 00 00 01 */	li r0, 1
/* 80C2B48C  98 1F 07 10 */	stb r0, 0x710(r31)
/* 80C2B490  38 00 00 00 */	li r0, 0
/* 80C2B494  98 1F 07 11 */	stb r0, 0x711(r31)
/* 80C2B498  48 00 00 24 */	b lbl_80C2B4BC
lbl_80C2B49C:
/* 80C2B49C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C2B4A0  4B 63 C4 B4 */	b cM_rndF__Ff
/* 80C2B4A4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80C2B4A8  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2B4AC  FC 00 00 1E */	fctiwz f0, f0
/* 80C2B4B0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C2B4B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C2B4B8  B0 1F 07 12 */	sth r0, 0x712(r31)
lbl_80C2B4BC:
/* 80C2B4BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C2B4C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C2B4C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C2B4C8  7C 08 03 A6 */	mtlr r0
/* 80C2B4CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C2B4D0  4E 80 00 20 */	blr 
