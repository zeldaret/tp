lbl_802E987C:
/* 802E987C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802E9880  C0 63 00 04 */	lfs f3, 4(r3)
/* 802E9884  EC 20 18 28 */	fsubs f1, f0, f3
/* 802E9888  C0 03 00 C4 */	lfs f0, 0xc4(r3)
/* 802E988C  C0 A3 00 BC */	lfs f5, 0xbc(r3)
/* 802E9890  EC 00 28 28 */	fsubs f0, f0, f5
/* 802E9894  EC 41 00 24 */	fdivs f2, f1, f0
/* 802E9898  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802E989C  C0 83 00 08 */	lfs f4, 8(r3)
/* 802E98A0  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E98A4  C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 802E98A8  C0 C3 00 C0 */	lfs f6, 0xc0(r3)
/* 802E98AC  EC 00 30 28 */	fsubs f0, f0, f6
/* 802E98B0  EC 21 00 24 */	fdivs f1, f1, f0
/* 802E98B4  C0 02 C7 60 */	lfs f0, lit_522(r2)
/* 802E98B8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802E98BC  4C 41 13 82 */	cror 2, 1, 2
/* 802E98C0  40 82 00 08 */	bne lbl_802E98C8
/* 802E98C4  48 00 00 08 */	b lbl_802E98CC
lbl_802E98C8:
/* 802E98C8  FC 60 00 90 */	fmr f3, f0
lbl_802E98CC:
/* 802E98CC  C0 02 C7 60 */	lfs f0, lit_522(r2)
/* 802E98D0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 802E98D4  4C 41 13 82 */	cror 2, 1, 2
/* 802E98D8  40 82 00 08 */	bne lbl_802E98E0
/* 802E98DC  48 00 00 08 */	b lbl_802E98E4
lbl_802E98E0:
/* 802E98E0  FC 80 00 90 */	fmr f4, f0
lbl_802E98E4:
/* 802E98E4  C0 05 00 08 */	lfs f0, 8(r5)
/* 802E98E8  EC 00 28 28 */	fsubs f0, f0, f5
/* 802E98EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 802E98F0  EC E3 00 2A */	fadds f7, f3, f0
/* 802E98F4  C0 05 00 04 */	lfs f0, 4(r5)
/* 802E98F8  EC 00 30 28 */	fsubs f0, f0, f6
/* 802E98FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 802E9900  ED 04 00 2A */	fadds f8, f4, f0
/* 802E9904  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 802E9908  EC 00 30 28 */	fsubs f0, f0, f6
/* 802E990C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802E9910  EC 24 00 2A */	fadds f1, f4, f0
/* 802E9914  C0 05 00 00 */	lfs f0, 0(r5)
/* 802E9918  EC 00 28 28 */	fsubs f0, f0, f5
/* 802E991C  EC 02 00 32 */	fmuls f0, f2, f0
/* 802E9920  EC 03 00 2A */	fadds f0, f3, f0
/* 802E9924  D0 04 00 00 */	stfs f0, 0(r4)
/* 802E9928  D1 04 00 04 */	stfs f8, 4(r4)
/* 802E992C  D0 E4 00 08 */	stfs f7, 8(r4)
/* 802E9930  D0 24 00 0C */	stfs f1, 0xc(r4)
/* 802E9934  C0 04 00 00 */	lfs f0, 0(r4)
/* 802E9938  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 802E993C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802E9940  4C 40 13 82 */	cror 2, 0, 2
/* 802E9944  40 82 00 08 */	bne lbl_802E994C
/* 802E9948  D0 24 00 00 */	stfs f1, 0(r4)
lbl_802E994C:
/* 802E994C  C0 04 00 04 */	lfs f0, 4(r4)
/* 802E9950  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 802E9954  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802E9958  4C 40 13 82 */	cror 2, 0, 2
/* 802E995C  40 82 00 08 */	bne lbl_802E9964
/* 802E9960  D0 24 00 04 */	stfs f1, 4(r4)
lbl_802E9964:
/* 802E9964  C0 04 00 08 */	lfs f0, 8(r4)
/* 802E9968  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 802E996C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802E9970  4C 41 13 82 */	cror 2, 1, 2
/* 802E9974  40 82 00 08 */	bne lbl_802E997C
/* 802E9978  D0 24 00 08 */	stfs f1, 8(r4)
lbl_802E997C:
/* 802E997C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802E9980  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 802E9984  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802E9988  4C 41 13 82 */	cror 2, 1, 2
/* 802E998C  4C 82 00 20 */	bnelr 
/* 802E9990  D0 24 00 0C */	stfs f1, 0xc(r4)
/* 802E9994  4E 80 00 20 */	blr 
