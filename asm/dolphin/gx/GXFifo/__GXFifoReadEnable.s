lbl_8035AC78:
/* 8035AC78  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035AC7C  38 00 00 01 */	li r0, 1
/* 8035AC80  80 64 00 08 */	lwz r3, 8(r4)
/* 8035AC84  50 03 07 FE */	rlwimi r3, r0, 0, 0x1f, 0x1f
/* 8035AC88  90 64 00 08 */	stw r3, 8(r4)
/* 8035AC8C  80 04 00 08 */	lwz r0, 8(r4)
/* 8035AC90  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035AC94  B0 03 00 02 */	sth r0, 2(r3)
/* 8035AC98  4E 80 00 20 */	blr 
