lbl_80A67AC0:
/* 80A67AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A67AC4  7C 08 02 A6 */	mflr r0
/* 80A67AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A67ACC  4B FF D1 15 */	bl Delete__11daNpc_Len_cFv
/* 80A67AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A67AD4  7C 08 03 A6 */	mtlr r0
/* 80A67AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A67ADC  4E 80 00 20 */	blr 
