lbl_80339878:
/* 80339878  3C E0 80 44 */	lis r7, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8033987C  38 E7 9A 20 */	addi r7, r7, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80339880  39 07 00 04 */	addi r8, r7, 4
/* 80339884  7C 60 07 34 */	extsh r0, r3
/* 80339888  7C 00 0E 70 */	srawi r0, r0, 1
/* 8033988C  7C 00 01 94 */	addze r0, r0
/* 80339890  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80339894  7C 00 1E 70 */	srawi r0, r0, 3
/* 80339898  54 03 18 38 */	slwi r3, r0, 3
/* 8033989C  7C 48 1C 2E */	lfsx f2, r8, r3
/* 803398A0  7C 80 07 34 */	extsh r0, r4
/* 803398A4  7C 00 0E 70 */	srawi r0, r0, 1
/* 803398A8  7C 00 01 94 */	addze r0, r0
/* 803398AC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803398B0  7C 00 1E 70 */	srawi r0, r0, 3
/* 803398B4  54 04 18 38 */	slwi r4, r0, 3
/* 803398B8  7C 68 24 2E */	lfsx f3, r8, r4
/* 803398BC  7C A0 07 34 */	extsh r0, r5
/* 803398C0  7C 00 0E 70 */	srawi r0, r0, 1
/* 803398C4  7C 00 01 94 */	addze r0, r0
/* 803398C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 803398CC  7C 88 04 2E */	lfsx f4, r8, r0
/* 803398D0  7C A7 1C 2E */	lfsx f5, r7, r3
/* 803398D4  7C C7 24 2E */	lfsx f6, r7, r4
/* 803398D8  7C E7 04 2E */	lfsx f7, r7, r0
/* 803398DC  ED 03 01 32 */	fmuls f8, f3, f4
/* 803398E0  ED 26 01 F2 */	fmuls f9, f6, f7
/* 803398E4  EC 22 02 32 */	fmuls f1, f2, f8
/* 803398E8  EC 05 02 72 */	fmuls f0, f5, f9
/* 803398EC  EC 01 00 2A */	fadds f0, f1, f0
/* 803398F0  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 803398F4  EC 25 02 32 */	fmuls f1, f5, f8
/* 803398F8  EC 02 02 72 */	fmuls f0, f2, f9
/* 803398FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80339900  D0 06 00 00 */	stfs f0, 0(r6)
/* 80339904  EC 02 01 B2 */	fmuls f0, f2, f6
/* 80339908  EC 24 00 32 */	fmuls f1, f4, f0
/* 8033990C  EC 05 00 F2 */	fmuls f0, f5, f3
/* 80339910  EC 07 00 32 */	fmuls f0, f7, f0
/* 80339914  EC 01 00 2A */	fadds f0, f1, f0
/* 80339918  D0 06 00 04 */	stfs f0, 4(r6)
/* 8033991C  EC 02 00 F2 */	fmuls f0, f2, f3
/* 80339920  EC 27 00 32 */	fmuls f1, f7, f0
/* 80339924  EC 05 01 B2 */	fmuls f0, f5, f6
/* 80339928  EC 04 00 32 */	fmuls f0, f4, f0
/* 8033992C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80339930  D0 06 00 08 */	stfs f0, 8(r6)
/* 80339934  4E 80 00 20 */	blr 
