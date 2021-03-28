lbl_80C33AD4:
/* 80C33AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C33AD8  7C 08 02 A6 */	mflr r0
/* 80C33ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C33AE0  4B FF E9 D1 */	bl Delete__12daObj_Kago_cFv
/* 80C33AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C33AE8  7C 08 03 A6 */	mtlr r0
/* 80C33AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C33AF0  4E 80 00 20 */	blr 
