lbl_809D3098:
/* 809D3098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D309C  7C 08 02 A6 */	mflr r0
/* 809D30A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D30A4  4B FF D7 E9 */	bl Execute__11daNpc_Grd_cFv
/* 809D30A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D30AC  7C 08 03 A6 */	mtlr r0
/* 809D30B0  38 21 00 10 */	addi r1, r1, 0x10
/* 809D30B4  4E 80 00 20 */	blr 
