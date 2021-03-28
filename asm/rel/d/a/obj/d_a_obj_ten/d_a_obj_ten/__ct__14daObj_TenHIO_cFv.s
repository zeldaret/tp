lbl_80D087CC:
/* 80D087CC  3C 80 80 D1 */	lis r4, __vt__14daObj_TenHIO_c@ha
/* 80D087D0  38 04 BA A4 */	addi r0, r4, __vt__14daObj_TenHIO_c@l
/* 80D087D4  90 03 00 00 */	stw r0, 0(r3)
/* 80D087D8  38 00 FF FF */	li r0, -1
/* 80D087DC  98 03 00 04 */	stb r0, 4(r3)
/* 80D087E0  3C 80 80 D1 */	lis r4, lit_3775@ha
/* 80D087E4  C0 04 B8 F0 */	lfs f0, lit_3775@l(r4)
/* 80D087E8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D087EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D087F0  4E 80 00 20 */	blr 
