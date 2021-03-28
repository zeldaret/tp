lbl_801C2598:
/* 801C2598  28 04 00 00 */	cmplwi r4, 0
/* 801C259C  4D 82 00 20 */	beqlr 
/* 801C25A0  EC 01 18 24 */	fdivs f0, f1, f3
/* 801C25A4  EC 22 20 24 */	fdivs f1, f2, f4
/* 801C25A8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C25AC  40 81 00 08 */	ble lbl_801C25B4
/* 801C25B0  48 00 00 08 */	b lbl_801C25B8
lbl_801C25B4:
/* 801C25B4  FC 00 08 90 */	fmr f0, f1
lbl_801C25B8:
/* 801C25B8  D0 04 00 00 */	stfs f0, 0(r4)
/* 801C25BC  4E 80 00 20 */	blr 
