lbl_801DE164:
/* 801DE164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DE168  7C 08 02 A6 */	mflr r0
/* 801DE16C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DE170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DE174  7C 7F 1B 78 */	mr r31, r3
/* 801DE178  80 83 01 EC */	lwz r4, 0x1ec(r3)
/* 801DE17C  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 801DE180  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 801DE184  EC 01 00 28 */	fsubs f0, f1, f0
/* 801DE188  FC 00 00 50 */	fneg f0, f0
/* 801DE18C  C0 42 A8 E4 */	lfs f2, lit_3828(r2)
/* 801DE190  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801DE194  D0 03 03 58 */	stfs f0, 0x358(r3)
/* 801DE198  80 83 01 EC */	lwz r4, 0x1ec(r3)
/* 801DE19C  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 801DE1A0  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 801DE1A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801DE1A8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801DE1AC  D0 03 03 5C */	stfs f0, 0x35c(r3)
/* 801DE1B0  48 00 2C 85 */	bl changePageLight__14dMenu_Letter_cFv
/* 801DE1B4  7F E3 FB 78 */	mr r3, r31
/* 801DE1B8  48 00 30 35 */	bl copyDMYMenu__14dMenu_Letter_cFv
/* 801DE1BC  7F E3 FB 78 */	mr r3, r31
/* 801DE1C0  38 80 00 00 */	li r4, 0
/* 801DE1C4  48 00 33 55 */	bl setAButtonString__14dMenu_Letter_cFUs
/* 801DE1C8  7F E3 FB 78 */	mr r3, r31
/* 801DE1CC  38 80 00 00 */	li r4, 0
/* 801DE1D0  48 00 33 F9 */	bl setBButtonString__14dMenu_Letter_cFUs
/* 801DE1D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DE1D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DE1DC  7C 08 03 A6 */	mtlr r0
/* 801DE1E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801DE1E4  4E 80 00 20 */	blr 
