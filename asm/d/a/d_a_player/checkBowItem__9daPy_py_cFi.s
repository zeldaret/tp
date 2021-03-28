lbl_8015EB90:
/* 8015EB90  38 00 00 00 */	li r0, 0
/* 8015EB94  2C 03 00 43 */	cmpwi r3, 0x43
/* 8015EB98  41 82 00 14 */	beq lbl_8015EBAC
/* 8015EB9C  2C 03 00 59 */	cmpwi r3, 0x59
/* 8015EBA0  41 82 00 0C */	beq lbl_8015EBAC
/* 8015EBA4  2C 03 00 5A */	cmpwi r3, 0x5a
/* 8015EBA8  40 82 00 08 */	bne lbl_8015EBB0
lbl_8015EBAC:
/* 8015EBAC  38 00 00 01 */	li r0, 1
lbl_8015EBB0:
/* 8015EBB0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8015EBB4  4E 80 00 20 */	blr 
