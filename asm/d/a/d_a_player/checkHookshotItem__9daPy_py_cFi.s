lbl_8015EBB8:
/* 8015EBB8  38 00 00 00 */	li r0, 0
/* 8015EBBC  2C 03 00 44 */	cmpwi r3, 0x44
/* 8015EBC0  41 82 00 0C */	beq lbl_8015EBCC
/* 8015EBC4  2C 03 00 47 */	cmpwi r3, 0x47
/* 8015EBC8  40 82 00 08 */	bne lbl_8015EBD0
lbl_8015EBCC:
/* 8015EBCC  38 00 00 01 */	li r0, 1
lbl_8015EBD0:
/* 8015EBD0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8015EBD4  4E 80 00 20 */	blr 
