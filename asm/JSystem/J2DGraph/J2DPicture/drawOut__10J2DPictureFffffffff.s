lbl_802FF524:
/* 802FF524  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802FF528  7C 08 02 A6 */	mflr r0
/* 802FF52C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FF530  D0 A1 00 08 */	stfs f5, 8(r1)
/* 802FF534  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 802FF538  EC 05 38 2A */	fadds f0, f5, f7
/* 802FF53C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802FF540  EC 06 40 2A */	fadds f0, f6, f8
/* 802FF544  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802FF548  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802FF54C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802FF550  EC 01 18 2A */	fadds f0, f1, f3
/* 802FF554  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802FF558  EC 02 20 2A */	fadds f0, f2, f4
/* 802FF55C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802FF560  38 81 00 18 */	addi r4, r1, 0x18
/* 802FF564  38 A1 00 08 */	addi r5, r1, 8
/* 802FF568  81 83 00 00 */	lwz r12, 0(r3)
/* 802FF56C  81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 802FF570  7D 89 03 A6 */	mtctr r12
/* 802FF574  4E 80 04 21 */	bctrl 
/* 802FF578  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802FF57C  7C 08 03 A6 */	mtlr r0
/* 802FF580  38 21 00 30 */	addi r1, r1, 0x30
/* 802FF584  4E 80 00 20 */	blr 
