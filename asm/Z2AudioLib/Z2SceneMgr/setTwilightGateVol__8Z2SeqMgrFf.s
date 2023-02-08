lbl_802B9AD0:
/* 802B9AD0  C0 02 C0 38 */	lfs f0, lit_3511(r2)
/* 802B9AD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802B9AD8  40 80 00 08 */	bge lbl_802B9AE0
/* 802B9ADC  48 00 00 18 */	b lbl_802B9AF4
lbl_802B9AE0:
/* 802B9AE0  C0 02 C0 3C */	lfs f0, lit_3512(r2)
/* 802B9AE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802B9AE8  40 81 00 08 */	ble lbl_802B9AF0
/* 802B9AEC  48 00 00 08 */	b lbl_802B9AF4
lbl_802B9AF0:
/* 802B9AF0  FC 00 08 90 */	fmr f0, f1
lbl_802B9AF4:
/* 802B9AF4  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 802B9AF8  4E 80 00 20 */	blr 
