lbl_8027A990:
/* 8027A990  80 A3 00 04 */	lwz r5, 4(r3)
/* 8027A994  80 A5 00 20 */	lwz r5, 0x20(r5)
/* 8027A998  C0 83 01 FC */	lfs f4, 0x1fc(r3)
/* 8027A99C  80 65 00 00 */	lwz r3, 0(r5)
/* 8027A9A0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8027A9A4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027A9A8  40 80 00 24 */	bge lbl_8027A9CC
/* 8027A9AC  C0 44 00 68 */	lfs f2, 0x68(r4)
/* 8027A9B0  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 8027A9B4  EC 24 00 32 */	fmuls f1, f4, f0
/* 8027A9B8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8027A9BC  EC 01 00 2A */	fadds f0, f1, f0
/* 8027A9C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027A9C4  D0 04 00 64 */	stfs f0, 0x64(r4)
/* 8027A9C8  4E 80 00 20 */	blr 
lbl_8027A9CC:
/* 8027A9CC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8027A9D0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027A9D4  40 81 00 28 */	ble lbl_8027A9FC
/* 8027A9D8  C0 64 00 68 */	lfs f3, 0x68(r4)
/* 8027A9DC  C0 42 B8 E0 */	lfs f2, lit_2270(r2)
/* 8027A9E0  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 8027A9E4  EC 04 00 28 */	fsubs f0, f4, f0
/* 8027A9E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027A9EC  EC 02 00 2A */	fadds f0, f2, f0
/* 8027A9F0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8027A9F4  D0 04 00 64 */	stfs f0, 0x64(r4)
/* 8027A9F8  4E 80 00 20 */	blr 
lbl_8027A9FC:
/* 8027A9FC  C0 04 00 68 */	lfs f0, 0x68(r4)
/* 8027AA00  D0 04 00 64 */	stfs f0, 0x64(r4)
/* 8027AA04  4E 80 00 20 */	blr 
