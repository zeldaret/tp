lbl_802681E4:
/* 802681E4  C0 02 B6 E8 */	lfs f0, lit_2242(r2)
/* 802681E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802681EC  4C 41 13 82 */	cror 2, 1, 2
/* 802681F0  7C 00 00 26 */	mfcr r0
/* 802681F4  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 802681F8  4E 80 00 20 */	blr 
