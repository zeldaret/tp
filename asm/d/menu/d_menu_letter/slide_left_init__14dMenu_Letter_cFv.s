lbl_801DE24C:
/* 801DE24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DE250  7C 08 02 A6 */	mflr r0
/* 801DE254  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DE258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DE25C  7C 7F 1B 78 */	mr r31, r3
/* 801DE260  80 83 01 EC */	lwz r4, 0x1ec(r3)
/* 801DE264  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 801DE268  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 801DE26C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801DE270  C0 42 A8 E4 */	lfs f2, lit_3828(r2)
/* 801DE274  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801DE278  D0 03 03 58 */	stfs f0, 0x358(r3)
/* 801DE27C  80 83 01 EC */	lwz r4, 0x1ec(r3)
/* 801DE280  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 801DE284  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 801DE288  EC 01 00 28 */	fsubs f0, f1, f0
/* 801DE28C  FC 00 00 50 */	fneg f0, f0
/* 801DE290  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801DE294  D0 03 03 5C */	stfs f0, 0x35c(r3)
/* 801DE298  48 00 2B 9D */	bl changePageLight__14dMenu_Letter_cFv
/* 801DE29C  7F E3 FB 78 */	mr r3, r31
/* 801DE2A0  48 00 2F 4D */	bl copyDMYMenu__14dMenu_Letter_cFv
/* 801DE2A4  7F E3 FB 78 */	mr r3, r31
/* 801DE2A8  38 80 00 00 */	li r4, 0
/* 801DE2AC  48 00 32 6D */	bl setAButtonString__14dMenu_Letter_cFUs
/* 801DE2B0  7F E3 FB 78 */	mr r3, r31
/* 801DE2B4  38 80 00 00 */	li r4, 0
/* 801DE2B8  48 00 33 11 */	bl setBButtonString__14dMenu_Letter_cFUs
/* 801DE2BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DE2C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DE2C4  7C 08 03 A6 */	mtlr r0
/* 801DE2C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801DE2CC  4E 80 00 20 */	blr 
