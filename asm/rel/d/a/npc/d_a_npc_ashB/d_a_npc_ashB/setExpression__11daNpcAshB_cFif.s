lbl_8095FD34:
/* 8095FD34  2C 04 00 01 */	cmpwi r4, 1
/* 8095FD38  41 82 00 28 */	beq lbl_8095FD60
/* 8095FD3C  40 80 00 34 */	bge lbl_8095FD70
/* 8095FD40  2C 04 00 00 */	cmpwi r4, 0
/* 8095FD44  40 80 00 08 */	bge lbl_8095FD4C
/* 8095FD48  48 00 00 28 */	b lbl_8095FD70
lbl_8095FD4C:
/* 8095FD4C  88 03 0D ED */	lbz r0, 0xded(r3)
/* 8095FD50  28 00 00 00 */	cmplwi r0, 0
/* 8095FD54  41 82 00 1C */	beq lbl_8095FD70
/* 8095FD58  38 80 00 01 */	li r4, 1
/* 8095FD5C  48 00 00 14 */	b lbl_8095FD70
lbl_8095FD60:
/* 8095FD60  88 03 0D ED */	lbz r0, 0xded(r3)
/* 8095FD64  28 00 00 00 */	cmplwi r0, 0
/* 8095FD68  40 82 00 08 */	bne lbl_8095FD70
/* 8095FD6C  38 80 00 00 */	li r4, 0
lbl_8095FD70:
/* 8095FD70  2C 04 00 00 */	cmpwi r4, 0
/* 8095FD74  4D 80 00 20 */	bltlr 
/* 8095FD78  2C 04 00 07 */	cmpwi r4, 7
/* 8095FD7C  4C 80 00 20 */	bgelr 
/* 8095FD80  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 8095FD84  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 8095FD88  38 00 FF FF */	li r0, -1
/* 8095FD8C  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 8095FD90  38 00 00 00 */	li r0, 0
/* 8095FD94  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 8095FD98  4E 80 00 20 */	blr 
