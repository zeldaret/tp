lbl_802BC8AC:
/* 802BC8AC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 802BC8B0  7C 08 02 A6 */	mflr r0
/* 802BC8B4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802BC8B8  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 802BC8BC  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 802BC8C0  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 802BC8C4  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 802BC8C8  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 802BC8CC  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 802BC8D0  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 802BC8D4  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 802BC8D8  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 802BC8DC  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 802BC8E0  39 61 00 90 */	addi r11, r1, 0x90
/* 802BC8E4  48 0A 58 F1 */	bl _savegpr_27
/* 802BC8E8  7C 7B 1B 78 */	mr r27, r3
/* 802BC8EC  7C 9C 23 78 */	mr r28, r4
/* 802BC8F0  7C BD 2B 78 */	mr r29, r5
/* 802BC8F4  FF 60 08 90 */	fmr f27, f1
/* 802BC8F8  FF 80 10 90 */	fmr f28, f2
/* 802BC8FC  7C FE 3B 78 */	mr r30, r7
/* 802BC900  7D 1F 43 78 */	mr r31, r8
/* 802BC904  7C C3 33 78 */	mr r3, r6
/* 802BC908  7F A4 EB 78 */	mr r4, r29
/* 802BC90C  38 A1 00 20 */	addi r5, r1, 0x20
/* 802BC910  48 08 A7 A5 */	bl PSVECSubtract
/* 802BC914  38 61 00 20 */	addi r3, r1, 0x20
/* 802BC918  48 08 A8 39 */	bl PSVECMag
/* 802BC91C  D0 3B 00 64 */	stfs f1, 0x64(r27)
/* 802BC920  C0 02 C0 A8 */	lfs f0, lit_895(r2)
/* 802BC924  EF A0 06 F2 */	fmuls f29, f0, f27
/* 802BC928  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BC92C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 802BC930  40 80 00 30 */	bge lbl_802BC960
/* 802BC934  C0 02 C1 08 */	lfs f0, lit_1267(r2)
/* 802BC938  EC 00 07 72 */	fmuls f0, f0, f29
/* 802BC93C  FC 00 00 1E */	fctiwz f0, f0
/* 802BC940  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 802BC944  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802BC948  54 00 1C 38 */	rlwinm r0, r0, 3, 0x10, 0x1c
/* 802BC94C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 802BC950  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 802BC954  7C 03 04 2E */	lfsx f0, r3, r0
/* 802BC958  FC 00 00 50 */	fneg f0, f0
/* 802BC95C  48 00 00 28 */	b lbl_802BC984
lbl_802BC960:
/* 802BC960  C0 02 C1 0C */	lfs f0, lit_1268(r2)
/* 802BC964  EC 00 07 72 */	fmuls f0, f0, f29
/* 802BC968  FC 00 00 1E */	fctiwz f0, f0
/* 802BC96C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 802BC970  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 802BC974  54 00 1C 38 */	rlwinm r0, r0, 3, 0x10, 0x1c
/* 802BC978  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 802BC97C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 802BC980  7C 03 04 2E */	lfsx f0, r3, r0
lbl_802BC984:
/* 802BC984  D0 1B 00 54 */	stfs f0, 0x54(r27)
/* 802BC988  FC 20 E8 90 */	fmr f1, f29
/* 802BC98C  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BC990  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 802BC994  40 80 00 08 */	bge lbl_802BC99C
/* 802BC998  FC 20 E8 50 */	fneg f1, f29
lbl_802BC99C:
/* 802BC99C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 802BC9A0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 802BC9A4  C0 02 C1 0C */	lfs f0, lit_1268(r2)
/* 802BC9A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 802BC9AC  FC 00 00 1E */	fctiwz f0, f0
/* 802BC9B0  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 802BC9B4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802BC9B8  54 00 1C 38 */	rlwinm r0, r0, 3, 0x10, 0x1c
/* 802BC9BC  7C 63 02 14 */	add r3, r3, r0
/* 802BC9C0  C3 C3 00 04 */	lfs f30, 4(r3)
/* 802BC9C4  C0 1B 00 54 */	lfs f0, 0x54(r27)
/* 802BC9C8  EC 00 F0 24 */	fdivs f0, f0, f30
/* 802BC9CC  D0 1B 00 6C */	stfs f0, 0x6c(r27)
/* 802BC9D0  C0 1B 00 6C */	lfs f0, 0x6c(r27)
/* 802BC9D4  EC 00 07 32 */	fmuls f0, f0, f28
/* 802BC9D8  D0 1B 00 68 */	stfs f0, 0x68(r27)
/* 802BC9DC  C0 02 C1 10 */	lfs f0, lit_1269(r2)
/* 802BC9E0  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 802BC9E4  4C 41 13 82 */	cror 2, 1, 2
/* 802BC9E8  40 82 00 14 */	bne lbl_802BC9FC
/* 802BC9EC  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BC9F0  D0 1B 00 58 */	stfs f0, 0x58(r27)
/* 802BC9F4  C0 7B 00 64 */	lfs f3, 0x64(r27)
/* 802BC9F8  48 00 00 44 */	b lbl_802BCA3C
lbl_802BC9FC:
/* 802BC9FC  C0 22 C1 14 */	lfs f1, lit_1270(r2)
/* 802BCA00  C0 5B 00 64 */	lfs f2, 0x64(r27)
/* 802BCA04  C0 1B 00 6C */	lfs f0, 0x6c(r27)
/* 802BCA08  EC 02 00 32 */	fmuls f0, f2, f0
/* 802BCA0C  EC 61 00 32 */	fmuls f3, f1, f0
/* 802BCA10  EC 02 18 28 */	fsubs f0, f2, f3
/* 802BCA14  D0 1B 00 58 */	stfs f0, 0x58(r27)
/* 802BCA18  C0 5B 00 58 */	lfs f2, 0x58(r27)
/* 802BCA1C  C0 22 C1 18 */	lfs f1, lit_1271(r2)
/* 802BCA20  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 802BCA24  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 802BCA28  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BCA2C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802BCA30  40 80 00 0C */	bge lbl_802BCA3C
/* 802BCA34  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BCA38  D0 1B 00 58 */	stfs f0, 0x58(r27)
lbl_802BCA3C:
/* 802BCA3C  88 1B 00 70 */	lbz r0, 0x70(r27)
/* 802BCA40  28 00 00 00 */	cmplwi r0, 0
/* 802BCA44  41 82 00 4C */	beq lbl_802BCA90
/* 802BCA48  C0 5B 00 5C */	lfs f2, 0x5c(r27)
/* 802BCA4C  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BCA50  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802BCA54  40 81 00 3C */	ble lbl_802BCA90
/* 802BCA58  C0 2D 82 58 */	lfs f1, DISTANCE_MAX__7Z2Param(r13)
/* 802BCA5C  C0 02 C0 A4 */	lfs f0, lit_894(r2)
/* 802BCA60  EC 40 10 28 */	fsubs f2, f0, f2
/* 802BCA64  EC 01 00 B2 */	fmuls f0, f1, f2
/* 802BCA68  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802BCA6C  40 81 00 18 */	ble lbl_802BCA84
/* 802BCA70  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802BCA74  38 63 00 0C */	addi r3, r3, 0xc
/* 802BCA78  EC 23 10 24 */	fdivs f1, f3, f2
/* 802BCA7C  4B FF FA 55 */	bl updateVolumeDist__19Z2Audience3DSettingFf
/* 802BCA80  48 00 00 10 */	b lbl_802BCA90
lbl_802BCA84:
/* 802BCA84  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802BCA88  38 63 00 0C */	addi r3, r3, 0xc
/* 802BCA8C  4B FF F8 7D */	bl initVolumeDist__19Z2Audience3DSettingFv
lbl_802BCA90:
/* 802BCA90  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802BCA94  40 82 00 18 */	bne lbl_802BCAAC
/* 802BCA98  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 802BCA9C  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BCAA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BCAA4  4C 41 13 82 */	cror 2, 1, 2
/* 802BCAA8  40 82 00 30 */	bne lbl_802BCAD8
lbl_802BCAAC:
/* 802BCAAC  C0 02 C1 1C */	lfs f0, lit_1272(r2)
/* 802BCAB0  D0 1B 00 60 */	stfs f0, 0x60(r27)
/* 802BCAB4  88 1B 00 70 */	lbz r0, 0x70(r27)
/* 802BCAB8  28 00 00 00 */	cmplwi r0, 0
/* 802BCABC  41 82 00 DC */	beq lbl_802BCB98
/* 802BCAC0  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802BCAC4  38 63 00 0C */	addi r3, r3, 0xc
/* 802BCAC8  C0 3B 00 64 */	lfs f1, 0x64(r27)
/* 802BCACC  FC 40 08 90 */	fmr f2, f1
/* 802BCAD0  4B FF FC 29 */	bl updateDolbyDist__19Z2Audience3DSettingFff
/* 802BCAD4  48 00 00 C4 */	b lbl_802BCB98
lbl_802BCAD8:
/* 802BCAD8  3C 60 80 3A */	lis r3, lit_1193@ha /* 0x8039C220@ha */
/* 802BCADC  38 83 C2 20 */	addi r4, r3, lit_1193@l /* 0x8039C220@l */
/* 802BCAE0  80 64 00 00 */	lwz r3, 0(r4)
/* 802BCAE4  80 04 00 04 */	lwz r0, 4(r4)
/* 802BCAE8  90 61 00 14 */	stw r3, 0x14(r1)
/* 802BCAEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802BCAF0  80 04 00 08 */	lwz r0, 8(r4)
/* 802BCAF4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802BCAF8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 802BCAFC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802BCB00  C0 1C 00 04 */	lfs f0, 4(r28)
/* 802BCB04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802BCB08  C0 1C 00 08 */	lfs f0, 8(r28)
/* 802BCB0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802BCB10  38 61 00 2C */	addi r3, r1, 0x2c
/* 802BCB14  38 81 00 14 */	addi r4, r1, 0x14
/* 802BCB18  C0 22 C1 20 */	lfs f1, lit_1273(r2)
/* 802BCB1C  C0 02 C0 AC */	lfs f0, lit_896(r2)
/* 802BCB20  EC 00 07 72 */	fmuls f0, f0, f29
/* 802BCB24  EC 21 00 32 */	fmuls f1, f1, f0
/* 802BCB28  48 08 9D 51 */	bl PSMTXRotAxisRad
/* 802BCB2C  38 61 00 2C */	addi r3, r1, 0x2c
/* 802BCB30  38 81 00 20 */	addi r4, r1, 0x20
/* 802BCB34  38 A1 00 08 */	addi r5, r1, 8
/* 802BCB38  48 08 A2 35 */	bl PSMTXMultVec
/* 802BCB3C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 802BCB40  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802BCB44  EF E1 00 24 */	fdivs f31, f1, f0
/* 802BCB48  38 61 00 08 */	addi r3, r1, 8
/* 802BCB4C  E0 03 00 00 */	psq_l f0, 0(r3), 0, 0 /* qr0 */
/* 802BCB50  E0 23 80 08 */	psq_l f1, 8(r3), 1, 0 /* qr0 */
/* 802BCB54  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 802BCB58  F0 03 00 00 */	psq_st f0, 0(r3), 0, 0 /* qr0 */
/* 802BCB5C  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 802BCB60  F0 03 80 08 */	psq_st f0, 8(r3), 1, 0 /* qr0 */
/* 802BCB64  48 08 A5 ED */	bl PSVECMag
/* 802BCB68  EC 1E 00 72 */	fmuls f0, f30, f1
/* 802BCB6C  D0 1B 00 60 */	stfs f0, 0x60(r27)
/* 802BCB70  88 1B 00 70 */	lbz r0, 0x70(r27)
/* 802BCB74  28 00 00 00 */	cmplwi r0, 0
/* 802BCB78  41 82 00 20 */	beq lbl_802BCB98
/* 802BCB7C  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802BCB80  38 63 00 0C */	addi r3, r3, 0xc
/* 802BCB84  C0 1B 00 60 */	lfs f0, 0x60(r27)
/* 802BCB88  C0 5B 00 64 */	lfs f2, 0x64(r27)
/* 802BCB8C  EC 22 00 28 */	fsubs f1, f2, f0
/* 802BCB90  EC 42 00 2A */	fadds f2, f2, f0
/* 802BCB94  4B FF FB 65 */	bl updateDolbyDist__19Z2Audience3DSettingFff
lbl_802BCB98:
/* 802BCB98  7F 63 DB 78 */	mr r3, r27
/* 802BCB9C  7F 84 E3 78 */	mr r4, r28
/* 802BCBA0  7F A5 EB 78 */	mr r5, r29
/* 802BCBA4  7F E6 FB 78 */	mr r6, r31
/* 802BCBA8  4B FF FC 35 */	bl setCameraState__13Z2AudioCameraFPA4_CfR3Vecb
/* 802BCBAC  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 802BCBB0  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 802BCBB4  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 802BCBB8  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 802BCBBC  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 802BCBC0  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 802BCBC4  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 802BCBC8  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 802BCBCC  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 802BCBD0  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 802BCBD4  39 61 00 90 */	addi r11, r1, 0x90
/* 802BCBD8  48 0A 56 49 */	bl _restgpr_27
/* 802BCBDC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 802BCBE0  7C 08 03 A6 */	mtlr r0
/* 802BCBE4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 802BCBE8  4E 80 00 20 */	blr 
