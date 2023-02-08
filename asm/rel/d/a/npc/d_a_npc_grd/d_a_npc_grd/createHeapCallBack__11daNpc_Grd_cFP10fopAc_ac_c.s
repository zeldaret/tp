lbl_809D0B70:
/* 809D0B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D0B74  7C 08 02 A6 */	mflr r0
/* 809D0B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D0B7C  4B FF F8 99 */	bl CreateHeap__11daNpc_Grd_cFv
/* 809D0B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D0B84  7C 08 03 A6 */	mtlr r0
/* 809D0B88  38 21 00 10 */	addi r1, r1, 0x10
/* 809D0B8C  4E 80 00 20 */	blr 
