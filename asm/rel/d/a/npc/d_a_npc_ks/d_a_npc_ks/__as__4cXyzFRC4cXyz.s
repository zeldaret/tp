lbl_80A5DCB4:
/* 80A5DCB4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80A5DCB8  D0 03 00 00 */	stfs f0, 0(r3)
/* 80A5DCBC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A5DCC0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A5DCC4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A5DCC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A5DCCC  4E 80 00 20 */	blr 
