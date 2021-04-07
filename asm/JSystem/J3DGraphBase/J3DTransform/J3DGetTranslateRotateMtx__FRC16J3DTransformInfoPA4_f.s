lbl_80311964:
/* 80311964  A8 03 00 0C */	lha r0, 0xc(r3)
/* 80311968  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8031196C  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80311970  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80311974  7C 25 04 2E */	lfsx f1, r5, r0
/* 80311978  38 C5 00 04 */	addi r6, r5, 4
/* 8031197C  7C 46 04 2E */	lfsx f2, r6, r0
/* 80311980  A8 03 00 0E */	lha r0, 0xe(r3)
/* 80311984  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80311988  7C 65 04 2E */	lfsx f3, r5, r0
/* 8031198C  7C 86 04 2E */	lfsx f4, r6, r0
/* 80311990  A8 03 00 10 */	lha r0, 0x10(r3)
/* 80311994  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80311998  7C A5 04 2E */	lfsx f5, r5, r0
/* 8031199C  7C C6 04 2E */	lfsx f6, r6, r0
/* 803119A0  FC 00 18 50 */	fneg f0, f3
/* 803119A4  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 803119A8  EC 06 01 32 */	fmuls f0, f6, f4
/* 803119AC  D0 04 00 00 */	stfs f0, 0(r4)
/* 803119B0  EC 05 01 32 */	fmuls f0, f5, f4
/* 803119B4  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 803119B8  EC 04 00 72 */	fmuls f0, f4, f1
/* 803119BC  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 803119C0  EC 04 00 B2 */	fmuls f0, f4, f2
/* 803119C4  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 803119C8  EC 82 01 72 */	fmuls f4, f2, f5
/* 803119CC  EC E1 01 B2 */	fmuls f7, f1, f6
/* 803119D0  EC 07 00 F2 */	fmuls f0, f7, f3
/* 803119D4  EC 00 20 28 */	fsubs f0, f0, f4
/* 803119D8  D0 04 00 04 */	stfs f0, 4(r4)
/* 803119DC  EC 04 00 F2 */	fmuls f0, f4, f3
/* 803119E0  EC 00 38 28 */	fsubs f0, f0, f7
/* 803119E4  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 803119E8  EC 21 01 72 */	fmuls f1, f1, f5
/* 803119EC  EC 42 01 B2 */	fmuls f2, f2, f6
/* 803119F0  EC 02 00 F2 */	fmuls f0, f2, f3
/* 803119F4  EC 01 00 2A */	fadds f0, f1, f0
/* 803119F8  D0 04 00 08 */	stfs f0, 8(r4)
/* 803119FC  EC 01 00 F2 */	fmuls f0, f1, f3
/* 80311A00  EC 02 00 2A */	fadds f0, f2, f0
/* 80311A04  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 80311A08  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80311A0C  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80311A10  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80311A14  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80311A18  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80311A1C  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 80311A20  4E 80 00 20 */	blr 
