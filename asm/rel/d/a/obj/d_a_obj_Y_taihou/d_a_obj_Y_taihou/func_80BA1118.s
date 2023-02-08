lbl_80BA1118:
/* 80BA1118  A8 83 00 00 */	lha r4, 0(r3)
/* 80BA111C  2C 04 00 00 */	cmpwi r4, 0
/* 80BA1120  41 82 00 0C */	beq lbl_80BA112C
/* 80BA1124  38 04 FF FF */	addi r0, r4, -1
/* 80BA1128  B0 03 00 00 */	sth r0, 0(r3)
lbl_80BA112C:
/* 80BA112C  A8 63 00 00 */	lha r3, 0(r3)
/* 80BA1130  4E 80 00 20 */	blr 
