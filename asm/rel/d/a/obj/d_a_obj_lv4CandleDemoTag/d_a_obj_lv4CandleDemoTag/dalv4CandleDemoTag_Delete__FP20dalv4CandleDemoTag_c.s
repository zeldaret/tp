lbl_80C5D03C:
/* 80C5D03C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D040  7C 08 02 A6 */	mflr r0
/* 80C5D044  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D048  4B FF FF AD */	bl Delete__20dalv4CandleDemoTag_cFv
/* 80C5D04C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D050  7C 08 03 A6 */	mtlr r0
/* 80C5D054  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D058  4E 80 00 20 */	blr 
