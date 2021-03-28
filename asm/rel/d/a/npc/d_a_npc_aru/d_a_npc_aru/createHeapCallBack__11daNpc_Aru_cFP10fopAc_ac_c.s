lbl_809520C4:
/* 809520C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809520C8  7C 08 02 A6 */	mflr r0
/* 809520CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809520D0  4B FF FA E1 */	bl CreateHeap__11daNpc_Aru_cFv
/* 809520D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809520D8  7C 08 03 A6 */	mtlr r0
/* 809520DC  38 21 00 10 */	addi r1, r1, 0x10
/* 809520E0  4E 80 00 20 */	blr 
