lbl_80A5DB80:
/* 80A5DB80  C0 04 00 00 */	lfs f0, 0(r4)
/* 80A5DB84  D0 03 00 00 */	stfs f0, 0(r3)
/* 80A5DB88  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A5DB8C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A5DB90  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A5DB94  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A5DB98  4E 80 00 20 */	blr 
