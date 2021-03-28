lbl_8015EC28:
/* 8015EC28  38 00 00 00 */	li r0, 0
/* 8015EC2C  2C 03 00 25 */	cmpwi r3, 0x25
/* 8015EC30  41 82 00 0C */	beq lbl_8015EC3C
/* 8015EC34  2C 03 00 27 */	cmpwi r3, 0x27
/* 8015EC38  40 82 00 08 */	bne lbl_8015EC40
lbl_8015EC3C:
/* 8015EC3C  38 00 00 01 */	li r0, 1
lbl_8015EC40:
/* 8015EC40  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8015EC44  4E 80 00 20 */	blr 
