lbl_80A936F0:
/* 80A936F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A936F4  7C 08 02 A6 */	mflr r0
/* 80A936F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A936FC  4B FF FA 81 */	bl CreateHeap__18daNpc_Pachi_Besu_cFv
/* 80A93700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A93704  7C 08 03 A6 */	mtlr r0
/* 80A93708  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9370C  4E 80 00 20 */	blr 
