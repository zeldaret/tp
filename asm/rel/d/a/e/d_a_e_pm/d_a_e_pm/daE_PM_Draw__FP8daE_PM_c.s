lbl_8074AE90:
/* 8074AE90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074AE94  7C 08 02 A6 */	mflr r0
/* 8074AE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074AE9C  4B FF F8 31 */	bl Draw__8daE_PM_cFv
/* 8074AEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074AEA4  7C 08 03 A6 */	mtlr r0
/* 8074AEA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8074AEAC  4E 80 00 20 */	blr 
