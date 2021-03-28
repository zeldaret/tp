lbl_800A7358:
/* 800A7358  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800A735C  7C 08 02 A6 */	mflr r0
/* 800A7360  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800A7364  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 800A7368  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 800A736C  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 800A7370  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 800A7374  39 61 00 80 */	addi r11, r1, 0x80
/* 800A7378  48 2B AE 65 */	bl _savegpr_29
/* 800A737C  7C 7E 1B 78 */	mr r30, r3
/* 800A7380  3C 80 80 39 */	lis r4, lit_3757@ha
/* 800A7384  3B E4 D6 58 */	addi r31, r4, lit_3757@l
/* 800A7388  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 800A738C  54 00 05 22 */	rlwinm r0, r0, 0, 0x14, 0x11
/* 800A7390  90 03 05 7C */	stw r0, 0x57c(r3)
/* 800A7394  48 06 E8 8D */	bl checkEventRun__9daAlink_cCFv
/* 800A7398  2C 03 00 00 */	cmpwi r3, 0
/* 800A739C  41 82 00 18 */	beq lbl_800A73B4
/* 800A73A0  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 800A73A4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00014000@ha */
/* 800A73A8  38 03 40 00 */	addi r0, r3, 0x4000 /* 0x00014000@l */
/* 800A73AC  7C 80 00 39 */	and. r0, r4, r0
/* 800A73B0  41 82 05 5C */	beq lbl_800A790C
lbl_800A73B4:
/* 800A73B4  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800A73B8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800A73BC  40 82 05 50 */	bne lbl_800A790C
/* 800A73C0  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800A73C4  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800A73C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800A73CC  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 800A73D0  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800A73D4  41 82 00 44 */	beq lbl_800A7418
/* 800A73D8  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 800A73DC  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 800A73E0  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 800A73E4  C0 1E 35 A0 */	lfs f0, 0x35a0(r30)
/* 800A73E8  D0 1E 35 94 */	stfs f0, 0x3594(r30)
/* 800A73EC  C0 1E 35 A4 */	lfs f0, 0x35a4(r30)
/* 800A73F0  D0 1E 35 98 */	stfs f0, 0x3598(r30)
/* 800A73F4  C0 1E 35 A8 */	lfs f0, 0x35a8(r30)
/* 800A73F8  D0 1E 35 9C */	stfs f0, 0x359c(r30)
/* 800A73FC  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 800A7400  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 800A7404  D0 1E 35 A0 */	stfs f0, 0x35a0(r30)
/* 800A7408  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A740C  D0 1E 35 A4 */	stfs f0, 0x35a4(r30)
/* 800A7410  C0 03 00 08 */	lfs f0, 8(r3)
/* 800A7414  D0 1E 35 A8 */	stfs f0, 0x35a8(r30)
lbl_800A7418:
/* 800A7418  80 1E 19 9C */	lwz r0, 0x199c(r30)
/* 800A741C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800A7420  41 82 00 34 */	beq lbl_800A7454
/* 800A7424  7F C3 F3 78 */	mr r3, r30
/* 800A7428  38 80 00 01 */	li r4, 1
/* 800A742C  38 A0 00 01 */	li r5, 1
/* 800A7430  48 01 40 89 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800A7434  2C 03 00 00 */	cmpwi r3, 0
/* 800A7438  40 82 00 1C */	bne lbl_800A7454
/* 800A743C  C0 5E 33 B4 */	lfs f2, 0x33b4(r30)
/* 800A7440  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 800A7444  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800A7448  EC 01 00 2A */	fadds f0, f1, f0
/* 800A744C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800A7450  41 81 00 10 */	bgt lbl_800A7460
lbl_800A7454:
/* 800A7454  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800A7458  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800A745C  41 82 01 D8 */	beq lbl_800A7634
lbl_800A7460:
/* 800A7460  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800A7464  38 9E 1A 60 */	addi r4, r30, 0x1a60
/* 800A7468  38 A1 00 28 */	addi r5, r1, 0x28
/* 800A746C  38 C1 00 0C */	addi r6, r1, 0xc
/* 800A7470  38 E0 00 00 */	li r7, 0
/* 800A7474  4B F7 65 35 */	bl fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii
/* 800A7478  2C 03 00 00 */	cmpwi r3, 0
/* 800A747C  41 82 00 10 */	beq lbl_800A748C
/* 800A7480  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 800A7484  60 00 20 00 */	ori r0, r0, 0x2000
/* 800A7488  90 1E 05 7C */	stw r0, 0x57c(r30)
lbl_800A748C:
/* 800A748C  7F C3 F3 78 */	mr r3, r30
/* 800A7490  38 80 00 01 */	li r4, 1
/* 800A7494  38 A0 00 01 */	li r5, 1
/* 800A7498  48 01 40 21 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800A749C  2C 03 00 00 */	cmpwi r3, 0
/* 800A74A0  41 82 00 28 */	beq lbl_800A74C8
/* 800A74A4  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 800A74A8  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 800A74AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800A74B0  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A74B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800A74B8  C0 03 00 08 */	lfs f0, 8(r3)
/* 800A74BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800A74C0  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800A74C4  48 00 01 58 */	b lbl_800A761C
lbl_800A74C8:
/* 800A74C8  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800A74CC  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800A74D0  40 82 00 F8 */	bne lbl_800A75C8
/* 800A74D4  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 800A74D8  60 00 10 00 */	ori r0, r0, 0x1000
/* 800A74DC  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 800A74E0  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800A74E4  38 7F 00 64 */	addi r3, r31, 0x64
/* 800A74E8  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800A74EC  EC 01 00 24 */	fdivs f0, f1, f0
/* 800A74F0  FC 00 02 10 */	fabs f0, f0
/* 800A74F4  FC 20 00 18 */	frsp f1, f0
/* 800A74F8  FF E0 08 90 */	fmr f31, f1
/* 800A74FC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A7500  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A7504  40 81 00 08 */	ble lbl_800A750C
/* 800A7508  FF E0 00 90 */	fmr f31, f0
lbl_800A750C:
/* 800A750C  38 61 00 28 */	addi r3, r1, 0x28
/* 800A7510  48 1B FC 19 */	bl atan2sX_Z__4cXyzCFv
/* 800A7514  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 800A7518  7C 60 18 50 */	subf r3, r0, r3
/* 800A751C  3C 63 00 01 */	addis r3, r3, 1
/* 800A7520  38 03 80 00 */	addi r0, r3, -32768
/* 800A7524  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800A7528  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800A752C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A7530  7C 63 02 14 */	add r3, r3, r0
/* 800A7534  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A7538  EF FF 00 32 */	fmuls f31, f31, f0
/* 800A753C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A7540  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800A7544  40 80 00 08 */	bge lbl_800A754C
/* 800A7548  FF E0 00 90 */	fmr f31, f0
lbl_800A754C:
/* 800A754C  C0 42 93 F8 */	lfs f2, lit_13700(r2)
/* 800A7550  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A7554  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A7558  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A755C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800A7560  3C 00 43 30 */	lis r0, 0x4330
/* 800A7564  90 01 00 48 */	stw r0, 0x48(r1)
/* 800A7568  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 800A756C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800A7570  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A7574  EF FF 00 32 */	fmuls f31, f31, f0
/* 800A7578  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800A757C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800A7580  40 81 00 08 */	ble lbl_800A7588
/* 800A7584  FF E0 00 90 */	fmr f31, f0
lbl_800A7588:
/* 800A7588  38 61 00 28 */	addi r3, r1, 0x28
/* 800A758C  7C 64 1B 78 */	mr r4, r3
/* 800A7590  C0 1E 33 98 */	lfs f0, 0x3398(r30)
/* 800A7594  EC 3F 00 32 */	fmuls f1, f31, f0
/* 800A7598  48 29 FB 41 */	bl PSVECScale
/* 800A759C  38 61 00 28 */	addi r3, r1, 0x28
/* 800A75A0  48 29 FB 99 */	bl PSVECSquareMag
/* 800A75A4  FF E0 08 90 */	fmr f31, f1
/* 800A75A8  38 7E 35 94 */	addi r3, r30, 0x3594
/* 800A75AC  48 29 FB 8D */	bl PSVECSquareMag
/* 800A75B0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 800A75B4  40 81 00 0C */	ble lbl_800A75C0
/* 800A75B8  C0 42 93 3C */	lfs f2, lit_7808(r2)
/* 800A75BC  48 00 00 60 */	b lbl_800A761C
lbl_800A75C0:
/* 800A75C0  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800A75C4  48 00 00 58 */	b lbl_800A761C
lbl_800A75C8:
/* 800A75C8  38 61 00 28 */	addi r3, r1, 0x28
/* 800A75CC  7C 64 1B 78 */	mr r4, r3
/* 800A75D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A75D4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A75D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A75DC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800A75E0  3C 00 43 30 */	lis r0, 0x4330
/* 800A75E4  90 01 00 48 */	stw r0, 0x48(r1)
/* 800A75E8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 800A75EC  EC 20 08 28 */	fsubs f1, f0, f1
/* 800A75F0  48 29 FA E9 */	bl PSVECScale
/* 800A75F4  38 61 00 28 */	addi r3, r1, 0x28
/* 800A75F8  48 29 FB 41 */	bl PSVECSquareMag
/* 800A75FC  FF E0 08 90 */	fmr f31, f1
/* 800A7600  38 7E 35 94 */	addi r3, r30, 0x3594
/* 800A7604  48 29 FB 35 */	bl PSVECSquareMag
/* 800A7608  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 800A760C  40 81 00 0C */	ble lbl_800A7618
/* 800A7610  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800A7614  48 00 00 08 */	b lbl_800A761C
lbl_800A7618:
/* 800A7618  C0 42 92 B8 */	lfs f2, lit_6040(r2)
lbl_800A761C:
/* 800A761C  38 7E 35 94 */	addi r3, r30, 0x3594
/* 800A7620  38 81 00 28 */	addi r4, r1, 0x28
/* 800A7624  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800A7628  FC 60 08 90 */	fmr f3, f1
/* 800A762C  48 1C 84 8D */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 800A7630  48 00 02 CC */	b lbl_800A78FC
lbl_800A7634:
/* 800A7634  88 1E 2F BD */	lbz r0, 0x2fbd(r30)
/* 800A7638  28 00 00 04 */	cmplwi r0, 4
/* 800A763C  40 82 02 A4 */	bne lbl_800A78E0
/* 800A7640  80 1E 19 9C */	lwz r0, 0x199c(r30)
/* 800A7644  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800A7648  41 82 02 98 */	beq lbl_800A78E0
/* 800A764C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A7650  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A7654  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 800A7658  7F A3 EB 78 */	mr r3, r29
/* 800A765C  38 9E 1A 60 */	addi r4, r30, 0x1a60
/* 800A7660  4B FC D0 01 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800A7664  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A7668  41 82 02 78 */	beq lbl_800A78E0
/* 800A766C  7F A3 EB 78 */	mr r3, r29
/* 800A7670  38 9E 1A 60 */	addi r4, r30, 0x1a60
/* 800A7674  38 A1 00 34 */	addi r5, r1, 0x34
/* 800A7678  4B FC D0 CD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800A767C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A7680  41 82 02 60 */	beq lbl_800A78E0
/* 800A7684  C3 E1 00 38 */	lfs f31, 0x38(r1)
/* 800A7688  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800A768C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800A7690  C0 03 15 44 */	lfs f0, 0x1544(r3)
/* 800A7694  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800A7698  4C 40 13 82 */	cror 2, 0, 2
/* 800A769C  40 82 02 44 */	bne lbl_800A78E0
/* 800A76A0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800A76A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800A76A8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A76AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800A76B0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 800A76B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800A76B8  38 61 00 10 */	addi r3, r1, 0x10
/* 800A76BC  48 29 FA 7D */	bl PSVECSquareMag
/* 800A76C0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A76C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A76C8  40 81 00 58 */	ble lbl_800A7720
/* 800A76CC  FC 00 08 34 */	frsqrte f0, f1
/* 800A76D0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A76D4  FC 44 00 32 */	fmul f2, f4, f0
/* 800A76D8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A76DC  FC 00 00 32 */	fmul f0, f0, f0
/* 800A76E0  FC 01 00 32 */	fmul f0, f1, f0
/* 800A76E4  FC 03 00 28 */	fsub f0, f3, f0
/* 800A76E8  FC 02 00 32 */	fmul f0, f2, f0
/* 800A76EC  FC 44 00 32 */	fmul f2, f4, f0
/* 800A76F0  FC 00 00 32 */	fmul f0, f0, f0
/* 800A76F4  FC 01 00 32 */	fmul f0, f1, f0
/* 800A76F8  FC 03 00 28 */	fsub f0, f3, f0
/* 800A76FC  FC 02 00 32 */	fmul f0, f2, f0
/* 800A7700  FC 44 00 32 */	fmul f2, f4, f0
/* 800A7704  FC 00 00 32 */	fmul f0, f0, f0
/* 800A7708  FC 01 00 32 */	fmul f0, f1, f0
/* 800A770C  FC 03 00 28 */	fsub f0, f3, f0
/* 800A7710  FC 02 00 32 */	fmul f0, f2, f0
/* 800A7714  FC 21 00 32 */	fmul f1, f1, f0
/* 800A7718  FC 20 08 18 */	frsp f1, f1
/* 800A771C  48 00 00 88 */	b lbl_800A77A4
lbl_800A7720:
/* 800A7720  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A7724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A7728  40 80 00 10 */	bge lbl_800A7738
/* 800A772C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A7730  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800A7734  48 00 00 70 */	b lbl_800A77A4
lbl_800A7738:
/* 800A7738  D0 21 00 08 */	stfs f1, 8(r1)
/* 800A773C  80 81 00 08 */	lwz r4, 8(r1)
/* 800A7740  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A7744  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A7748  7C 03 00 00 */	cmpw r3, r0
/* 800A774C  41 82 00 14 */	beq lbl_800A7760
/* 800A7750  40 80 00 40 */	bge lbl_800A7790
/* 800A7754  2C 03 00 00 */	cmpwi r3, 0
/* 800A7758  41 82 00 20 */	beq lbl_800A7778
/* 800A775C  48 00 00 34 */	b lbl_800A7790
lbl_800A7760:
/* 800A7760  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A7764  41 82 00 0C */	beq lbl_800A7770
/* 800A7768  38 00 00 01 */	li r0, 1
/* 800A776C  48 00 00 28 */	b lbl_800A7794
lbl_800A7770:
/* 800A7770  38 00 00 02 */	li r0, 2
/* 800A7774  48 00 00 20 */	b lbl_800A7794
lbl_800A7778:
/* 800A7778  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A777C  41 82 00 0C */	beq lbl_800A7788
/* 800A7780  38 00 00 05 */	li r0, 5
/* 800A7784  48 00 00 10 */	b lbl_800A7794
lbl_800A7788:
/* 800A7788  38 00 00 03 */	li r0, 3
/* 800A778C  48 00 00 08 */	b lbl_800A7794
lbl_800A7790:
/* 800A7790  38 00 00 04 */	li r0, 4
lbl_800A7794:
/* 800A7794  2C 00 00 01 */	cmpwi r0, 1
/* 800A7798  40 82 00 0C */	bne lbl_800A77A4
/* 800A779C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A77A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800A77A4:
/* 800A77A4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 800A77A8  48 1B FE CD */	bl cM_atan2s__Fff
/* 800A77AC  7C 60 07 34 */	extsh r0, r3
/* 800A77B0  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A77B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A77B8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800A77BC  3C 00 43 30 */	lis r0, 0x4330
/* 800A77C0  90 01 00 48 */	stw r0, 0x48(r1)
/* 800A77C4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 800A77C8  EC 20 08 28 */	fsubs f1, f0, f1
/* 800A77CC  C0 02 98 38 */	lfs f0, lit_59593(r2)
/* 800A77D0  EC 20 00 72 */	fmuls f1, f0, f1
/* 800A77D4  C0 02 98 3C */	lfs f0, lit_59594(r2)
/* 800A77D8  EF C1 00 28 */	fsubs f30, f1, f0
/* 800A77DC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A77E0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800A77E4  38 61 00 1C */	addi r3, r1, 0x1c
/* 800A77E8  38 81 00 34 */	addi r4, r1, 0x34
/* 800A77EC  48 1B F7 5D */	bl normalizeZP__4cXyzFv
/* 800A77F0  C0 42 94 D4 */	lfs f2, lit_18929(r2)
/* 800A77F4  A8 1E 31 22 */	lha r0, 0x3122(r30)
/* 800A77F8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A77FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A7800  90 01 00 54 */	stw r0, 0x54(r1)
/* 800A7804  3C 60 43 30 */	lis r3, 0x4330
/* 800A7808  90 61 00 50 */	stw r3, 0x50(r1)
/* 800A780C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 800A7810  EC 00 08 28 */	fsubs f0, f0, f1
/* 800A7814  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A7818  FC 00 00 1E */	fctiwz f0, f0
/* 800A781C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 800A7820  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 800A7824  7C 00 07 34 */	extsh r0, r0
/* 800A7828  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800A782C  90 01 00 64 */	stw r0, 0x64(r1)
/* 800A7830  90 61 00 60 */	stw r3, 0x60(r1)
/* 800A7834  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 800A7838  EC 20 08 28 */	fsubs f1, f0, f1
/* 800A783C  C0 02 98 3C */	lfs f0, lit_59594(r2)
/* 800A7840  EC 01 00 28 */	fsubs f0, f1, f0
/* 800A7844  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800A7848  40 80 00 28 */	bge lbl_800A7870
/* 800A784C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800A7850  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A7854  41 82 00 10 */	beq lbl_800A7864
/* 800A7858  38 7F 18 D0 */	addi r3, r31, 0x18d0
/* 800A785C  C0 43 00 08 */	lfs f2, 8(r3)
/* 800A7860  48 00 00 30 */	b lbl_800A7890
lbl_800A7864:
/* 800A7864  38 7F 00 64 */	addi r3, r31, 0x64
/* 800A7868  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 800A786C  48 00 00 24 */	b lbl_800A7890
lbl_800A7870:
/* 800A7870  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800A7874  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A7878  41 82 00 10 */	beq lbl_800A7888
/* 800A787C  38 7F 1D 98 */	addi r3, r31, 0x1d98
/* 800A7880  C0 43 00 70 */	lfs f2, 0x70(r3)
/* 800A7884  48 00 00 0C */	b lbl_800A7890
lbl_800A7888:
/* 800A7888  38 7F 02 74 */	addi r3, r31, 0x274
/* 800A788C  C0 43 00 64 */	lfs f2, 0x64(r3)
lbl_800A7890:
/* 800A7890  C0 22 98 40 */	lfs f1, lit_59595(r2)
/* 800A7894  EC 1E 07 F2 */	fmuls f0, f30, f31
/* 800A7898  EC 61 00 32 */	fmuls f3, f1, f0
/* 800A789C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A78A0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800A78A4  40 81 00 08 */	ble lbl_800A78AC
/* 800A78A8  FC 60 00 90 */	fmr f3, f0
lbl_800A78AC:
/* 800A78AC  38 61 00 34 */	addi r3, r1, 0x34
/* 800A78B0  7C 64 1B 78 */	mr r4, r3
/* 800A78B4  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800A78B8  EC 02 00 F2 */	fmuls f0, f2, f3
/* 800A78BC  EC 21 00 2A */	fadds f1, f1, f0
/* 800A78C0  48 29 F8 19 */	bl PSVECScale
/* 800A78C4  38 7E 35 94 */	addi r3, r30, 0x3594
/* 800A78C8  38 81 00 34 */	addi r4, r1, 0x34
/* 800A78CC  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800A78D0  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800A78D4  C0 62 93 F8 */	lfs f3, lit_13700(r2)
/* 800A78D8  48 1C 81 E1 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 800A78DC  48 00 00 20 */	b lbl_800A78FC
lbl_800A78E0:
/* 800A78E0  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 800A78E4  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 800A78E8  D0 1E 35 94 */	stfs f0, 0x3594(r30)
/* 800A78EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A78F0  D0 1E 35 98 */	stfs f0, 0x3598(r30)
/* 800A78F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 800A78F8  D0 1E 35 9C */	stfs f0, 0x359c(r30)
lbl_800A78FC:
/* 800A78FC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800A7900  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800A7904  90 01 00 44 */	stw r0, 0x44(r1)
/* 800A7908  48 00 00 20 */	b lbl_800A7928
lbl_800A790C:
/* 800A790C  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 800A7910  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 800A7914  D0 1E 35 94 */	stfs f0, 0x3594(r30)
/* 800A7918  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A791C  D0 1E 35 98 */	stfs f0, 0x3598(r30)
/* 800A7920  C0 03 00 08 */	lfs f0, 8(r3)
/* 800A7924  D0 1E 35 9C */	stfs f0, 0x359c(r30)
lbl_800A7928:
/* 800A7928  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 800A792C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 800A7930  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 800A7934  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 800A7938  39 61 00 80 */	addi r11, r1, 0x80
/* 800A793C  48 2B A8 ED */	bl _restgpr_29
/* 800A7940  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800A7944  7C 08 03 A6 */	mtlr r0
/* 800A7948  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800A794C  4E 80 00 20 */	blr 
