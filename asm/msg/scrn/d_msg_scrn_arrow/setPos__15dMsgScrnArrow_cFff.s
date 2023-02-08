lbl_8023BDF8:
/* 8023BDF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023BDFC  7C 08 02 A6 */	mflr r0
/* 8023BE00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023BE04  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8023BE08  80 63 00 04 */	lwz r3, 4(r3)
/* 8023BE0C  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 8023BE10  D0 43 00 D8 */	stfs f2, 0xd8(r3)
/* 8023BE14  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BE18  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8023BE1C  7D 89 03 A6 */	mtctr r12
/* 8023BE20  4E 80 04 21 */	bctrl 
/* 8023BE24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023BE28  7C 08 03 A6 */	mtlr r0
/* 8023BE2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8023BE30  4E 80 00 20 */	blr 
