lbl_80088284:
/* 80088284  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80088288  7C 08 02 A6 */	mflr r0
/* 8008828C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80088290  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80088294  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80088298  FF E0 10 90 */	fmr f31, f2
/* 8008829C  38 61 00 08 */	addi r3, r1, 8
/* 800882A0  48 1E 90 AD */	bl __ct__7cDegreeFf
/* 800882A4  38 61 00 08 */	addi r3, r1, 8
/* 800882A8  48 1E 91 71 */	bl Cos__7cDegreeCFv
/* 800882AC  EF FF 00 72 */	fmuls f31, f31, f1
/* 800882B0  38 61 00 08 */	addi r3, r1, 8
/* 800882B4  48 1E 91 3D */	bl Sin__7cDegreeCFv
/* 800882B8  FC 40 F8 90 */	fmr f2, f31
/* 800882BC  48 1D F5 59 */	bl cM_atan2f__Fff
/* 800882C0  C0 02 8E 14 */	lfs f0, lit_3807(r2)
/* 800882C4  EC 20 00 72 */	fmuls f1, f0, f1
/* 800882C8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800882CC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800882D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800882D4  7C 08 03 A6 */	mtlr r0
/* 800882D8  38 21 00 20 */	addi r1, r1, 0x20
/* 800882DC  4E 80 00 20 */	blr 
