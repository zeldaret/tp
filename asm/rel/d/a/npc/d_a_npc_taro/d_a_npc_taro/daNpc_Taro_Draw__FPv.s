lbl_805701D0:
/* 805701D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805701D4  7C 08 02 A6 */	mflr r0
/* 805701D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805701DC  4B FF 67 89 */	bl Draw__12daNpc_Taro_cFv
/* 805701E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805701E4  7C 08 03 A6 */	mtlr r0
/* 805701E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805701EC  4E 80 00 20 */	blr 
