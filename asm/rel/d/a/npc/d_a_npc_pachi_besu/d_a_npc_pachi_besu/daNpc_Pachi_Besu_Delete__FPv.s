lbl_80A956D8:
/* 80A956D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A956DC  7C 08 02 A6 */	mflr r0
/* 80A956E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A956E4  4B FF DF 25 */	bl Delete__18daNpc_Pachi_Besu_cFv
/* 80A956E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A956EC  7C 08 03 A6 */	mtlr r0
/* 80A956F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A956F4  4E 80 00 20 */	blr 
