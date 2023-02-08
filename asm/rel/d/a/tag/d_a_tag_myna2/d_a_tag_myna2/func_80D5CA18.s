lbl_80D5CA18:
/* 80D5CA18  A8 83 00 00 */	lha r4, 0(r3)
/* 80D5CA1C  2C 04 00 00 */	cmpwi r4, 0
/* 80D5CA20  41 82 00 0C */	beq lbl_80D5CA2C
/* 80D5CA24  38 04 FF FF */	addi r0, r4, -1
/* 80D5CA28  B0 03 00 00 */	sth r0, 0(r3)
lbl_80D5CA2C:
/* 80D5CA2C  A8 63 00 00 */	lha r3, 0(r3)
/* 80D5CA30  4E 80 00 20 */	blr 
