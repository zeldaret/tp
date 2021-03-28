lbl_8048B378:
/* 8048B378  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8048B37C  7C 08 02 A6 */	mflr r0
/* 8048B380  90 01 00 54 */	stw r0, 0x54(r1)
/* 8048B384  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8048B388  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8048B38C  7C 7E 1B 78 */	mr r30, r3
/* 8048B390  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8048B394  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8048B398  83 E4 5D B4 */	lwz r31, 0x5db4(r4)
/* 8048B39C  4B FF FA 09 */	bl getAreaType__13daTag_Event_cFv
/* 8048B3A0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8048B3A4  28 00 80 00 */	cmplwi r0, 0x8000
/* 8048B3A8  40 82 00 C0 */	bne lbl_8048B468
/* 8048B3AC  C0 9F 04 D0 */	lfs f4, 0x4d0(r31)
/* 8048B3B0  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 8048B3B4  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8048B3B8  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 8048B3BC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8048B3C0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8048B3C4  C0 FE 04 D8 */	lfs f7, 0x4d8(r30)
/* 8048B3C8  3C 60 80 49 */	lis r3, lit_3954@ha
/* 8048B3CC  C0 23 B8 38 */	lfs f1, lit_3954@l(r3)
/* 8048B3D0  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 8048B3D4  EC C1 00 32 */	fmuls f6, f1, f0
/* 8048B3D8  EC A7 30 28 */	fsubs f5, f7, f6
/* 8048B3DC  C1 1E 04 D4 */	lfs f8, 0x4d4(r30)
/* 8048B3E0  C1 5E 04 D0 */	lfs f10, 0x4d0(r30)
/* 8048B3E4  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8048B3E8  ED 21 00 32 */	fmuls f9, f1, f0
/* 8048B3EC  EC 2A 48 28 */	fsubs f1, f10, f9
/* 8048B3F0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8048B3F4  D1 01 00 30 */	stfs f8, 0x30(r1)
/* 8048B3F8  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 8048B3FC  EC E7 30 2A */	fadds f7, f7, f6
/* 8048B400  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8048B404  EC C8 00 2A */	fadds f6, f8, f0
/* 8048B408  EC 0A 48 2A */	fadds f0, f10, f9
/* 8048B40C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8048B410  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 8048B414  D0 E1 00 28 */	stfs f7, 0x28(r1)
/* 8048B418  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8048B41C  4C 40 13 82 */	cror 2, 0, 2
/* 8048B420  40 82 00 D8 */	bne lbl_8048B4F8
/* 8048B424  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8048B428  4C 40 13 82 */	cror 2, 0, 2
/* 8048B42C  40 82 00 CC */	bne lbl_8048B4F8
/* 8048B430  FC 08 18 40 */	fcmpo cr0, f8, f3
/* 8048B434  4C 40 13 82 */	cror 2, 0, 2
/* 8048B438  40 82 00 C0 */	bne lbl_8048B4F8
/* 8048B43C  FC 03 30 40 */	fcmpo cr0, f3, f6
/* 8048B440  4C 40 13 82 */	cror 2, 0, 2
/* 8048B444  40 82 00 B4 */	bne lbl_8048B4F8
/* 8048B448  FC 05 10 40 */	fcmpo cr0, f5, f2
/* 8048B44C  4C 40 13 82 */	cror 2, 0, 2
/* 8048B450  40 82 00 A8 */	bne lbl_8048B4F8
/* 8048B454  FC 02 38 40 */	fcmpo cr0, f2, f7
/* 8048B458  4C 40 13 82 */	cror 2, 0, 2
/* 8048B45C  40 82 00 9C */	bne lbl_8048B4F8
/* 8048B460  38 60 00 01 */	li r3, 1
/* 8048B464  48 00 00 98 */	b lbl_8048B4FC
lbl_8048B468:
/* 8048B468  38 61 00 14 */	addi r3, r1, 0x14
/* 8048B46C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8048B470  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8048B474  4B DD B6 C0 */	b __mi__4cXyzCFRC3Vec
/* 8048B478  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8048B47C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8048B480  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8048B484  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8048B488  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8048B48C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8048B490  3C 60 80 49 */	lis r3, lit_3955@ha
/* 8048B494  C0 03 B8 3C */	lfs f0, lit_3955@l(r3)
/* 8048B498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048B49C  40 80 00 0C */	bge lbl_8048B4A8
/* 8048B4A0  FC 00 08 50 */	fneg f0, f1
/* 8048B4A4  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_8048B4A8:
/* 8048B4A8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8048B4AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8048B4B0  3C 60 80 49 */	lis r3, lit_3955@ha
/* 8048B4B4  C0 03 B8 3C */	lfs f0, lit_3955@l(r3)
/* 8048B4B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8048B4BC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8048B4C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8048B4C4  38 61 00 08 */	addi r3, r1, 8
/* 8048B4C8  4B EB BC 70 */	b PSVECSquareMag
/* 8048B4CC  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8048B4D0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8048B4D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048B4D8  40 80 00 20 */	bge lbl_8048B4F8
/* 8048B4DC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8048B4E0  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8048B4E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048B4E8  4C 40 13 82 */	cror 2, 0, 2
/* 8048B4EC  40 82 00 0C */	bne lbl_8048B4F8
/* 8048B4F0  38 60 00 01 */	li r3, 1
/* 8048B4F4  48 00 00 08 */	b lbl_8048B4FC
lbl_8048B4F8:
/* 8048B4F8  38 60 00 00 */	li r3, 0
lbl_8048B4FC:
/* 8048B4FC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8048B500  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8048B504  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8048B508  7C 08 03 A6 */	mtlr r0
/* 8048B50C  38 21 00 50 */	addi r1, r1, 0x50
/* 8048B510  4E 80 00 20 */	blr 
