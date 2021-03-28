lbl_80BB66E8:
/* 80BB66E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB66EC  7C 08 02 A6 */	mflr r0
/* 80BB66F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB66F4  4B FF FD 01 */	bl create__10daBkLeaf_cFv
/* 80BB66F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB66FC  7C 08 03 A6 */	mtlr r0
/* 80BB6700  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6704  4E 80 00 20 */	blr 
