lbl_80267ACC:
/* 80267ACC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80267AD0  7C 08 02 A6 */	mflr r0
/* 80267AD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80267AD8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80267ADC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80267AE0  FF E0 08 90 */	fmr f31, f1
/* 80267AE4  4B FF FF 01 */	bl cM_rnd2__Fv
/* 80267AE8  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80267AEC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80267AF0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80267AF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80267AF8  7C 08 03 A6 */	mtlr r0
/* 80267AFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80267B00  4E 80 00 20 */	blr 
