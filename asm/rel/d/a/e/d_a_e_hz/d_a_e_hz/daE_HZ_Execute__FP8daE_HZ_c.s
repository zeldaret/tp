lbl_806EF68C:
/* 806EF68C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EF690  7C 08 02 A6 */	mflr r0
/* 806EF694  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EF698  4B FF FD D5 */	bl execute__8daE_HZ_cFv
/* 806EF69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EF6A0  7C 08 03 A6 */	mtlr r0
/* 806EF6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806EF6A8  4E 80 00 20 */	blr 
