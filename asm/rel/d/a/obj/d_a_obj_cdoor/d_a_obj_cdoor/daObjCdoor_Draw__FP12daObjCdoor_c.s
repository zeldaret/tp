lbl_80BC7CE4:
/* 80BC7CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7CE8  7C 08 02 A6 */	mflr r0
/* 80BC7CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7CF0  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BC7CF4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BC7CF8  7D 89 03 A6 */	mtctr r12
/* 80BC7CFC  4E 80 04 21 */	bctrl 
/* 80BC7D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7D04  7C 08 03 A6 */	mtlr r0
/* 80BC7D08  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7D0C  4E 80 00 20 */	blr 
