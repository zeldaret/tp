lbl_805CBAA8:
/* 805CBAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CBAAC  7C 08 02 A6 */	mflr r0
/* 805CBAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CBAB4  4B FF FA 3D */	bl draw__8daB_DS_cFv
/* 805CBAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CBABC  7C 08 03 A6 */	mtlr r0
/* 805CBAC0  38 21 00 10 */	addi r1, r1, 0x10
/* 805CBAC4  4E 80 00 20 */	blr 
