lbl_80CB54E4:
/* 80CB54E4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CB54E8  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80CB54EC  98 03 05 78 */	stb r0, 0x578(r3)
/* 80CB54F0  4E 80 00 20 */	blr 
