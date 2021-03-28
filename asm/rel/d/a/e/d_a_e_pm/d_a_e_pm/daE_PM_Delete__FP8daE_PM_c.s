lbl_8074AED8:
/* 8074AED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074AEDC  7C 08 02 A6 */	mflr r0
/* 8074AEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074AEE4  4B FF FB DD */	bl Delete__8daE_PM_cFv
/* 8074AEE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074AEEC  7C 08 03 A6 */	mtlr r0
/* 8074AEF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8074AEF4  4E 80 00 20 */	blr 
