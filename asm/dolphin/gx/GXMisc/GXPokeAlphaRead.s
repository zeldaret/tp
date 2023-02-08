lbl_8035C3AC:
/* 8035C3AC  38 A0 00 00 */	li r5, 0
/* 8035C3B0  80 8D 93 A8 */	lwz r4, __peReg(r13)
/* 8035C3B4  50 65 07 BE */	rlwimi r5, r3, 0, 0x1e, 0x1f
/* 8035C3B8  38 00 00 01 */	li r0, 1
/* 8035C3BC  38 65 00 00 */	addi r3, r5, 0
/* 8035C3C0  50 03 17 7A */	rlwimi r3, r0, 2, 0x1d, 0x1d
/* 8035C3C4  B0 64 00 08 */	sth r3, 8(r4)
/* 8035C3C8  4E 80 00 20 */	blr 
