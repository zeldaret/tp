lbl_8026EDA4:
/* 8026EDA4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026EDA8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8026EDAC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026EDB0  40 81 00 08 */	ble lbl_8026EDB8
/* 8026EDB4  D0 23 00 00 */	stfs f1, 0(r3)
lbl_8026EDB8:
/* 8026EDB8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8026EDBC  C0 24 00 04 */	lfs f1, 4(r4)
/* 8026EDC0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026EDC4  40 81 00 08 */	ble lbl_8026EDCC
/* 8026EDC8  D0 23 00 04 */	stfs f1, 4(r3)
lbl_8026EDCC:
/* 8026EDCC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8026EDD0  C0 24 00 08 */	lfs f1, 8(r4)
/* 8026EDD4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026EDD8  4C 81 00 20 */	blelr 
/* 8026EDDC  D0 23 00 08 */	stfs f1, 8(r3)
/* 8026EDE0  4E 80 00 20 */	blr 
