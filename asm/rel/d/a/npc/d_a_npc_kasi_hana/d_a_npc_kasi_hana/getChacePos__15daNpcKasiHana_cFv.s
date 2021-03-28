lbl_80A1E3AC:
/* 80A1E3AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A1E3B0  7C 08 02 A6 */	mflr r0
/* 80A1E3B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A1E3B8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80A1E3BC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80A1E3C0  7C 7E 1B 78 */	mr r30, r3
/* 80A1E3C4  7C 9F 23 78 */	mr r31, r4
/* 80A1E3C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A1E3CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A1E3D0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A1E3D4  C0 43 04 D0 */	lfs f2, 0x4d0(r3)
/* 80A1E3D8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80A1E3DC  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80A1E3E0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A1E3E4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A1E3E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A1E3EC  88 04 14 94 */	lbz r0, 0x1494(r4)
/* 80A1E3F0  2C 00 00 00 */	cmpwi r0, 0
/* 80A1E3F4  40 82 00 14 */	bne lbl_80A1E408
/* 80A1E3F8  D0 5E 00 00 */	stfs f2, 0(r30)
/* 80A1E3FC  D0 3E 00 04 */	stfs f1, 4(r30)
/* 80A1E400  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80A1E404  48 00 00 90 */	b lbl_80A1E494
lbl_80A1E408:
/* 80A1E408  38 7F 14 48 */	addi r3, r31, 0x1448
/* 80A1E40C  4B FF D0 81 */	bl getPlNearPoint__15daNpcKasi_Mng_cFv
/* 80A1E410  A0 1F 0C 94 */	lhz r0, 0xc94(r31)
/* 80A1E414  7C 00 18 00 */	cmpw r0, r3
/* 80A1E418  40 82 00 20 */	bne lbl_80A1E438
/* 80A1E41C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A1E420  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80A1E424  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A1E428  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80A1E42C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A1E430  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80A1E434  48 00 00 60 */	b lbl_80A1E494
lbl_80A1E438:
/* 80A1E438  40 80 00 10 */	bge lbl_80A1E448
/* 80A1E43C  38 00 00 00 */	li r0, 0
/* 80A1E440  98 1F 0C 96 */	stb r0, 0xc96(r31)
/* 80A1E444  48 00 00 10 */	b lbl_80A1E454
lbl_80A1E448:
/* 80A1E448  40 81 00 0C */	ble lbl_80A1E454
/* 80A1E44C  38 00 00 01 */	li r0, 1
/* 80A1E450  98 1F 0C 96 */	stb r0, 0xc96(r31)
lbl_80A1E454:
/* 80A1E454  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A1E458  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A1E45C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A1E460  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A1E464  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A1E468  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A1E46C  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A1E470  38 81 00 08 */	addi r4, r1, 8
/* 80A1E474  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A1E478  4B 73 29 68 */	b getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80A1E47C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A1E480  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80A1E484  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A1E488  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80A1E48C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A1E490  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_80A1E494:
/* 80A1E494  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80A1E498  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80A1E49C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A1E4A0  7C 08 03 A6 */	mtlr r0
/* 80A1E4A4  38 21 00 40 */	addi r1, r1, 0x40
/* 80A1E4A8  4E 80 00 20 */	blr 
