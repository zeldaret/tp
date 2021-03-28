lbl_801D7858:
/* 801D7858  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D785C  7C 08 02 A6 */	mflr r0
/* 801D7860  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D7864  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D7868  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D786C  7C 9E 23 78 */	mr r30, r4
/* 801D7870  AB E4 00 16 */	lha r31, 0x16(r4)
/* 801D7874  2C 1F 00 03 */	cmpwi r31, 3
/* 801D7878  40 82 00 18 */	bne lbl_801D7890
/* 801D787C  7F C3 F3 78 */	mr r3, r30
/* 801D7880  48 07 DF A9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 801D7884  C0 02 A8 30 */	lfs f0, lit_6325(r2)
/* 801D7888  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D788C  41 82 00 58 */	beq lbl_801D78E4
lbl_801D7890:
/* 801D7890  2C 1F 00 03 */	cmpwi r31, 3
/* 801D7894  40 81 00 0C */	ble lbl_801D78A0
/* 801D7898  3B FF FF FF */	addi r31, r31, -1
/* 801D789C  48 00 00 0C */	b lbl_801D78A8
lbl_801D78A0:
/* 801D78A0  40 80 00 08 */	bge lbl_801D78A8
/* 801D78A4  3B FF 00 01 */	addi r31, r31, 1
lbl_801D78A8:
/* 801D78A8  B3 FE 00 16 */	sth r31, 0x16(r30)
/* 801D78AC  7F C3 F3 78 */	mr r3, r30
/* 801D78B0  C0 42 A7 E8 */	lfs f2, lit_4202(r2)
/* 801D78B4  7F E0 07 34 */	extsh r0, r31
/* 801D78B8  C8 22 A8 08 */	lfd f1, lit_4496(r2)
/* 801D78BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801D78C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D78C4  3C 00 43 30 */	lis r0, 0x4330
/* 801D78C8  90 01 00 08 */	stw r0, 8(r1)
/* 801D78CC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D78D0  EC 20 08 28 */	fsubs f1, f0, f1
/* 801D78D4  C0 02 A7 F4 */	lfs f0, lit_4205(r2)
/* 801D78D8  EC 01 00 24 */	fdivs f0, f1, f0
/* 801D78DC  EC 22 00 32 */	fmuls f1, f2, f0
/* 801D78E0  48 07 DE F1 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801D78E4:
/* 801D78E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D78E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D78EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D78F0  7C 08 03 A6 */	mtlr r0
/* 801D78F4  38 21 00 20 */	addi r1, r1, 0x20
/* 801D78F8  4E 80 00 20 */	blr 
