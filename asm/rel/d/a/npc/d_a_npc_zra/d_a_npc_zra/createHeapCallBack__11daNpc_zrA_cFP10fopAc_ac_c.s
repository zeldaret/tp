lbl_80B7AB9C:
/* 80B7AB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7ABA0  7C 08 02 A6 */	mflr r0
/* 80B7ABA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7ABA8  4B FF F3 91 */	bl CreateHeap__11daNpc_zrA_cFv
/* 80B7ABAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7ABB0  7C 08 03 A6 */	mtlr r0
/* 80B7ABB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7ABB8  4E 80 00 20 */	blr 
