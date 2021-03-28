lbl_8035AC9C:
/* 8035AC9C  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035ACA0  38 00 00 00 */	li r0, 0
/* 8035ACA4  80 64 00 08 */	lwz r3, 8(r4)
/* 8035ACA8  50 03 07 FE */	rlwimi r3, r0, 0, 0x1f, 0x1f
/* 8035ACAC  90 64 00 08 */	stw r3, 8(r4)
/* 8035ACB0  80 04 00 08 */	lwz r0, 8(r4)
/* 8035ACB4  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035ACB8  B0 03 00 02 */	sth r0, 2(r3)
/* 8035ACBC  4E 80 00 20 */	blr 
