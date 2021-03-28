lbl_806A9630:
/* 806A9630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A9634  7C 08 02 A6 */	mflr r0
/* 806A9638  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A963C  4B FF FD 49 */	bl Execute__8daE_DF_cFv
/* 806A9640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A9644  7C 08 03 A6 */	mtlr r0
/* 806A9648  38 21 00 10 */	addi r1, r1, 0x10
/* 806A964C  4E 80 00 20 */	blr 
