lbl_8015FADC:
/* 8015FADC  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8015FAE0  40 80 00 0C */	bge lbl_8015FAEC
/* 8015FAE4  FC 60 10 90 */	fmr f3, f2
/* 8015FAE8  48 00 00 0C */	b lbl_8015FAF4
lbl_8015FAEC:
/* 8015FAEC  FC 60 08 90 */	fmr f3, f1
/* 8015FAF0  FC 20 10 90 */	fmr f1, f2
lbl_8015FAF4:
/* 8015FAF4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8015FAF8  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8015FAFC  40 81 00 10 */	ble lbl_8015FB0C
/* 8015FB00  D0 63 00 00 */	stfs f3, 0(r3)
/* 8015FB04  38 60 00 00 */	li r3, 0
/* 8015FB08  4E 80 00 20 */	blr 
lbl_8015FB0C:
/* 8015FB0C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8015FB10  40 80 00 10 */	bge lbl_8015FB20
/* 8015FB14  D0 23 00 00 */	stfs f1, 0(r3)
/* 8015FB18  38 60 00 00 */	li r3, 0
/* 8015FB1C  4E 80 00 20 */	blr 
lbl_8015FB20:
/* 8015FB20  38 60 00 01 */	li r3, 1
/* 8015FB24  4E 80 00 20 */	blr 
