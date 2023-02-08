lbl_80C75FC0:
/* 80C75FC0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C75FC4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C75FC8  98 03 05 E1 */	stb r0, 0x5e1(r3)
/* 80C75FCC  38 00 00 01 */	li r0, 1
/* 80C75FD0  98 03 05 E0 */	stb r0, 0x5e0(r3)
/* 80C75FD4  4E 80 00 20 */	blr 
