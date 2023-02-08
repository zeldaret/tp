lbl_8014EE80:
/* 8014EE80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014EE84  7C 08 02 A6 */	mflr r0
/* 8014EE88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014EE8C  FC 00 08 90 */	fmr f0, f1
/* 8014EE90  80 63 07 54 */	lwz r3, 0x754(r3)
/* 8014EE94  FC 20 10 90 */	fmr f1, f2
/* 8014EE98  FC 40 00 90 */	fmr f2, f0
/* 8014EE9C  C8 82 99 E0 */	lfd f4, lit_4142(r2)
/* 8014EEA0  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 8014EEA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8014EEA8  3C C0 43 30 */	lis r6, 0x4330
/* 8014EEAC  90 C1 00 08 */	stw r6, 8(r1)
/* 8014EEB0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8014EEB4  EC 60 20 28 */	fsubs f3, f0, f4
/* 8014EEB8  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 8014EEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014EEC0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8014EEC4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8014EEC8  EC 80 20 28 */	fsubs f4, f0, f4
/* 8014EECC  4B EC 1F A5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8014EED0  38 60 00 01 */	li r3, 1
/* 8014EED4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014EED8  7C 08 03 A6 */	mtlr r0
/* 8014EEDC  38 21 00 20 */	addi r1, r1, 0x20
/* 8014EEE0  4E 80 00 20 */	blr 
