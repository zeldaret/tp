lbl_80280734:
/* 80280734  3C E0 80 44 */	lis r7, sincosTable___5JMath@ha
/* 80280738  38 E7 9A 20 */	addi r7, r7, sincosTable___5JMath@l
/* 8028073C  39 07 00 04 */	addi r8, r7, 4
/* 80280740  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80280744  7C 28 04 2E */	lfsx f1, r8, r0
/* 80280748  54 83 04 38 */	rlwinm r3, r4, 0, 0x10, 0x1c
/* 8028074C  7C 48 1C 2E */	lfsx f2, r8, r3
/* 80280750  54 A4 04 38 */	rlwinm r4, r5, 0, 0x10, 0x1c
/* 80280754  7C 68 24 2E */	lfsx f3, r8, r4
/* 80280758  7C 87 04 2E */	lfsx f4, r7, r0
/* 8028075C  7C A7 1C 2E */	lfsx f5, r7, r3
/* 80280760  7C C7 24 2E */	lfsx f6, r7, r4
/* 80280764  EC 02 00 F2 */	fmuls f0, f2, f3
/* 80280768  D0 06 00 00 */	stfs f0, 0(r6)
/* 8028076C  EC 02 01 B2 */	fmuls f0, f2, f6
/* 80280770  D0 06 00 10 */	stfs f0, 0x10(r6)
/* 80280774  FC 00 28 50 */	fneg f0, f5
/* 80280778  D0 06 00 20 */	stfs f0, 0x20(r6)
/* 8028077C  EC 04 00 B2 */	fmuls f0, f4, f2
/* 80280780  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 80280784  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80280788  D0 06 00 28 */	stfs f0, 0x28(r6)
/* 8028078C  EC 41 01 B2 */	fmuls f2, f1, f6
/* 80280790  EC E4 00 F2 */	fmuls f7, f4, f3
/* 80280794  EC 07 01 72 */	fmuls f0, f7, f5
/* 80280798  EC 00 10 28 */	fsubs f0, f0, f2
/* 8028079C  D0 06 00 04 */	stfs f0, 4(r6)
/* 802807A0  EC 02 01 72 */	fmuls f0, f2, f5
/* 802807A4  EC 00 38 28 */	fsubs f0, f0, f7
/* 802807A8  D0 06 00 18 */	stfs f0, 0x18(r6)
/* 802807AC  EC 44 01 B2 */	fmuls f2, f4, f6
/* 802807B0  EC 21 00 F2 */	fmuls f1, f1, f3
/* 802807B4  EC 01 01 72 */	fmuls f0, f1, f5
/* 802807B8  EC 02 00 2A */	fadds f0, f2, f0
/* 802807BC  D0 06 00 08 */	stfs f0, 8(r6)
/* 802807C0  EC 02 01 72 */	fmuls f0, f2, f5
/* 802807C4  EC 01 00 2A */	fadds f0, f1, f0
/* 802807C8  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 802807CC  C0 02 B9 BC */	lfs f0, lit_2238(r2)
/* 802807D0  D0 06 00 2C */	stfs f0, 0x2c(r6)
/* 802807D4  D0 06 00 1C */	stfs f0, 0x1c(r6)
/* 802807D8  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 802807DC  4E 80 00 20 */	blr 
