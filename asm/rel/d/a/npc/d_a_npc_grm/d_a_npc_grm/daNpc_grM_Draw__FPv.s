lbl_809D5DB0:
/* 809D5DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D5DB4  7C 08 02 A6 */	mflr r0
/* 809D5DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D5DBC  4B FF E9 19 */	bl Draw__11daNpc_grM_cFv
/* 809D5DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D5DC4  7C 08 03 A6 */	mtlr r0
/* 809D5DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 809D5DCC  4E 80 00 20 */	blr 
