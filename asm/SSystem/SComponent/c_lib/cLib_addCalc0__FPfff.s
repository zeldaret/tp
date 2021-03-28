lbl_8026FA80:
/* 8026FA80  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026FA84  EC 20 00 72 */	fmuls f1, f0, f1
/* 8026FA88  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026FA8C  40 81 00 0C */	ble lbl_8026FA98
/* 8026FA90  FC 20 10 90 */	fmr f1, f2
/* 8026FA94  48 00 00 14 */	b lbl_8026FAA8
lbl_8026FA98:
/* 8026FA98  FC 00 10 50 */	fneg f0, f2
/* 8026FA9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026FAA0  40 80 00 08 */	bge lbl_8026FAA8
/* 8026FAA4  FC 20 00 90 */	fmr f1, f0
lbl_8026FAA8:
/* 8026FAA8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026FAAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8026FAB0  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026FAB4  4E 80 00 20 */	blr 
