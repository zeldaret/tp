lbl_8026D0B0:
/* 8026D0B0  C0 23 00 00 */	lfs f1, 0(r3)
/* 8026D0B4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026D0B8  EC 41 00 28 */	fsubs f2, f1, f0
/* 8026D0BC  C0 23 00 08 */	lfs f1, 8(r3)
/* 8026D0C0  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026D0C4  EC 61 00 28 */	fsubs f3, f1, f0
/* 8026D0C8  C0 83 00 04 */	lfs f4, 4(r3)
/* 8026D0CC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8026D0D0  EC A4 00 2A */	fadds f5, f4, f0
/* 8026D0D4  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8026D0D8  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8026D0DC  EC 21 00 2A */	fadds f1, f1, f0
/* 8026D0E0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8026D0E4  EC 00 00 32 */	fmuls f0, f0, f0
/* 8026D0E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026D0EC  40 80 00 20 */	bge lbl_8026D10C
/* 8026D0F0  C0 04 00 04 */	lfs f0, 4(r4)
/* 8026D0F4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8026D0F8  40 80 00 14 */	bge lbl_8026D10C
/* 8026D0FC  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8026D100  40 81 00 0C */	ble lbl_8026D10C
/* 8026D104  38 60 00 01 */	li r3, 1
/* 8026D108  4E 80 00 20 */	blr 
lbl_8026D10C:
/* 8026D10C  38 60 00 00 */	li r3, 0
/* 8026D110  4E 80 00 20 */	blr 
