lbl_8031469C:
/* 8031469C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803146A0  54 80 0B FC */	rlwinm r0, r4, 1, 0xf, 0x1e
/* 803146A4  7C 63 02 2E */	lhzx r3, r3, r0
/* 803146A8  4E 80 00 20 */	blr 
