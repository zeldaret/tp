lbl_802BDBDC:
/* 802BDBDC  54 80 10 3A */	slwi r0, r4, 2
/* 802BDBE0  7C 83 02 14 */	add r4, r3, r0
/* 802BDBE4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802BDBE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BDBEC  40 81 00 0C */	ble lbl_802BDBF8
/* 802BDBF0  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 802BDBF4  4E 80 00 20 */	blr 
lbl_802BDBF8:
/* 802BDBF8  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 802BDBFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BDC00  40 80 00 0C */	bge lbl_802BDC0C
/* 802BDC04  C0 22 C0 A4 */	lfs f1, lit_894(r2)
/* 802BDC08  4E 80 00 20 */	blr 
lbl_802BDC0C:
/* 802BDC0C  C0 62 C0 A4 */	lfs f3, lit_894(r2)
/* 802BDC10  C0 44 00 7C */	lfs f2, 0x7c(r4)
/* 802BDC14  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BDC18  EC 02 00 32 */	fmuls f0, f2, f0
/* 802BDC1C  EC 03 00 2A */	fadds f0, f3, f0
/* 802BDC20  C0 22 C0 A0 */	lfs f1, lit_848(r2)
/* 802BDC24  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802BDC28  4D 80 00 20 */	bltlr 
/* 802BDC2C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802BDC30  40 81 00 0C */	ble lbl_802BDC3C
/* 802BDC34  FC 20 18 90 */	fmr f1, f3
/* 802BDC38  4E 80 00 20 */	blr 
lbl_802BDC3C:
/* 802BDC3C  FC 20 00 90 */	fmr f1, f0
/* 802BDC40  4E 80 00 20 */	blr 
