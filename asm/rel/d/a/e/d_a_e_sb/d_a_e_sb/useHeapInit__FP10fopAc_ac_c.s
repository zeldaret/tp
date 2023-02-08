lbl_807817D0:
/* 807817D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807817D4  7C 08 02 A6 */	mflr r0
/* 807817D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807817DC  4B FF FE FD */	bl CreateHeap__8daE_SB_cFv
/* 807817E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807817E4  7C 08 03 A6 */	mtlr r0
/* 807817E8  38 21 00 10 */	addi r1, r1, 0x10
/* 807817EC  4E 80 00 20 */	blr 
