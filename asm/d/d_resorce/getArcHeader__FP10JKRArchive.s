lbl_8003BA9C:
/* 8003BA9C  28 03 00 00 */	cmplwi r3, 0
/* 8003BAA0  41 82 00 1C */	beq lbl_8003BABC
/* 8003BAA4  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 8003BAA8  2C 00 00 01 */	cmpwi r0, 1
/* 8003BAAC  41 82 00 08 */	beq lbl_8003BAB4
/* 8003BAB0  48 00 00 0C */	b lbl_8003BABC
lbl_8003BAB4:
/* 8003BAB4  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8003BAB8  4E 80 00 20 */	blr 
lbl_8003BABC:
/* 8003BABC  38 60 00 00 */	li r3, 0
/* 8003BAC0  4E 80 00 20 */	blr 
