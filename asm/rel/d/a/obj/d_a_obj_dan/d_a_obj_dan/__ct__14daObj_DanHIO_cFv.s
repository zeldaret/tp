lbl_80BDA58C:
/* 80BDA58C  3C 80 80 BE */	lis r4, __vt__14daObj_DanHIO_c@ha
/* 80BDA590  38 04 C5 50 */	addi r0, r4, __vt__14daObj_DanHIO_c@l
/* 80BDA594  90 03 00 00 */	stw r0, 0(r3)
/* 80BDA598  38 00 FF FF */	li r0, -1
/* 80BDA59C  98 03 00 04 */	stb r0, 4(r3)
/* 80BDA5A0  3C 80 80 BE */	lis r4, lit_3775@ha
/* 80BDA5A4  C0 04 C3 B0 */	lfs f0, lit_3775@l(r4)
/* 80BDA5A8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BDA5AC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BDA5B0  4E 80 00 20 */	blr 
