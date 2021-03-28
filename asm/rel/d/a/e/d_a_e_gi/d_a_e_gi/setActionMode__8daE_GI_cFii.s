lbl_806CD90C:
/* 806CD90C  3C C0 80 6D */	lis r6, lit_4056@ha
/* 806CD910  C0 06 0E B4 */	lfs f0, lit_4056@l(r6)
/* 806CD914  D0 03 06 64 */	stfs f0, 0x664(r3)
/* 806CD918  90 83 06 70 */	stw r4, 0x670(r3)
/* 806CD91C  90 A3 06 74 */	stw r5, 0x674(r3)
/* 806CD920  38 00 00 00 */	li r0, 0
/* 806CD924  98 03 06 9C */	stb r0, 0x69c(r3)
/* 806CD928  A0 03 05 8E */	lhz r0, 0x58e(r3)
/* 806CD92C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 806CD930  B0 03 05 8E */	sth r0, 0x58e(r3)
/* 806CD934  4E 80 00 20 */	blr 
