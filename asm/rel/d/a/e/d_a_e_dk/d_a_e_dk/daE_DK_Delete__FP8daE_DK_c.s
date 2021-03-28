lbl_806ACA84:
/* 806ACA84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806ACA88  7C 08 02 A6 */	mflr r0
/* 806ACA8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806ACA90  4B FF FF 81 */	bl _delete__8daE_DK_cFv
/* 806ACA94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806ACA98  7C 08 03 A6 */	mtlr r0
/* 806ACA9C  38 21 00 10 */	addi r1, r1, 0x10
/* 806ACAA0  4E 80 00 20 */	blr 
