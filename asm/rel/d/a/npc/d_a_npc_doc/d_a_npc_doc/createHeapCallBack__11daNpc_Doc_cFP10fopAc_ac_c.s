lbl_809A75B0:
/* 809A75B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A75B4  7C 08 02 A6 */	mflr r0
/* 809A75B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A75BC  4B FF FA CD */	bl CreateHeap__11daNpc_Doc_cFv
/* 809A75C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A75C4  7C 08 03 A6 */	mtlr r0
/* 809A75C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809A75CC  4E 80 00 20 */	blr 
