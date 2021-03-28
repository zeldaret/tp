lbl_80D61ABC:
/* 80D61ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61AC0  7C 08 02 A6 */	mflr r0
/* 80D61AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61AC8  4B FF FF 39 */	bl execute__14daTagSpinner_cFv
/* 80D61ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61AD0  7C 08 03 A6 */	mtlr r0
/* 80D61AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61AD8  4E 80 00 20 */	blr 
