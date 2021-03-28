lbl_806B5440:
/* 806B5440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B5444  7C 08 02 A6 */	mflr r0
/* 806B5448  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B544C  4B FF FD C9 */	bl CreateHeap__8daE_DT_cFv
/* 806B5450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5454  7C 08 03 A6 */	mtlr r0
/* 806B5458  38 21 00 10 */	addi r1, r1, 0x10
/* 806B545C  4E 80 00 20 */	blr 
