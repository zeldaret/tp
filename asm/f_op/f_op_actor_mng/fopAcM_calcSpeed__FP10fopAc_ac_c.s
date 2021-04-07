lbl_8001A60C:
/* 8001A60C  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 8001A610  C0 43 05 30 */	lfs f2, 0x530(r3)
/* 8001A614  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 8001A618  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8001A61C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8001A620  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8001A624  7C 04 04 2E */	lfsx f0, r4, r0
/* 8001A628  EC 61 00 32 */	fmuls f3, f1, f0
/* 8001A62C  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 8001A630  EC 40 10 2A */	fadds f2, f0, f2
/* 8001A634  7C 84 02 14 */	add r4, r4, r0
/* 8001A638  C0 04 00 04 */	lfs f0, 4(r4)
/* 8001A63C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8001A640  C0 03 05 34 */	lfs f0, 0x534(r3)
/* 8001A644  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8001A648  40 80 00 08 */	bge lbl_8001A650
/* 8001A64C  FC 40 00 90 */	fmr f2, f0
lbl_8001A650:
/* 8001A650  D0 63 04 F8 */	stfs f3, 0x4f8(r3)
/* 8001A654  D0 43 04 FC */	stfs f2, 0x4fc(r3)
/* 8001A658  D0 23 05 00 */	stfs f1, 0x500(r3)
/* 8001A65C  4E 80 00 20 */	blr 
