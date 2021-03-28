lbl_80D2C334:
/* 80D2C334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2C338  7C 08 02 A6 */	mflr r0
/* 80D2C33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2C340  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80D2C344  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D2C348  7D 89 03 A6 */	mtctr r12
/* 80D2C34C  4E 80 04 21 */	bctrl 
/* 80D2C350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C354  7C 08 03 A6 */	mtlr r0
/* 80D2C358  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C35C  4E 80 00 20 */	blr 
