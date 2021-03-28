lbl_80C92FB8:
/* 80C92FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C92FBC  7C 08 02 A6 */	mflr r0
/* 80C92FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C92FC4  48 00 02 41 */	bl CreateHeap__12daObjMHole_cFv
/* 80C92FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C92FCC  7C 08 03 A6 */	mtlr r0
/* 80C92FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C92FD4  4E 80 00 20 */	blr 
