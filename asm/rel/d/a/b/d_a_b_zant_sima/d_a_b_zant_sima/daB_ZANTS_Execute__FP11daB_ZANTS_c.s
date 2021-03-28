lbl_80652E98:
/* 80652E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80652E9C  7C 08 02 A6 */	mflr r0
/* 80652EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80652EA4  4B FF FF 05 */	bl execute__11daB_ZANTS_cFv
/* 80652EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80652EAC  7C 08 03 A6 */	mtlr r0
/* 80652EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80652EB4  4E 80 00 20 */	blr 
