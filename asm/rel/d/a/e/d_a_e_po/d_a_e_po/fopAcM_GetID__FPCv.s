lbl_80754AA8:
/* 80754AA8  28 03 00 00 */	cmplwi r3, 0
/* 80754AAC  41 82 00 0C */	beq lbl_80754AB8
/* 80754AB0  80 63 00 04 */	lwz r3, 4(r3)
/* 80754AB4  4E 80 00 20 */	blr 
lbl_80754AB8:
/* 80754AB8  38 60 FF FF */	li r3, -1
/* 80754ABC  4E 80 00 20 */	blr 
