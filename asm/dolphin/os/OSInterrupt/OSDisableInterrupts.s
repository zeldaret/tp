lbl_8033D6F4:
/* 8033D6F4  7C 60 00 A6 */	mfmsr r3
/* 8033D6F8  54 64 04 5E */	rlwinm r4, r3, 0, 0x11, 0xf
/* 8033D6FC  7C 80 01 24 */	mtmsr r4
