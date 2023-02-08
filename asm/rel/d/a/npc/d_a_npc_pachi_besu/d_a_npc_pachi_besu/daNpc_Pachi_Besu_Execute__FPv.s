lbl_80A956F8:
/* 80A956F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A956FC  7C 08 02 A6 */	mflr r0
/* 80A95700  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A95704  4B FF DF 39 */	bl Execute__18daNpc_Pachi_Besu_cFv
/* 80A95708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9570C  7C 08 03 A6 */	mtlr r0
/* 80A95710  38 21 00 10 */	addi r1, r1, 0x10
/* 80A95714  4E 80 00 20 */	blr 
