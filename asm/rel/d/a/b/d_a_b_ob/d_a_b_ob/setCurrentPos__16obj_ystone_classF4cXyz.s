lbl_8061AA70:
/* 8061AA70  C0 04 00 00 */	lfs f0, 0(r4)
/* 8061AA74  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8061AA78  C0 04 00 04 */	lfs f0, 4(r4)
/* 8061AA7C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8061AA80  C0 04 00 08 */	lfs f0, 8(r4)
/* 8061AA84  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 8061AA88  4E 80 00 20 */	blr 
