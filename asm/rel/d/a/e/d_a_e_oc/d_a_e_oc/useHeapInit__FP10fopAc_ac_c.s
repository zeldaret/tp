lbl_80734D88:
/* 80734D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80734D8C  7C 08 02 A6 */	mflr r0
/* 80734D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80734D94  4B FF FE 7D */	bl CreateHeap__8daE_OC_cFv
/* 80734D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80734D9C  7C 08 03 A6 */	mtlr r0
/* 80734DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80734DA4  4E 80 00 20 */	blr 
