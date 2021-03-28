lbl_80457AC4:
/* 80457AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80457AC8  7C 08 02 A6 */	mflr r0
/* 80457ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80457AD0  4B FF FF 51 */	bl execute__9daAndsw_cFv
/* 80457AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80457AD8  7C 08 03 A6 */	mtlr r0
/* 80457ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80457AE0  4E 80 00 20 */	blr 
