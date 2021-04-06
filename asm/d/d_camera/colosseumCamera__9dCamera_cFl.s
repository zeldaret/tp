lbl_801767F8:
/* 801767F8  94 21 FE 10 */	stwu r1, -0x1f0(r1)
/* 801767FC  7C 08 02 A6 */	mflr r0
/* 80176800  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 80176804  DB E1 01 E0 */	stfd f31, 0x1e0(r1)
/* 80176808  F3 E1 01 E8 */	psq_st f31, 488(r1), 0, 0 /* qr0 */
/* 8017680C  DB C1 01 D0 */	stfd f30, 0x1d0(r1)
/* 80176810  F3 C1 01 D8 */	psq_st f30, 472(r1), 0, 0 /* qr0 */
/* 80176814  DB A1 01 C0 */	stfd f29, 0x1c0(r1)
/* 80176818  F3 A1 01 C8 */	psq_st f29, 456(r1), 0, 0 /* qr0 */
/* 8017681C  DB 81 01 B0 */	stfd f28, 0x1b0(r1)
/* 80176820  F3 81 01 B8 */	psq_st f28, 440(r1), 0, 0 /* qr0 */
/* 80176824  DB 61 01 A0 */	stfd f27, 0x1a0(r1)
/* 80176828  F3 61 01 A8 */	psq_st f27, 424(r1), 0, 0 /* qr0 */
/* 8017682C  DB 41 01 90 */	stfd f26, 0x190(r1)
/* 80176830  F3 41 01 98 */	psq_st f26, 408(r1), 0, 0 /* qr0 */
/* 80176834  DB 21 01 80 */	stfd f25, 0x180(r1)
/* 80176838  F3 21 01 88 */	psq_st f25, 392(r1), 0, 0 /* qr0 */
/* 8017683C  DB 01 01 70 */	stfd f24, 0x170(r1)
/* 80176840  F3 01 01 78 */	psq_st f24, 376(r1), 0, 0 /* qr0 */
/* 80176844  DA E1 01 60 */	stfd f23, 0x160(r1)
/* 80176848  F2 E1 01 68 */	psq_st f23, 360(r1), 0, 0 /* qr0 */
/* 8017684C  DA C1 01 50 */	stfd f22, 0x150(r1)
/* 80176850  F2 C1 01 58 */	psq_st f22, 344(r1), 0, 0 /* qr0 */
/* 80176854  DA A1 01 40 */	stfd f21, 0x140(r1)
/* 80176858  F2 A1 01 48 */	psq_st f21, 328(r1), 0, 0 /* qr0 */
/* 8017685C  DA 81 01 30 */	stfd f20, 0x130(r1)
/* 80176860  F2 81 01 38 */	psq_st f20, 312(r1), 0, 0 /* qr0 */
/* 80176864  39 61 01 30 */	addi r11, r1, 0x130
/* 80176868  48 1E B9 75 */	bl _savegpr_29
/* 8017686C  7C 7D 1B 78 */	mr r29, r3
/* 80176870  80 03 0A F4 */	lwz r0, 0xaf4(r3)
/* 80176874  1F E4 00 78 */	mulli r31, r4, 0x78
/* 80176878  7C 60 FA 14 */	add r3, r0, r31
/* 8017687C  C3 E3 00 08 */	lfs f31, 8(r3)
/* 80176880  C3 C3 00 10 */	lfs f30, 0x10(r3)
/* 80176884  C3 A3 00 0C */	lfs f29, 0xc(r3)
/* 80176888  C3 83 00 14 */	lfs f28, 0x14(r3)
/* 8017688C  C3 63 00 24 */	lfs f27, 0x24(r3)
/* 80176890  C3 43 00 28 */	lfs f26, 0x28(r3)
/* 80176894  C3 23 00 34 */	lfs f25, 0x34(r3)
/* 80176898  C3 03 00 30 */	lfs f24, 0x30(r3)
/* 8017689C  C2 E3 00 38 */	lfs f23, 0x38(r3)
/* 801768A0  C2 C3 00 3C */	lfs f22, 0x3c(r3)
/* 801768A4  C2 A3 00 4C */	lfs f21, 0x4c(r3)
/* 801768A8  C2 83 00 50 */	lfs f20, 0x50(r3)
/* 801768AC  80 0D 8A A0 */	lwz r0, data_80451020(r13)
/* 801768B0  2C 00 00 6B */	cmpwi r0, 0x6b
/* 801768B4  40 82 00 54 */	bne lbl_80176908
/* 801768B8  38 61 00 D8 */	addi r3, r1, 0xd8
/* 801768BC  7F A4 EB 78 */	mr r4, r29
/* 801768C0  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 801768C4  4B F2 0E 99 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 801768C8  C0 21 00 DC */	lfs f1, 0xdc(r1)
/* 801768CC  C0 02 9E 9C */	lfs f0, lit_12868(r2)
/* 801768D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801768D4  40 80 00 34 */	bge lbl_80176908
/* 801768D8  80 9D 06 84 */	lwz r4, 0x684(r29)
/* 801768DC  3C 60 80 43 */	lis r3, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801768E0  80 03 C8 F8 */	lwz r0, data_8042C8F8@l(r3)  /* 0x8042C8F8@l */
/* 801768E4  1C 00 00 44 */	mulli r0, r0, 0x44
/* 801768E8  7C 64 02 14 */	add r3, r4, r0
/* 801768EC  80 1D 01 90 */	lwz r0, 0x190(r29)
/* 801768F0  1C 00 00 16 */	mulli r0, r0, 0x16
/* 801768F4  7C 63 02 14 */	add r3, r3, r0
/* 801768F8  A8 83 00 18 */	lha r4, 0x18(r3)
/* 801768FC  7F A3 EB 78 */	mr r3, r29
/* 80176900  4B FF 1E 45 */	bl chaseCamera__9dCamera_cFl
/* 80176904  48 00 04 74 */	b lbl_80176D78
lbl_80176908:
/* 80176908  80 1D 01 74 */	lwz r0, 0x174(r29)
/* 8017690C  28 00 00 00 */	cmplwi r0, 0
/* 80176910  40 82 00 CC */	bne lbl_801769DC
/* 80176914  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80176918  D0 1D 03 FC */	stfs f0, 0x3fc(r29)
/* 8017691C  38 00 00 28 */	li r0, 0x28
/* 80176920  90 1D 04 00 */	stw r0, 0x400(r29)
/* 80176924  80 1D 07 DC */	lwz r0, 0x7dc(r29)
/* 80176928  2C 00 00 FF */	cmpwi r0, 0xff
/* 8017692C  41 82 00 34 */	beq lbl_80176960
/* 80176930  80 1D 0A F4 */	lwz r0, 0xaf4(r29)
/* 80176934  7C 60 FA 14 */	add r3, r0, r31
/* 80176938  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017693C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80176940  41 82 00 20 */	beq lbl_80176960
/* 80176944  C0 1D 07 C4 */	lfs f0, 0x7c4(r29)
/* 80176948  D0 1D 03 F0 */	stfs f0, 0x3f0(r29)
/* 8017694C  C0 1D 07 C8 */	lfs f0, 0x7c8(r29)
/* 80176950  D0 1D 03 F4 */	stfs f0, 0x3f4(r29)
/* 80176954  C0 1D 07 CC */	lfs f0, 0x7cc(r29)
/* 80176958  D0 1D 03 F8 */	stfs f0, 0x3f8(r29)
/* 8017695C  48 00 00 70 */	b lbl_801769CC
lbl_80176960:
/* 80176960  80 1D 0A F4 */	lwz r0, 0xaf4(r29)
/* 80176964  7C 60 FA 14 */	add r3, r0, r31
/* 80176968  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017696C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80176970  41 82 00 5C */	beq lbl_801769CC
/* 80176974  7F A3 EB 78 */	mr r3, r29
/* 80176978  80 9D 06 8C */	lwz r4, 0x68c(r29)
/* 8017697C  4B FE DE FD */	bl getParamTargetActor__9dCamera_cFl
/* 80176980  7C 7E 1B 78 */	mr r30, r3
/* 80176984  38 61 00 CC */	addi r3, r1, 0xcc
/* 80176988  7F A4 EB 78 */	mr r4, r29
/* 8017698C  7F C5 F3 78 */	mr r5, r30
/* 80176990  4B F2 0D CD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80176994  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80176998  D0 1D 03 F0 */	stfs f0, 0x3f0(r29)
/* 8017699C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801769A0  7F A4 EB 78 */	mr r4, r29
/* 801769A4  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 801769A8  4B F2 0D 75 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801769AC  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 801769B0  D0 1D 03 F4 */	stfs f0, 0x3f4(r29)
/* 801769B4  38 61 00 B4 */	addi r3, r1, 0xb4
/* 801769B8  7F A4 EB 78 */	mr r4, r29
/* 801769BC  7F C5 F3 78 */	mr r5, r30
/* 801769C0  4B F2 0D 9D */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 801769C4  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 801769C8  D0 1D 03 F8 */	stfs f0, 0x3f8(r29)
lbl_801769CC:
/* 801769CC  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 801769D0  38 80 00 05 */	li r4, 5
/* 801769D4  38 A0 00 64 */	li r5, 0x64
/* 801769D8  4B F2 0E A1 */	bl Init__14d2DBSplinePathFll
lbl_801769DC:
/* 801769DC  C0 7D 03 FC */	lfs f3, 0x3fc(r29)
/* 801769E0  C0 02 9E A8 */	lfs f0, lit_13314(r2)
/* 801769E4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801769E8  40 80 00 38 */	bge lbl_80176A20
/* 801769EC  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 801769F0  80 1D 04 00 */	lwz r0, 0x400(r29)
/* 801769F4  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 801769F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801769FC  90 01 01 1C */	stw r0, 0x11c(r1)
/* 80176A00  3C 00 43 30 */	lis r0, 0x4330
/* 80176A04  90 01 01 18 */	stw r0, 0x118(r1)
/* 80176A08  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 80176A0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80176A10  EC 02 00 24 */	fdivs f0, f2, f0
/* 80176A14  EC 03 00 2A */	fadds f0, f3, f0
/* 80176A18  D0 1D 03 FC */	stfs f0, 0x3fc(r29)
/* 80176A1C  48 00 00 14 */	b lbl_80176A30
lbl_80176A20:
/* 80176A20  38 00 00 01 */	li r0, 1
/* 80176A24  98 1D 01 58 */	stb r0, 0x158(r29)
/* 80176A28  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80176A2C  D0 1D 03 FC */	stfs f0, 0x3fc(r29)
lbl_80176A30:
/* 80176A30  C0 1D 03 F0 */	lfs f0, 0x3f0(r29)
/* 80176A34  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80176A38  C0 1D 03 F4 */	lfs f0, 0x3f4(r29)
/* 80176A3C  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80176A40  C0 1D 03 F8 */	lfs f0, 0x3f8(r29)
/* 80176A44  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80176A48  80 1D 0A F4 */	lwz r0, 0xaf4(r29)
/* 80176A4C  7C 60 FA 14 */	add r3, r0, r31
/* 80176A50  A0 03 00 06 */	lhz r0, 6(r3)
/* 80176A54  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80176A58  40 82 00 1C */	bne lbl_80176A74
/* 80176A5C  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80176A60  7F A4 EB 78 */	mr r4, r29
/* 80176A64  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 80176A68  4B F2 0C B5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80176A6C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80176A70  D0 01 01 0C */	stfs f0, 0x10c(r1)
lbl_80176A74:
/* 80176A74  D3 E1 00 FC */	stfs f31, 0xfc(r1)
/* 80176A78  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80176A7C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80176A80  D3 A1 01 04 */	stfs f29, 0x104(r1)
/* 80176A84  3B DD 00 62 */	addi r30, r29, 0x62
/* 80176A88  7F C3 F3 78 */	mr r3, r30
/* 80176A8C  48 0F A6 5D */	bl Inv__7cSAngleCFv
/* 80176A90  7C 64 1B 78 */	mr r4, r3
/* 80176A94  38 61 00 28 */	addi r3, r1, 0x28
/* 80176A98  48 0F A5 01 */	bl __ct__7cSAngleFs
/* 80176A9C  38 61 00 9C */	addi r3, r1, 0x9c
/* 80176AA0  38 81 00 FC */	addi r4, r1, 0xfc
/* 80176AA4  38 A1 00 28 */	addi r5, r1, 0x28
/* 80176AA8  4B F1 18 DD */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 80176AAC  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80176AB0  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80176AB4  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80176AB8  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80176ABC  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80176AC0  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80176AC4  38 61 00 90 */	addi r3, r1, 0x90
/* 80176AC8  7F A4 EB 78 */	mr r4, r29
/* 80176ACC  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 80176AD0  4B F2 0C 4D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80176AD4  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80176AD8  38 81 00 90 */	addi r4, r1, 0x90
/* 80176ADC  7C 65 1B 78 */	mr r5, r3
/* 80176AE0  48 1D 05 B1 */	bl PSVECAdd
/* 80176AE4  38 61 00 84 */	addi r3, r1, 0x84
/* 80176AE8  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80176AEC  38 A1 01 08 */	addi r5, r1, 0x108
/* 80176AF0  48 0F 00 45 */	bl __mi__4cXyzCFRC3Vec
/* 80176AF4  38 61 00 34 */	addi r3, r1, 0x34
/* 80176AF8  38 81 00 84 */	addi r4, r1, 0x84
/* 80176AFC  48 0F AD 85 */	bl __ct__7cSGlobeFRC4cXyz
/* 80176B00  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80176B04  FC 00 C0 40 */	fcmpo cr0, f0, f24
/* 80176B08  40 80 00 10 */	bge lbl_80176B18
/* 80176B0C  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80176B10  D3 01 00 34 */	stfs f24, 0x34(r1)
/* 80176B14  48 00 00 30 */	b lbl_80176B44
lbl_80176B18:
/* 80176B18  FC 00 C8 40 */	fcmpo cr0, f0, f25
/* 80176B1C  40 81 00 10 */	ble lbl_80176B2C
/* 80176B20  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 80176B24  D3 21 00 34 */	stfs f25, 0x34(r1)
/* 80176B28  48 00 00 1C */	b lbl_80176B44
lbl_80176B2C:
/* 80176B2C  EC 00 C0 28 */	fsubs f0, f0, f24
/* 80176B30  EC 59 C0 28 */	fsubs f2, f25, f24
/* 80176B34  EC 20 10 24 */	fdivs f1, f0, f2
/* 80176B38  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80176B3C  EC 18 00 2A */	fadds f0, f24, f0
/* 80176B40  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_80176B44:
/* 80176B44  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 80176B48  3C 80 80 3C */	lis r4, Dsp@ha /* 0x803BA4A4@ha */
/* 80176B4C  38 84 A4 A4 */	addi r4, r4, Dsp@l /* 0x803BA4A4@l */
/* 80176B50  4B F2 10 19 */	bl Spot__14d2DBSplinePathFPff
/* 80176B54  FF E0 08 90 */	fmr f31, f1
/* 80176B58  38 61 00 78 */	addi r3, r1, 0x78
/* 80176B5C  38 81 00 34 */	addi r4, r1, 0x34
/* 80176B60  48 0F AF 55 */	bl Xyz__7cSGlobeCFv
/* 80176B64  38 61 00 6C */	addi r3, r1, 0x6c
/* 80176B68  38 81 01 08 */	addi r4, r1, 0x108
/* 80176B6C  38 A1 00 78 */	addi r5, r1, 0x78
/* 80176B70  48 0E FF 75 */	bl __pl__4cXyzCFRC3Vec
/* 80176B74  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80176B78  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80176B7C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80176B80  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80176B84  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80176B88  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80176B8C  80 1D 0A F4 */	lwz r0, 0xaf4(r29)
/* 80176B90  7C 60 FA 14 */	add r3, r0, r31
/* 80176B94  A0 03 00 06 */	lhz r0, 6(r3)
/* 80176B98  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80176B9C  40 82 00 0C */	bne lbl_80176BA8
/* 80176BA0  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80176BA4  D0 01 00 E8 */	stfs f0, 0xe8(r1)
lbl_80176BA8:
/* 80176BA8  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 80176BAC  EC 1E E0 28 */	fsubs f0, f30, f28
/* 80176BB0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80176BB4  EC 1C 00 2A */	fadds f0, f28, f0
/* 80176BB8  EC 01 00 2A */	fadds f0, f1, f0
/* 80176BBC  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80176BC0  EC 1B D0 28 */	fsubs f0, f27, f26
/* 80176BC4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80176BC8  EF 1A 00 2A */	fadds f24, f26, f0
/* 80176BCC  38 61 00 30 */	addi r3, r1, 0x30
/* 80176BD0  EC 17 B0 28 */	fsubs f0, f23, f22
/* 80176BD4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80176BD8  EC 36 00 2A */	fadds f1, f22, f0
/* 80176BDC  48 0F A3 ED */	bl __ct__7cSAngleFf
/* 80176BE0  80 1D 0A F4 */	lwz r0, 0xaf4(r29)
/* 80176BE4  7C 60 FA 14 */	add r3, r0, r31
/* 80176BE8  A0 03 00 06 */	lhz r0, 6(r3)
/* 80176BEC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80176BF0  41 82 00 10 */	beq lbl_80176C00
/* 80176BF4  38 61 00 30 */	addi r3, r1, 0x30
/* 80176BF8  38 81 00 38 */	addi r4, r1, 0x38
/* 80176BFC  48 0F A5 D9 */	bl __apl__7cSAngleFRC7cSAngle
lbl_80176C00:
/* 80176C00  38 61 00 2C */	addi r3, r1, 0x2c
/* 80176C04  38 81 00 3A */	addi r4, r1, 0x3a
/* 80176C08  48 0F A3 61 */	bl __ct__7cSAngleFRC7cSAngle
/* 80176C0C  88 1D 01 58 */	lbz r0, 0x158(r29)
/* 80176C10  28 00 00 00 */	cmplwi r0, 0
/* 80176C14  40 82 00 DC */	bne lbl_80176CF0
/* 80176C18  38 61 00 60 */	addi r3, r1, 0x60
/* 80176C1C  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80176C20  38 BD 00 64 */	addi r5, r29, 0x64
/* 80176C24  48 0E FF 11 */	bl __mi__4cXyzCFRC3Vec
/* 80176C28  38 61 00 54 */	addi r3, r1, 0x54
/* 80176C2C  38 81 00 60 */	addi r4, r1, 0x60
/* 80176C30  C0 3D 03 FC */	lfs f1, 0x3fc(r29)
/* 80176C34  48 0E FF 51 */	bl __ml__4cXyzCFf
/* 80176C38  38 7D 00 64 */	addi r3, r29, 0x64
/* 80176C3C  38 81 00 54 */	addi r4, r1, 0x54
/* 80176C40  7C 65 1B 78 */	mr r5, r3
/* 80176C44  48 1D 04 4D */	bl PSVECAdd
/* 80176C48  C0 5D 00 5C */	lfs f2, 0x5c(r29)
/* 80176C4C  C0 3D 03 FC */	lfs f1, 0x3fc(r29)
/* 80176C50  EC 18 10 28 */	fsubs f0, f24, f2
/* 80176C54  EC 01 00 32 */	fmuls f0, f1, f0
/* 80176C58  EC 02 00 2A */	fadds f0, f2, f0
/* 80176C5C  D0 1D 00 5C */	stfs f0, 0x5c(r29)
/* 80176C60  38 61 00 24 */	addi r3, r1, 0x24
/* 80176C64  38 81 00 30 */	addi r4, r1, 0x30
/* 80176C68  3B FD 00 60 */	addi r31, r29, 0x60
/* 80176C6C  7F E5 FB 78 */	mr r5, r31
/* 80176C70  48 0F A5 35 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80176C74  38 61 00 20 */	addi r3, r1, 0x20
/* 80176C78  38 81 00 24 */	addi r4, r1, 0x24
/* 80176C7C  C0 3D 03 FC */	lfs f1, 0x3fc(r29)
/* 80176C80  48 0F A5 E5 */	bl __ml__7cSAngleCFf
/* 80176C84  38 61 00 1C */	addi r3, r1, 0x1c
/* 80176C88  7F E4 FB 78 */	mr r4, r31
/* 80176C8C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80176C90  48 0F A4 E5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80176C94  38 61 00 0C */	addi r3, r1, 0xc
/* 80176C98  A8 81 00 1C */	lha r4, 0x1c(r1)
/* 80176C9C  48 0F A2 FD */	bl __ct__7cSAngleFs
/* 80176CA0  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80176CA4  B0 1D 00 60 */	sth r0, 0x60(r29)
/* 80176CA8  38 61 00 18 */	addi r3, r1, 0x18
/* 80176CAC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80176CB0  7F C5 F3 78 */	mr r5, r30
/* 80176CB4  48 0F A4 F1 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80176CB8  38 61 00 14 */	addi r3, r1, 0x14
/* 80176CBC  38 81 00 18 */	addi r4, r1, 0x18
/* 80176CC0  C0 3D 03 FC */	lfs f1, 0x3fc(r29)
/* 80176CC4  48 0F A5 A1 */	bl __ml__7cSAngleCFf
/* 80176CC8  38 61 00 10 */	addi r3, r1, 0x10
/* 80176CCC  7F C4 F3 78 */	mr r4, r30
/* 80176CD0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80176CD4  48 0F A4 A1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80176CD8  38 61 00 08 */	addi r3, r1, 8
/* 80176CDC  A8 81 00 10 */	lha r4, 0x10(r1)
/* 80176CE0  48 0F A2 B9 */	bl __ct__7cSAngleFs
/* 80176CE4  A8 01 00 08 */	lha r0, 8(r1)
/* 80176CE8  B0 1D 00 62 */	sth r0, 0x62(r29)
/* 80176CEC  48 00 00 30 */	b lbl_80176D1C
lbl_80176CF0:
/* 80176CF0  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80176CF4  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 80176CF8  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80176CFC  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 80176D00  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 80176D04  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 80176D08  38 7D 00 5C */	addi r3, r29, 0x5c
/* 80176D0C  FC 20 C0 90 */	fmr f1, f24
/* 80176D10  38 81 00 30 */	addi r4, r1, 0x30
/* 80176D14  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80176D18  48 0F AC F1 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
lbl_80176D1C:
/* 80176D1C  38 61 00 48 */	addi r3, r1, 0x48
/* 80176D20  38 9D 00 5C */	addi r4, r29, 0x5c
/* 80176D24  48 0F AD 91 */	bl Xyz__7cSGlobeCFv
/* 80176D28  38 61 00 3C */	addi r3, r1, 0x3c
/* 80176D2C  38 9D 00 64 */	addi r4, r29, 0x64
/* 80176D30  38 A1 00 48 */	addi r5, r1, 0x48
/* 80176D34  48 0E FD B1 */	bl __pl__4cXyzCFRC3Vec
/* 80176D38  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80176D3C  D0 1D 00 70 */	stfs f0, 0x70(r29)
/* 80176D40  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80176D44  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 80176D48  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80176D4C  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 80176D50  C0 5D 00 80 */	lfs f2, 0x80(r29)
/* 80176D54  C0 3D 03 FC */	lfs f1, 0x3fc(r29)
/* 80176D58  EC 15 A0 28 */	fsubs f0, f21, f20
/* 80176D5C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80176D60  EC 14 00 2A */	fadds f0, f20, f0
/* 80176D64  EC 00 10 28 */	fsubs f0, f0, f2
/* 80176D68  EC 01 00 32 */	fmuls f0, f1, f0
/* 80176D6C  EC 02 00 2A */	fadds f0, f2, f0
/* 80176D70  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 80176D74  38 60 00 01 */	li r3, 1
lbl_80176D78:
/* 80176D78  E3 E1 01 E8 */	psq_l f31, 488(r1), 0, 0 /* qr0 */
/* 80176D7C  CB E1 01 E0 */	lfd f31, 0x1e0(r1)
/* 80176D80  E3 C1 01 D8 */	psq_l f30, 472(r1), 0, 0 /* qr0 */
/* 80176D84  CB C1 01 D0 */	lfd f30, 0x1d0(r1)
/* 80176D88  E3 A1 01 C8 */	psq_l f29, 456(r1), 0, 0 /* qr0 */
/* 80176D8C  CB A1 01 C0 */	lfd f29, 0x1c0(r1)
/* 80176D90  E3 81 01 B8 */	psq_l f28, 440(r1), 0, 0 /* qr0 */
/* 80176D94  CB 81 01 B0 */	lfd f28, 0x1b0(r1)
/* 80176D98  E3 61 01 A8 */	psq_l f27, 424(r1), 0, 0 /* qr0 */
/* 80176D9C  CB 61 01 A0 */	lfd f27, 0x1a0(r1)
/* 80176DA0  E3 41 01 98 */	psq_l f26, 408(r1), 0, 0 /* qr0 */
/* 80176DA4  CB 41 01 90 */	lfd f26, 0x190(r1)
/* 80176DA8  E3 21 01 88 */	psq_l f25, 392(r1), 0, 0 /* qr0 */
/* 80176DAC  CB 21 01 80 */	lfd f25, 0x180(r1)
/* 80176DB0  E3 01 01 78 */	psq_l f24, 376(r1), 0, 0 /* qr0 */
/* 80176DB4  CB 01 01 70 */	lfd f24, 0x170(r1)
/* 80176DB8  E2 E1 01 68 */	psq_l f23, 360(r1), 0, 0 /* qr0 */
/* 80176DBC  CA E1 01 60 */	lfd f23, 0x160(r1)
/* 80176DC0  E2 C1 01 58 */	psq_l f22, 344(r1), 0, 0 /* qr0 */
/* 80176DC4  CA C1 01 50 */	lfd f22, 0x150(r1)
/* 80176DC8  E2 A1 01 48 */	psq_l f21, 328(r1), 0, 0 /* qr0 */
/* 80176DCC  CA A1 01 40 */	lfd f21, 0x140(r1)
/* 80176DD0  E2 81 01 38 */	psq_l f20, 312(r1), 0, 0 /* qr0 */
/* 80176DD4  CA 81 01 30 */	lfd f20, 0x130(r1)
/* 80176DD8  39 61 01 30 */	addi r11, r1, 0x130
/* 80176DDC  48 1E B4 4D */	bl _restgpr_29
/* 80176DE0  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 80176DE4  7C 08 03 A6 */	mtlr r0
/* 80176DE8  38 21 01 F0 */	addi r1, r1, 0x1f0
/* 80176DEC  4E 80 00 20 */	blr 
