lbl_809714CC:
/* 809714CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809714D0  7C 08 02 A6 */	mflr r0
/* 809714D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809714D8  4B FF C3 35 */	bl Draw__11daNpc_Bou_cFv
/* 809714DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809714E0  7C 08 03 A6 */	mtlr r0
/* 809714E4  38 21 00 10 */	addi r1, r1, 0x10
/* 809714E8  4E 80 00 20 */	blr 
