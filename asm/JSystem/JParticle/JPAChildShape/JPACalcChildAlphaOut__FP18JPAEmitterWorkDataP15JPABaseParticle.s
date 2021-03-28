lbl_8027AFDC:
/* 8027AFDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027AFE0  C0 42 B9 08 */	lfs f2, lit_2318(r2)
/* 8027AFE4  C0 22 B9 0C */	lfs f1, lit_2319(r2)
/* 8027AFE8  C0 04 00 84 */	lfs f0, 0x84(r4)
/* 8027AFEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027AFF0  EC 62 00 32 */	fmuls f3, f2, f0
/* 8027AFF4  F0 61 A0 08 */	psq_st f3, 8(r1), 1, 2 /* qr2 */
/* 8027AFF8  88 01 00 08 */	lbz r0, 8(r1)
/* 8027AFFC  98 04 00 96 */	stb r0, 0x96(r4)
/* 8027B000  38 21 00 10 */	addi r1, r1, 0x10
/* 8027B004  4E 80 00 20 */	blr 
