lbl_80C5D01C:
/* 80C5D01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D020  7C 08 02 A6 */	mflr r0
/* 80C5D024  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D028  4B FF FB 7D */	bl Execute__20dalv4CandleDemoTag_cFv
/* 80C5D02C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D030  7C 08 03 A6 */	mtlr r0
/* 80C5D034  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D038  4E 80 00 20 */	blr 
