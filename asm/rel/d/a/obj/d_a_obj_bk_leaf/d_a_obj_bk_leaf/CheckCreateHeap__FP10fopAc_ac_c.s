lbl_80BB60D8:
/* 80BB60D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB60DC  7C 08 02 A6 */	mflr r0
/* 80BB60E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB60E4  48 00 01 B9 */	bl CreateHeap__10daBkLeaf_cFv
/* 80BB60E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB60EC  7C 08 03 A6 */	mtlr r0
/* 80BB60F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB60F4  4E 80 00 20 */	blr 
