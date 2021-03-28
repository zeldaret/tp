lbl_802F7264:
/* 802F7264  C0 24 00 00 */	lfs f1, 0(r4)
/* 802F7268  C0 44 00 04 */	lfs f2, 4(r4)
/* 802F726C  C0 64 00 08 */	lfs f3, 8(r4)
/* 802F7270  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 802F7274  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 802F7278  C0 A3 00 34 */	lfs f5, 0x34(r3)
/* 802F727C  EC 21 00 2A */	fadds f1, f1, f0
/* 802F7280  EC 42 28 2A */	fadds f2, f2, f5
/* 802F7284  EC 63 00 2A */	fadds f3, f3, f0
/* 802F7288  EC 84 28 2A */	fadds f4, f4, f5
/* 802F728C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 802F7290  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802F7294  4C 40 13 82 */	cror 2, 0, 2
/* 802F7298  40 82 00 08 */	bne lbl_802F72A0
/* 802F729C  D0 23 00 40 */	stfs f1, 0x40(r3)
lbl_802F72A0:
/* 802F72A0  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 802F72A4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802F72A8  4C 40 13 82 */	cror 2, 0, 2
/* 802F72AC  40 82 00 08 */	bne lbl_802F72B4
/* 802F72B0  D0 43 00 44 */	stfs f2, 0x44(r3)
lbl_802F72B4:
/* 802F72B4  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 802F72B8  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802F72BC  4C 41 13 82 */	cror 2, 1, 2
/* 802F72C0  40 82 00 08 */	bne lbl_802F72C8
/* 802F72C4  D0 63 00 48 */	stfs f3, 0x48(r3)
lbl_802F72C8:
/* 802F72C8  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 802F72CC  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 802F72D0  4C 41 13 82 */	cror 2, 1, 2
/* 802F72D4  4C 82 00 20 */	bnelr 
/* 802F72D8  D0 83 00 4C */	stfs f4, 0x4c(r3)
/* 802F72DC  4E 80 00 20 */	blr 
