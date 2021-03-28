lbl_8032C7BC:
/* 8032C7BC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8032C7C0  C0 44 00 00 */	lfs f2, 0(r4)
/* 8032C7C4  EC 60 00 B2 */	fmuls f3, f0, f2
/* 8032C7C8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8032C7CC  EC 80 00 B2 */	fmuls f4, f0, f2
/* 8032C7D0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8032C7D4  EC A0 00 B2 */	fmuls f5, f0, f2
/* 8032C7D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8032C7DC  C0 44 00 04 */	lfs f2, 4(r4)
/* 8032C7E0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032C7E4  EC 63 00 2A */	fadds f3, f3, f0
/* 8032C7E8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8032C7EC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032C7F0  EC 84 00 2A */	fadds f4, f4, f0
/* 8032C7F4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8032C7F8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032C7FC  EC A5 00 2A */	fadds f5, f5, f0
/* 8032C800  C0 03 00 08 */	lfs f0, 8(r3)
/* 8032C804  C0 44 00 08 */	lfs f2, 8(r4)
/* 8032C808  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032C80C  EC 63 00 2A */	fadds f3, f3, f0
/* 8032C810  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8032C814  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032C818  EC 84 00 2A */	fadds f4, f4, f0
/* 8032C81C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8032C820  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8032C824  EC A5 00 2A */	fadds f5, f5, f0
/* 8032C828  C0 45 00 00 */	lfs f2, 0(r5)
/* 8032C82C  EC 03 00 72 */	fmuls f0, f3, f1
/* 8032C830  EC 02 00 2A */	fadds f0, f2, f0
/* 8032C834  D0 05 00 00 */	stfs f0, 0(r5)
/* 8032C838  C0 45 00 04 */	lfs f2, 4(r5)
/* 8032C83C  EC 04 00 72 */	fmuls f0, f4, f1
/* 8032C840  EC 02 00 2A */	fadds f0, f2, f0
/* 8032C844  D0 05 00 04 */	stfs f0, 4(r5)
/* 8032C848  C0 45 00 08 */	lfs f2, 8(r5)
/* 8032C84C  EC 05 00 72 */	fmuls f0, f5, f1
/* 8032C850  EC 02 00 2A */	fadds f0, f2, f0
/* 8032C854  D0 05 00 08 */	stfs f0, 8(r5)
/* 8032C858  4E 80 00 20 */	blr 
