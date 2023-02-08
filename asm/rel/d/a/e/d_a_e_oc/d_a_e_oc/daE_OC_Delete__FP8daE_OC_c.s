lbl_80734BF0:
/* 80734BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80734BF4  7C 08 02 A6 */	mflr r0
/* 80734BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80734BFC  4B FF FF 71 */	bl _delete__8daE_OC_cFv
/* 80734C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80734C04  7C 08 03 A6 */	mtlr r0
/* 80734C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80734C0C  4E 80 00 20 */	blr 
