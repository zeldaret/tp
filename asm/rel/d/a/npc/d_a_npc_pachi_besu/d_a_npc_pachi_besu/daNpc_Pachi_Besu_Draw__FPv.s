lbl_80A95718:
/* 80A95718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9571C  7C 08 02 A6 */	mflr r0
/* 80A95720  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A95724  4B FF DF 39 */	bl Draw__18daNpc_Pachi_Besu_cFv
/* 80A95728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9572C  7C 08 03 A6 */	mtlr r0
/* 80A95730  38 21 00 10 */	addi r1, r1, 0x10
/* 80A95734  4E 80 00 20 */	blr 
