lbl_8019BCB0:
/* 8019BCB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019BCB4  7C 08 02 A6 */	mflr r0
/* 8019BCB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019BCBC  80 63 00 08 */	lwz r3, 8(r3)
/* 8019BCC0  C0 02 A1 A8 */	lfs f0, lit_4316(r2)
/* 8019BCC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8019BCC8  FC 00 00 1E */	fctiwz f0, f0
/* 8019BCCC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8019BCD0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8019BCD4  81 83 00 00 */	lwz r12, 0(r3)
/* 8019BCD8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8019BCDC  7D 89 03 A6 */	mtctr r12
/* 8019BCE0  4E 80 04 21 */	bctrl 
/* 8019BCE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019BCE8  7C 08 03 A6 */	mtlr r0
/* 8019BCEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8019BCF0  4E 80 00 20 */	blr 
