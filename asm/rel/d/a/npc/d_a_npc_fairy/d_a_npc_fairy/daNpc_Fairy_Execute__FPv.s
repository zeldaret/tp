lbl_809B7F14:
/* 809B7F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B7F18  7C 08 02 A6 */	mflr r0
/* 809B7F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B7F20  4B FF B0 11 */	bl Execute__13daNpc_Fairy_cFv
/* 809B7F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B7F28  7C 08 03 A6 */	mtlr r0
/* 809B7F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 809B7F30  4E 80 00 20 */	blr 
