lbl_80AA0258:
/* 80AA0258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA025C  7C 08 02 A6 */	mflr r0
/* 80AA0260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0264  4B FF C1 61 */	bl create__18daNpc_Pachi_Taro_cFv
/* 80AA0268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA026C  7C 08 03 A6 */	mtlr r0
/* 80AA0270  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0274  4E 80 00 20 */	blr 
