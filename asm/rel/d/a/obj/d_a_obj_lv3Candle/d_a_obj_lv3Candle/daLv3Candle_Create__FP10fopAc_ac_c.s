lbl_80C58464:
/* 80C58464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C58468  7C 08 02 A6 */	mflr r0
/* 80C5846C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C58470  4B FF F7 D1 */	bl create__13daLv3Candle_cFv
/* 80C58474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C58478  7C 08 03 A6 */	mtlr r0
/* 80C5847C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C58480  4E 80 00 20 */	blr 
