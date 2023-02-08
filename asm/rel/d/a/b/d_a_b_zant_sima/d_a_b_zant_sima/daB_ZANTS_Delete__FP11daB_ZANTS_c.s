lbl_80652F18:
/* 80652F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80652F1C  7C 08 02 A6 */	mflr r0
/* 80652F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80652F24  4B FF FF 9D */	bl _delete__11daB_ZANTS_cFv
/* 80652F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80652F2C  7C 08 03 A6 */	mtlr r0
/* 80652F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80652F34  4E 80 00 20 */	blr 
