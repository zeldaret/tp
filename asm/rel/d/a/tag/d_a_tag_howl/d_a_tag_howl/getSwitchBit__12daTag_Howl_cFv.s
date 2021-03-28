lbl_8048DC68:
/* 8048DC68  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048DC6C  54 03 E6 3E */	rlwinm r3, r0, 0x1c, 0x18, 0x1f
/* 8048DC70  4E 80 00 20 */	blr 
