lbl_80BB66C8:
/* 80BB66C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB66CC  7C 08 02 A6 */	mflr r0
/* 80BB66D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB66D4  4B FF FF 81 */	bl _delete__10daBkLeaf_cFv
/* 80BB66D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB66DC  7C 08 03 A6 */	mtlr r0
/* 80BB66E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB66E4  4E 80 00 20 */	blr 
