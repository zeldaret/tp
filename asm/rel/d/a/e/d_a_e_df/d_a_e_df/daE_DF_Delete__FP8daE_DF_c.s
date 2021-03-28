lbl_806A9658:
/* 806A9658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A965C  7C 08 02 A6 */	mflr r0
/* 806A9660  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A9664  4B FF FE ED */	bl Delete__8daE_DF_cFv
/* 806A9668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A966C  7C 08 03 A6 */	mtlr r0
/* 806A9670  38 21 00 10 */	addi r1, r1, 0x10
/* 806A9674  4E 80 00 20 */	blr 
