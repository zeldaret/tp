lbl_80053DE0:
/* 80053DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80053DE4  7C 08 02 A6 */	mflr r0
/* 80053DE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80053DEC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80053DF0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80053DF4  FF E0 08 90 */	fmr f31, f1
/* 80053DF8  4B FF FE F5 */	bl get__8cM_rnd_cFv
/* 80053DFC  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80053E00  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80053E04  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80053E08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80053E0C  7C 08 03 A6 */	mtlr r0
/* 80053E10  38 21 00 20 */	addi r1, r1, 0x20
/* 80053E14  4E 80 00 20 */	blr 
