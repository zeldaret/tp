lbl_80C8E524:
/* 80C8E524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E528  7C 08 02 A6 */	mflr r0
/* 80C8E52C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E530  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C8E534  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C8E538  7D 89 03 A6 */	mtctr r12
/* 80C8E53C  4E 80 04 21 */	bctrl 
/* 80C8E540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8E544  7C 08 03 A6 */	mtlr r0
/* 80C8E548  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8E54C  4E 80 00 20 */	blr 
