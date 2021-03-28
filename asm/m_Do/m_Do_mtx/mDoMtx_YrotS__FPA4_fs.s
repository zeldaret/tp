lbl_8000C3DC:
/* 8000C3DC  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 8000C3E0  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l
/* 8000C3E4  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 8000C3E8  7C 85 02 14 */	add r4, r5, r0
/* 8000C3EC  C0 44 00 04 */	lfs f2, 4(r4)
/* 8000C3F0  7C 65 04 2E */	lfsx f3, r5, r0
/* 8000C3F4  D0 43 00 00 */	stfs f2, 0(r3)
/* 8000C3F8  C0 22 81 0C */	lfs f1, lit_3677(r2)
/* 8000C3FC  D0 23 00 04 */	stfs f1, 4(r3)
/* 8000C400  D0 63 00 08 */	stfs f3, 8(r3)
/* 8000C404  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8000C408  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8000C40C  C0 02 81 08 */	lfs f0, lit_3676(r2)
/* 8000C410  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8000C414  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 8000C418  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8000C41C  FC 00 18 50 */	fneg f0, f3
/* 8000C420  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8000C424  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8000C428  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 8000C42C  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 8000C430  4E 80 00 20 */	blr 
