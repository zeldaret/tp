lbl_80C00E04:
/* 80C00E04  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C00E08  54 03 CE 7E */	rlwinm r3, r0, 0x19, 0x19, 0x1f
/* 80C00E0C  4E 80 00 20 */	blr 
