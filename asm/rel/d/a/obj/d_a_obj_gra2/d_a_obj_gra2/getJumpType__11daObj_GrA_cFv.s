lbl_80C00E10:
/* 80C00E10  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C00E14  54 03 CE 7E */	rlwinm r3, r0, 0x19, 0x19, 0x1f
/* 80C00E18  4E 80 00 20 */	blr 
