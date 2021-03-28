lbl_80A7AB80:
/* 80A7AB80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A7AB84  7C 08 02 A6 */	mflr r0
/* 80A7AB88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7AB8C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80A7AB90  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80A7AB94  FF E0 08 90 */	fmr f31, f1
/* 80A7AB98  FC 20 10 90 */	fmr f1, f2
/* 80A7AB9C  4B 7E CD B8 */	b cM_rndF__Ff
/* 80A7ABA0  EC 3F 08 2A */	fadds f1, f31, f1
/* 80A7ABA4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80A7ABA8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80A7ABAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A7ABB0  7C 08 03 A6 */	mtlr r0
/* 80A7ABB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A7ABB8  4E 80 00 20 */	blr 
