lbl_80A3BD2C:
/* 80A3BD2C  A8 83 00 00 */	lha r4, 0(r3)
/* 80A3BD30  2C 04 00 00 */	cmpwi r4, 0
/* 80A3BD34  41 82 00 0C */	beq lbl_80A3BD40
/* 80A3BD38  38 04 FF FF */	addi r0, r4, -1
/* 80A3BD3C  B0 03 00 00 */	sth r0, 0(r3)
lbl_80A3BD40:
/* 80A3BD40  A8 63 00 00 */	lha r3, 0(r3)
/* 80A3BD44  4E 80 00 20 */	blr 
