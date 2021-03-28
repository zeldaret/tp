lbl_80B678EC:
/* 80B678EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B678F0  7C 08 02 A6 */	mflr r0
/* 80B678F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B678F8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80B678FC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80B67900  FF E0 08 90 */	fmr f31, f1
/* 80B67904  FC 20 10 90 */	fmr f1, f2
/* 80B67908  4B 70 00 4C */	b cM_rndF__Ff
/* 80B6790C  EC 3F 08 2A */	fadds f1, f31, f1
/* 80B67910  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80B67914  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80B67918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6791C  7C 08 03 A6 */	mtlr r0
/* 80B67920  38 21 00 20 */	addi r1, r1, 0x20
/* 80B67924  4E 80 00 20 */	blr 
