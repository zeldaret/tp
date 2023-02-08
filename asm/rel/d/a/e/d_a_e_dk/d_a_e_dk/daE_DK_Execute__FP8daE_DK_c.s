lbl_806AC9E8:
/* 806AC9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AC9EC  7C 08 02 A6 */	mflr r0
/* 806AC9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AC9F4  4B FF FF 75 */	bl execute__8daE_DK_cFv
/* 806AC9F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AC9FC  7C 08 03 A6 */	mtlr r0
/* 806ACA00  38 21 00 10 */	addi r1, r1, 0x10
/* 806ACA04  4E 80 00 20 */	blr 
