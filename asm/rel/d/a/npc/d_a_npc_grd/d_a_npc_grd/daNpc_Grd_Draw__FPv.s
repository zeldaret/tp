lbl_809D30B8:
/* 809D30B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D30BC  7C 08 02 A6 */	mflr r0
/* 809D30C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D30C4  4B FF D7 E9 */	bl Draw__11daNpc_Grd_cFv
/* 809D30C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D30CC  7C 08 03 A6 */	mtlr r0
/* 809D30D0  38 21 00 10 */	addi r1, r1, 0x10
/* 809D30D4  4E 80 00 20 */	blr 
