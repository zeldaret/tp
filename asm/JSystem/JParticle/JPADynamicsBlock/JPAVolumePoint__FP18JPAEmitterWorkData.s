lbl_8027B144:
/* 8027B144  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027B148  C0 62 B9 10 */	lfs f3, lit_2287(r2)
/* 8027B14C  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 8027B150  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 8027B154  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 8027B158  80 C3 00 00 */	lwz r6, 0(r3)
/* 8027B15C  80 06 00 C4 */	lwz r0, 0xc4(r6)
/* 8027B160  3C 80 00 19 */	lis r4, 0x0019 /* 0x0019660D@ha */
/* 8027B164  38 A4 66 0D */	addi r5, r4, 0x660D /* 0x0019660D@l */
/* 8027B168  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027B16C  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027B170  38 04 F3 5F */	addi r0, r4, -3233
/* 8027B174  90 06 00 C4 */	stw r0, 0xc4(r6)
/* 8027B178  54 00 BA 7E */	srwi r0, r0, 9
/* 8027B17C  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027B180  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027B184  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8027B188  C0 42 B9 14 */	lfs f2, lit_2288(r2)
/* 8027B18C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8027B190  C0 22 B9 18 */	lfs f1, lit_2289(r2)
/* 8027B194  EC 80 08 28 */	fsubs f4, f0, f1
/* 8027B198  80 C3 00 00 */	lwz r6, 0(r3)
/* 8027B19C  80 06 00 C4 */	lwz r0, 0xc4(r6)
/* 8027B1A0  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027B1A4  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027B1A8  38 04 F3 5F */	addi r0, r4, -3233
/* 8027B1AC  90 06 00 C4 */	stw r0, 0xc4(r6)
/* 8027B1B0  54 00 BA 7E */	srwi r0, r0, 9
/* 8027B1B4  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027B1B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027B1BC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8027B1C0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8027B1C4  EC A0 08 28 */	fsubs f5, f0, f1
/* 8027B1C8  80 C3 00 00 */	lwz r6, 0(r3)
/* 8027B1CC  80 06 00 C4 */	lwz r0, 0xc4(r6)
/* 8027B1D0  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027B1D4  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027B1D8  38 04 F3 5F */	addi r0, r4, -3233
/* 8027B1DC  90 06 00 C4 */	stw r0, 0xc4(r6)
/* 8027B1E0  54 00 BA 7E */	srwi r0, r0, 9
/* 8027B1E4  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027B1E8  90 01 00 08 */	stw r0, 8(r1)
/* 8027B1EC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8027B1F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8027B1F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027B1F8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8027B1FC  D0 A3 00 20 */	stfs f5, 0x20(r3)
/* 8027B200  D0 83 00 24 */	stfs f4, 0x24(r3)
/* 8027B204  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 8027B208  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8027B20C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8027B210  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 8027B214  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8027B218  38 21 00 20 */	addi r1, r1, 0x20
/* 8027B21C  4E 80 00 20 */	blr 
