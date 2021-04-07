lbl_80CF3394:
/* 80CF3394  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CF3398  7C 08 02 A6 */	mflr r0
/* 80CF339C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CF33A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CF33A4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CF33A8  7C 7E 1B 78 */	mr r30, r3
/* 80CF33AC  3C A0 80 CF */	lis r5, l_color@ha /* 0x80CF43E4@ha */
/* 80CF33B0  3B E5 43 E4 */	addi r31, r5, l_color@l /* 0x80CF43E4@l */
/* 80CF33B4  28 04 00 00 */	cmplwi r4, 0
/* 80CF33B8  40 82 00 0C */	bne lbl_80CF33C4
/* 80CF33BC  38 60 00 00 */	li r3, 0
/* 80CF33C0  48 00 01 0C */	b lbl_80CF34CC
lbl_80CF33C4:
/* 80CF33C4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CF33C8  54 00 47 3F */	rlwinm. r0, r0, 8, 0x1c, 0x1f
/* 80CF33CC  40 82 00 58 */	bne lbl_80CF3424
/* 80CF33D0  C0 64 04 D4 */	lfs f3, 0x4d4(r4)
/* 80CF33D4  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80CF33D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CF33DC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80CF33E0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80CF33E4  4C 41 13 82 */	cror 2, 1, 2
/* 80CF33E8  40 82 00 E0 */	bne lbl_80CF34C8
/* 80CF33EC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CF33F0  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80CF33F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CF33F8  EC 02 00 2A */	fadds f0, f2, f0
/* 80CF33FC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80CF3400  40 80 00 C8 */	bge lbl_80CF34C8
/* 80CF3404  4B 32 75 61 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80CF3408  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80CF340C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80CF3410  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CF3414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF3418  40 80 00 B0 */	bge lbl_80CF34C8
/* 80CF341C  38 60 00 01 */	li r3, 1
/* 80CF3420  48 00 00 AC */	b lbl_80CF34CC
lbl_80CF3424:
/* 80CF3424  28 00 00 01 */	cmplwi r0, 1
/* 80CF3428  40 82 00 A0 */	bne lbl_80CF34C8
/* 80CF342C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CF3430  C0 9E 04 F4 */	lfs f4, 0x4f4(r30)
/* 80CF3434  EC 20 01 32 */	fmuls f1, f0, f4
/* 80CF3438  C0 5E 04 EC */	lfs f2, 0x4ec(r30)
/* 80CF343C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CF3440  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CF3444  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80CF3448  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80CF344C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CF3450  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CF3454  EC A1 01 32 */	fmuls f5, f1, f4
/* 80CF3458  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80CF345C  EC 81 00 32 */	fmuls f4, f1, f0
/* 80CF3460  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80CF3464  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CF3468  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80CF346C  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80CF3470  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80CF3474  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CF3478  EC 02 00 28 */	fsubs f0, f2, f0
/* 80CF347C  EC 23 00 2A */	fadds f1, f3, f0
/* 80CF3480  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CF3484  EC 04 10 2A */	fadds f0, f4, f2
/* 80CF3488  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CF348C  C0 44 04 D4 */	lfs f2, 0x4d4(r4)
/* 80CF3490  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80CF3494  4C 41 13 82 */	cror 2, 1, 2
/* 80CF3498  40 82 00 30 */	bne lbl_80CF34C8
/* 80CF349C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CF34A0  40 80 00 28 */	bge lbl_80CF34C8
/* 80CF34A4  7C 83 23 78 */	mr r3, r4
/* 80CF34A8  7F C4 F3 78 */	mr r4, r30
/* 80CF34AC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CF34B0  38 C1 00 08 */	addi r6, r1, 8
/* 80CF34B4  4B 33 F1 A1 */	bl dLib_checkActorInRectangle__FP10fopAc_ac_cP10fopAc_ac_cPC4cXyzPC4cXyz
/* 80CF34B8  2C 03 00 00 */	cmpwi r3, 0
/* 80CF34BC  41 82 00 0C */	beq lbl_80CF34C8
/* 80CF34C0  38 60 00 01 */	li r3, 1
/* 80CF34C4  48 00 00 08 */	b lbl_80CF34CC
lbl_80CF34C8:
/* 80CF34C8  38 60 00 00 */	li r3, 0
lbl_80CF34CC:
/* 80CF34CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CF34D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CF34D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CF34D8  7C 08 03 A6 */	mtlr r0
/* 80CF34DC  38 21 00 30 */	addi r1, r1, 0x30
/* 80CF34E0  4E 80 00 20 */	blr 
