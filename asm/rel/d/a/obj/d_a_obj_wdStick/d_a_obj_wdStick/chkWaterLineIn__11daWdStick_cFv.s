lbl_80D33D44:
/* 80D33D44  C0 43 07 6C */	lfs f2, 0x76c(r3)
/* 80D33D48  3C 80 80 D3 */	lis r4, lit_4731@ha
/* 80D33D4C  C0 24 41 FC */	lfs f1, lit_4731@l(r4)
/* 80D33D50  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D33D54  EC 01 00 2A */	fadds f0, f1, f0
/* 80D33D58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D33D5C  7C 00 00 26 */	mfcr r0
/* 80D33D60  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80D33D64  4E 80 00 20 */	blr 
