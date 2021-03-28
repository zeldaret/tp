lbl_809DB448:
/* 809DB448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DB44C  7C 08 02 A6 */	mflr r0
/* 809DB450  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DB454  4B FF F8 05 */	bl CreateHeap__11daNpc_grO_cFv
/* 809DB458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DB45C  7C 08 03 A6 */	mtlr r0
/* 809DB460  38 21 00 10 */	addi r1, r1, 0x10
/* 809DB464  4E 80 00 20 */	blr 
