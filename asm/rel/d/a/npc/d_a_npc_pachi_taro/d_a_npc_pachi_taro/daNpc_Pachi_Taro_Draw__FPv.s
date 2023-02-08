lbl_80AA02B8:
/* 80AA02B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA02BC  7C 08 02 A6 */	mflr r0
/* 80AA02C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA02C4  4B FF C9 69 */	bl Draw__18daNpc_Pachi_Taro_cFv
/* 80AA02C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA02CC  7C 08 03 A6 */	mtlr r0
/* 80AA02D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA02D4  4E 80 00 20 */	blr 
