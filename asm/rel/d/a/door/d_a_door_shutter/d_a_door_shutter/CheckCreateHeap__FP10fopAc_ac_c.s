lbl_80460D8C:
/* 80460D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460D90  7C 08 02 A6 */	mflr r0
/* 80460D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460D98  48 00 00 15 */	bl CreateHeap__10daDoor20_cFv
/* 80460D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460DA0  7C 08 03 A6 */	mtlr r0
/* 80460DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80460DA8  4E 80 00 20 */	blr 
