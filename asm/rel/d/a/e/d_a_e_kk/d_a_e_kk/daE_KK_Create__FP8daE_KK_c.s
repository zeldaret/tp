lbl_806FF088:
/* 806FF088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FF08C  7C 08 02 A6 */	mflr r0
/* 806FF090  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FF094  4B FF F6 25 */	bl create__8daE_KK_cFv
/* 806FF098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FF09C  7C 08 03 A6 */	mtlr r0
/* 806FF0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 806FF0A4  4E 80 00 20 */	blr 
