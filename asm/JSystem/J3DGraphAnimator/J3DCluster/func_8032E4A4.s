lbl_8032E4A4:
/* 8032E4A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032E4A8  7C 08 02 A6 */	mflr r0
/* 8032E4AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032E4B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8032E4B4  48 03 3D 29 */	bl _savegpr_29
/* 8032E4B8  A0 05 00 12 */	lhz r0, 0x12(r5)
/* 8032E4BC  A1 05 00 10 */	lhz r8, 0x10(r5)
/* 8032E4C0  80 84 00 04 */	lwz r4, 4(r4)
/* 8032E4C4  80 63 00 00 */	lwz r3, 0(r3)
/* 8032E4C8  81 43 00 18 */	lwz r10, 0x18(r3)
/* 8032E4CC  81 65 00 18 */	lwz r11, 0x18(r5)
/* 8032E4D0  38 60 00 00 */	li r3, 0
/* 8032E4D4  C0 02 CA 7C */	lfs f0, lit_866(r2)
/* 8032E4D8  7C 09 03 A6 */	mtctr r0
/* 8032E4DC  2C 00 00 00 */	cmpwi r0, 0
/* 8032E4E0  40 81 00 28 */	ble lbl_8032E508
lbl_8032E4E4:
/* 8032E4E4  7D 2B 1A 2E */	lhzx r9, r11, r3
/* 8032E4E8  1D 29 00 03 */	mulli r9, r9, 3
/* 8032E4EC  55 29 10 3A */	slwi r9, r9, 2
/* 8032E4F0  7D 24 4A 14 */	add r9, r4, r9
/* 8032E4F4  D0 09 00 00 */	stfs f0, 0(r9)
/* 8032E4F8  D0 09 00 04 */	stfs f0, 4(r9)
/* 8032E4FC  D0 09 00 08 */	stfs f0, 8(r9)
/* 8032E500  38 63 00 02 */	addi r3, r3, 2
/* 8032E504  42 00 FF E0 */	bdnz lbl_8032E4E4
lbl_8032E508:
/* 8032E508  81 22 CA 74 */	lwz r9, lit_840(r2)
/* 8032E50C  80 62 CA 78 */	lwz r3, data_80456478(r2)
/* 8032E510  91 21 00 08 */	stw r9, 8(r1)
/* 8032E514  90 61 00 0C */	stw r3, 0xc(r1)
/* 8032E518  3B E0 00 00 */	li r31, 0
/* 8032E51C  39 21 00 08 */	addi r9, r1, 8
/* 8032E520  48 00 00 C8 */	b lbl_8032E5E8
lbl_8032E524:
/* 8032E524  80 65 00 18 */	lwz r3, 0x18(r5)
/* 8032E528  57 EB 0B FC */	rlwinm r11, r31, 1, 0xf, 0x1e
/* 8032E52C  7C 63 5A 2E */	lhzx r3, r3, r11
/* 8032E530  1C 63 00 03 */	mulli r3, r3, 3
/* 8032E534  3B C0 00 00 */	li r30, 0
/* 8032E538  54 63 10 3A */	slwi r3, r3, 2
/* 8032E53C  7D 84 1A 14 */	add r12, r4, r3
/* 8032E540  48 00 00 98 */	b lbl_8032E5D8
lbl_8032E544:
/* 8032E544  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 8032E548  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8032E54C  38 63 00 04 */	addi r3, r3, 4
/* 8032E550  7C 66 18 2E */	lwzx r3, r6, r3
/* 8032E554  7F AB 1A 2E */	lhzx r29, r11, r3
/* 8032E558  57 A3 04 DE */	rlwinm r3, r29, 0, 0x13, 0xf
/* 8032E55C  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8032E560  7C 6A 1A 14 */	add r3, r10, r3
/* 8032E564  C0 43 00 00 */	lfs f2, 0(r3)
/* 8032E568  C0 63 00 04 */	lfs f3, 4(r3)
/* 8032E56C  C0 83 00 08 */	lfs f4, 8(r3)
/* 8032E570  57 A3 9F 7A */	rlwinm r3, r29, 0x13, 0x1d, 0x1d
/* 8032E574  7C 09 1C 2E */	lfsx f0, r9, r3
/* 8032E578  EC 42 00 32 */	fmuls f2, f2, f0
/* 8032E57C  57 A3 A7 7A */	rlwinm r3, r29, 0x14, 0x1d, 0x1d
/* 8032E580  7C 09 1C 2E */	lfsx f0, r9, r3
/* 8032E584  EC 63 00 32 */	fmuls f3, f3, f0
/* 8032E588  57 A3 AF 7A */	rlwinm r3, r29, 0x15, 0x1d, 0x1d
/* 8032E58C  7C 09 1C 2E */	lfsx f0, r9, r3
/* 8032E590  EC 84 00 32 */	fmuls f4, f4, f0
/* 8032E594  C0 2C 00 00 */	lfs f1, 0(r12)
/* 8032E598  57 C3 13 BA */	rlwinm r3, r30, 2, 0xe, 0x1d
/* 8032E59C  7C 07 1C 2E */	lfsx f0, r7, r3
/* 8032E5A0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8032E5A4  EC 01 00 2A */	fadds f0, f1, f0
/* 8032E5A8  D0 0C 00 00 */	stfs f0, 0(r12)
/* 8032E5AC  C0 2C 00 04 */	lfs f1, 4(r12)
/* 8032E5B0  7C 07 1C 2E */	lfsx f0, r7, r3
/* 8032E5B4  EC 03 00 32 */	fmuls f0, f3, f0
/* 8032E5B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8032E5BC  D0 0C 00 04 */	stfs f0, 4(r12)
/* 8032E5C0  C0 2C 00 08 */	lfs f1, 8(r12)
/* 8032E5C4  7C 07 1C 2E */	lfsx f0, r7, r3
/* 8032E5C8  EC 04 00 32 */	fmuls f0, f4, f0
/* 8032E5CC  EC 01 00 2A */	fadds f0, f1, f0
/* 8032E5D0  D0 0C 00 08 */	stfs f0, 8(r12)
/* 8032E5D4  3B DE 00 01 */	addi r30, r30, 1
lbl_8032E5D8:
/* 8032E5D8  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 8032E5DC  7C 03 40 00 */	cmpw r3, r8
/* 8032E5E0  41 80 FF 64 */	blt lbl_8032E544
/* 8032E5E4  3B FF 00 01 */	addi r31, r31, 1
lbl_8032E5E8:
/* 8032E5E8  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8032E5EC  7C 03 00 00 */	cmpw r3, r0
/* 8032E5F0  41 80 FF 34 */	blt lbl_8032E524
/* 8032E5F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8032E5F8  48 03 3C 31 */	bl _restgpr_29
/* 8032E5FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032E600  7C 08 03 A6 */	mtlr r0
/* 8032E604  38 21 00 20 */	addi r1, r1, 0x20
/* 8032E608  4E 80 00 20 */	blr 
