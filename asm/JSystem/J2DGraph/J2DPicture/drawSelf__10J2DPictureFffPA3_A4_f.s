lbl_802FDB90:
/* 802FDB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FDB94  7C 08 02 A6 */	mflr r0
/* 802FDB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FDB9C  80 03 01 00 */	lwz r0, 0x100(r3)
/* 802FDBA0  28 00 00 00 */	cmplwi r0, 0
/* 802FDBA4  41 82 00 48 */	beq lbl_802FDBEC
/* 802FDBA8  88 03 01 08 */	lbz r0, 0x108(r3)
/* 802FDBAC  28 00 00 00 */	cmplwi r0, 0
/* 802FDBB0  41 82 00 3C */	beq lbl_802FDBEC
/* 802FDBB4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 802FDBB8  EC 20 08 2A */	fadds f1, f0, f1
/* 802FDBBC  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 802FDBC0  EC 40 10 2A */	fadds f2, f0, f2
/* 802FDBC4  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 802FDBC8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802FDBCC  EC 63 00 28 */	fsubs f3, f3, f0
/* 802FDBD0  C0 83 00 2C */	lfs f4, 0x2c(r3)
/* 802FDBD4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802FDBD8  EC 84 00 28 */	fsubs f4, f4, f0
/* 802FDBDC  81 83 00 00 */	lwz r12, 0(r3)
/* 802FDBE0  81 8C 01 40 */	lwz r12, 0x140(r12)
/* 802FDBE4  7D 89 03 A6 */	mtctr r12
/* 802FDBE8  4E 80 04 21 */	bctrl 
lbl_802FDBEC:
/* 802FDBEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FDBF0  7C 08 03 A6 */	mtlr r0
/* 802FDBF4  38 21 00 10 */	addi r1, r1, 0x10
/* 802FDBF8  4E 80 00 20 */	blr 
