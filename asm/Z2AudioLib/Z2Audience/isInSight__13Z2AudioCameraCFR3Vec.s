lbl_802BCCC0:
/* 802BCCC0  C0 24 00 08 */	lfs f1, 8(r4)
/* 802BCCC4  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BCCC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BCCCC  4C 41 13 82 */	cror 2, 1, 2
/* 802BCCD0  40 82 00 0C */	bne lbl_802BCCDC
/* 802BCCD4  38 60 00 00 */	li r3, 0
/* 802BCCD8  4E 80 00 20 */	blr 
lbl_802BCCDC:
/* 802BCCDC  FC 20 0A 10 */	fabs f1, f1
/* 802BCCE0  C0 04 00 00 */	lfs f0, 0(r4)
/* 802BCCE4  FC 40 02 10 */	fabs f2, f0
/* 802BCCE8  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 802BCCEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 802BCCF0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802BCCF4  40 81 00 0C */	ble lbl_802BCD00
/* 802BCCF8  38 60 00 00 */	li r3, 0
/* 802BCCFC  4E 80 00 20 */	blr 
lbl_802BCD00:
/* 802BCD00  C0 04 00 04 */	lfs f0, 4(r4)
/* 802BCD04  FC 40 02 10 */	fabs f2, f0
/* 802BCD08  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 802BCD0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 802BCD10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802BCD14  7C 00 00 26 */	mfcr r0
/* 802BCD18  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 802BCD1C  7C 00 00 34 */	cntlzw r0, r0
/* 802BCD20  54 03 D9 7E */	srwi r3, r0, 5
/* 802BCD24  4E 80 00 20 */	blr 
