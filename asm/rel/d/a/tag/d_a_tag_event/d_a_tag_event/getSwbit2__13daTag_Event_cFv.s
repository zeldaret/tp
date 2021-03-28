lbl_8048AD80:
/* 8048AD80  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048AD84  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 8048AD88  4E 80 00 20 */	blr 
