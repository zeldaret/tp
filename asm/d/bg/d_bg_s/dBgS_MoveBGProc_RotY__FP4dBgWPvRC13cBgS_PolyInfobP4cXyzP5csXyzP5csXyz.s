lbl_80075AA4:
/* 80075AA4  28 09 00 00 */	cmplwi r9, 0
/* 80075AA8  4D 82 00 20 */	beqlr 
/* 80075AAC  A8 63 00 0E */	lha r3, 0xe(r3)
/* 80075AB0  41 82 00 10 */	beq lbl_80075AC0
/* 80075AB4  A8 09 00 02 */	lha r0, 2(r9)
/* 80075AB8  7C 00 1A 14 */	add r0, r0, r3
/* 80075ABC  B0 09 00 02 */	sth r0, 2(r9)
lbl_80075AC0:
/* 80075AC0  28 08 00 00 */	cmplwi r8, 0
/* 80075AC4  4D 82 00 20 */	beqlr 
/* 80075AC8  A8 08 00 02 */	lha r0, 2(r8)
/* 80075ACC  7C 00 1A 14 */	add r0, r0, r3
/* 80075AD0  B0 08 00 02 */	sth r0, 2(r8)
/* 80075AD4  4E 80 00 20 */	blr 
