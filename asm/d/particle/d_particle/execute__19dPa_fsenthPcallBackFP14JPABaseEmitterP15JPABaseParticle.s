lbl_8004DCA0:
/* 8004DCA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004DCA4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8004DCA8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8004DCAC  88 03 0F 3D */	lbz r0, 0xf3d(r3)
/* 8004DCB0  28 00 00 01 */	cmplwi r0, 1
/* 8004DCB4  40 82 00 3C */	bne lbl_8004DCF0
/* 8004DCB8  C0 23 0F 40 */	lfs f1, 0xf40(r3)
/* 8004DCBC  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004DCC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004DCC4  40 81 00 2C */	ble lbl_8004DCF0
/* 8004DCC8  C0 02 85 40 */	lfs f0, lit_3880(r2)
/* 8004DCCC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8004DCD0  FC 00 00 1E */	fctiwz f0, f0
/* 8004DCD4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8004DCD8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8004DCDC  98 04 00 BB */	stb r0, 0xbb(r4)
/* 8004DCE0  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 8004DCE4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8004DCE8  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 8004DCEC  48 00 00 18 */	b lbl_8004DD04
lbl_8004DCF0:
/* 8004DCF0  38 00 00 00 */	li r0, 0
/* 8004DCF4  98 04 00 BB */	stb r0, 0xbb(r4)
/* 8004DCF8  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 8004DCFC  60 00 00 04 */	ori r0, r0, 4
/* 8004DD00  90 04 00 F4 */	stw r0, 0xf4(r4)
lbl_8004DD04:
/* 8004DD04  38 21 00 10 */	addi r1, r1, 0x10
/* 8004DD08  4E 80 00 20 */	blr 
