lbl_805ADD78:
/* 805ADD78  C0 04 00 00 */	lfs f0, 0(r4)
/* 805ADD7C  D0 03 06 1C */	stfs f0, 0x61c(r3)
/* 805ADD80  C0 04 00 04 */	lfs f0, 4(r4)
/* 805ADD84  D0 03 06 20 */	stfs f0, 0x620(r3)
/* 805ADD88  C0 04 00 08 */	lfs f0, 8(r4)
/* 805ADD8C  D0 03 06 24 */	stfs f0, 0x624(r3)
/* 805ADD90  4E 80 00 20 */	blr 
