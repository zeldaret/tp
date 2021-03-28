lbl_8026B238:
/* 8026B238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026B23C  7C 08 02 A6 */	mflr r0
/* 8026B240  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026B244  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8026B248  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8026B24C  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 8026B250  48 0D C1 4D */	bl PSVECSquareDistance
/* 8026B254  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 8026B258  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B25C  4C 40 13 82 */	cror 2, 0, 2
/* 8026B260  7C 00 00 26 */	mfcr r0
/* 8026B264  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 8026B268  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8026B26C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8026B270  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026B274  7C 08 03 A6 */	mtlr r0
/* 8026B278  38 21 00 20 */	addi r1, r1, 0x20
/* 8026B27C  4E 80 00 20 */	blr 
