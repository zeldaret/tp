lbl_80AA59BC:
/* 80AA59BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA59C0  7C 08 02 A6 */	mflr r0
/* 80AA59C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA59C8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80AA59CC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80AA59D0  FF E0 08 90 */	fmr f31, f1
/* 80AA59D4  FC 20 10 90 */	fmr f1, f2
/* 80AA59D8  4B 7C 1F 7C */	b cM_rndF__Ff
/* 80AA59DC  EC 3F 08 2A */	fadds f1, f31, f1
/* 80AA59E0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80AA59E4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80AA59E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA59EC  7C 08 03 A6 */	mtlr r0
/* 80AA59F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA59F4  4E 80 00 20 */	blr 
