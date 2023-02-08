lbl_80A9A538:
/* 80A9A538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9A53C  7C 08 02 A6 */	mflr r0
/* 80A9A540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9A544  4B FF D8 81 */	bl create__18daNpc_Pachi_Maro_cFv
/* 80A9A548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9A54C  7C 08 03 A6 */	mtlr r0
/* 80A9A550  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9A554  4E 80 00 20 */	blr 
