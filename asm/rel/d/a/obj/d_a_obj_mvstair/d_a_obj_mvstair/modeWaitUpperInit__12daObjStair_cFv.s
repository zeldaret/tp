lbl_80C9D9C4:
/* 80C9D9C4  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80C9D9C8  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80C9D9CC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C9D9D0  D0 03 06 50 */	stfs f0, 0x650(r3)
/* 80C9D9D4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C9D9D8  D0 03 06 54 */	stfs f0, 0x654(r3)
/* 80C9D9DC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C9D9E0  D0 03 06 58 */	stfs f0, 0x658(r3)
/* 80C9D9E4  38 00 00 00 */	li r0, 0
/* 80C9D9E8  98 03 06 3E */	stb r0, 0x63e(r3)
/* 80C9D9EC  38 60 00 01 */	li r3, 1
/* 80C9D9F0  4E 80 00 20 */	blr 
