lbl_80BB7DA4:
/* 80BB7DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB7DA8  7C 08 02 A6 */	mflr r0
/* 80BB7DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB7DB0  4B FF F1 09 */	bl Delete__11daBkyRock_cFv
/* 80BB7DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB7DB8  7C 08 03 A6 */	mtlr r0
/* 80BB7DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB7DC0  4E 80 00 20 */	blr 
