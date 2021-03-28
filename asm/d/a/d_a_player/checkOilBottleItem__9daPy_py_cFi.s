lbl_8015EB40:
/* 8015EB40  38 00 00 00 */	li r0, 0
/* 8015EB44  2C 03 00 7B */	cmpwi r3, 0x7b
/* 8015EB48  41 82 00 14 */	beq lbl_8015EB5C
/* 8015EB4C  2C 03 00 68 */	cmpwi r3, 0x68
/* 8015EB50  41 82 00 0C */	beq lbl_8015EB5C
/* 8015EB54  2C 03 00 66 */	cmpwi r3, 0x66
/* 8015EB58  40 82 00 08 */	bne lbl_8015EB60
lbl_8015EB5C:
/* 8015EB5C  38 00 00 01 */	li r0, 1
lbl_8015EB60:
/* 8015EB60  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8015EB64  4E 80 00 20 */	blr 
