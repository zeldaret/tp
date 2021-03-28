lbl_8035C3CC:
/* 8035C3CC  80 8D 93 A8 */	lwz r4, __peReg(r13)
/* 8035C3D0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8035C3D4  A0 64 00 02 */	lhz r3, 2(r4)
/* 8035C3D8  50 03 26 F6 */	rlwimi r3, r0, 4, 0x1b, 0x1b
/* 8035C3DC  B0 64 00 02 */	sth r3, 2(r4)
/* 8035C3E0  4E 80 00 20 */	blr 
