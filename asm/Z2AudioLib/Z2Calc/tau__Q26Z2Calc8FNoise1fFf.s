lbl_802A9958:
/* 802A9958  EC 01 00 72 */	fmuls f0, f1, f1
/* 802A995C  EC 41 00 2A */	fadds f2, f1, f0
/* 802A9960  C0 02 BE 2C */	lfs f0, lit_381(r2)
/* 802A9964  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802A9968  40 81 00 20 */	ble lbl_802A9988
/* 802A996C  EC 42 00 28 */	fsubs f2, f2, f0
/* 802A9970  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802A9974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802A9978  40 80 00 08 */	bge lbl_802A9980
/* 802A997C  EC 42 00 2A */	fadds f2, f2, f0
lbl_802A9980:
/* 802A9980  FC 20 10 90 */	fmr f1, f2
/* 802A9984  4E 80 00 20 */	blr 
lbl_802A9988:
/* 802A9988  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802A998C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802A9990  40 80 00 08 */	bge lbl_802A9998
/* 802A9994  EC 42 00 2A */	fadds f2, f2, f0
lbl_802A9998:
/* 802A9998  FC 20 10 90 */	fmr f1, f2
/* 802A999C  4E 80 00 20 */	blr 
