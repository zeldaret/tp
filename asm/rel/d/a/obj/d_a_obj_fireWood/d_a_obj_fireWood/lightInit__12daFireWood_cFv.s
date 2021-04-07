lbl_80BE79A0:
/* 80BE79A0  3C 80 80 BF */	lis r4, lit_3625@ha /* 0x80BE8004@ha */
/* 80BE79A4  38 84 80 04 */	addi r4, r4, lit_3625@l /* 0x80BE8004@l */
/* 80BE79A8  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 80BE79AC  D0 03 07 10 */	stfs f0, 0x710(r3)
/* 80BE79B0  C0 03 06 F0 */	lfs f0, 0x6f0(r3)
/* 80BE79B4  D0 03 07 14 */	stfs f0, 0x714(r3)
/* 80BE79B8  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 80BE79BC  D0 03 07 18 */	stfs f0, 0x718(r3)
/* 80BE79C0  C0 23 07 14 */	lfs f1, 0x714(r3)
/* 80BE79C4  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 80BE79C8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE79CC  D0 03 07 14 */	stfs f0, 0x714(r3)
/* 80BE79D0  C0 03 07 10 */	lfs f0, 0x710(r3)
/* 80BE79D4  D0 03 07 1C */	stfs f0, 0x71c(r3)
/* 80BE79D8  C0 03 07 14 */	lfs f0, 0x714(r3)
/* 80BE79DC  D0 03 07 20 */	stfs f0, 0x720(r3)
/* 80BE79E0  C0 03 07 18 */	lfs f0, 0x718(r3)
/* 80BE79E4  D0 03 07 24 */	stfs f0, 0x724(r3)
/* 80BE79E8  38 00 00 BC */	li r0, 0xbc
/* 80BE79EC  B0 03 07 28 */	sth r0, 0x728(r3)
/* 80BE79F0  38 00 00 66 */	li r0, 0x66
/* 80BE79F4  B0 03 07 2A */	sth r0, 0x72a(r3)
/* 80BE79F8  38 00 00 42 */	li r0, 0x42
/* 80BE79FC  B0 03 07 2C */	sth r0, 0x72c(r3)
/* 80BE7A00  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 80BE7A04  D0 03 07 30 */	stfs f0, 0x730(r3)
/* 80BE7A08  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80BE7A0C  D0 03 07 34 */	stfs f0, 0x734(r3)
/* 80BE7A10  4E 80 00 20 */	blr 
