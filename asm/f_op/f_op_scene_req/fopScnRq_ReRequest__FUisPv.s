lbl_8001F0FC:
/* 8001F0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F100  7C 08 02 A6 */	mflr r0
/* 8001F104  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F108  48 00 40 09 */	bl fpcNdRq_ReRequest__FUisPv
/* 8001F10C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F110  7C 08 03 A6 */	mtlr r0
/* 8001F114  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F118  4E 80 00 20 */	blr 
