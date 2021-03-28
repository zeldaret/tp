lbl_804DB7AC:
/* 804DB7AC  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 804DB7B0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DB7B4  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 804DB7B8  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 804DB7BC  7C 84 04 2E */	lfsx f4, r4, r0
/* 804DB7C0  7C 84 02 14 */	add r4, r4, r0
/* 804DB7C4  C0 A4 00 04 */	lfs f5, 4(r4)
/* 804DB7C8  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 804DB7CC  3C 80 80 4E */	lis r4, l_cylOffsetZ@ha
/* 804DB7D0  C4 C4 D6 00 */	lfsu f6, l_cylOffsetZ@l(r4)
/* 804DB7D4  EC 06 01 72 */	fmuls f0, f6, f5
/* 804DB7D8  EC 61 00 2A */	fadds f3, f1, f0
/* 804DB7DC  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 804DB7E0  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 804DB7E4  EC 06 01 32 */	fmuls f0, f6, f4
/* 804DB7E8  EC 01 00 2A */	fadds f0, f1, f0
/* 804DB7EC  D0 03 14 94 */	stfs f0, 0x1494(r3)
/* 804DB7F0  D0 43 14 98 */	stfs f2, 0x1498(r3)
/* 804DB7F4  D0 63 14 9C */	stfs f3, 0x149c(r3)
/* 804DB7F8  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 804DB7FC  C0 C4 00 10 */	lfs f6, 0x10(r4)
/* 804DB800  EC 06 01 72 */	fmuls f0, f6, f5
/* 804DB804  EC 61 00 2A */	fadds f3, f1, f0
/* 804DB808  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 804DB80C  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 804DB810  EC 06 01 32 */	fmuls f0, f6, f4
/* 804DB814  EC 01 00 2A */	fadds f0, f1, f0
/* 804DB818  D0 03 14 A0 */	stfs f0, 0x14a0(r3)
/* 804DB81C  D0 43 14 A4 */	stfs f2, 0x14a4(r3)
/* 804DB820  D0 63 14 A8 */	stfs f3, 0x14a8(r3)
/* 804DB824  4E 80 00 20 */	blr 
