lbl_809B7ED4:
/* 809B7ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B7ED8  7C 08 02 A6 */	mflr r0
/* 809B7EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B7EE0  4B FF A5 51 */	bl Create__13daNpc_Fairy_cFv
/* 809B7EE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B7EE8  7C 08 03 A6 */	mtlr r0
/* 809B7EEC  38 21 00 10 */	addi r1, r1, 0x10
/* 809B7EF0  4E 80 00 20 */	blr 
