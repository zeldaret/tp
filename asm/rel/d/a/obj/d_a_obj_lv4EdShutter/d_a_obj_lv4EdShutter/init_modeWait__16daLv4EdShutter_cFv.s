lbl_80C5E1B0:
/* 80C5E1B0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C5E1B4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C5E1B8  B0 03 05 C6 */	sth r0, 0x5c6(r3)
/* 80C5E1BC  38 00 00 00 */	li r0, 0
/* 80C5E1C0  98 03 05 C4 */	stb r0, 0x5c4(r3)
/* 80C5E1C4  4E 80 00 20 */	blr 
