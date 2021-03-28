lbl_8015E4B0:
/* 8015E4B0  28 03 00 00 */	cmplwi r3, 0
/* 8015E4B4  41 82 00 0C */	beq lbl_8015E4C0
/* 8015E4B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8015E4BC  4E 80 00 20 */	blr 
lbl_8015E4C0:
/* 8015E4C0  38 60 FF FF */	li r3, -1
/* 8015E4C4  4E 80 00 20 */	blr 
