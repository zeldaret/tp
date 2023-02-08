lbl_802BDD00:
/* 802BDD00  54 80 10 3A */	slwi r0, r4, 2
/* 802BDD04  7C 83 02 14 */	add r4, r3, r0
/* 802BDD08  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802BDD0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BDD10  40 81 00 0C */	ble lbl_802BDD1C
/* 802BDD14  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 802BDD18  4E 80 00 20 */	blr 
lbl_802BDD1C:
/* 802BDD1C  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 802BDD20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BDD24  40 80 00 0C */	bge lbl_802BDD30
/* 802BDD28  C0 23 00 5C */	lfs f1, 0x5c(r3)
/* 802BDD2C  4E 80 00 20 */	blr 
lbl_802BDD30:
/* 802BDD30  C0 63 00 5C */	lfs f3, 0x5c(r3)
/* 802BDD34  C0 44 00 F4 */	lfs f2, 0xf4(r4)
/* 802BDD38  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BDD3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 802BDD40  EC 23 00 2A */	fadds f1, f3, f0
/* 802BDD44  4E 80 00 20 */	blr 
