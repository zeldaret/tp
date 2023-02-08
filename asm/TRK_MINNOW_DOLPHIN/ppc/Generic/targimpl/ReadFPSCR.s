lbl_8036F9CC:
/* 8036F9CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8036F9D0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8036F9D4  F3 E1 00 20 */	psq_st f31, 32(r1), 0, 0 /* qr0 */
/* 8036F9D8  FF E0 04 8E */	mffs f31
/* 8036F9DC  DB E3 00 00 */	stfd f31, 0(r3)
/* 8036F9E0  E3 E1 00 20 */	psq_l f31, 32(r1), 0, 0 /* qr0 */
/* 8036F9E4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8036F9E8  38 21 00 40 */	addi r1, r1, 0x40
/* 8036F9EC  4E 80 00 20 */	blr 
