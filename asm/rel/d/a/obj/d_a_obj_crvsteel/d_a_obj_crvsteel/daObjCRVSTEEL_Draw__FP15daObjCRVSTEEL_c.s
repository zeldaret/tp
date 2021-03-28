lbl_80BD5D6C:
/* 80BD5D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD5D70  7C 08 02 A6 */	mflr r0
/* 80BD5D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5D78  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BD5D7C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BD5D80  7D 89 03 A6 */	mtctr r12
/* 80BD5D84  4E 80 04 21 */	bctrl 
/* 80BD5D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD5D8C  7C 08 03 A6 */	mtlr r0
/* 80BD5D90  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD5D94  4E 80 00 20 */	blr 
