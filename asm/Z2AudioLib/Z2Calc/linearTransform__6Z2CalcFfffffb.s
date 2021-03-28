lbl_802A968C:
/* 802A968C  EC C1 10 28 */	fsubs f6, f1, f2
/* 802A9690  EC 25 20 28 */	fsubs f1, f5, f4
/* 802A9694  EC 03 10 28 */	fsubs f0, f3, f2
/* 802A9698  EC 01 00 24 */	fdivs f0, f1, f0
/* 802A969C  EC 06 00 32 */	fmuls f0, f6, f0
/* 802A96A0  EC 24 00 2A */	fadds f1, f4, f0
/* 802A96A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A96A8  4C 82 00 20 */	bnelr 
/* 802A96AC  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 802A96B0  40 80 00 24 */	bge lbl_802A96D4
/* 802A96B4  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 802A96B8  40 81 00 0C */	ble lbl_802A96C4
/* 802A96BC  FC 20 28 90 */	fmr f1, f5
/* 802A96C0  4E 80 00 20 */	blr 
lbl_802A96C4:
/* 802A96C4  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 802A96C8  4C 80 00 20 */	bgelr 
/* 802A96CC  FC 20 20 90 */	fmr f1, f4
/* 802A96D0  4E 80 00 20 */	blr 
lbl_802A96D4:
/* 802A96D4  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 802A96D8  40 81 00 0C */	ble lbl_802A96E4
/* 802A96DC  FC 20 20 90 */	fmr f1, f4
/* 802A96E0  4E 80 00 20 */	blr 
lbl_802A96E4:
/* 802A96E4  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 802A96E8  4C 80 00 20 */	bgelr 
/* 802A96EC  FC 20 28 90 */	fmr f1, f5
/* 802A96F0  4E 80 00 20 */	blr 
