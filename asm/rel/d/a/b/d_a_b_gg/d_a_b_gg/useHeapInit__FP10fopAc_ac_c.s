lbl_805DE630:
/* 805DE630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DE634  7C 08 02 A6 */	mflr r0
/* 805DE638  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DE63C  4B FF FE 29 */	bl CreateHeap__8daB_GG_cFv
/* 805DE640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DE644  7C 08 03 A6 */	mtlr r0
/* 805DE648  38 21 00 10 */	addi r1, r1, 0x10
/* 805DE64C  4E 80 00 20 */	blr 
