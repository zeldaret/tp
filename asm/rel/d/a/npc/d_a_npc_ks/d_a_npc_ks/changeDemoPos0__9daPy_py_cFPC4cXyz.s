lbl_80A5DC48:
/* 80A5DC48  C0 04 00 00 */	lfs f0, 0(r4)
/* 80A5DC4C  D0 03 06 1C */	stfs f0, 0x61c(r3)
/* 80A5DC50  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A5DC54  D0 03 06 20 */	stfs f0, 0x620(r3)
/* 80A5DC58  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A5DC5C  D0 03 06 24 */	stfs f0, 0x624(r3)
/* 80A5DC60  4E 80 00 20 */	blr 
