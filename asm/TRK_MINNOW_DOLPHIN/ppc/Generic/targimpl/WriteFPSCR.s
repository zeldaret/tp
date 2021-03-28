lbl_8036F9F0:
/* 8036F9F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8036F9F4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8036F9F8  F3 E1 00 20 */	psq_st f31, 32(r1), 0, 0 /* qr0 */
/* 8036F9FC  CB E3 00 00 */	lfd f31, 0(r3)
/* 8036FA00  FD FE FD 8E */	mtfsf 0xff, f31
/* 8036FA04  E3 E1 00 20 */	psq_l f31, 32(r1), 0, 0 /* qr0 */
/* 8036FA08  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8036FA0C  38 21 00 40 */	addi r1, r1, 0x40
/* 8036FA10  4E 80 00 20 */	blr 
