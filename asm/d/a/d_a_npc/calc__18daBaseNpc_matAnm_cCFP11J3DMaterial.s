lbl_8014D884:
/* 8014D884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014D888  7C 08 02 A6 */	mflr r0
/* 8014D88C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014D890  39 61 00 20 */	addi r11, r1, 0x20
/* 8014D894  48 21 49 45 */	bl _savegpr_28
/* 8014D898  7C 7C 1B 78 */	mr r28, r3
/* 8014D89C  7C 9D 23 78 */	mr r29, r4
/* 8014D8A0  48 1D EB 25 */	bl calc__14J3DMaterialAnmCFP11J3DMaterial
/* 8014D8A4  3B C0 00 00 */	li r30, 0
/* 8014D8A8  3B E0 00 00 */	li r31, 0
lbl_8014D8AC:
/* 8014D8AC  38 7F 00 14 */	addi r3, r31, 0x14
/* 8014D8B0  7C 7C 1A 14 */	add r3, r28, r3
/* 8014D8B4  A0 03 00 02 */	lhz r0, 2(r3)
/* 8014D8B8  28 00 00 00 */	cmplwi r0, 0
/* 8014D8BC  41 82 00 B4 */	beq lbl_8014D970
/* 8014D8C0  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8014D8C4  7F C4 F3 78 */	mr r4, r30
/* 8014D8C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8014D8CC  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8014D8D0  7D 89 03 A6 */	mtctr r12
/* 8014D8D4  4E 80 04 21 */	bctrl 
/* 8014D8D8  88 9C 01 05 */	lbz r4, 0x105(r28)
/* 8014D8DC  28 04 00 00 */	cmplwi r4, 0
/* 8014D8E0  41 82 00 64 */	beq lbl_8014D944
/* 8014D8E4  C0 42 99 DC */	lfs f2, lit_4140(r2)
/* 8014D8E8  38 04 00 01 */	addi r0, r4, 1
/* 8014D8EC  C8 22 99 E0 */	lfd f1, lit_4142(r2)
/* 8014D8F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014D8F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014D8F8  3C 00 43 30 */	lis r0, 0x4330
/* 8014D8FC  90 01 00 08 */	stw r0, 8(r1)
/* 8014D900  C8 01 00 08 */	lfd f0, 8(r1)
/* 8014D904  EC 00 08 28 */	fsubs f0, f0, f1
/* 8014D908  EC 62 00 24 */	fdivs f3, f2, f0
/* 8014D90C  C0 1C 00 F4 */	lfs f0, 0xf4(r28)
/* 8014D910  EC 42 18 28 */	fsubs f2, f2, f3
/* 8014D914  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8014D918  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8014D91C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8014D920  EC 01 00 2A */	fadds f0, f1, f0
/* 8014D924  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8014D928  C0 1C 00 F8 */	lfs f0, 0xf8(r28)
/* 8014D92C  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8014D930  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8014D934  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8014D938  EC 01 00 2A */	fadds f0, f1, f0
/* 8014D93C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8014D940  48 00 00 20 */	b lbl_8014D960
lbl_8014D944:
/* 8014D944  88 1C 01 04 */	lbz r0, 0x104(r28)
/* 8014D948  28 00 00 00 */	cmplwi r0, 0
/* 8014D94C  41 82 00 14 */	beq lbl_8014D960
/* 8014D950  C0 1C 00 FC */	lfs f0, 0xfc(r28)
/* 8014D954  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8014D958  C0 1C 01 00 */	lfs f0, 0x100(r28)
/* 8014D95C  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_8014D960:
/* 8014D960  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8014D964  D0 1C 00 F4 */	stfs f0, 0xf4(r28)
/* 8014D968  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8014D96C  D0 1C 00 F8 */	stfs f0, 0xf8(r28)
lbl_8014D970:
/* 8014D970  3B DE 00 01 */	addi r30, r30, 1
/* 8014D974  28 1E 00 08 */	cmplwi r30, 8
/* 8014D978  3B FF 00 08 */	addi r31, r31, 8
/* 8014D97C  41 80 FF 30 */	blt lbl_8014D8AC
/* 8014D980  39 61 00 20 */	addi r11, r1, 0x20
/* 8014D984  48 21 48 A1 */	bl _restgpr_28
/* 8014D988  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014D98C  7C 08 03 A6 */	mtlr r0
/* 8014D990  38 21 00 20 */	addi r1, r1, 0x20
/* 8014D994  4E 80 00 20 */	blr 
