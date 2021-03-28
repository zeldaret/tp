lbl_8082F0F8:
/* 8082F0F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082F0FC  7C 08 02 A6 */	mflr r0
/* 8082F100  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082F104  4B FF F6 2D */	bl create__8daE_ZH_cFv
/* 8082F108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082F10C  7C 08 03 A6 */	mtlr r0
/* 8082F110  38 21 00 10 */	addi r1, r1, 0x10
/* 8082F114  4E 80 00 20 */	blr 
