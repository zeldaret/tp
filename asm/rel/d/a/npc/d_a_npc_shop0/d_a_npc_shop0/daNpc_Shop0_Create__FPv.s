lbl_80AEBA8C:
/* 80AEBA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEBA90  7C 08 02 A6 */	mflr r0
/* 80AEBA94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEBA98  4B FF EF 79 */	bl create__13daNpc_Shop0_cFv
/* 80AEBA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEBAA0  7C 08 03 A6 */	mtlr r0
/* 80AEBAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEBAA8  4E 80 00 20 */	blr 
