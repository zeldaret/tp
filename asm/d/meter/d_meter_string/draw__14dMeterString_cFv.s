lbl_8020F1B0:
/* 8020F1B0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8020F1B4  7C 08 02 A6 */	mflr r0
/* 8020F1B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8020F1BC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8020F1C0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8020F1C4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8020F1C8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8020F1CC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8020F1D0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8020F1D4  7C 7E 1B 78 */	mr r30, r3
/* 8020F1D8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8020F1DC  28 00 00 00 */	cmplwi r0, 0
/* 8020F1E0  41 82 02 94 */	beq lbl_8020F474
/* 8020F1E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020F1E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020F1EC  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 8020F1F0  28 00 00 00 */	cmplwi r0, 0
/* 8020F1F4  40 82 02 80 */	bne lbl_8020F474
/* 8020F1F8  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 8020F1FC  7F E3 FB 78 */	mr r3, r31
/* 8020F200  81 9F 00 00 */	lwz r12, 0(r31)
/* 8020F204  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8020F208  7D 89 03 A6 */	mtctr r12
/* 8020F20C  4E 80 04 21 */	bctrl 
/* 8020F210  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020F214  38 83 EB C8 */	addi r4, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020F218  A8 04 0C 02 */	lha r0, 0xc02(r4)
/* 8020F21C  C8 62 AE 70 */	lfd f3, lit_3824(r2)
/* 8020F220  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8020F224  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020F228  3C 60 43 30 */	lis r3, 0x4330
/* 8020F22C  90 61 00 08 */	stw r3, 8(r1)
/* 8020F230  C8 01 00 08 */	lfd f0, 8(r1)
/* 8020F234  EC 40 18 28 */	fsubs f2, f0, f3
/* 8020F238  C0 22 AE 5C */	lfs f1, lit_3819(r2)
/* 8020F23C  A8 04 0C 00 */	lha r0, 0xc00(r4)
/* 8020F240  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8020F244  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020F248  90 61 00 10 */	stw r3, 0x10(r1)
/* 8020F24C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8020F250  EC 00 18 28 */	fsubs f0, f0, f3
/* 8020F254  EC 81 00 2A */	fadds f4, f1, f0
/* 8020F258  EF E2 20 2A */	fadds f31, f2, f4
/* 8020F25C  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8020F260  C0 02 AE 58 */	lfs f0, lit_3762(r2)
/* 8020F264  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8020F268  40 81 02 0C */	ble lbl_8020F474
/* 8020F26C  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 8020F270  40 80 02 04 */	bge lbl_8020F474
/* 8020F274  C3 C2 AE 60 */	lfs f30, lit_3820(r2)
/* 8020F278  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8020F27C  40 80 00 30 */	bge lbl_8020F2AC
/* 8020F280  C0 04 0B FC */	lfs f0, 0xbfc(r4)
/* 8020F284  EC 02 00 2A */	fadds f0, f2, f0
/* 8020F288  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8020F28C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8020F290  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8020F294  40 81 00 08 */	ble lbl_8020F29C
/* 8020F298  D0 3E 00 2C */	stfs f1, 0x2c(r30)
lbl_8020F29C:
/* 8020F29C  7F C3 F3 78 */	mr r3, r30
/* 8020F2A0  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8020F2A4  48 00 03 C9 */	bl playBckAnimation__14dMeterString_cFf
/* 8020F2A8  48 00 00 9C */	b lbl_8020F344
lbl_8020F2AC:
/* 8020F2AC  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 8020F2B0  40 80 00 10 */	bge lbl_8020F2C0
/* 8020F2B4  EC 02 F0 2A */	fadds f0, f2, f30
/* 8020F2B8  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8020F2BC  48 00 00 88 */	b lbl_8020F344
lbl_8020F2C0:
/* 8020F2C0  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 8020F2C4  40 80 00 80 */	bge lbl_8020F344
/* 8020F2C8  EC 02 F0 2A */	fadds f0, f2, f30
/* 8020F2CC  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8020F2D0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8020F2D4  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8020F2D8  FC 00 00 1E */	fctiwz f0, f0
/* 8020F2DC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8020F2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020F2E4  A8 84 0C 02 */	lha r4, 0xc02(r4)
/* 8020F2E8  7C 00 07 34 */	extsh r0, r0
/* 8020F2EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8020F2F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020F2F4  90 61 00 08 */	stw r3, 8(r1)
/* 8020F2F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8020F2FC  EC 20 18 28 */	fsubs f1, f0, f3
/* 8020F300  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8020F304  90 61 00 18 */	stw r3, 0x18(r1)
/* 8020F308  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8020F30C  EC 00 18 28 */	fsubs f0, f0, f3
/* 8020F310  EC 41 00 32 */	fmuls f2, f1, f0
/* 8020F314  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8020F318  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020F31C  90 61 00 20 */	stw r3, 0x20(r1)
/* 8020F320  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8020F324  EC 20 18 28 */	fsubs f1, f0, f3
/* 8020F328  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8020F32C  90 61 00 28 */	stw r3, 0x28(r1)
/* 8020F330  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8020F334  EC 00 18 28 */	fsubs f0, f0, f3
/* 8020F338  EC 01 00 32 */	fmuls f0, f1, f0
/* 8020F33C  EC 02 00 24 */	fdivs f0, f2, f0
/* 8020F340  FF C0 00 90 */	fmr f30, f0
lbl_8020F344:
/* 8020F344  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8020F348  FC 20 F0 90 */	fmr f1, f30
/* 8020F34C  48 04 64 85 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020F350  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8020F354  A8 1E 00 38 */	lha r0, 0x38(r30)
/* 8020F358  C8 42 AE 70 */	lfd f2, lit_3824(r2)
/* 8020F35C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8020F360  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8020F364  3C A0 43 30 */	lis r5, 0x4330
/* 8020F368  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8020F36C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8020F370  EC 20 10 28 */	fsubs f1, f0, f2
/* 8020F374  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020F378  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020F37C  C0 04 0B F4 */	lfs f0, 0xbf4(r4)
/* 8020F380  EC 21 00 2A */	fadds f1, f1, f0
/* 8020F384  A8 1E 00 3A */	lha r0, 0x3a(r30)
/* 8020F388  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8020F38C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020F390  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8020F394  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8020F398  EC 40 10 28 */	fsubs f2, f0, f2
/* 8020F39C  C0 04 0B F8 */	lfs f0, 0xbf8(r4)
/* 8020F3A0  EC 42 00 2A */	fadds f2, f2, f0
/* 8020F3A4  48 04 52 0D */	bl paneTrans__8CPaneMgrFff
/* 8020F3A8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020F3AC  38 83 EB C8 */	addi r4, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020F3B0  C0 24 0B F0 */	lfs f1, 0xbf0(r4)
/* 8020F3B4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8020F3B8  80 63 00 04 */	lwz r3, 4(r3)
/* 8020F3BC  C0 04 0B EC */	lfs f0, 0xbec(r4)
/* 8020F3C0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020F3C4  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8020F3C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8020F3CC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020F3D0  7D 89 03 A6 */	mtctr r12
/* 8020F3D4  4E 80 04 21 */	bctrl 
/* 8020F3D8  80 7E 00 04 */	lwz r3, 4(r30)
/* 8020F3DC  C0 22 AE 58 */	lfs f1, lit_3762(r2)
/* 8020F3E0  FC 40 08 90 */	fmr f2, f1
/* 8020F3E4  7F E4 FB 78 */	mr r4, r31
/* 8020F3E8  48 0E 9A ED */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8020F3EC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8020F3F0  C0 02 AE 58 */	lfs f0, lit_3762(r2)
/* 8020F3F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8020F3F8  40 81 00 10 */	ble lbl_8020F408
/* 8020F3FC  7F C3 F3 78 */	mr r3, r30
/* 8020F400  48 00 02 ED */	bl drawPikari__14dMeterString_cFv
/* 8020F404  48 00 00 54 */	b lbl_8020F458
lbl_8020F408:
/* 8020F408  C0 02 AE 64 */	lfs f0, lit_3821(r2)
/* 8020F40C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020F410  40 82 00 48 */	bne lbl_8020F458
/* 8020F414  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8020F418  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020F41C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020F420  A8 03 0C 1C */	lha r0, 0xc1c(r3)
/* 8020F424  C8 22 AE 70 */	lfd f1, lit_3824(r2)
/* 8020F428  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8020F42C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8020F430  3C 00 43 30 */	lis r0, 0x4330
/* 8020F434  90 01 00 28 */	stw r0, 0x28(r1)
/* 8020F438  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8020F43C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8020F440  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8020F444  40 81 00 14 */	ble lbl_8020F458
/* 8020F448  C0 22 AE 68 */	lfs f1, lit_3822(r2)
/* 8020F44C  C0 03 0C 18 */	lfs f0, 0xc18(r3)
/* 8020F450  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020F454  D0 1E 00 30 */	stfs f0, 0x30(r30)
lbl_8020F458:
/* 8020F458  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8020F45C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8020F460  4C 41 13 82 */	cror 2, 1, 2
/* 8020F464  40 82 00 10 */	bne lbl_8020F474
/* 8020F468  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020F46C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020F470  48 00 D7 91 */	bl resetMeterString__13dMeter2Info_cFv
lbl_8020F474:
/* 8020F474  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8020F478  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8020F47C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8020F480  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8020F484  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8020F488  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8020F48C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8020F490  7C 08 03 A6 */	mtlr r0
/* 8020F494  38 21 00 60 */	addi r1, r1, 0x60
/* 8020F498  4E 80 00 20 */	blr 
