lbl_805A533C:
/* 805A533C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5340  7C 08 02 A6 */	mflr r0
/* 805A5344  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A5348  4B FF F9 95 */	bl create__15daTagLv2PrChk_cFv
/* 805A534C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A5350  7C 08 03 A6 */	mtlr r0
/* 805A5354  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5358  4E 80 00 20 */	blr 
