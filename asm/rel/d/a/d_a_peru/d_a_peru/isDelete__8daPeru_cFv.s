lbl_80D478B8:
/* 80D478B8  88 03 11 28 */	lbz r0, 0x1128(r3)
/* 80D478BC  28 00 00 00 */	cmplwi r0, 0
/* 80D478C0  40 82 00 0C */	bne lbl_80D478CC
/* 80D478C4  38 60 00 00 */	li r3, 0
/* 80D478C8  4E 80 00 20 */	blr 
lbl_80D478CC:
/* 80D478CC  28 00 00 01 */	cmplwi r0, 1
/* 80D478D0  40 82 00 0C */	bne lbl_80D478DC
/* 80D478D4  38 60 00 00 */	li r3, 0
/* 80D478D8  4E 80 00 20 */	blr 
lbl_80D478DC:
/* 80D478DC  20 60 00 02 */	subfic r3, r0, 2
/* 80D478E0  30 03 FF FF */	addic r0, r3, -1
/* 80D478E4  7C 60 19 10 */	subfe r3, r0, r3
/* 80D478E8  4E 80 00 20 */	blr 
