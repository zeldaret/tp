lbl_80813E84:
/* 80813E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80813E88  7C 08 02 A6 */	mflr r0
/* 80813E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80813E90  4B FF FC 61 */	bl CreateHeap__8daE_YM_cFv
/* 80813E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80813E98  7C 08 03 A6 */	mtlr r0
/* 80813E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80813EA0  4E 80 00 20 */	blr 
