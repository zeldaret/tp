lbl_8026B280:
/* 8026B280  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8026B284  7C 08 02 A6 */	mflr r0
/* 8026B288  90 01 00 54 */	stw r0, 0x54(r1)
/* 8026B28C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8026B290  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8026B294  39 61 00 40 */	addi r11, r1, 0x40
/* 8026B298  48 0F 6F 45 */	bl _savegpr_29
/* 8026B29C  7C 7D 1B 78 */	mr r29, r3
/* 8026B2A0  7C 9F 23 78 */	mr r31, r4
/* 8026B2A4  7C BE 2B 78 */	mr r30, r5
/* 8026B2A8  C0 44 00 00 */	lfs f2, 0(r4)
/* 8026B2AC  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8026B2B0  EC 82 08 2A */	fadds f4, f2, f1
/* 8026B2B4  C0 63 00 00 */	lfs f3, 0(r3)
/* 8026B2B8  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 8026B2BC  40 80 00 18 */	bge lbl_8026B2D4
/* 8026B2C0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026B2C4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8026B2C8  40 80 00 0C */	bge lbl_8026B2D4
/* 8026B2CC  38 60 00 00 */	li r3, 0
/* 8026B2D0  48 00 01 F8 */	b lbl_8026B4C8
lbl_8026B2D4:
/* 8026B2D4  EC 42 08 28 */	fsubs f2, f2, f1
/* 8026B2D8  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8026B2DC  40 81 00 18 */	ble lbl_8026B2F4
/* 8026B2E0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026B2E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026B2E8  40 81 00 0C */	ble lbl_8026B2F4
/* 8026B2EC  38 60 00 00 */	li r3, 0
/* 8026B2F0  48 00 01 D8 */	b lbl_8026B4C8
lbl_8026B2F4:
/* 8026B2F4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8026B2F8  EC 82 08 2A */	fadds f4, f2, f1
/* 8026B2FC  C0 7D 00 04 */	lfs f3, 4(r29)
/* 8026B300  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 8026B304  40 80 00 18 */	bge lbl_8026B31C
/* 8026B308  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8026B30C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8026B310  40 80 00 0C */	bge lbl_8026B31C
/* 8026B314  38 60 00 00 */	li r3, 0
/* 8026B318  48 00 01 B0 */	b lbl_8026B4C8
lbl_8026B31C:
/* 8026B31C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8026B320  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8026B324  40 81 00 18 */	ble lbl_8026B33C
/* 8026B328  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8026B32C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026B330  40 81 00 0C */	ble lbl_8026B33C
/* 8026B334  38 60 00 00 */	li r3, 0
/* 8026B338  48 00 01 90 */	b lbl_8026B4C8
lbl_8026B33C:
/* 8026B33C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8026B340  EC 82 08 2A */	fadds f4, f2, f1
/* 8026B344  C0 7D 00 08 */	lfs f3, 8(r29)
/* 8026B348  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 8026B34C  40 80 00 18 */	bge lbl_8026B364
/* 8026B350  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8026B354  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8026B358  40 80 00 0C */	bge lbl_8026B364
/* 8026B35C  38 60 00 00 */	li r3, 0
/* 8026B360  48 00 01 68 */	b lbl_8026B4C8
lbl_8026B364:
/* 8026B364  EC 22 08 28 */	fsubs f1, f2, f1
/* 8026B368  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8026B36C  40 81 00 18 */	ble lbl_8026B384
/* 8026B370  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8026B374  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B378  40 81 00 0C */	ble lbl_8026B384
/* 8026B37C  38 60 00 00 */	li r3, 0
/* 8026B380  48 00 01 48 */	b lbl_8026B4C8
lbl_8026B384:
/* 8026B384  38 7D 00 0C */	addi r3, r29, 0xc
/* 8026B388  7F A4 EB 78 */	mr r4, r29
/* 8026B38C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8026B390  48 0D BD 25 */	bl PSVECSubtract
/* 8026B394  38 61 00 20 */	addi r3, r1, 0x20
/* 8026B398  48 0D BD A1 */	bl PSVECSquareMag
/* 8026B39C  FF E0 08 90 */	fmr f31, f1
/* 8026B3A0  FC 00 FA 10 */	fabs f0, f31
/* 8026B3A4  FC 20 00 18 */	frsp f1, f0
/* 8026B3A8  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026B3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B3B0  40 80 00 0C */	bge lbl_8026B3BC
/* 8026B3B4  38 60 00 00 */	li r3, 0
/* 8026B3B8  48 00 01 10 */	b lbl_8026B4C8
lbl_8026B3BC:
/* 8026B3BC  7F E3 FB 78 */	mr r3, r31
/* 8026B3C0  7F A4 EB 78 */	mr r4, r29
/* 8026B3C4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8026B3C8  48 0D BC ED */	bl PSVECSubtract
/* 8026B3CC  38 61 00 14 */	addi r3, r1, 0x14
/* 8026B3D0  38 81 00 20 */	addi r4, r1, 0x20
/* 8026B3D4  48 0D BD C1 */	bl PSVECDotProduct
/* 8026B3D8  EC 21 F8 24 */	fdivs f1, f1, f31
/* 8026B3DC  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026B3E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B3E4  41 80 00 10 */	blt lbl_8026B3F4
/* 8026B3E8  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026B3EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B3F0  40 81 00 98 */	ble lbl_8026B488
lbl_8026B3F4:
/* 8026B3F4  38 7D 00 0C */	addi r3, r29, 0xc
/* 8026B3F8  7F E4 FB 78 */	mr r4, r31
/* 8026B3FC  48 0D BF A1 */	bl PSVECSquareDistance
/* 8026B400  FF E0 08 90 */	fmr f31, f1
/* 8026B404  7F A3 EB 78 */	mr r3, r29
/* 8026B408  7F E4 FB 78 */	mr r4, r31
/* 8026B40C  48 0D BF 91 */	bl PSVECSquareDistance
/* 8026B410  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8026B414  40 80 00 38 */	bge lbl_8026B44C
/* 8026B418  7F E3 FB 78 */	mr r3, r31
/* 8026B41C  7F A4 EB 78 */	mr r4, r29
/* 8026B420  4B FF FE 19 */	bl cM3d_Cross_SphPnt__FPC8cM3dGSphPC3Vec
/* 8026B424  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026B428  41 82 00 58 */	beq lbl_8026B480
/* 8026B42C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8026B430  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8026B434  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8026B438  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8026B43C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8026B440  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8026B444  38 60 00 01 */	li r3, 1
/* 8026B448  48 00 00 80 */	b lbl_8026B4C8
lbl_8026B44C:
/* 8026B44C  7F E3 FB 78 */	mr r3, r31
/* 8026B450  38 9D 00 0C */	addi r4, r29, 0xc
/* 8026B454  4B FF FD E5 */	bl cM3d_Cross_SphPnt__FPC8cM3dGSphPC3Vec
/* 8026B458  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026B45C  41 82 00 24 */	beq lbl_8026B480
/* 8026B460  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026B464  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8026B468  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8026B46C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8026B470  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8026B474  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8026B478  38 60 00 01 */	li r3, 1
/* 8026B47C  48 00 00 4C */	b lbl_8026B4C8
lbl_8026B480:
/* 8026B480  38 60 00 00 */	li r3, 0
/* 8026B484  48 00 00 44 */	b lbl_8026B4C8
lbl_8026B488:
/* 8026B488  38 61 00 20 */	addi r3, r1, 0x20
/* 8026B48C  38 81 00 08 */	addi r4, r1, 8
/* 8026B490  48 0D BC 49 */	bl PSVECScale
/* 8026B494  38 61 00 08 */	addi r3, r1, 8
/* 8026B498  7F A4 EB 78 */	mr r4, r29
/* 8026B49C  7F C5 F3 78 */	mr r5, r30
/* 8026B4A0  48 0D BB F1 */	bl PSVECAdd
/* 8026B4A4  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 8026B4A8  7F C3 F3 78 */	mr r3, r30
/* 8026B4AC  7F E4 FB 78 */	mr r4, r31
/* 8026B4B0  48 0D BE ED */	bl PSVECSquareDistance
/* 8026B4B4  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 8026B4B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026B4BC  4C 40 13 82 */	cror 2, 0, 2
/* 8026B4C0  7C 00 00 26 */	mfcr r0
/* 8026B4C4  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
lbl_8026B4C8:
/* 8026B4C8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8026B4CC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8026B4D0  39 61 00 40 */	addi r11, r1, 0x40
/* 8026B4D4  48 0F 6D 55 */	bl _restgpr_29
/* 8026B4D8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8026B4DC  7C 08 03 A6 */	mtlr r0
/* 8026B4E0  38 21 00 50 */	addi r1, r1, 0x50
/* 8026B4E4  4E 80 00 20 */	blr 
