lbl_800FD2AC:
/* 800FD2AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800FD2B0  7C 08 02 A6 */	mflr r0
/* 800FD2B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800FD2B8  39 61 00 30 */	addi r11, r1, 0x30
/* 800FD2BC  48 26 4F 1D */	bl _savegpr_28
/* 800FD2C0  7C 7C 1B 78 */	mr r28, r3
/* 800FD2C4  7C 9D 23 78 */	mr r29, r4
/* 800FD2C8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 800FD2CC  C0 3C 37 C8 */	lfs f1, 0x37c8(r28)
/* 800FD2D0  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800FD2D4  FC 60 10 90 */	fmr f3, f2
/* 800FD2D8  C0 82 92 A4 */	lfs f4, lit_6021(r2)
/* 800FD2DC  48 17 26 A1 */	bl cLib_addCalc__FPfffff
/* 800FD2E0  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 800FD2E4  C0 3C 37 CC */	lfs f1, 0x37cc(r28)
/* 800FD2E8  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800FD2EC  FC 60 10 90 */	fmr f3, f2
/* 800FD2F0  C0 82 92 A4 */	lfs f4, lit_6021(r2)
/* 800FD2F4  48 17 26 89 */	bl cLib_addCalc__FPfffff
/* 800FD2F8  38 7C 04 D8 */	addi r3, r28, 0x4d8
/* 800FD2FC  C0 3C 37 D0 */	lfs f1, 0x37d0(r28)
/* 800FD300  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800FD304  FC 60 10 90 */	fmr f3, f2
/* 800FD308  C0 82 92 A4 */	lfs f4, lit_6021(r2)
/* 800FD30C  48 17 26 71 */	bl cLib_addCalc__FPfffff
/* 800FD310  7F 83 E3 78 */	mr r3, r28
/* 800FD314  4B FB C0 2D */	bl checkEquipAnime__9daAlink_cCFv
/* 800FD318  2C 03 00 00 */	cmpwi r3, 0
/* 800FD31C  41 82 00 0C */	beq lbl_800FD328
/* 800FD320  38 60 00 00 */	li r3, 0
/* 800FD324  48 00 01 6C */	b lbl_800FD490
lbl_800FD328:
/* 800FD328  C0 3C 33 AC */	lfs f1, 0x33ac(r28)
/* 800FD32C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800FD330  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FD334  40 81 01 58 */	ble lbl_800FD48C
/* 800FD338  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 800FD33C  A8 1C 2F E2 */	lha r0, 0x2fe2(r28)
/* 800FD340  7C 03 00 50 */	subf r0, r3, r0
/* 800FD344  7C 03 07 34 */	extsh r3, r0
/* 800FD348  48 26 7D 89 */	bl abs
/* 800FD34C  7C 7F 1B 78 */	mr r31, r3
/* 800FD350  2C 1F 30 00 */	cmpwi r31, 0x3000
/* 800FD354  40 81 00 14 */	ble lbl_800FD368
/* 800FD358  2C 1F 50 00 */	cmpwi r31, 0x5000
/* 800FD35C  40 80 00 0C */	bge lbl_800FD368
/* 800FD360  38 60 00 00 */	li r3, 0
/* 800FD364  48 00 01 2C */	b lbl_800FD490
lbl_800FD368:
/* 800FD368  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 800FD36C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FD370  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 800FD374  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800FD378  2C 1F 40 00 */	cmpwi r31, 0x4000
/* 800FD37C  40 80 00 24 */	bge lbl_800FD3A0
/* 800FD380  C0 42 95 84 */	lfs f2, lit_24618(r2)
/* 800FD384  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 800FD388  C0 1C 05 98 */	lfs f0, 0x598(r28)
/* 800FD38C  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD390  EC 02 00 2A */	fadds f0, f2, f0
/* 800FD394  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800FD398  3B C0 00 00 */	li r30, 0
/* 800FD39C  48 00 00 20 */	b lbl_800FD3BC
lbl_800FD3A0:
/* 800FD3A0  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 800FD3A4  C0 02 95 84 */	lfs f0, lit_24618(r2)
/* 800FD3A8  EC 21 00 28 */	fsubs f1, f1, f0
/* 800FD3AC  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 800FD3B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FD3B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800FD3B8  3B C0 00 01 */	li r30, 1
lbl_800FD3BC:
/* 800FD3BC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800FD3C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FD3C4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800FD3C8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800FD3CC  7C 03 04 2E */	lfsx f0, r3, r0
/* 800FD3D0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800FD3D4  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 800FD3D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FD3DC  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD3E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FD3E4  7C 63 02 14 */	add r3, r3, r0
/* 800FD3E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800FD3EC  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 800FD3F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FD3F4  EC 01 00 2A */	fadds f0, f1, f0
/* 800FD3F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800FD3FC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800FD400  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800FD404  7F 83 E3 78 */	mr r3, r28
/* 800FD408  38 81 00 14 */	addi r4, r1, 0x14
/* 800FD40C  38 A1 00 08 */	addi r5, r1, 8
/* 800FD410  4B FA 4D 89 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FD414  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FD418  40 82 00 2C */	bne lbl_800FD444
/* 800FD41C  2C 1F 40 00 */	cmpwi r31, 0x4000
/* 800FD420  40 80 00 14 */	bge lbl_800FD434
/* 800FD424  7F 83 E3 78 */	mr r3, r28
/* 800FD428  7F A4 EB 78 */	mr r4, r29
/* 800FD42C  48 00 03 F9 */	bl procLadderUpEndInit__9daAlink_cFi
/* 800FD430  48 00 00 5C */	b lbl_800FD48C
lbl_800FD434:
/* 800FD434  7F 83 E3 78 */	mr r3, r28
/* 800FD438  7F A4 EB 78 */	mr r4, r29
/* 800FD43C  48 00 07 DD */	bl procLadderDownEndInit__9daAlink_cFi
/* 800FD440  48 00 00 4C */	b lbl_800FD48C
lbl_800FD444:
/* 800FD444  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FD448  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FD44C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800FD450  38 9C 1B 5C */	addi r4, r28, 0x1b5c
/* 800FD454  4B F7 79 AD */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800FD458  2C 03 00 04 */	cmpwi r3, 4
/* 800FD45C  41 82 00 1C */	beq lbl_800FD478
/* 800FD460  2C 1F 40 00 */	cmpwi r31, 0x4000
/* 800FD464  41 80 00 28 */	blt lbl_800FD48C
/* 800FD468  7F 83 E3 78 */	mr r3, r28
/* 800FD46C  7F A4 EB 78 */	mr r4, r29
/* 800FD470  48 00 07 A9 */	bl procLadderDownEndInit__9daAlink_cFi
/* 800FD474  48 00 00 18 */	b lbl_800FD48C
lbl_800FD478:
/* 800FD478  7F 83 E3 78 */	mr r3, r28
/* 800FD47C  7F A4 EB 78 */	mr r4, r29
/* 800FD480  7F C5 F3 78 */	mr r5, r30
/* 800FD484  38 DC 37 C8 */	addi r6, r28, 0x37c8
/* 800FD488  48 00 09 09 */	bl procLadderMoveInit__9daAlink_cFiiP4cXyz
lbl_800FD48C:
/* 800FD48C  38 60 00 00 */	li r3, 0
lbl_800FD490:
/* 800FD490  39 61 00 30 */	addi r11, r1, 0x30
/* 800FD494  48 26 4D 91 */	bl _restgpr_28
/* 800FD498  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800FD49C  7C 08 03 A6 */	mtlr r0
/* 800FD4A0  38 21 00 30 */	addi r1, r1, 0x30
/* 800FD4A4  4E 80 00 20 */	blr 
