lbl_806EA998:
/* 806EA998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EA99C  7C 08 02 A6 */	mflr r0
/* 806EA9A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EA9A4  4B FF FD ED */	bl draw__8daE_HZ_cFv
/* 806EA9A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EA9AC  7C 08 03 A6 */	mtlr r0
/* 806EA9B0  38 21 00 10 */	addi r1, r1, 0x10
/* 806EA9B4  4E 80 00 20 */	blr 
