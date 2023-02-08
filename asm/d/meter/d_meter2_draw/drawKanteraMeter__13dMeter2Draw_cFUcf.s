lbl_8021AF78:
/* 8021AF78  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8021AF7C  7C 08 02 A6 */	mflr r0
/* 8021AF80  90 01 00 74 */	stw r0, 0x74(r1)
/* 8021AF84  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8021AF88  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8021AF8C  39 61 00 60 */	addi r11, r1, 0x60
/* 8021AF90  48 14 72 4D */	bl _savegpr_29
/* 8021AF94  7C 7D 1B 78 */	mr r29, r3
/* 8021AF98  FF E0 08 90 */	fmr f31, f1
/* 8021AF9C  54 9E 15 BA */	rlwinm r30, r4, 2, 0x16, 0x1d
/* 8021AFA0  7C 7D F2 14 */	add r3, r29, r30
/* 8021AFA4  83 E3 03 2C */	lwz r31, 0x32c(r3)
/* 8021AFA8  80 62 D1 90 */	lwz r3, lit_8746(r2)
/* 8021AFAC  80 02 D1 94 */	lwz r0, data_80456B94(r2)
/* 8021AFB0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8021AFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021AFB8  80 62 D1 98 */	lwz r3, lit_8747(r2)
/* 8021AFBC  80 02 D1 9C */	lwz r0, data_80456B9C(r2)
/* 8021AFC0  90 61 00 08 */	stw r3, 8(r1)
/* 8021AFC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8021AFC8  C0 02 AE 84 */	lfs f0, lit_4183(r2)
/* 8021AFCC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8021AFD0  40 82 00 10 */	bne lbl_8021AFE0
/* 8021AFD4  7F E3 FB 78 */	mr r3, r31
/* 8021AFD8  48 03 A8 51 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021AFDC  FF E0 08 90 */	fmr f31, f1
lbl_8021AFE0:
/* 8021AFE0  38 61 00 24 */	addi r3, r1, 0x24
/* 8021AFE4  80 9F 00 04 */	lwz r4, 4(r31)
/* 8021AFE8  38 A0 00 00 */	li r5, 0
/* 8021AFEC  48 0D C9 BD */	bl getGlbVtx__7J2DPaneCFUc
/* 8021AFF0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8021AFF4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8021AFF8  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8021AFFC  90 01 00 40 */	stw r0, 0x40(r1)
/* 8021B000  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8021B004  90 01 00 44 */	stw r0, 0x44(r1)
/* 8021B008  38 61 00 18 */	addi r3, r1, 0x18
/* 8021B00C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8021B010  38 A0 00 03 */	li r5, 3
/* 8021B014  48 0D C9 95 */	bl getGlbVtx__7J2DPaneCFUc
/* 8021B018  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8021B01C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8021B020  90 61 00 30 */	stw r3, 0x30(r1)
/* 8021B024  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021B028  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8021B02C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8021B030  7F FD F2 14 */	add r31, r29, r30
/* 8021B034  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8021B038  C0 62 AE E0 */	lfs f3, lit_8774(r2)
/* 8021B03C  C0 42 AE 94 */	lfs f2, lit_4922(r2)
/* 8021B040  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8021B044  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8021B048  EC 01 00 2A */	fadds f0, f1, f0
/* 8021B04C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8021B050  EC 23 00 2A */	fadds f1, f3, f0
/* 8021B054  38 81 00 10 */	addi r4, r1, 0x10
/* 8021B058  7C 04 F4 2E */	lfsx f0, r4, r30
/* 8021B05C  EC 21 00 2A */	fadds f1, f1, f0
/* 8021B060  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8021B064  38 81 00 08 */	addi r4, r1, 8
/* 8021B068  7C 04 F4 2E */	lfsx f0, r4, r30
/* 8021B06C  EC 42 00 2A */	fadds f2, f2, f0
/* 8021B070  4B F9 3B 31 */	bl setPos__15dKantera_icon_cFff
/* 8021B074  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8021B078  C0 22 AE E4 */	lfs f1, lit_8775(r2)
/* 8021B07C  FC 40 08 90 */	fmr f2, f1
/* 8021B080  4B F9 3B 75 */	bl setScale__15dKantera_icon_cFff
/* 8021B084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021B088  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021B08C  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8021B090  A0 83 00 06 */	lhz r4, 6(r3)
/* 8021B094  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8021B098  4B F9 3B AD */	bl setNowGauge__15dKantera_icon_cFUsUs
/* 8021B09C  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8021B0A0  FC 20 F8 90 */	fmr f1, f31
/* 8021B0A4  4B F9 3A D9 */	bl setAlphaRate__15dKantera_icon_cFf
/* 8021B0A8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8021B0AC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8021B0B0  39 61 00 60 */	addi r11, r1, 0x60
/* 8021B0B4  48 14 71 75 */	bl _restgpr_29
/* 8021B0B8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8021B0BC  7C 08 03 A6 */	mtlr r0
/* 8021B0C0  38 21 00 70 */	addi r1, r1, 0x70
/* 8021B0C4  4E 80 00 20 */	blr 
