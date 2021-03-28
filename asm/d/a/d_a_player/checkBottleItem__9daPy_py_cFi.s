lbl_8015EA88:
/* 8015EA88  38 00 00 00 */	li r0, 0
/* 8015EA8C  2C 03 00 60 */	cmpwi r3, 0x60
/* 8015EA90  41 80 00 0C */	blt lbl_8015EA9C
/* 8015EA94  2C 03 00 6C */	cmpwi r3, 0x6c
/* 8015EA98  40 81 00 34 */	ble lbl_8015EACC
lbl_8015EA9C:
/* 8015EA9C  2C 03 00 76 */	cmpwi r3, 0x76
/* 8015EAA0  41 82 00 2C */	beq lbl_8015EACC
/* 8015EAA4  2C 03 00 74 */	cmpwi r3, 0x74
/* 8015EAA8  41 82 00 24 */	beq lbl_8015EACC
/* 8015EAAC  2C 03 00 73 */	cmpwi r3, 0x73
/* 8015EAB0  41 82 00 1C */	beq lbl_8015EACC
/* 8015EAB4  2C 03 00 9F */	cmpwi r3, 0x9f
/* 8015EAB8  41 82 00 14 */	beq lbl_8015EACC
/* 8015EABC  2C 03 00 77 */	cmpwi r3, 0x77
/* 8015EAC0  41 80 00 10 */	blt lbl_8015EAD0
/* 8015EAC4  2C 03 00 7F */	cmpwi r3, 0x7f
/* 8015EAC8  41 81 00 08 */	bgt lbl_8015EAD0
lbl_8015EACC:
/* 8015EACC  38 00 00 01 */	li r0, 1
lbl_8015EAD0:
/* 8015EAD0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8015EAD4  4E 80 00 20 */	blr 
