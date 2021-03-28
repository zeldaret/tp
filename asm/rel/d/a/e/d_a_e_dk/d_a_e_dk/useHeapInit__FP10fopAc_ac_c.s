lbl_806ACDF4:
/* 806ACDF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806ACDF8  7C 08 02 A6 */	mflr r0
/* 806ACDFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806ACE00  4B FF FC A5 */	bl CreateHeap__8daE_DK_cFv
/* 806ACE04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806ACE08  7C 08 03 A6 */	mtlr r0
/* 806ACE0C  38 21 00 10 */	addi r1, r1, 0x10
/* 806ACE10  4E 80 00 20 */	blr 
