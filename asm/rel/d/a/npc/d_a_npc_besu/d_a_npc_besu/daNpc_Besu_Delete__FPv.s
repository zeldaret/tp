lbl_8053D2BC:
/* 8053D2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D2C0  7C 08 02 A6 */	mflr r0
/* 8053D2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D2C8  4B FF A6 4D */	bl Delete__12daNpc_Besu_cFv
/* 8053D2CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D2D0  7C 08 03 A6 */	mtlr r0
/* 8053D2D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D2D8  4E 80 00 20 */	blr 
