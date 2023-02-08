lbl_806B9514:
/* 806B9514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B9518  7C 08 02 A6 */	mflr r0
/* 806B951C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B9520  4B FF FE AD */	bl CreateHeap__8daE_FK_cFv
/* 806B9524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B9528  7C 08 03 A6 */	mtlr r0
/* 806B952C  38 21 00 10 */	addi r1, r1, 0x10
/* 806B9530  4E 80 00 20 */	blr 
