lbl_809D8D8C:
/* 809D8D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D8D90  7C 08 02 A6 */	mflr r0
/* 809D8D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D8D98  4B FF E7 9D */	bl create__12daNpc_grMC_cFv
/* 809D8D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D8DA0  7C 08 03 A6 */	mtlr r0
/* 809D8DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 809D8DA8  4E 80 00 20 */	blr 
