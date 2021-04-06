lbl_8049AD74:
/* 8049AD74  38 00 00 00 */	li r0, 0
/* 8049AD78  98 03 09 3E */	stb r0, 0x93e(r3)
/* 8049AD7C  3C 80 80 45 */	lis r4, __float_max@ha /* 0x80450AE8@ha */
/* 8049AD80  C0 04 0A E8 */	lfs f0, __float_max@l(r4)  /* 0x80450AE8@l */
/* 8049AD84  D0 03 09 98 */	stfs f0, 0x998(r3)
/* 8049AD88  38 00 FF FF */	li r0, -1
/* 8049AD8C  90 03 09 94 */	stw r0, 0x994(r3)
/* 8049AD90  4E 80 00 20 */	blr 
