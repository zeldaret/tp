lbl_80053E18:
/* 80053E18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80053E1C  7C 08 02 A6 */	mflr r0
/* 80053E20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80053E24  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80053E28  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80053E2C  FF E0 08 90 */	fmr f31, f1
/* 80053E30  4B FF FE BD */	bl get__8cM_rnd_cFv
/* 80053E34  C0 02 86 08 */	lfs f0, lit_4072(r2)
/* 80053E38  EC 01 00 28 */	fsubs f0, f1, f0
/* 80053E3C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80053E40  C0 02 86 48 */	lfs f0, lit_4806(r2)
/* 80053E44  EC 20 00 72 */	fmuls f1, f0, f1
/* 80053E48  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80053E4C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80053E50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80053E54  7C 08 03 A6 */	mtlr r0
/* 80053E58  38 21 00 20 */	addi r1, r1, 0x20
/* 80053E5C  4E 80 00 20 */	blr 
