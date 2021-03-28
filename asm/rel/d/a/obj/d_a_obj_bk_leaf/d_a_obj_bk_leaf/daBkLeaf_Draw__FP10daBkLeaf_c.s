lbl_80BB6688:
/* 80BB6688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB668C  7C 08 02 A6 */	mflr r0
/* 80BB6690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6694  4B FF FF 31 */	bl draw__10daBkLeaf_cFv
/* 80BB6698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB669C  7C 08 03 A6 */	mtlr r0
/* 80BB66A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB66A4  4E 80 00 20 */	blr 
