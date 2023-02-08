lbl_8053D2DC:
/* 8053D2DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D2E0  7C 08 02 A6 */	mflr r0
/* 8053D2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D2E8  4B FF A6 61 */	bl Execute__12daNpc_Besu_cFv
/* 8053D2EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D2F0  7C 08 03 A6 */	mtlr r0
/* 8053D2F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D2F8  4E 80 00 20 */	blr 
