lbl_80C5D940:
/* 80C5D940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D944  7C 08 02 A6 */	mflr r0
/* 80C5D948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D94C  4B FF FF E5 */	bl Draw__16dalv4CandleTag_cFv
/* 80C5D950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D954  7C 08 03 A6 */	mtlr r0
/* 80C5D958  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D95C  4E 80 00 20 */	blr 
