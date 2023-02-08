lbl_80BDE8D0:
/* 80BDE8D0  3C 80 80 BE */	lis r4, l_swOffset@ha /* 0x80BDF870@ha */
/* 80BDE8D4  38 84 F8 70 */	addi r4, r4, l_swOffset@l /* 0x80BDF870@l */
/* 80BDE8D8  C0 63 04 FC */	lfs f3, 0x4fc(r3)
/* 80BDE8DC  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 80BDE8E0  C0 23 06 3C */	lfs f1, 0x63c(r3)
/* 80BDE8E4  C0 03 06 40 */	lfs f0, 0x640(r3)
/* 80BDE8E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BDE8EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BDE8F0  EC 03 00 28 */	fsubs f0, f3, f0
/* 80BDE8F4  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80BDE8F8  C0 23 04 FC */	lfs f1, 0x4fc(r3)
/* 80BDE8FC  C0 04 00 64 */	lfs f0, 0x64(r4)
/* 80BDE900  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BDE904  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BDE908  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80BDE90C  C0 23 06 3C */	lfs f1, 0x63c(r3)
/* 80BDE910  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80BDE914  EC 01 00 2A */	fadds f0, f1, f0
/* 80BDE918  D0 03 06 3C */	stfs f0, 0x63c(r3)
/* 80BDE91C  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80BDE920  C0 24 00 68 */	lfs f1, 0x68(r4)
/* 80BDE924  C0 03 06 3C */	lfs f0, 0x63c(r3)
/* 80BDE928  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BDE92C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BDE930  D0 03 06 38 */	stfs f0, 0x638(r3)
/* 80BDE934  C0 03 06 38 */	lfs f0, 0x638(r3)
/* 80BDE938  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80BDE93C  40 80 00 08 */	bge lbl_80BDE944
/* 80BDE940  48 00 00 18 */	b lbl_80BDE958
lbl_80BDE944:
/* 80BDE944  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 80BDE948  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80BDE94C  40 81 00 08 */	ble lbl_80BDE954
/* 80BDE950  48 00 00 08 */	b lbl_80BDE958
lbl_80BDE954:
/* 80BDE954  FC 40 00 90 */	fmr f2, f0
lbl_80BDE958:
/* 80BDE958  D0 43 06 38 */	stfs f2, 0x638(r3)
/* 80BDE95C  4E 80 00 20 */	blr 
