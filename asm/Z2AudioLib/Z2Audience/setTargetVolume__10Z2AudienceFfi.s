lbl_802BD90C:
/* 802BD90C  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BD910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BD914  40 80 00 08 */	bge lbl_802BD91C
/* 802BD918  FC 20 00 90 */	fmr f1, f0
lbl_802BD91C:
/* 802BD91C  1C 04 00 74 */	mulli r0, r4, 0x74
/* 802BD920  7C 63 02 14 */	add r3, r3, r0
/* 802BD924  D0 23 01 90 */	stfs f1, 0x190(r3)
/* 802BD928  4E 80 00 20 */	blr 
