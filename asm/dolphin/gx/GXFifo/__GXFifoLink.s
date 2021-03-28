lbl_8035ACC0:
/* 8035ACC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8035ACC4  41 82 00 0C */	beq lbl_8035ACD0
/* 8035ACC8  38 80 00 01 */	li r4, 1
/* 8035ACCC  48 00 00 08 */	b lbl_8035ACD4
lbl_8035ACD0:
/* 8035ACD0  38 80 00 00 */	li r4, 0
lbl_8035ACD4:
/* 8035ACD4  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035ACD8  80 03 00 08 */	lwz r0, 8(r3)
/* 8035ACDC  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8035ACE0  90 03 00 08 */	stw r0, 8(r3)
/* 8035ACE4  80 03 00 08 */	lwz r0, 8(r3)
/* 8035ACE8  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035ACEC  B0 03 00 02 */	sth r0, 2(r3)
/* 8035ACF0  4E 80 00 20 */	blr 
