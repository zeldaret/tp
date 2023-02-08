lbl_80CE7DAC:
/* 80CE7DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE7DB0  7C 08 02 A6 */	mflr r0
/* 80CE7DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7DB8  4B FF F5 A1 */	bl Delete__14daObj_SSItem_cFv
/* 80CE7DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE7DC0  7C 08 03 A6 */	mtlr r0
/* 80CE7DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7DC8  4E 80 00 20 */	blr 
