lbl_8015EB68:
/* 8015EB68  38 00 00 00 */	li r0, 0
/* 8015EB6C  2C 03 00 67 */	cmpwi r3, 0x67
/* 8015EB70  41 82 00 14 */	beq lbl_8015EB84
/* 8015EB74  2C 03 00 74 */	cmpwi r3, 0x74
/* 8015EB78  41 82 00 0C */	beq lbl_8015EB84
/* 8015EB7C  2C 03 00 6C */	cmpwi r3, 0x6c
/* 8015EB80  40 82 00 08 */	bne lbl_8015EB88
lbl_8015EB84:
/* 8015EB84  38 00 00 01 */	li r0, 1
lbl_8015EB88:
/* 8015EB88  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8015EB8C  4E 80 00 20 */	blr 
