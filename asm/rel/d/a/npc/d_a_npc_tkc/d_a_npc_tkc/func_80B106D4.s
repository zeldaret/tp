lbl_80B106D4:
/* 80B106D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B106D8  7C 08 02 A6 */	mflr r0
/* 80B106DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B106E0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80B106E4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80B106E8  FF E0 08 90 */	fmr f31, f1
/* 80B106EC  FC 20 10 90 */	fmr f1, f2
/* 80B106F0  4B 75 72 65 */	bl cM_rndF__Ff
/* 80B106F4  EC 3F 08 2A */	fadds f1, f31, f1
/* 80B106F8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80B106FC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80B10700  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B10704  7C 08 03 A6 */	mtlr r0
/* 80B10708  38 21 00 20 */	addi r1, r1, 0x20
/* 80B1070C  4E 80 00 20 */	blr 
