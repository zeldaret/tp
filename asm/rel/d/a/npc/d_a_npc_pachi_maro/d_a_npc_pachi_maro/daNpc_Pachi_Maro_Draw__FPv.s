lbl_80A9A598:
/* 80A9A598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9A59C  7C 08 02 A6 */	mflr r0
/* 80A9A5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9A5A4  4B FF DF 8D */	bl Draw__18daNpc_Pachi_Maro_cFv
/* 80A9A5A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9A5AC  7C 08 03 A6 */	mtlr r0
/* 80A9A5B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9A5B4  4E 80 00 20 */	blr 
