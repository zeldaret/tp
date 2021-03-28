lbl_8035C398:
/* 8035C398  80 AD 93 A8 */	lwz r5, __peReg(r13)
/* 8035C39C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8035C3A0  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 8035C3A4  B0 05 00 06 */	sth r0, 6(r5)
/* 8035C3A8  4E 80 00 20 */	blr 
