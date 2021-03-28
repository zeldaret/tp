lbl_80500F8C:
/* 80500F8C  3C 80 80 50 */	lis r4, __vt__14daE_Nest_HIO_c@ha
/* 80500F90  38 04 49 3C */	addi r0, r4, __vt__14daE_Nest_HIO_c@l
/* 80500F94  90 03 00 00 */	stw r0, 0(r3)
/* 80500F98  38 00 FF FF */	li r0, -1
/* 80500F9C  98 03 00 04 */	stb r0, 4(r3)
/* 80500FA0  3C 80 80 50 */	lis r4, lit_3999@ha
/* 80500FA4  C0 04 46 DC */	lfs f0, lit_3999@l(r4)
/* 80500FA8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80500FAC  4E 80 00 20 */	blr 
