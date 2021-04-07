lbl_8064B270:
/* 8064B270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064B274  7C 08 02 A6 */	mflr r0
/* 8064B278  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064B27C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064B280  93 C1 00 08 */	stw r30, 8(r1)
/* 8064B284  7C 7E 1B 78 */	mr r30, r3
/* 8064B288  3C 60 80 65 */	lis r3, lit_3757@ha /* 0x8064EB1C@ha */
/* 8064B28C  3B E3 EB 1C */	addi r31, r3, lit_3757@l /* 0x8064EB1C@l */
/* 8064B290  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 8064B294  2C 00 00 03 */	cmpwi r0, 3
/* 8064B298  41 82 00 FC */	beq lbl_8064B394
/* 8064B29C  40 80 00 14 */	bge lbl_8064B2B0
/* 8064B2A0  2C 00 00 01 */	cmpwi r0, 1
/* 8064B2A4  41 82 00 1C */	beq lbl_8064B2C0
/* 8064B2A8  40 80 00 48 */	bge lbl_8064B2F0
/* 8064B2AC  48 00 00 E8 */	b lbl_8064B394
lbl_8064B2B0:
/* 8064B2B0  2C 00 00 05 */	cmpwi r0, 5
/* 8064B2B4  41 82 00 A8 */	beq lbl_8064B35C
/* 8064B2B8  40 80 00 DC */	bge lbl_8064B394
/* 8064B2BC  48 00 00 8C */	b lbl_8064B348
lbl_8064B2C0:
/* 8064B2C0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064B2C4  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8064B2C8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8064B2CC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8064B2D0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8064B2D4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8064B2D8  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8064B2DC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8064B2E0  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8064B2E4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8064B2E8  38 00 00 02 */	li r0, 2
/* 8064B2EC  98 1E 05 E8 */	stb r0, 0x5e8(r30)
lbl_8064B2F0:
/* 8064B2F0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8064B2F4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8064B2F8  4B CD D1 35 */	bl checkPass__12J3DFrameCtrlFf
/* 8064B2FC  2C 03 00 00 */	cmpwi r3, 0
/* 8064B300  41 82 00 0C */	beq lbl_8064B30C
/* 8064B304  38 00 00 01 */	li r0, 1
/* 8064B308  98 1E 05 E9 */	stb r0, 0x5e9(r30)
lbl_8064B30C:
/* 8064B30C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8064B310  38 80 00 01 */	li r4, 1
/* 8064B314  88 03 00 05 */	lbz r0, 5(r3)
/* 8064B318  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8064B31C  40 82 00 18 */	bne lbl_8064B334
/* 8064B320  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8064B324  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8064B328  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8064B32C  41 82 00 08 */	beq lbl_8064B334
/* 8064B330  38 80 00 00 */	li r4, 0
lbl_8064B334:
/* 8064B334  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8064B338  41 82 00 5C */	beq lbl_8064B394
/* 8064B33C  38 00 00 03 */	li r0, 3
/* 8064B340  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 8064B344  48 00 00 50 */	b lbl_8064B394
lbl_8064B348:
/* 8064B348  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064B34C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8064B350  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8064B354  38 00 00 05 */	li r0, 5
/* 8064B358  98 1E 05 E8 */	stb r0, 0x5e8(r30)
lbl_8064B35C:
/* 8064B35C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8064B360  38 80 00 01 */	li r4, 1
/* 8064B364  88 03 00 05 */	lbz r0, 5(r3)
/* 8064B368  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8064B36C  40 82 00 18 */	bne lbl_8064B384
/* 8064B370  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8064B374  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8064B378  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8064B37C  41 82 00 08 */	beq lbl_8064B384
/* 8064B380  38 80 00 00 */	li r4, 0
lbl_8064B384:
/* 8064B384  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8064B388  41 82 00 0C */	beq lbl_8064B394
/* 8064B38C  38 00 00 00 */	li r0, 0
/* 8064B390  98 1E 05 E8 */	stb r0, 0x5e8(r30)
lbl_8064B394:
/* 8064B394  88 1E 05 E9 */	lbz r0, 0x5e9(r30)
/* 8064B398  2C 00 00 01 */	cmpwi r0, 1
/* 8064B39C  41 82 00 44 */	beq lbl_8064B3E0
/* 8064B3A0  40 80 00 E4 */	bge lbl_8064B484
/* 8064B3A4  2C 00 00 00 */	cmpwi r0, 0
/* 8064B3A8  40 80 00 08 */	bge lbl_8064B3B0
/* 8064B3AC  48 00 00 D8 */	b lbl_8064B484
lbl_8064B3B0:
/* 8064B3B0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8064B3B4  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8064B3B8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8064B3BC  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8064B3C0  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8064B3C4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8064B3C8  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8064B3CC  80 7E 05 D8 */	lwz r3, 0x5d8(r30)
/* 8064B3D0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8064B3D4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064B3D8  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 8064B3DC  48 00 00 A8 */	b lbl_8064B484
lbl_8064B3E0:
/* 8064B3E0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8064B3E4  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8064B3E8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8064B3EC  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 8064B3F0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8064B3F4  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 8064B3F8  4B C2 53 49 */	bl cLib_chaseF__FPfff
/* 8064B3FC  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8064B400  38 80 00 01 */	li r4, 1
/* 8064B404  88 03 00 05 */	lbz r0, 5(r3)
/* 8064B408  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8064B40C  40 82 00 18 */	bne lbl_8064B424
/* 8064B410  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8064B414  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8064B418  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8064B41C  41 82 00 08 */	beq lbl_8064B424
/* 8064B420  38 80 00 00 */	li r4, 0
lbl_8064B424:
/* 8064B424  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8064B428  41 82 00 5C */	beq lbl_8064B484
/* 8064B42C  38 00 00 00 */	li r0, 0
/* 8064B430  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 8064B434  3C 60 80 65 */	lis r3, d_a_b_zant__stringBase0@ha /* 0x8064EE60@ha */
/* 8064B438  38 63 EE 60 */	addi r3, r3, d_a_b_zant__stringBase0@l /* 0x8064EE60@l */
/* 8064B43C  38 80 00 4F */	li r4, 0x4f
/* 8064B440  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064B444  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064B448  3C A5 00 02 */	addis r5, r5, 2
/* 8064B44C  38 C0 00 80 */	li r6, 0x80
/* 8064B450  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8064B454  4B 9F 0E 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8064B458  7C 65 1B 78 */	mr r5, r3
/* 8064B45C  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8064B460  80 83 00 04 */	lwz r4, 4(r3)
/* 8064B464  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8064B468  38 84 00 58 */	addi r4, r4, 0x58
/* 8064B46C  38 C0 00 01 */	li r6, 1
/* 8064B470  38 E0 00 00 */	li r7, 0
/* 8064B474  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8064B478  39 00 00 00 */	li r8, 0
/* 8064B47C  39 20 FF FF */	li r9, -1
/* 8064B480  4B 9C 22 8D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
lbl_8064B484:
/* 8064B484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064B488  83 C1 00 08 */	lwz r30, 8(r1)
/* 8064B48C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064B490  7C 08 03 A6 */	mtlr r0
/* 8064B494  38 21 00 10 */	addi r1, r1, 0x10
/* 8064B498  4E 80 00 20 */	blr 
