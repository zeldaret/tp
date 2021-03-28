lbl_802806C0:
/* 802806C0  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha
/* 802806C4  38 C6 9A 20 */	addi r6, r6, sincosTable___5JMath@l
/* 802806C8  38 E6 00 04 */	addi r7, r6, 4
/* 802806CC  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 802806D0  7C 27 04 2E */	lfsx f1, r7, r0
/* 802806D4  54 83 04 38 */	rlwinm r3, r4, 0, 0x10, 0x1c
/* 802806D8  7C 47 1C 2E */	lfsx f2, r7, r3
/* 802806DC  7C 66 04 2E */	lfsx f3, r6, r0
/* 802806E0  7C 86 1C 2E */	lfsx f4, r6, r3
/* 802806E4  EC 01 00 B2 */	fmuls f0, f1, f2
/* 802806E8  D0 05 00 00 */	stfs f0, 0(r5)
/* 802806EC  FC 00 20 50 */	fneg f0, f4
/* 802806F0  D0 05 00 04 */	stfs f0, 4(r5)
/* 802806F4  EC 03 00 B2 */	fmuls f0, f3, f2
/* 802806F8  D0 05 00 08 */	stfs f0, 8(r5)
/* 802806FC  EC 01 01 32 */	fmuls f0, f1, f4
/* 80280700  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 80280704  D0 45 00 14 */	stfs f2, 0x14(r5)
/* 80280708  EC 03 01 32 */	fmuls f0, f3, f4
/* 8028070C  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 80280710  FC 00 18 50 */	fneg f0, f3
/* 80280714  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 80280718  D0 25 00 28 */	stfs f1, 0x28(r5)
/* 8028071C  C0 02 B9 BC */	lfs f0, lit_2238(r2)
/* 80280720  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 80280724  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 80280728  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8028072C  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 80280730  4E 80 00 20 */	blr 
