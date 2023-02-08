lbl_80AA58BC:
/* 80AA58BC  88 03 0B 22 */	lbz r0, 0xb22(r3)
/* 80AA58C0  28 00 00 00 */	cmplwi r0, 0
/* 80AA58C4  41 82 00 0C */	beq lbl_80AA58D0
/* 80AA58C8  38 00 00 00 */	li r0, 0
/* 80AA58CC  98 03 0B 22 */	stb r0, 0xb22(r3)
lbl_80AA58D0:
/* 80AA58D0  38 60 00 00 */	li r3, 0
/* 80AA58D4  4E 80 00 20 */	blr 
