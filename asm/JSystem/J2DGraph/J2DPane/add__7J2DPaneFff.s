lbl_802F6FB4:
/* 802F6FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F6FB8  7C 08 02 A6 */	mflr r0
/* 802F6FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F6FC0  C0 03 00 D4 */	lfs f0, 0xd4(r3)
/* 802F6FC4  EC 00 08 2A */	fadds f0, f0, f1
/* 802F6FC8  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 802F6FCC  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 802F6FD0  EC 00 10 2A */	fadds f0, f0, f2
/* 802F6FD4  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 802F6FD8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F6FDC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F6FE0  7D 89 03 A6 */	mtctr r12
/* 802F6FE4  4E 80 04 21 */	bctrl 
/* 802F6FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F6FEC  7C 08 03 A6 */	mtlr r0
/* 802F6FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 802F6FF4  4E 80 00 20 */	blr 
