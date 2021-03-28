lbl_8026F97C:
/* 8026F97C  C0 A3 00 00 */	lfs f5, 0(r3)
/* 8026F980  FC 05 08 00 */	fcmpu cr0, f5, f1
/* 8026F984  41 82 00 A4 */	beq lbl_8026FA28
/* 8026F988  EC 01 28 28 */	fsubs f0, f1, f5
/* 8026F98C  EC C2 00 32 */	fmuls f6, f2, f0
/* 8026F990  FC 06 20 40 */	fcmpo cr0, f6, f4
/* 8026F994  4C 41 13 82 */	cror 2, 1, 2
/* 8026F998  41 82 00 14 */	beq lbl_8026F9AC
/* 8026F99C  FC 40 20 50 */	fneg f2, f4
/* 8026F9A0  FC 06 10 40 */	fcmpo cr0, f6, f2
/* 8026F9A4  4C 40 13 82 */	cror 2, 0, 2
/* 8026F9A8  40 82 00 30 */	bne lbl_8026F9D8
lbl_8026F9AC:
/* 8026F9AC  FC 06 18 40 */	fcmpo cr0, f6, f3
/* 8026F9B0  40 81 00 08 */	ble lbl_8026F9B8
/* 8026F9B4  FC C0 18 90 */	fmr f6, f3
lbl_8026F9B8:
/* 8026F9B8  FC 00 18 50 */	fneg f0, f3
/* 8026F9BC  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8026F9C0  40 80 00 08 */	bge lbl_8026F9C8
/* 8026F9C4  FC C0 00 90 */	fmr f6, f0
lbl_8026F9C8:
/* 8026F9C8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026F9CC  EC 00 30 2A */	fadds f0, f0, f6
/* 8026F9D0  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026F9D4  48 00 00 54 */	b lbl_8026FA28
lbl_8026F9D8:
/* 8026F9D8  C0 02 B7 E0 */	lfs f0, lit_2262(r2)
/* 8026F9DC  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8026F9E0  40 81 00 28 */	ble lbl_8026FA08
/* 8026F9E4  FC 06 20 40 */	fcmpo cr0, f6, f4
/* 8026F9E8  40 80 00 40 */	bge lbl_8026FA28
/* 8026F9EC  EC 05 20 2A */	fadds f0, f5, f4
/* 8026F9F0  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026F9F4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026F9F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026F9FC  40 81 00 2C */	ble lbl_8026FA28
/* 8026FA00  D0 23 00 00 */	stfs f1, 0(r3)
/* 8026FA04  48 00 00 24 */	b lbl_8026FA28
lbl_8026FA08:
/* 8026FA08  FC 06 10 40 */	fcmpo cr0, f6, f2
/* 8026FA0C  40 81 00 1C */	ble lbl_8026FA28
/* 8026FA10  EC 05 10 2A */	fadds f0, f5, f2
/* 8026FA14  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026FA18  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026FA1C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026FA20  40 80 00 08 */	bge lbl_8026FA28
/* 8026FA24  D0 23 00 00 */	stfs f1, 0(r3)
lbl_8026FA28:
/* 8026FA28  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026FA2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8026FA30  FC 00 02 10 */	fabs f0, f0
/* 8026FA34  FC 20 00 18 */	frsp f1, f0
/* 8026FA38  4E 80 00 20 */	blr 
