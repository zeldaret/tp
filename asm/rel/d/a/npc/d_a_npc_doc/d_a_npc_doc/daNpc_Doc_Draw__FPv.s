lbl_809A90AC:
/* 809A90AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A90B0  7C 08 02 A6 */	mflr r0
/* 809A90B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A90B8  4B FF E4 65 */	bl Draw__11daNpc_Doc_cFv
/* 809A90BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A90C0  7C 08 03 A6 */	mtlr r0
/* 809A90C4  38 21 00 10 */	addi r1, r1, 0x10
/* 809A90C8  4E 80 00 20 */	blr 
