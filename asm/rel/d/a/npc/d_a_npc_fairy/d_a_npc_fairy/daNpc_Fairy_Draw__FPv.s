lbl_809B7F34:
/* 809B7F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B7F38  7C 08 02 A6 */	mflr r0
/* 809B7F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B7F40  4B FF B0 4D */	bl Draw__13daNpc_Fairy_cFv
/* 809B7F44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B7F48  7C 08 03 A6 */	mtlr r0
/* 809B7F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 809B7F50  4E 80 00 20 */	blr 
