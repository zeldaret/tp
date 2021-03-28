lbl_800B48D0:
/* 800B48D0  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800B48D4  60 00 00 02 */	ori r0, r0, 2
/* 800B48D8  90 03 31 A0 */	stw r0, 0x31a0(r3)
/* 800B48DC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800B48E0  D0 03 34 F8 */	stfs f0, 0x34f8(r3)
/* 800B48E4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 800B48E8  D0 03 34 FC */	stfs f0, 0x34fc(r3)
/* 800B48EC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 800B48F0  D0 03 35 00 */	stfs f0, 0x3500(r3)
/* 800B48F4  C0 03 34 FC */	lfs f0, 0x34fc(r3)
/* 800B48F8  D0 03 33 C4 */	stfs f0, 0x33c4(r3)
/* 800B48FC  C0 03 34 FC */	lfs f0, 0x34fc(r3)
/* 800B4900  D0 03 33 C8 */	stfs f0, 0x33c8(r3)
/* 800B4904  4E 80 00 20 */	blr 
