lbl_8057DB3C:
/* 8057DB3C  C0 43 07 70 */	lfs f2, 0x770(r3)
/* 8057DB40  3C 80 80 58 */	lis r4, lit_4078@ha /* 0x8057F5E0@ha */
/* 8057DB44  C0 24 F5 E0 */	lfs f1, lit_4078@l(r4)  /* 0x8057F5E0@l */
/* 8057DB48  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8057DB4C  EC 01 00 2A */	fadds f0, f1, f0
/* 8057DB50  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8057DB54  7C 00 00 26 */	mfcr r0
/* 8057DB58  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8057DB5C  4E 80 00 20 */	blr 
