lbl_80225AC0:
/* 80225AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225AC4  7C 08 02 A6 */	mflr r0
/* 80225AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225ACC  4B FF 96 5D */	bl _execute__9dMeter2_cFv
/* 80225AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225AD4  7C 08 03 A6 */	mtlr r0
/* 80225AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80225ADC  4E 80 00 20 */	blr 
