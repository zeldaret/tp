lbl_8057DB60:
/* 8057DB60  C0 43 07 70 */	lfs f2, 0x770(r3)
/* 8057DB64  3C 80 80 58 */	lis r4, lit_4084@ha
/* 8057DB68  C0 24 F5 E4 */	lfs f1, lit_4084@l(r4)
/* 8057DB6C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8057DB70  EC 01 00 2A */	fadds f0, f1, f0
/* 8057DB74  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8057DB78  7C 00 00 26 */	mfcr r0
/* 8057DB7C  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8057DB80  4E 80 00 20 */	blr 
