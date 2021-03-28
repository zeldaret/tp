lbl_80BA268C:
/* 80BA268C  3C 80 80 BA */	lis r4, __vt__14daObj_AriHIO_c@ha
/* 80BA2690  38 04 55 CC */	addi r0, r4, __vt__14daObj_AriHIO_c@l
/* 80BA2694  90 03 00 00 */	stw r0, 0(r3)
/* 80BA2698  38 00 FF FF */	li r0, -1
/* 80BA269C  98 03 00 04 */	stb r0, 4(r3)
/* 80BA26A0  3C 80 80 BA */	lis r4, lit_3776@ha
/* 80BA26A4  C0 04 54 08 */	lfs f0, lit_3776@l(r4)
/* 80BA26A8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BA26AC  3C 80 80 BA */	lis r4, lit_3777@ha
/* 80BA26B0  C0 04 54 0C */	lfs f0, lit_3777@l(r4)
/* 80BA26B4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BA26B8  4E 80 00 20 */	blr 
