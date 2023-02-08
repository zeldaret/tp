lbl_80C5D90C:
/* 80C5D90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D910  7C 08 02 A6 */	mflr r0
/* 80C5D914  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D918  4B FF FE 75 */	bl init_modeNG__16dalv4CandleTag_cFv
/* 80C5D91C  38 60 00 01 */	li r3, 1
/* 80C5D920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D924  7C 08 03 A6 */	mtlr r0
/* 80C5D928  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D92C  4E 80 00 20 */	blr 
