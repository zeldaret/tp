lbl_8026EDE4:
/* 8026EDE4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8026EDE8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8026EDEC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026EDF0  40 80 00 08 */	bge lbl_8026EDF8
/* 8026EDF4  D0 23 00 0C */	stfs f1, 0xc(r3)
lbl_8026EDF8:
/* 8026EDF8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8026EDFC  C0 24 00 04 */	lfs f1, 4(r4)
/* 8026EE00  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026EE04  40 80 00 08 */	bge lbl_8026EE0C
/* 8026EE08  D0 23 00 10 */	stfs f1, 0x10(r3)
lbl_8026EE0C:
/* 8026EE0C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8026EE10  C0 24 00 08 */	lfs f1, 8(r4)
/* 8026EE14  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026EE18  4C 80 00 20 */	bgelr 
/* 8026EE1C  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8026EE20  4E 80 00 20 */	blr 
