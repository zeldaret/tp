lbl_80BC9FC8:
/* 80BC9FC8  A0 83 00 00 */	lhz r4, 0(r3)
/* 80BC9FCC  28 04 00 00 */	cmplwi r4, 0
/* 80BC9FD0  41 82 00 0C */	beq lbl_80BC9FDC
/* 80BC9FD4  38 04 FF FF */	addi r0, r4, -1
/* 80BC9FD8  B0 03 00 00 */	sth r0, 0(r3)
lbl_80BC9FDC:
/* 80BC9FDC  A0 63 00 00 */	lhz r3, 0(r3)
/* 80BC9FE0  4E 80 00 20 */	blr 
