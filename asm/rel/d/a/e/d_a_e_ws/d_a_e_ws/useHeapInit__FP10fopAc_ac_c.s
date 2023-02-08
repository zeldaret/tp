lbl_807E6840:
/* 807E6840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E6844  7C 08 02 A6 */	mflr r0
/* 807E6848  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E684C  4B FF FE FD */	bl CreateHeap__8daE_WS_cFv
/* 807E6850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E6854  7C 08 03 A6 */	mtlr r0
/* 807E6858  38 21 00 10 */	addi r1, r1, 0x10
/* 807E685C  4E 80 00 20 */	blr 
