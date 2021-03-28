lbl_8015EA20:
/* 8015EA20  38 00 00 00 */	li r0, 0
/* 8015EA24  2C 03 00 4A */	cmpwi r3, 0x4a
/* 8015EA28  41 82 00 14 */	beq lbl_8015EA3C
/* 8015EA2C  2C 03 00 5B */	cmpwi r3, 0x5b
/* 8015EA30  41 80 00 10 */	blt lbl_8015EA40
/* 8015EA34  2C 03 00 5F */	cmpwi r3, 0x5f
/* 8015EA38  41 81 00 08 */	bgt lbl_8015EA40
lbl_8015EA3C:
/* 8015EA3C  38 00 00 01 */	li r0, 1
lbl_8015EA40:
/* 8015EA40  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8015EA44  4E 80 00 20 */	blr 
