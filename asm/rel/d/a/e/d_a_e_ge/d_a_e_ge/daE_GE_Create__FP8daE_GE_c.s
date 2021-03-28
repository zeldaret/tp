lbl_806CC9F0:
/* 806CC9F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CC9F4  7C 08 02 A6 */	mflr r0
/* 806CC9F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CC9FC  4B FF F9 95 */	bl create__8daE_GE_cFv
/* 806CCA00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CCA04  7C 08 03 A6 */	mtlr r0
/* 806CCA08  38 21 00 10 */	addi r1, r1, 0x10
/* 806CCA0C  4E 80 00 20 */	blr 
