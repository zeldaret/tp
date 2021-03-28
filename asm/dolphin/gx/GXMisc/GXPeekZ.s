lbl_8035C4BC:
/* 8035C4BC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8035C4C0  3C 60 C8 00 */	lis r3, 0xc800
/* 8035C4C4  50 03 15 3A */	rlwimi r3, r0, 2, 0x14, 0x1d
/* 8035C4C8  38 00 00 01 */	li r0, 1
/* 8035C4CC  50 83 62 A6 */	rlwimi r3, r4, 0xc, 0xa, 0x13
/* 8035C4D0  50 03 B2 12 */	rlwimi r3, r0, 0x16, 8, 9
/* 8035C4D4  80 03 00 00 */	lwz r0, 0(r3)
/* 8035C4D8  90 05 00 00 */	stw r0, 0(r5)
/* 8035C4DC  4E 80 00 20 */	blr 
