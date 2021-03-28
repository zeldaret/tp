lbl_8015EAD8:
/* 8015EAD8  38 00 00 00 */	li r0, 0
/* 8015EADC  2C 03 00 61 */	cmpwi r3, 0x61
/* 8015EAE0  41 80 00 0C */	blt lbl_8015EAEC
/* 8015EAE4  2C 03 00 65 */	cmpwi r3, 0x65
/* 8015EAE8  40 81 00 4C */	ble lbl_8015EB34
lbl_8015EAEC:
/* 8015EAEC  2C 03 00 69 */	cmpwi r3, 0x69
/* 8015EAF0  41 82 00 44 */	beq lbl_8015EB34
/* 8015EAF4  2C 03 00 6A */	cmpwi r3, 0x6a
/* 8015EAF8  41 82 00 3C */	beq lbl_8015EB34
/* 8015EAFC  2C 03 00 6B */	cmpwi r3, 0x6b
/* 8015EB00  41 82 00 34 */	beq lbl_8015EB34
/* 8015EB04  2C 03 00 76 */	cmpwi r3, 0x76
/* 8015EB08  41 82 00 2C */	beq lbl_8015EB34
/* 8015EB0C  2C 03 00 9F */	cmpwi r3, 0x9f
/* 8015EB10  41 82 00 24 */	beq lbl_8015EB34
/* 8015EB14  2C 03 00 73 */	cmpwi r3, 0x73
/* 8015EB18  41 82 00 1C */	beq lbl_8015EB34
/* 8015EB1C  2C 03 00 77 */	cmpwi r3, 0x77
/* 8015EB20  41 80 00 18 */	blt lbl_8015EB38
/* 8015EB24  2C 03 00 7B */	cmpwi r3, 0x7b
/* 8015EB28  41 82 00 10 */	beq lbl_8015EB38
/* 8015EB2C  2C 03 00 7F */	cmpwi r3, 0x7f
/* 8015EB30  41 81 00 08 */	bgt lbl_8015EB38
lbl_8015EB34:
/* 8015EB34  38 00 00 01 */	li r0, 1
lbl_8015EB38:
/* 8015EB38  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8015EB3C  4E 80 00 20 */	blr 
