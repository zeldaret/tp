lbl_8015EA0C:
/* 8015EA0C  54 80 63 E6 */	rlwinm r0, r4, 0xc, 0xf, 0x13
/* 8015EA10  50 60 06 BE */	rlwimi r0, r3, 0, 0x1a, 0x1f
/* 8015EA14  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 8015EA18  7C C3 03 78 */	or r3, r6, r0
/* 8015EA1C  4E 80 00 20 */	blr 
