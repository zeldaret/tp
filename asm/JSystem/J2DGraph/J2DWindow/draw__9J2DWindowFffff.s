lbl_802FBFA0:
/* 802FBFA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FBFA4  7C 08 02 A6 */	mflr r0
/* 802FBFA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FBFAC  D0 21 00 08 */	stfs f1, 8(r1)
/* 802FBFB0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 802FBFB4  EC 01 18 2A */	fadds f0, f1, f3
/* 802FBFB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802FBFBC  EC 02 20 2A */	fadds f0, f2, f4
/* 802FBFC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802FBFC4  38 81 00 08 */	addi r4, r1, 8
/* 802FBFC8  81 83 00 00 */	lwz r12, 0(r3)
/* 802FBFCC  81 8C 00 94 */	lwz r12, 0x94(r12)
/* 802FBFD0  7D 89 03 A6 */	mtctr r12
/* 802FBFD4  4E 80 04 21 */	bctrl 
/* 802FBFD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FBFDC  7C 08 03 A6 */	mtlr r0
/* 802FBFE0  38 21 00 20 */	addi r1, r1, 0x20
/* 802FBFE4  4E 80 00 20 */	blr 
