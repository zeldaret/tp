lbl_80C00DF8:
/* 80C00DF8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C00DFC  54 03 66 3E */	rlwinm r3, r0, 0xc, 0x18, 0x1f
/* 80C00E00  4E 80 00 20 */	blr 
