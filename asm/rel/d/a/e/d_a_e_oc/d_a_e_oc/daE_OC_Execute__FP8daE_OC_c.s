lbl_80734B44:
/* 80734B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80734B48  7C 08 02 A6 */	mflr r0
/* 80734B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80734B50  4B FF FD 8D */	bl execute__8daE_OC_cFv
/* 80734B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80734B58  7C 08 03 A6 */	mtlr r0
/* 80734B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80734B60  4E 80 00 20 */	blr 
