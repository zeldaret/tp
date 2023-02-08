lbl_80B9A524:
/* 80B9A524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9A528  7C 08 02 A6 */	mflr r0
/* 80B9A52C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9A530  4B FF A4 C5 */	bl Delete__11daNpc_zrZ_cFv
/* 80B9A534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9A538  7C 08 03 A6 */	mtlr r0
/* 80B9A53C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9A540  4E 80 00 20 */	blr 
