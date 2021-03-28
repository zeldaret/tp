lbl_80BC8160:
/* 80BC8160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC8164  7C 08 02 A6 */	mflr r0
/* 80BC8168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC816C  38 80 FF FF */	li r4, -1
/* 80BC8170  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BC8174  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80BC8178  7D 89 03 A6 */	mtctr r12
/* 80BC817C  4E 80 04 21 */	bctrl 
/* 80BC8180  38 60 00 01 */	li r3, 1
/* 80BC8184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC8188  7C 08 03 A6 */	mtlr r0
/* 80BC818C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8190  4E 80 00 20 */	blr 
