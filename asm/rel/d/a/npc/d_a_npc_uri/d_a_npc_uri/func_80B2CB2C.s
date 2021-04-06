lbl_80B2CB2C:
/* 80B2CB2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B2CB30  7C 08 02 A6 */	mflr r0
/* 80B2CB34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B2CB38  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80B2CB3C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80B2CB40  FF E0 08 90 */	fmr f31, f1
/* 80B2CB44  FC 20 10 90 */	fmr f1, f2
/* 80B2CB48  4B 73 AE 0D */	bl cM_rndF__Ff
/* 80B2CB4C  EC 3F 08 2A */	fadds f1, f31, f1
/* 80B2CB50  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80B2CB54  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80B2CB58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B2CB5C  7C 08 03 A6 */	mtlr r0
/* 80B2CB60  38 21 00 20 */	addi r1, r1, 0x20
/* 80B2CB64  4E 80 00 20 */	blr 
