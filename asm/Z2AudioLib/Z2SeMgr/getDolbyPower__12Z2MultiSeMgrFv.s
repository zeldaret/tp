lbl_802AEDC0:
/* 802AEDC0  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 802AEDC4  C0 02 BE 80 */	lfs f0, lit_4042(r2)
/* 802AEDC8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802AEDCC  40 81 00 08 */	ble lbl_802AEDD4
/* 802AEDD0  48 00 00 18 */	b lbl_802AEDE8
lbl_802AEDD4:
/* 802AEDD4  C0 02 BE 78 */	lfs f0, lit_4040(r2)
/* 802AEDD8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802AEDDC  40 80 00 08 */	bge lbl_802AEDE4
/* 802AEDE0  48 00 00 08 */	b lbl_802AEDE8
lbl_802AEDE4:
/* 802AEDE4  FC 00 18 90 */	fmr f0, f3
lbl_802AEDE8:
/* 802AEDE8  C0 83 00 10 */	lfs f4, 0x10(r3)
/* 802AEDEC  C0 22 BE 80 */	lfs f1, lit_4042(r2)
/* 802AEDF0  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 802AEDF4  40 81 00 08 */	ble lbl_802AEDFC
/* 802AEDF8  48 00 00 18 */	b lbl_802AEE10
lbl_802AEDFC:
/* 802AEDFC  C0 22 BE 78 */	lfs f1, lit_4040(r2)
/* 802AEE00  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 802AEE04  40 80 00 08 */	bge lbl_802AEE0C
/* 802AEE08  48 00 00 08 */	b lbl_802AEE10
lbl_802AEE0C:
/* 802AEE0C  FC 20 20 90 */	fmr f1, f4
lbl_802AEE10:
/* 802AEE10  EC 21 00 2A */	fadds f1, f1, f0
/* 802AEE14  C0 02 BE 78 */	lfs f0, lit_4040(r2)
/* 802AEE18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802AEE1C  40 81 00 7C */	ble lbl_802AEE98
/* 802AEE20  C0 42 BE 80 */	lfs f2, lit_4042(r2)
/* 802AEE24  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 802AEE28  40 81 00 08 */	ble lbl_802AEE30
/* 802AEE2C  48 00 00 18 */	b lbl_802AEE44
lbl_802AEE30:
/* 802AEE30  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802AEE34  40 80 00 0C */	bge lbl_802AEE40
/* 802AEE38  FC 40 00 90 */	fmr f2, f0
/* 802AEE3C  48 00 00 08 */	b lbl_802AEE44
lbl_802AEE40:
/* 802AEE40  FC 40 18 90 */	fmr f2, f3
lbl_802AEE44:
/* 802AEE44  C0 02 BE 80 */	lfs f0, lit_4042(r2)
/* 802AEE48  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 802AEE4C  40 81 00 08 */	ble lbl_802AEE54
/* 802AEE50  48 00 00 18 */	b lbl_802AEE68
lbl_802AEE54:
/* 802AEE54  C0 02 BE 78 */	lfs f0, lit_4040(r2)
/* 802AEE58  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 802AEE5C  40 80 00 08 */	bge lbl_802AEE64
/* 802AEE60  48 00 00 08 */	b lbl_802AEE68
lbl_802AEE64:
/* 802AEE64  FC 00 20 90 */	fmr f0, f4
lbl_802AEE68:
/* 802AEE68  C0 22 BE 80 */	lfs f1, lit_4042(r2)
/* 802AEE6C  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 802AEE70  40 81 00 08 */	ble lbl_802AEE78
/* 802AEE74  48 00 00 18 */	b lbl_802AEE8C
lbl_802AEE78:
/* 802AEE78  C0 22 BE 78 */	lfs f1, lit_4040(r2)
/* 802AEE7C  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 802AEE80  40 80 00 08 */	bge lbl_802AEE88
/* 802AEE84  48 00 00 08 */	b lbl_802AEE8C
lbl_802AEE88:
/* 802AEE88  FC 20 18 90 */	fmr f1, f3
lbl_802AEE8C:
/* 802AEE8C  EC 00 10 2A */	fadds f0, f0, f2
/* 802AEE90  EC 21 00 24 */	fdivs f1, f1, f0
/* 802AEE94  4E 80 00 20 */	blr 
lbl_802AEE98:
/* 802AEE98  C0 22 BE A8 */	lfs f1, lit_4052(r2)
/* 802AEE9C  4E 80 00 20 */	blr 
