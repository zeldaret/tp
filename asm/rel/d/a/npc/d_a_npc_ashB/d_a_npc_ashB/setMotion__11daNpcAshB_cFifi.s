lbl_8095FC70:
/* 8095FC70  7C 86 07 34 */	extsh r6, r4
/* 8095FC74  2C 06 00 0A */	cmpwi r6, 0xa
/* 8095FC78  41 82 00 54 */	beq lbl_8095FCCC
/* 8095FC7C  40 80 00 1C */	bge lbl_8095FC98
/* 8095FC80  2C 06 00 01 */	cmpwi r6, 1
/* 8095FC84  41 82 00 34 */	beq lbl_8095FCB8
/* 8095FC88  40 80 00 68 */	bge lbl_8095FCF0
/* 8095FC8C  2C 06 00 00 */	cmpwi r6, 0
/* 8095FC90  40 80 00 14 */	bge lbl_8095FCA4
/* 8095FC94  48 00 00 5C */	b lbl_8095FCF0
lbl_8095FC98:
/* 8095FC98  2C 06 00 0C */	cmpwi r6, 0xc
/* 8095FC9C  40 80 00 54 */	bge lbl_8095FCF0
/* 8095FCA0  48 00 00 40 */	b lbl_8095FCE0
lbl_8095FCA4:
/* 8095FCA4  88 03 0D ED */	lbz r0, 0xded(r3)
/* 8095FCA8  28 00 00 00 */	cmplwi r0, 0
/* 8095FCAC  41 82 00 44 */	beq lbl_8095FCF0
/* 8095FCB0  38 C0 00 01 */	li r6, 1
/* 8095FCB4  48 00 00 3C */	b lbl_8095FCF0
lbl_8095FCB8:
/* 8095FCB8  88 03 0D ED */	lbz r0, 0xded(r3)
/* 8095FCBC  28 00 00 00 */	cmplwi r0, 0
/* 8095FCC0  40 82 00 30 */	bne lbl_8095FCF0
/* 8095FCC4  38 C0 00 00 */	li r6, 0
/* 8095FCC8  48 00 00 28 */	b lbl_8095FCF0
lbl_8095FCCC:
/* 8095FCCC  88 03 0D ED */	lbz r0, 0xded(r3)
/* 8095FCD0  28 00 00 00 */	cmplwi r0, 0
/* 8095FCD4  40 82 00 1C */	bne lbl_8095FCF0
/* 8095FCD8  38 C0 00 0B */	li r6, 0xb
/* 8095FCDC  48 00 00 14 */	b lbl_8095FCF0
lbl_8095FCE0:
/* 8095FCE0  88 03 0D ED */	lbz r0, 0xded(r3)
/* 8095FCE4  28 00 00 00 */	cmplwi r0, 0
/* 8095FCE8  41 82 00 08 */	beq lbl_8095FCF0
/* 8095FCEC  38 C0 00 0A */	li r6, 0xa
lbl_8095FCF0:
/* 8095FCF0  2C 05 00 00 */	cmpwi r5, 0
/* 8095FCF4  40 82 00 14 */	bne lbl_8095FD08
/* 8095FCF8  A8 A3 09 E0 */	lha r5, 0x9e0(r3)
/* 8095FCFC  7C C0 07 34 */	extsh r0, r6
/* 8095FD00  7C 05 00 00 */	cmpw r5, r0
/* 8095FD04  4D 82 00 20 */	beqlr 
lbl_8095FD08:
/* 8095FD08  2C 04 00 00 */	cmpwi r4, 0
/* 8095FD0C  4D 80 00 20 */	bltlr 
/* 8095FD10  2C 04 00 0C */	cmpwi r4, 0xc
/* 8095FD14  4C 80 00 20 */	bgelr 
/* 8095FD18  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 8095FD1C  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 8095FD20  38 00 FF FF */	li r0, -1
/* 8095FD24  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 8095FD28  38 00 00 00 */	li r0, 0
/* 8095FD2C  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 8095FD30  4E 80 00 20 */	blr 
