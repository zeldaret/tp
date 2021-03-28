lbl_809BF738:
/* 809BF738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BF73C  7C 08 02 A6 */	mflr r0
/* 809BF740  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BF744  4B FF F9 65 */	bl CreateHeap__11daNpc_grA_cFv
/* 809BF748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BF74C  7C 08 03 A6 */	mtlr r0
/* 809BF750  38 21 00 10 */	addi r1, r1, 0x10
/* 809BF754  4E 80 00 20 */	blr 
