lbl_8046FFA4:
/* 8046FFA4  88 03 0C F0 */	lbz r0, 0xcf0(r3)
/* 8046FFA8  28 00 00 00 */	cmplwi r0, 0
/* 8046FFAC  41 82 00 3C */	beq lbl_8046FFE8
/* 8046FFB0  28 00 00 07 */	cmplwi r0, 7
/* 8046FFB4  41 82 00 34 */	beq lbl_8046FFE8
/* 8046FFB8  28 00 00 01 */	cmplwi r0, 1
/* 8046FFBC  41 82 00 2C */	beq lbl_8046FFE8
/* 8046FFC0  28 00 00 02 */	cmplwi r0, 2
/* 8046FFC4  41 82 00 24 */	beq lbl_8046FFE8
/* 8046FFC8  28 00 00 05 */	cmplwi r0, 5
/* 8046FFCC  41 82 00 1C */	beq lbl_8046FFE8
/* 8046FFD0  28 00 00 0A */	cmplwi r0, 0xa
/* 8046FFD4  41 82 00 14 */	beq lbl_8046FFE8
/* 8046FFD8  28 00 00 0C */	cmplwi r0, 0xc
/* 8046FFDC  41 82 00 0C */	beq lbl_8046FFE8
/* 8046FFE0  28 00 00 0D */	cmplwi r0, 0xd
/* 8046FFE4  40 82 00 0C */	bne lbl_8046FFF0
lbl_8046FFE8:
/* 8046FFE8  38 60 00 01 */	li r3, 1
/* 8046FFEC  4E 80 00 20 */	blr 
lbl_8046FFF0:
/* 8046FFF0  38 60 00 00 */	li r3, 0
/* 8046FFF4  4E 80 00 20 */	blr 
