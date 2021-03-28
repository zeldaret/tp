lbl_8015EBD8:
/* 8015EBD8  38 00 00 00 */	li r0, 0
/* 8015EBDC  2C 03 00 80 */	cmpwi r3, 0x80
/* 8015EBE0  41 80 00 0C */	blt lbl_8015EBEC
/* 8015EBE4  2C 03 00 83 */	cmpwi r3, 0x83
/* 8015EBE8  40 81 00 34 */	ble lbl_8015EC1C
lbl_8015EBEC:
/* 8015EBEC  2C 03 00 E9 */	cmpwi r3, 0xe9
/* 8015EBF0  41 82 00 2C */	beq lbl_8015EC1C
/* 8015EBF4  2C 03 00 EA */	cmpwi r3, 0xea
/* 8015EBF8  41 82 00 24 */	beq lbl_8015EC1C
/* 8015EBFC  2C 03 00 EB */	cmpwi r3, 0xeb
/* 8015EC00  41 82 00 1C */	beq lbl_8015EC1C
/* 8015EC04  2C 03 00 90 */	cmpwi r3, 0x90
/* 8015EC08  41 82 00 14 */	beq lbl_8015EC1C
/* 8015EC0C  2C 03 00 2D */	cmpwi r3, 0x2d
/* 8015EC10  41 82 00 0C */	beq lbl_8015EC1C
/* 8015EC14  2C 03 00 91 */	cmpwi r3, 0x91
/* 8015EC18  40 82 00 08 */	bne lbl_8015EC20
lbl_8015EC1C:
/* 8015EC1C  38 00 00 01 */	li r0, 1
lbl_8015EC20:
/* 8015EC20  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8015EC24  4E 80 00 20 */	blr 
