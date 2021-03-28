lbl_80D191CC:
/* 80D191CC  3C 80 80 D2 */	lis r4, __vt__14daObj_TomHIO_c@ha
/* 80D191D0  38 04 B8 D8 */	addi r0, r4, __vt__14daObj_TomHIO_c@l
/* 80D191D4  90 03 00 00 */	stw r0, 0(r3)
/* 80D191D8  38 00 FF FF */	li r0, -1
/* 80D191DC  98 03 00 04 */	stb r0, 4(r3)
/* 80D191E0  3C 80 80 D2 */	lis r4, lit_3775@ha
/* 80D191E4  C0 04 B6 D8 */	lfs f0, lit_3775@l(r4)
/* 80D191E8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D191EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D191F0  3C 80 80 D2 */	lis r4, lit_3776@ha
/* 80D191F4  C0 04 B6 DC */	lfs f0, lit_3776@l(r4)
/* 80D191F8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D191FC  4E 80 00 20 */	blr 
