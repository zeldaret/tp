lbl_8027ADBC:
/* 8027ADBC  C0 02 B9 00 */	lfs f0, lit_2503(r2)
/* 8027ADC0  80 83 00 00 */	lwz r4, 0(r3)
/* 8027ADC4  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 8027ADC8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8027ADCC  41 82 00 18 */	beq lbl_8027ADE4
/* 8027ADD0  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 8027ADD4  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 8027ADD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027ADDC  EC 00 10 24 */	fdivs f0, f0, f2
/* 8027ADE0  48 00 00 08 */	b lbl_8027ADE8
lbl_8027ADE4:
/* 8027ADE4  C0 02 B8 E0 */	lfs f0, lit_2270(r2)
lbl_8027ADE8:
/* 8027ADE8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8027ADEC  C0 42 B8 E0 */	lfs f2, lit_2270(r2)
/* 8027ADF0  80 83 00 00 */	lwz r4, 0(r3)
/* 8027ADF4  C0 64 00 30 */	lfs f3, 0x30(r4)
/* 8027ADF8  FC 02 18 00 */	fcmpu cr0, f2, f3
/* 8027ADFC  41 82 00 18 */	beq lbl_8027AE14
/* 8027AE00  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 8027AE04  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 8027AE08  EC 21 00 28 */	fsubs f1, f1, f0
/* 8027AE0C  EC 02 18 28 */	fsubs f0, f2, f3
/* 8027AE10  EC 41 00 24 */	fdivs f2, f1, f0
lbl_8027AE14:
/* 8027AE14  D0 43 00 08 */	stfs f2, 8(r3)
/* 8027AE18  C0 02 B9 00 */	lfs f0, lit_2503(r2)
/* 8027AE1C  80 83 00 00 */	lwz r4, 0(r3)
/* 8027AE20  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 8027AE24  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8027AE28  41 82 00 34 */	beq lbl_8027AE5C
/* 8027AE2C  C0 22 B8 E0 */	lfs f1, lit_2270(r2)
/* 8027AE30  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8027AE34  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027AE38  EC 00 10 24 */	fdivs f0, f0, f2
/* 8027AE3C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8027AE40  80 83 00 00 */	lwz r4, 0(r3)
/* 8027AE44  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8027AE48  EC 21 00 28 */	fsubs f1, f1, f0
/* 8027AE4C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8027AE50  EC 01 00 24 */	fdivs f0, f1, f0
/* 8027AE54  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8027AE58  48 00 00 10 */	b lbl_8027AE68
lbl_8027AE5C:
/* 8027AE5C  C0 02 B8 E0 */	lfs f0, lit_2270(r2)
/* 8027AE60  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8027AE64  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_8027AE68:
/* 8027AE68  C0 42 B8 E0 */	lfs f2, lit_2270(r2)
/* 8027AE6C  80 83 00 00 */	lwz r4, 0(r3)
/* 8027AE70  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 8027AE74  FC 02 18 00 */	fcmpu cr0, f2, f3
/* 8027AE78  41 82 00 38 */	beq lbl_8027AEB0
/* 8027AE7C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8027AE80  EC 20 10 28 */	fsubs f1, f0, f2
/* 8027AE84  EC 02 18 28 */	fsubs f0, f2, f3
/* 8027AE88  EC 01 00 24 */	fdivs f0, f1, f0
/* 8027AE8C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8027AE90  80 83 00 00 */	lwz r4, 0(r3)
/* 8027AE94  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8027AE98  EC 20 10 28 */	fsubs f1, f0, f2
/* 8027AE9C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8027AEA0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8027AEA4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8027AEA8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8027AEAC  4E 80 00 20 */	blr 
lbl_8027AEB0:
/* 8027AEB0  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 8027AEB4  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8027AEB8  4E 80 00 20 */	blr 
