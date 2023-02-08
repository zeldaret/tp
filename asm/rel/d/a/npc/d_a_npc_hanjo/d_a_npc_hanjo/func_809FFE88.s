lbl_809FFE88:
/* 809FFE88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809FFE8C  7C 08 02 A6 */	mflr r0
/* 809FFE90  90 01 00 24 */	stw r0, 0x24(r1)
/* 809FFE94  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 809FFE98  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 809FFE9C  FF E0 08 90 */	fmr f31, f1
/* 809FFEA0  FC 20 10 90 */	fmr f1, f2
/* 809FFEA4  4B 86 7A B1 */	bl cM_rndF__Ff
/* 809FFEA8  EC 3F 08 2A */	fadds f1, f31, f1
/* 809FFEAC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 809FFEB0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 809FFEB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809FFEB8  7C 08 03 A6 */	mtlr r0
/* 809FFEBC  38 21 00 20 */	addi r1, r1, 0x20
/* 809FFEC0  4E 80 00 20 */	blr 
