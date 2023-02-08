lbl_8028DE88:
/* 8028DE88  2C 04 00 02 */	cmpwi r4, 2
/* 8028DE8C  4C 82 00 20 */	bnelr 
/* 8028DE90  80 85 00 00 */	lwz r4, 0(r5)
/* 8028DE94  38 00 00 00 */	li r0, 0
/* 8028DE98  90 03 01 2C */	stw r0, 0x12c(r3)
/* 8028DE9C  28 04 00 00 */	cmplwi r4, 0
/* 8028DEA0  4D 82 00 20 */	beqlr 
/* 8028DEA4  38 03 01 30 */	addi r0, r3, 0x130
/* 8028DEA8  90 03 01 2C */	stw r0, 0x12c(r3)
/* 8028DEAC  4E 80 00 20 */	blr 
