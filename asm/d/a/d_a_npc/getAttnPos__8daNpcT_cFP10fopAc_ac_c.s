lbl_8014B3EC:
/* 8014B3EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014B3F0  7C 08 02 A6 */	mflr r0
/* 8014B3F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014B3F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014B3FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014B400  7C 7E 1B 78 */	mr r30, r3
/* 8014B404  7C BF 2B 78 */	mr r31, r5
/* 8014B408  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 8014B40C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014B410  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 8014B414  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8014B418  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 8014B41C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8014B420  A8 05 00 08 */	lha r0, 8(r5)
/* 8014B424  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8014B428  40 82 00 4C */	bne lbl_8014B474
/* 8014B42C  48 01 3F D1 */	bl getAttentionOffsetY__9daPy_py_cFv
/* 8014B430  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8014B434  EC 00 08 28 */	fsubs f0, f0, f1
/* 8014B438  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8014B43C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014B440  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014B444  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8014B448  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8014B44C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8014B450  41 82 00 24 */	beq lbl_8014B474
/* 8014B454  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8014B458  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014B45C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8014B460  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8014B464  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8014B468  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8014B46C  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 8014B470  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_8014B474:
/* 8014B474  C0 01 00 08 */	lfs f0, 8(r1)
/* 8014B478  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8014B47C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8014B480  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8014B484  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8014B488  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8014B48C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8014B490  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8014B494  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014B498  7C 08 03 A6 */	mtlr r0
/* 8014B49C  38 21 00 20 */	addi r1, r1, 0x20
/* 8014B4A0  4E 80 00 20 */	blr 
