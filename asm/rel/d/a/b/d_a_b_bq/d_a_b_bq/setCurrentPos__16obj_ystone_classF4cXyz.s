lbl_805BA234:
/* 805BA234  C0 04 00 00 */	lfs f0, 0(r4)
/* 805BA238  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 805BA23C  C0 04 00 04 */	lfs f0, 4(r4)
/* 805BA240  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 805BA244  C0 04 00 08 */	lfs f0, 8(r4)
/* 805BA248  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 805BA24C  4E 80 00 20 */	blr 
