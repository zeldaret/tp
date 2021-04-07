lbl_80AACF2C:
/* 80AACF2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AACF30  7C 08 02 A6 */	mflr r0
/* 80AACF34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AACF38  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80AACF3C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80AACF40  FF E0 08 90 */	fmr f31, f1
/* 80AACF44  FC 20 10 90 */	fmr f1, f2
/* 80AACF48  4B 7B AA 0D */	bl cM_rndF__Ff
/* 80AACF4C  EC 3F 08 2A */	fadds f1, f31, f1
/* 80AACF50  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80AACF54  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80AACF58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AACF5C  7C 08 03 A6 */	mtlr r0
/* 80AACF60  38 21 00 20 */	addi r1, r1, 0x20
/* 80AACF64  4E 80 00 20 */	blr 
