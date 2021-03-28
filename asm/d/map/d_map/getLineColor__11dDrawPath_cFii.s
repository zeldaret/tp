lbl_8002AD84:
/* 8002AD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002AD88  7C 08 02 A6 */	mflr r0
/* 8002AD8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002AD90  81 83 00 00 */	lwz r12, 0(r3)
/* 8002AD94  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8002AD98  7D 89 03 A6 */	mtctr r12
/* 8002AD9C  4E 80 04 21 */	bctrl 
/* 8002ADA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002ADA4  7C 08 03 A6 */	mtlr r0
/* 8002ADA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002ADAC  4E 80 00 20 */	blr 
