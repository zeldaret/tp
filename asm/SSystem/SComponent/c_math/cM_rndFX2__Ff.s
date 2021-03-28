lbl_80267B04:
/* 80267B04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80267B08  7C 08 02 A6 */	mflr r0
/* 80267B0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80267B10  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80267B14  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80267B18  FF E0 08 90 */	fmr f31, f1
/* 80267B1C  4B FF FE C9 */	bl cM_rnd2__Fv
/* 80267B20  C0 02 B6 E4 */	lfs f0, lit_2312(r2)
/* 80267B24  EC 01 00 28 */	fsubs f0, f1, f0
/* 80267B28  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80267B2C  C0 02 B6 E0 */	lfs f0, lit_2311(r2)
/* 80267B30  EC 20 00 72 */	fmuls f1, f0, f1
/* 80267B34  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80267B38  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80267B3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80267B40  7C 08 03 A6 */	mtlr r0
/* 80267B44  38 21 00 20 */	addi r1, r1, 0x20
/* 80267B48  4E 80 00 20 */	blr 
