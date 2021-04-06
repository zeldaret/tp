lbl_80270DC0:
/* 80270DC0  3C E0 80 44 */	lis r7, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80270DC4  38 E7 9A 20 */	addi r7, r7, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80270DC8  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 80270DCC  7C A7 02 14 */	add r5, r7, r0
/* 80270DD0  C0 A5 00 04 */	lfs f5, 4(r5)
/* 80270DD4  7C C7 04 2E */	lfsx f6, r7, r0
/* 80270DD8  C0 44 00 00 */	lfs f2, 0(r4)
/* 80270DDC  C0 86 00 00 */	lfs f4, 0(r6)
/* 80270DE0  EC 24 01 72 */	fmuls f1, f4, f5
/* 80270DE4  C0 66 00 08 */	lfs f3, 8(r6)
/* 80270DE8  EC 03 01 B2 */	fmuls f0, f3, f6
/* 80270DEC  EC 01 00 2A */	fadds f0, f1, f0
/* 80270DF0  EC 02 00 2A */	fadds f0, f2, f0
/* 80270DF4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80270DF8  C0 24 00 04 */	lfs f1, 4(r4)
/* 80270DFC  C0 06 00 04 */	lfs f0, 4(r6)
/* 80270E00  EC 01 00 2A */	fadds f0, f1, f0
/* 80270E04  D0 03 00 04 */	stfs f0, 4(r3)
/* 80270E08  C0 44 00 08 */	lfs f2, 8(r4)
/* 80270E0C  EC 23 01 72 */	fmuls f1, f3, f5
/* 80270E10  EC 04 01 B2 */	fmuls f0, f4, f6
/* 80270E14  EC 01 00 28 */	fsubs f0, f1, f0
/* 80270E18  EC 02 00 2A */	fadds f0, f2, f0
/* 80270E1C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80270E20  4E 80 00 20 */	blr 
