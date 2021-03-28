lbl_8026FA3C:
/* 8026FA3C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026FA40  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8026FA44  4D 82 00 20 */	beqlr 
/* 8026FA48  EC 01 00 28 */	fsubs f0, f1, f0
/* 8026FA4C  EC 22 00 32 */	fmuls f1, f2, f0
/* 8026FA50  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8026FA54  40 81 00 0C */	ble lbl_8026FA60
/* 8026FA58  FC 20 18 90 */	fmr f1, f3
/* 8026FA5C  48 00 00 14 */	b lbl_8026FA70
lbl_8026FA60:
/* 8026FA60  FC 00 18 50 */	fneg f0, f3
/* 8026FA64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026FA68  40 80 00 08 */	bge lbl_8026FA70
/* 8026FA6C  FC 20 00 90 */	fmr f1, f0
lbl_8026FA70:
/* 8026FA70  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026FA74  EC 00 08 2A */	fadds f0, f0, f1
/* 8026FA78  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026FA7C  4E 80 00 20 */	blr 
