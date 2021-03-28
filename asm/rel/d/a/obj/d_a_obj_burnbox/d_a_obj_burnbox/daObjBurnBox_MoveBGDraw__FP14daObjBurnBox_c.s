lbl_8046EE14:
/* 8046EE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046EE18  7C 08 02 A6 */	mflr r0
/* 8046EE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046EE20  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 8046EE24  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8046EE28  7D 89 03 A6 */	mtctr r12
/* 8046EE2C  4E 80 04 21 */	bctrl 
/* 8046EE30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046EE34  7C 08 03 A6 */	mtlr r0
/* 8046EE38  38 21 00 10 */	addi r1, r1, 0x10
/* 8046EE3C  4E 80 00 20 */	blr 
