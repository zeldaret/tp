lbl_80C5D980:
/* 80C5D980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D984  7C 08 02 A6 */	mflr r0
/* 80C5D988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D98C  4B FF FF AD */	bl Delete__16dalv4CandleTag_cFv
/* 80C5D990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D994  7C 08 03 A6 */	mtlr r0
/* 80C5D998  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D99C  4E 80 00 20 */	blr 
