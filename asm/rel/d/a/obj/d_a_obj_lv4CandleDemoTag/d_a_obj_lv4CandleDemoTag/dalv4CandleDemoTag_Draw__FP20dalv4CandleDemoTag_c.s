lbl_80C5CFFC:
/* 80C5CFFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D000  7C 08 02 A6 */	mflr r0
/* 80C5D004  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D008  4B FF FF E5 */	bl Draw__20dalv4CandleDemoTag_cFv
/* 80C5D00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D010  7C 08 03 A6 */	mtlr r0
/* 80C5D014  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D018  4E 80 00 20 */	blr 
