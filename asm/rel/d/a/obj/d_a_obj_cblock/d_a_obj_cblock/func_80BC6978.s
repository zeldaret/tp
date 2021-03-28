lbl_80BC6978:
/* 80BC6978  A8 83 00 00 */	lha r4, 0(r3)
/* 80BC697C  2C 04 00 00 */	cmpwi r4, 0
/* 80BC6980  41 82 00 0C */	beq lbl_80BC698C
/* 80BC6984  38 04 FF FF */	addi r0, r4, -1
/* 80BC6988  B0 03 00 00 */	sth r0, 0(r3)
lbl_80BC698C:
/* 80BC698C  A8 63 00 00 */	lha r3, 0(r3)
/* 80BC6990  4E 80 00 20 */	blr 
