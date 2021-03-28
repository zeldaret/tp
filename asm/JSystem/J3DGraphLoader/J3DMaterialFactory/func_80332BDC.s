lbl_80332BDC:
/* 80332BDC  28 04 00 00 */	cmplwi r4, 0
/* 80332BE0  40 82 00 0C */	bne lbl_80332BEC
/* 80332BE4  38 60 00 00 */	li r3, 0
/* 80332BE8  4E 80 00 20 */	blr 
lbl_80332BEC:
/* 80332BEC  7C 63 22 14 */	add r3, r3, r4
/* 80332BF0  4E 80 00 20 */	blr 
