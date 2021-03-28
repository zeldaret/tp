lbl_80BCA30C:
/* 80BCA30C  3C 80 80 BD */	lis r4, __vt__14daObj_ChoHIO_c@ha
/* 80BCA310  38 04 C7 38 */	addi r0, r4, __vt__14daObj_ChoHIO_c@l
/* 80BCA314  90 03 00 00 */	stw r0, 0(r3)
/* 80BCA318  38 00 FF FF */	li r0, -1
/* 80BCA31C  98 03 00 04 */	stb r0, 4(r3)
/* 80BCA320  3C 80 80 BD */	lis r4, lit_3775@ha
/* 80BCA324  C0 04 C5 78 */	lfs f0, lit_3775@l(r4)
/* 80BCA328  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BCA32C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BCA330  4E 80 00 20 */	blr 
