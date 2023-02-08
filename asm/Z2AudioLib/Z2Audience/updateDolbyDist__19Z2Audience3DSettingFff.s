lbl_802BC6F8:
/* 802BC6F8  C0 62 C0 AC */	lfs f3, lit_896(r2)
/* 802BC6FC  C0 8D 82 64 */	lfs f4, DOLBY_FLONT_DISTANCE_MAX__7Z2Param(r13)
/* 802BC700  EC 03 01 32 */	fmuls f0, f3, f4
/* 802BC704  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BC708  40 81 00 10 */	ble lbl_802BC718
/* 802BC70C  EC 03 00 72 */	fmuls f0, f3, f1
/* 802BC710  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 802BC714  48 00 00 08 */	b lbl_802BC71C
lbl_802BC718:
/* 802BC718  D0 83 00 44 */	stfs f4, 0x44(r3)
lbl_802BC71C:
/* 802BC71C  C0 22 C0 E0 */	lfs f1, lit_1059(r2)
/* 802BC720  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 802BC724  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BC728  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802BC72C  40 80 00 08 */	bge lbl_802BC734
/* 802BC730  FC 40 00 90 */	fmr f2, f0
lbl_802BC734:
/* 802BC734  C0 0D 82 68 */	lfs f0, DOLBY_BEHIND_DISTANCE_MAX__7Z2Param(r13)
/* 802BC738  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802BC73C  40 81 00 0C */	ble lbl_802BC748
/* 802BC740  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 802BC744  48 00 00 08 */	b lbl_802BC74C
lbl_802BC748:
/* 802BC748  D0 03 00 48 */	stfs f0, 0x48(r3)
lbl_802BC74C:
/* 802BC74C  38 00 00 00 */	li r0, 0
/* 802BC750  98 03 01 25 */	stb r0, 0x125(r3)
/* 802BC754  4E 80 00 20 */	blr 
