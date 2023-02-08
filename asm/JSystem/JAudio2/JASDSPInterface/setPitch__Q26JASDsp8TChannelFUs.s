lbl_8029DF1C:
/* 8029DF1C  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8029DF20  28 00 7F FF */	cmplwi r0, 0x7fff
/* 8029DF24  41 80 00 08 */	blt lbl_8029DF2C
/* 8029DF28  38 80 7F FF */	li r4, 0x7fff
lbl_8029DF2C:
/* 8029DF2C  B0 83 00 04 */	sth r4, 4(r3)
/* 8029DF30  4E 80 00 20 */	blr 
