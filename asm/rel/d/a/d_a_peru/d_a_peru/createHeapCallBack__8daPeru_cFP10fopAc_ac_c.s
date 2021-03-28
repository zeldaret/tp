lbl_80D47840:
/* 80D47840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D47844  7C 08 02 A6 */	mflr r0
/* 80D47848  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4784C  4B FF F9 C1 */	bl CreateHeap__8daPeru_cFv
/* 80D47850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D47854  7C 08 03 A6 */	mtlr r0
/* 80D47858  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4785C  4E 80 00 20 */	blr 
