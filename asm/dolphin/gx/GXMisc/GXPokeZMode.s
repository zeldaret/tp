lbl_8035C49C:
/* 8035C49C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8035C4A0  80 6D 93 A8 */	lwz r3, __peReg(r13)
/* 8035C4A4  38 C0 00 00 */	li r6, 0
/* 8035C4A8  50 06 07 FE */	rlwimi r6, r0, 0, 0x1f, 0x1f
/* 8035C4AC  50 86 0F 3C */	rlwimi r6, r4, 1, 0x1c, 0x1e
/* 8035C4B0  50 A6 26 F6 */	rlwimi r6, r5, 4, 0x1b, 0x1b
/* 8035C4B4  B0 C3 00 00 */	sth r6, 0(r3)
/* 8035C4B8  4E 80 00 20 */	blr 
