lbl_809634E0:
/* 809634E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809634E4  7C 08 02 A6 */	mflr r0
/* 809634E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809634EC  4B FF F8 81 */	bl CreateHeap__12daNpc_Bans_cFv
/* 809634F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809634F4  7C 08 03 A6 */	mtlr r0
/* 809634F8  38 21 00 10 */	addi r1, r1, 0x10
/* 809634FC  4E 80 00 20 */	blr 
