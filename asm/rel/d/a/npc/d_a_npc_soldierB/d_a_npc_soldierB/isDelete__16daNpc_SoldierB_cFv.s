lbl_80AF4248:
/* 80AF4248  88 03 0E 18 */	lbz r0, 0xe18(r3)
/* 80AF424C  28 00 00 00 */	cmplwi r0, 0
/* 80AF4250  41 82 00 0C */	beq lbl_80AF425C
/* 80AF4254  28 00 00 01 */	cmplwi r0, 1
/* 80AF4258  40 82 00 0C */	bne lbl_80AF4264
lbl_80AF425C:
/* 80AF425C  38 60 00 00 */	li r3, 0
/* 80AF4260  4E 80 00 20 */	blr 
lbl_80AF4264:
/* 80AF4264  38 60 00 01 */	li r3, 1
/* 80AF4268  4E 80 00 20 */	blr 
