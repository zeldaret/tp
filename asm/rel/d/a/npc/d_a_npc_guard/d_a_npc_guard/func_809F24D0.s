lbl_809F24D0:
/* 809F24D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809F24D4  7C 08 02 A6 */	mflr r0
/* 809F24D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F24DC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 809F24E0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 809F24E4  FF E0 08 90 */	fmr f31, f1
/* 809F24E8  FC 20 10 90 */	fmr f1, f2
/* 809F24EC  4B 87 54 68 */	b cM_rndF__Ff
/* 809F24F0  EC 3F 08 2A */	fadds f1, f31, f1
/* 809F24F4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 809F24F8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 809F24FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809F2500  7C 08 03 A6 */	mtlr r0
/* 809F2504  38 21 00 20 */	addi r1, r1, 0x20
/* 809F2508  4E 80 00 20 */	blr 
