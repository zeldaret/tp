lbl_80D3C970:
/* 80D3C970  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D3C974  7C 08 02 A6 */	mflr r0
/* 80D3C978  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D3C97C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80D3C980  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80D3C984  39 61 00 50 */	addi r11, r1, 0x50
/* 80D3C988  4B 62 58 4C */	b _savegpr_27
/* 80D3C98C  7C 7B 1B 78 */	mr r27, r3
/* 80D3C990  3C 60 80 D4 */	lis r3, mCcDObjInfo__12daObj_YBag_c@ha
/* 80D3C994  3B A3 DC 8C */	addi r29, r3, mCcDObjInfo__12daObj_YBag_c@l
/* 80D3C998  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 80D3C99C  54 1E 9F FE */	rlwinm r30, r0, 0x13, 0x1f, 0x1f
/* 80D3C9A0  3B FD 00 30 */	addi r31, r29, 0x30
/* 80D3C9A4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D3C9A8  D0 1B 04 EC */	stfs f0, 0x4ec(r27)
/* 80D3C9AC  D0 1B 04 F0 */	stfs f0, 0x4f0(r27)
/* 80D3C9B0  D0 1B 04 F4 */	stfs f0, 0x4f4(r27)
/* 80D3C9B4  38 00 00 00 */	li r0, 0
/* 80D3C9B8  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 80D3C9BC  38 00 00 06 */	li r0, 6
/* 80D3C9C0  98 1B 05 48 */	stb r0, 0x548(r27)
/* 80D3C9C4  38 7B 07 9C */	addi r3, r27, 0x79c
/* 80D3C9C8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D3C9CC  4B 33 95 74 */	b SetWallR__12dBgS_AcchCirFf
/* 80D3C9D0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D3C9D4  D0 1B 07 CC */	stfs f0, 0x7cc(r27)
/* 80D3C9D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80D3C9DC  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80D3C9E0  2C 1E 00 00 */	cmpwi r30, 0
/* 80D3C9E4  41 82 00 6C */	beq lbl_80D3CA50
/* 80D3C9E8  80 1B 05 B4 */	lwz r0, 0x5b4(r27)
/* 80D3C9EC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80D3C9F0  90 1B 05 B4 */	stw r0, 0x5b4(r27)
/* 80D3C9F4  80 1B 05 B4 */	lwz r0, 0x5b4(r27)
/* 80D3C9F8  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80D3C9FC  90 1B 05 B4 */	stw r0, 0x5b4(r27)
/* 80D3CA00  80 1B 05 B4 */	lwz r0, 0x5b4(r27)
/* 80D3CA04  60 00 00 04 */	ori r0, r0, 4
/* 80D3CA08  90 1B 05 B4 */	stw r0, 0x5b4(r27)
/* 80D3CA0C  80 1B 05 B4 */	lwz r0, 0x5b4(r27)
/* 80D3CA10  60 00 00 02 */	ori r0, r0, 2
/* 80D3CA14  90 1B 05 B4 */	stw r0, 0x5b4(r27)
/* 80D3CA18  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3CA1C  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80D3CA20  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80D3CA24  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80D3CA28  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80D3CA2C  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80D3CA30  38 00 00 00 */	li r0, 0
/* 80D3CA34  B0 1B 09 DC */	sth r0, 0x9dc(r27)
/* 80D3CA38  B0 1B 09 DE */	sth r0, 0x9de(r27)
/* 80D3CA3C  B0 1B 09 E0 */	sth r0, 0x9e0(r27)
/* 80D3CA40  98 1B 0A 31 */	stb r0, 0xa31(r27)
/* 80D3CA44  98 1B 0A 32 */	stb r0, 0xa32(r27)
/* 80D3CA48  98 1B 0A 33 */	stb r0, 0xa33(r27)
/* 80D3CA4C  48 00 05 18 */	b lbl_80D3CF64
lbl_80D3CA50:
/* 80D3CA50  80 1B 05 B4 */	lwz r0, 0x5b4(r27)
/* 80D3CA54  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80D3CA58  90 1B 05 B4 */	stw r0, 0x5b4(r27)
/* 80D3CA5C  80 1B 05 B4 */	lwz r0, 0x5b4(r27)
/* 80D3CA60  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80D3CA64  90 1B 05 B4 */	stw r0, 0x5b4(r27)
/* 80D3CA68  88 1B 0A 34 */	lbz r0, 0xa34(r27)
/* 80D3CA6C  28 00 00 00 */	cmplwi r0, 0
/* 80D3CA70  41 82 00 98 */	beq lbl_80D3CB08
/* 80D3CA74  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80D3CA78  FC 00 02 10 */	fabs f0, f0
/* 80D3CA7C  FC 20 00 18 */	frsp f1, f0
/* 80D3CA80  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80D3CA84  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80D3CA88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3CA8C  7C 00 00 26 */	mfcr r0
/* 80D3CA90  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80D3CA94  40 82 00 74 */	bne lbl_80D3CB08
/* 80D3CA98  7F 63 DB 78 */	mr r3, r27
/* 80D3CA9C  4B 2E 07 60 */	b fopAcM_carryOffRevise__FP10fopAc_ac_c
/* 80D3CAA0  C0 3D 00 70 */	lfs f1, 0x70(r29)
/* 80D3CAA4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80D3CAA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D3CAAC  FC 00 00 1E */	fctiwz f0, f0
/* 80D3CAB0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80D3CAB4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80D3CAB8  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3CABC  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80D3CAC0  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80D3CAC4  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80D3CAC8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80D3CACC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D3CAD0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D3CAD4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80D3CAD8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80D3CADC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D3CAE0  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80D3CAE4  7C 63 02 14 */	add r3, r3, r0
/* 80D3CAE8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D3CAEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D3CAF0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80D3CAF4  38 00 40 00 */	li r0, 0x4000
/* 80D3CAF8  B0 1B 0A 04 */	sth r0, 0xa04(r27)
/* 80D3CAFC  38 00 00 01 */	li r0, 1
/* 80D3CB00  98 1B 0A 33 */	stb r0, 0xa33(r27)
/* 80D3CB04  48 00 04 60 */	b lbl_80D3CF64
lbl_80D3CB08:
/* 80D3CB08  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80D3CB0C  38 9B 09 F4 */	addi r4, r27, 0x9f4
/* 80D3CB10  4B 2E 0D 80 */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80D3CB14  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80D3CB18  C0 5B 09 F4 */	lfs f2, 0x9f4(r27)
/* 80D3CB1C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80D3CB20  41 82 00 94 */	beq lbl_80D3CBB4
/* 80D3CB24  38 7D 00 30 */	addi r3, r29, 0x30
/* 80D3CB28  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80D3CB2C  C0 1B 09 F0 */	lfs f0, 0x9f0(r27)
/* 80D3CB30  EC 02 00 28 */	fsubs f0, f2, f0
/* 80D3CB34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3CB38  40 80 00 7C */	bge lbl_80D3CBB4
/* 80D3CB3C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80D3CB40  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80D3CB44  4C 40 13 82 */	cror 2, 0, 2
/* 80D3CB48  40 82 00 6C */	bne lbl_80D3CBB4
/* 80D3CB4C  88 1B 0A 32 */	lbz r0, 0xa32(r27)
/* 80D3CB50  28 00 00 00 */	cmplwi r0, 0
/* 80D3CB54  40 82 00 60 */	bne lbl_80D3CBB4
/* 80D3CB58  88 1B 0A 33 */	lbz r0, 0xa33(r27)
/* 80D3CB5C  28 00 00 00 */	cmplwi r0, 0
/* 80D3CB60  41 82 00 2C */	beq lbl_80D3CB8C
/* 80D3CB64  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80D3CB68  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3CB6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3CB70  40 80 00 0C */	bge lbl_80D3CB7C
/* 80D3CB74  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80D3CB78  D0 1B 09 FC */	stfs f0, 0x9fc(r27)
lbl_80D3CB7C:
/* 80D3CB7C  38 00 00 00 */	li r0, 0
/* 80D3CB80  98 1B 0A 33 */	stb r0, 0xa33(r27)
/* 80D3CB84  7F 63 DB 78 */	mr r3, r27
/* 80D3CB88  48 00 0D C1 */	bl setWaterPrtcl__12daObj_YBag_cFv
lbl_80D3CB8C:
/* 80D3CB8C  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3CB90  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80D3CB94  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80D3CB98  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 80D3CB9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D3CBA0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80D3CBA4  38 00 00 00 */	li r0, 0
/* 80D3CBA8  98 1B 0A 31 */	stb r0, 0xa31(r27)
/* 80D3CBAC  38 00 00 01 */	li r0, 1
/* 80D3CBB0  98 1B 0A 32 */	stb r0, 0xa32(r27)
lbl_80D3CBB4:
/* 80D3CBB4  88 1B 0A 32 */	lbz r0, 0xa32(r27)
/* 80D3CBB8  28 00 00 00 */	cmplwi r0, 0
/* 80D3CBBC  41 82 00 8C */	beq lbl_80D3CC48
/* 80D3CBC0  88 1B 0A 31 */	lbz r0, 0xa31(r27)
/* 80D3CBC4  28 00 00 00 */	cmplwi r0, 0
/* 80D3CBC8  40 82 00 80 */	bne lbl_80D3CC48
/* 80D3CBCC  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80D3CBD0  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3CBD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3CBD8  40 80 00 20 */	bge lbl_80D3CBF8
/* 80D3CBDC  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 80D3CBE0  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 80D3CBE4  C0 5D 00 84 */	lfs f2, 0x84(r29)
/* 80D3CBE8  C0 7D 00 88 */	lfs f3, 0x88(r29)
/* 80D3CBEC  FC 80 10 90 */	fmr f4, f2
/* 80D3CBF0  4B 53 2D 8C */	b cLib_addCalc__FPfffff
/* 80D3CBF4  48 00 00 1C */	b lbl_80D3CC10
lbl_80D3CBF8:
/* 80D3CBF8  38 7B 04 FC */	addi r3, r27, 0x4fc
/* 80D3CBFC  C0 3D 00 80 */	lfs f1, 0x80(r29)
/* 80D3CC00  C0 5D 00 84 */	lfs f2, 0x84(r29)
/* 80D3CC04  FC 60 10 90 */	fmr f3, f2
/* 80D3CC08  FC 80 10 90 */	fmr f4, f2
/* 80D3CC0C  4B 53 2D 70 */	b cLib_addCalc__FPfffff
lbl_80D3CC10:
/* 80D3CC10  C0 5B 09 F4 */	lfs f2, 0x9f4(r27)
/* 80D3CC14  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80D3CC18  38 7D 00 30 */	addi r3, r29, 0x30
/* 80D3CC1C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80D3CC20  EC 01 00 2A */	fadds f0, f1, f0
/* 80D3CC24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D3CC28  40 80 00 20 */	bge lbl_80D3CC48
/* 80D3CC2C  38 00 01 00 */	li r0, 0x100
/* 80D3CC30  B0 1B 09 DE */	sth r0, 0x9de(r27)
/* 80D3CC34  80 1B 05 B4 */	lwz r0, 0x5b4(r27)
/* 80D3CC38  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80D3CC3C  90 1B 05 B4 */	stw r0, 0x5b4(r27)
/* 80D3CC40  38 00 00 01 */	li r0, 1
/* 80D3CC44  98 1B 0A 31 */	stb r0, 0xa31(r27)
lbl_80D3CC48:
/* 80D3CC48  88 1B 0A 31 */	lbz r0, 0xa31(r27)
/* 80D3CC4C  28 00 00 00 */	cmplwi r0, 0
/* 80D3CC50  41 82 01 D4 */	beq lbl_80D3CE24
/* 80D3CC54  80 1B 05 B4 */	lwz r0, 0x5b4(r27)
/* 80D3CC58  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80D3CC5C  41 82 00 34 */	beq lbl_80D3CC90
/* 80D3CC60  38 00 00 00 */	li r0, 0
/* 80D3CC64  98 1B 0A 31 */	stb r0, 0xa31(r27)
/* 80D3CC68  98 1B 0A 32 */	stb r0, 0xa32(r27)
/* 80D3CC6C  B0 1B 09 DC */	sth r0, 0x9dc(r27)
/* 80D3CC70  B0 1B 09 DE */	sth r0, 0x9de(r27)
/* 80D3CC74  B0 1B 09 E0 */	sth r0, 0x9e0(r27)
/* 80D3CC78  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3CC7C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80D3CC80  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80D3CC84  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80D3CC88  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80D3CC8C  48 00 02 B4 */	b lbl_80D3CF40
lbl_80D3CC90:
/* 80D3CC90  38 7B 09 2C */	addi r3, r27, 0x92c
/* 80D3CC94  38 81 00 1C */	addi r4, r1, 0x1c
/* 80D3CC98  38 A1 00 0C */	addi r5, r1, 0xc
/* 80D3CC9C  4B 31 4C C0 */	b dPath_GetPolyRoomPathVec__FRC13cBgS_PolyInfoP4cXyzPi
/* 80D3CCA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3CCA4  41 82 00 90 */	beq lbl_80D3CD34
/* 80D3CCA8  38 61 00 10 */	addi r3, r1, 0x10
/* 80D3CCAC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80D3CCB0  4B 52 A2 98 */	b normalizeZP__4cXyzFv
/* 80D3CCB4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80D3CCB8  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80D3CCBC  4B 52 A9 B8 */	b cM_atan2s__Fff
/* 80D3CCC0  7C 64 1B 78 */	mr r4, r3
/* 80D3CCC4  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80D3CCC8  38 A0 00 08 */	li r5, 8
/* 80D3CCCC  38 C0 04 00 */	li r6, 0x400
/* 80D3CCD0  4B 53 39 38 */	b cLib_addCalcAngleS2__FPssss
/* 80D3CCD4  38 7B 09 DE */	addi r3, r27, 0x9de
/* 80D3CCD8  A8 1B 09 DE */	lha r0, 0x9de(r27)
/* 80D3CCDC  2C 00 00 00 */	cmpwi r0, 0
/* 80D3CCE0  38 00 00 80 */	li r0, 0x80
/* 80D3CCE4  40 80 00 08 */	bge lbl_80D3CCEC
/* 80D3CCE8  38 00 FF 80 */	li r0, -128
lbl_80D3CCEC:
/* 80D3CCEC  7C 04 07 34 */	extsh r4, r0
/* 80D3CCF0  38 A0 00 10 */	li r5, 0x10
/* 80D3CCF4  4B 53 3E 9C */	b cLib_chaseAngleS__FPsss
/* 80D3CCF8  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80D3CCFC  C0 5D 00 8C */	lfs f2, 0x8c(r29)
/* 80D3CD00  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D3CD04  C8 3D 00 C0 */	lfd f1, 0xc0(r29)
/* 80D3CD08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D3CD0C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D3CD10  3C 00 43 30 */	lis r0, 0x4330
/* 80D3CD14  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D3CD18  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80D3CD1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D3CD20  EC 22 00 32 */	fmuls f1, f2, f0
/* 80D3CD24  C0 5D 00 90 */	lfs f2, 0x90(r29)
/* 80D3CD28  C0 7D 00 94 */	lfs f3, 0x94(r29)
/* 80D3CD2C  4B 53 2D 10 */	b cLib_addCalc2__FPffff
/* 80D3CD30  48 00 00 14 */	b lbl_80D3CD44
lbl_80D3CD34:
/* 80D3CD34  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80D3CD38  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80D3CD3C  C0 5D 00 98 */	lfs f2, 0x98(r29)
/* 80D3CD40  4B 53 3A 00 */	b cLib_chaseF__FPfff
lbl_80D3CD44:
/* 80D3CD44  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 80D3CD48  C0 3B 09 F4 */	lfs f1, 0x9f4(r27)
/* 80D3CD4C  38 9D 00 30 */	addi r4, r29, 0x30
/* 80D3CD50  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 80D3CD54  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D3CD58  C0 5D 00 84 */	lfs f2, 0x84(r29)
/* 80D3CD5C  C0 7D 00 80 */	lfs f3, 0x80(r29)
/* 80D3CD60  4B 53 2C DC */	b cLib_addCalc2__FPffff
/* 80D3CD64  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3CD68  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80D3CD6C  7F 63 DB 78 */	mr r3, r27
/* 80D3CD70  48 00 0D 01 */	bl setHamonPrtcl__12daObj_YBag_cFv
/* 80D3CD74  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3CD78  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80D3CD7C  80 1B 09 E4 */	lwz r0, 0x9e4(r27)
/* 80D3CD80  2C 00 00 00 */	cmpwi r0, 0
/* 80D3CD84  40 82 01 BC */	bne lbl_80D3CF40
/* 80D3CD88  80 1B 05 B4 */	lwz r0, 0x5b4(r27)
/* 80D3CD8C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80D3CD90  41 82 01 B0 */	beq lbl_80D3CF40
/* 80D3CD94  7F 63 DB 78 */	mr r3, r27
/* 80D3CD98  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80D3CD9C  38 A1 00 08 */	addi r5, r1, 8
/* 80D3CDA0  48 00 09 9D */	bl getWallAngle__12daObj_YBag_cFsPs
/* 80D3CDA4  2C 03 00 00 */	cmpwi r3, 0
/* 80D3CDA8  41 82 01 98 */	beq lbl_80D3CF40
/* 80D3CDAC  38 00 00 0A */	li r0, 0xa
/* 80D3CDB0  90 1B 09 E4 */	stw r0, 0x9e4(r27)
/* 80D3CDB4  A8 61 00 08 */	lha r3, 8(r1)
/* 80D3CDB8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80D3CDBC  7C 03 00 50 */	subf r0, r3, r0
/* 80D3CDC0  7C 1C 07 34 */	extsh r28, r0
/* 80D3CDC4  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 80D3CDC8  4B 52 AB C4 */	b cM_rndFX__Ff
/* 80D3CDCC  FC 00 08 1E */	fctiwz f0, f1
/* 80D3CDD0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80D3CDD4  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80D3CDD8  57 84 08 3C */	slwi r4, r28, 1
/* 80D3CDDC  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80D3CDE0  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80D3CDE4  7C 04 00 50 */	subf r0, r4, r0
/* 80D3CDE8  7C 00 2A 14 */	add r0, r0, r5
/* 80D3CDEC  7C 03 07 34 */	extsh r3, r0
/* 80D3CDF0  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80D3CDF4  7C 00 1A 14 */	add r0, r0, r3
/* 80D3CDF8  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80D3CDFC  A8 1B 09 DE */	lha r0, 0x9de(r27)
/* 80D3CE00  7C 00 00 D0 */	neg r0, r0
/* 80D3CE04  7C 00 0E 70 */	srawi r0, r0, 1
/* 80D3CE08  7C 00 01 94 */	addze r0, r0
/* 80D3CE0C  B0 1B 09 DE */	sth r0, 0x9de(r27)
/* 80D3CE10  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80D3CE14  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 80D3CE18  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D3CE1C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80D3CE20  48 00 01 20 */	b lbl_80D3CF40
lbl_80D3CE24:
/* 80D3CE24  88 1B 0A 32 */	lbz r0, 0xa32(r27)
/* 80D3CE28  28 00 00 00 */	cmplwi r0, 0
/* 80D3CE2C  41 82 00 20 */	beq lbl_80D3CE4C
/* 80D3CE30  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80D3CE34  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80D3CE38  C0 5D 00 7C */	lfs f2, 0x7c(r29)
/* 80D3CE3C  4B 53 39 04 */	b cLib_chaseF__FPfff
/* 80D3CE40  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3CE44  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80D3CE48  48 00 00 F8 */	b lbl_80D3CF40
lbl_80D3CE4C:
/* 80D3CE4C  80 1B 05 B4 */	lwz r0, 0x5b4(r27)
/* 80D3CE50  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80D3CE54  41 82 00 74 */	beq lbl_80D3CEC8
/* 80D3CE58  7F 63 DB 78 */	mr r3, r27
/* 80D3CE5C  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80D3CE60  38 A1 00 08 */	addi r5, r1, 8
/* 80D3CE64  48 00 08 D9 */	bl getWallAngle__12daObj_YBag_cFsPs
/* 80D3CE68  2C 03 00 00 */	cmpwi r3, 0
/* 80D3CE6C  41 82 00 5C */	beq lbl_80D3CEC8
/* 80D3CE70  A8 61 00 08 */	lha r3, 8(r1)
/* 80D3CE74  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80D3CE78  7C 03 00 50 */	subf r0, r3, r0
/* 80D3CE7C  7C 1C 07 34 */	extsh r28, r0
/* 80D3CE80  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 80D3CE84  4B 52 AB 08 */	b cM_rndFX__Ff
/* 80D3CE88  FC 00 08 1E */	fctiwz f0, f1
/* 80D3CE8C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80D3CE90  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80D3CE94  57 84 08 3C */	slwi r4, r28, 1
/* 80D3CE98  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80D3CE9C  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80D3CEA0  7C 04 00 50 */	subf r0, r4, r0
/* 80D3CEA4  7C 00 2A 14 */	add r0, r0, r5
/* 80D3CEA8  7C 03 07 34 */	extsh r3, r0
/* 80D3CEAC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80D3CEB0  7C 00 1A 14 */	add r0, r0, r3
/* 80D3CEB4  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80D3CEB8  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80D3CEBC  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 80D3CEC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D3CEC4  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_80D3CEC8:
/* 80D3CEC8  80 1B 05 B4 */	lwz r0, 0x5b4(r27)
/* 80D3CECC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80D3CED0  41 82 00 70 */	beq lbl_80D3CF40
/* 80D3CED4  C0 3B 09 C8 */	lfs f1, 0x9c8(r27)
/* 80D3CED8  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 80D3CEDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3CEE0  40 80 00 38 */	bge lbl_80D3CF18
/* 80D3CEE4  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 80D3CEE8  C0 3B 09 F4 */	lfs f1, 0x9f4(r27)
/* 80D3CEEC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D3CEF0  41 82 00 20 */	beq lbl_80D3CF10
/* 80D3CEF4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80D3CEF8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D3CEFC  4C 40 13 82 */	cror 2, 0, 2
/* 80D3CF00  40 82 00 10 */	bne lbl_80D3CF10
/* 80D3CF04  7F 63 DB 78 */	mr r3, r27
/* 80D3CF08  48 00 0A 41 */	bl setWaterPrtcl__12daObj_YBag_cFv
/* 80D3CF0C  48 00 00 0C */	b lbl_80D3CF18
lbl_80D3CF10:
/* 80D3CF10  7F 63 DB 78 */	mr r3, r27
/* 80D3CF14  48 00 09 B9 */	bl setSmokePrtcl__12daObj_YBag_cFv
lbl_80D3CF18:
/* 80D3CF18  88 1B 0A 33 */	lbz r0, 0xa33(r27)
/* 80D3CF1C  28 00 00 00 */	cmplwi r0, 0
/* 80D3CF20  41 82 00 0C */	beq lbl_80D3CF2C
/* 80D3CF24  38 00 00 00 */	li r0, 0
/* 80D3CF28  98 1B 0A 33 */	stb r0, 0xa33(r27)
lbl_80D3CF2C:
/* 80D3CF2C  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3CF30  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80D3CF34  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80D3CF38  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80D3CF3C  D0 1B 05 00 */	stfs f0, 0x500(r27)
lbl_80D3CF40:
/* 80D3CF40  88 1B 0A 33 */	lbz r0, 0xa33(r27)
/* 80D3CF44  28 00 00 00 */	cmplwi r0, 0
/* 80D3CF48  40 82 00 1C */	bne lbl_80D3CF64
/* 80D3CF4C  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 80D3CF50  60 00 00 10 */	ori r0, r0, 0x10
/* 80D3CF54  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 80D3CF58  88 1B 04 9A */	lbz r0, 0x49a(r27)
/* 80D3CF5C  60 00 00 20 */	ori r0, r0, 0x20
/* 80D3CF60  98 1B 04 9A */	stb r0, 0x49a(r27)
lbl_80D3CF64:
/* 80D3CF64  C0 1B 04 F8 */	lfs f0, 0x4f8(r27)
/* 80D3CF68  D0 1B 09 C4 */	stfs f0, 0x9c4(r27)
/* 80D3CF6C  C0 1B 04 FC */	lfs f0, 0x4fc(r27)
/* 80D3CF70  D0 1B 09 C8 */	stfs f0, 0x9c8(r27)
/* 80D3CF74  C0 1B 05 00 */	lfs f0, 0x500(r27)
/* 80D3CF78  D0 1B 09 CC */	stfs f0, 0x9cc(r27)
/* 80D3CF7C  88 1B 0A 32 */	lbz r0, 0xa32(r27)
/* 80D3CF80  28 00 00 00 */	cmplwi r0, 0
/* 80D3CF84  41 82 00 2C */	beq lbl_80D3CFB0
/* 80D3CF88  38 7B 09 FC */	addi r3, r27, 0x9fc
/* 80D3CF8C  34 1B 07 60 */	addic. r0, r27, 0x760
/* 80D3CF90  41 82 00 0C */	beq lbl_80D3CF9C
/* 80D3CF94  C0 3D 00 A8 */	lfs f1, 0xa8(r29)
/* 80D3CF98  48 00 00 08 */	b lbl_80D3CFA0
lbl_80D3CF9C:
/* 80D3CF9C  C0 3D 00 AC */	lfs f1, 0xac(r29)
lbl_80D3CFA0:
/* 80D3CFA0  C0 5D 00 B0 */	lfs f2, 0xb0(r29)
/* 80D3CFA4  C0 7D 00 B4 */	lfs f3, 0xb4(r29)
/* 80D3CFA8  4B 53 2A 94 */	b cLib_addCalc2__FPffff
/* 80D3CFAC  48 00 00 18 */	b lbl_80D3CFC4
lbl_80D3CFB0:
/* 80D3CFB0  38 7B 09 FC */	addi r3, r27, 0x9fc
/* 80D3CFB4  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80D3CFB8  C0 5D 00 90 */	lfs f2, 0x90(r29)
/* 80D3CFBC  C0 7D 00 B4 */	lfs f3, 0xb4(r29)
/* 80D3CFC0  4B 53 2A 7C */	b cLib_addCalc2__FPffff
lbl_80D3CFC4:
/* 80D3CFC4  A8 1B 0A 00 */	lha r0, 0xa00(r27)
/* 80D3CFC8  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80D3CFCC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D3CFD0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D3CFD4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80D3CFD8  7C 23 04 2E */	lfsx f1, r3, r0
/* 80D3CFDC  C0 1B 09 FC */	lfs f0, 0x9fc(r27)
/* 80D3CFE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D3CFE4  FC 00 00 1E */	fctiwz f0, f0
/* 80D3CFE8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80D3CFEC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80D3CFF0  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 80D3CFF4  3B 83 00 04 */	addi r28, r3, 4
/* 80D3CFF8  A8 1B 0A 00 */	lha r0, 0xa00(r27)
/* 80D3CFFC  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80D3D000  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D3D004  7C 3C 04 2E */	lfsx f1, r28, r0
/* 80D3D008  C0 1B 09 FC */	lfs f0, 0x9fc(r27)
/* 80D3D00C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D3D010  FC 00 00 1E */	fctiwz f0, f0
/* 80D3D014  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80D3D018  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D3D01C  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 80D3D020  38 7B 09 DE */	addi r3, r27, 0x9de
/* 80D3D024  38 80 00 00 */	li r4, 0
/* 80D3D028  38 A0 00 0A */	li r5, 0xa
/* 80D3D02C  4B 53 3B 64 */	b cLib_chaseAngleS__FPsss
/* 80D3D030  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80D3D034  A8 1B 09 DE */	lha r0, 0x9de(r27)
/* 80D3D038  7C 03 02 14 */	add r0, r3, r0
/* 80D3D03C  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80D3D040  A8 7B 0A 00 */	lha r3, 0xa00(r27)
/* 80D3D044  38 03 00 01 */	addi r0, r3, 1
/* 80D3D048  B0 1B 0A 00 */	sth r0, 0xa00(r27)
/* 80D3D04C  38 7B 09 EC */	addi r3, r27, 0x9ec
/* 80D3D050  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 80D3D054  C0 5D 00 98 */	lfs f2, 0x98(r29)
/* 80D3D058  4B 53 36 E8 */	b cLib_chaseF__FPfff
/* 80D3D05C  88 1B 0A 31 */	lbz r0, 0xa31(r27)
/* 80D3D060  28 00 00 00 */	cmplwi r0, 0
/* 80D3D064  41 82 00 8C */	beq lbl_80D3D0F0
/* 80D3D068  80 1B 09 E8 */	lwz r0, 0x9e8(r27)
/* 80D3D06C  2C 00 00 00 */	cmpwi r0, 0
/* 80D3D070  40 82 00 88 */	bne lbl_80D3D0F8
/* 80D3D074  C0 3B 07 60 */	lfs f1, 0x760(r27)
/* 80D3D078  EC 41 00 72 */	fmuls f2, f1, f1
/* 80D3D07C  C0 1B 07 68 */	lfs f0, 0x768(r27)
/* 80D3D080  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D3D084  EF E2 00 2A */	fadds f31, f2, f0
/* 80D3D088  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3D08C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80D3D090  40 81 00 0C */	ble lbl_80D3D09C
/* 80D3D094  FC 00 F8 34 */	frsqrte f0, f31
/* 80D3D098  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_80D3D09C:
/* 80D3D09C  C0 1D 00 94 */	lfs f0, 0x94(r29)
/* 80D3D0A0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80D3D0A4  40 80 00 54 */	bge lbl_80D3D0F8
/* 80D3D0A8  C0 5B 07 68 */	lfs f2, 0x768(r27)
/* 80D3D0AC  4B 52 A5 C8 */	b cM_atan2s__Fff
/* 80D3D0B0  B0 7B 0A 08 */	sth r3, 0xa08(r27)
/* 80D3D0B4  C0 3B 09 EC */	lfs f1, 0x9ec(r27)
/* 80D3D0B8  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 80D3D0BC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80D3D0C0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D3D0C4  D0 1B 09 EC */	stfs f0, 0x9ec(r27)
/* 80D3D0C8  C0 3D 00 BC */	lfs f1, 0xbc(r29)
/* 80D3D0CC  C0 1B 09 EC */	lfs f0, 0x9ec(r27)
/* 80D3D0D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3D0D4  40 80 00 08 */	bge lbl_80D3D0DC
/* 80D3D0D8  D0 3B 09 EC */	stfs f1, 0x9ec(r27)
lbl_80D3D0DC:
/* 80D3D0DC  38 00 02 00 */	li r0, 0x200
/* 80D3D0E0  B0 1B 09 DE */	sth r0, 0x9de(r27)
/* 80D3D0E4  38 00 00 0A */	li r0, 0xa
/* 80D3D0E8  90 1B 09 E8 */	stw r0, 0x9e8(r27)
/* 80D3D0EC  48 00 00 0C */	b lbl_80D3D0F8
lbl_80D3D0F0:
/* 80D3D0F0  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3D0F4  D0 1B 09 EC */	stfs f0, 0x9ec(r27)
lbl_80D3D0F8:
/* 80D3D0F8  A8 1B 0A 08 */	lha r0, 0xa08(r27)
/* 80D3D0FC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D3D100  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D3D104  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80D3D108  7C 23 04 2E */	lfsx f1, r3, r0
/* 80D3D10C  C0 1B 09 EC */	lfs f0, 0x9ec(r27)
/* 80D3D110  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D3D114  D0 1B 09 D0 */	stfs f0, 0x9d0(r27)
/* 80D3D118  A8 1B 0A 08 */	lha r0, 0xa08(r27)
/* 80D3D11C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D3D120  7C 3C 04 2E */	lfsx f1, r28, r0
/* 80D3D124  C0 1B 09 EC */	lfs f0, 0x9ec(r27)
/* 80D3D128  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D3D12C  D0 1B 09 D8 */	stfs f0, 0x9d8(r27)
/* 80D3D130  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80D3D134  D0 1B 09 D4 */	stfs f0, 0x9d4(r27)
/* 80D3D138  2C 1E 00 00 */	cmpwi r30, 0
/* 80D3D13C  40 82 00 28 */	bne lbl_80D3D164
/* 80D3D140  7F 63 DB 78 */	mr r3, r27
/* 80D3D144  4B 2D D4 C8 */	b fopAcM_calcSpeed__FP10fopAc_ac_c
/* 80D3D148  38 7B 04 F8 */	addi r3, r27, 0x4f8
/* 80D3D14C  38 9B 09 D0 */	addi r4, r27, 0x9d0
/* 80D3D150  7C 65 1B 78 */	mr r5, r3
/* 80D3D154  4B 60 9F 3C */	b PSVECAdd
/* 80D3D158  7F 63 DB 78 */	mr r3, r27
/* 80D3D15C  38 9B 07 60 */	addi r4, r27, 0x760
/* 80D3D160  4B 2D D5 00 */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
lbl_80D3D164:
/* 80D3D164  88 1B 0A 31 */	lbz r0, 0xa31(r27)
/* 80D3D168  28 00 00 00 */	cmplwi r0, 0
/* 80D3D16C  41 82 00 18 */	beq lbl_80D3D184
/* 80D3D170  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80D3D174  38 9B 0A 06 */	addi r4, r27, 0xa06
/* 80D3D178  38 BB 09 F8 */	addi r5, r27, 0x9f8
/* 80D3D17C  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 80D3D180  4B 2E 00 74 */	b fopAcM_riverStream__FP4cXyzPsPff
lbl_80D3D184:
/* 80D3D184  38 7B 05 88 */	addi r3, r27, 0x588
/* 80D3D188  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D3D18C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D3D190  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D3D194  4B 33 99 18 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80D3D198  80 1B 06 64 */	lwz r0, 0x664(r27)
/* 80D3D19C  90 1B 09 18 */	stw r0, 0x918(r27)
/* 80D3D1A0  80 1B 06 68 */	lwz r0, 0x668(r27)
/* 80D3D1A4  90 1B 09 1C */	stw r0, 0x91c(r27)
/* 80D3D1A8  80 1B 06 6C */	lwz r0, 0x66c(r27)
/* 80D3D1AC  90 1B 09 20 */	stw r0, 0x920(r27)
/* 80D3D1B0  88 1B 06 70 */	lbz r0, 0x670(r27)
/* 80D3D1B4  98 1B 09 24 */	stb r0, 0x924(r27)
/* 80D3D1B8  A0 1B 06 78 */	lhz r0, 0x678(r27)
/* 80D3D1BC  B0 1B 09 2C */	sth r0, 0x92c(r27)
/* 80D3D1C0  A0 1B 06 7A */	lhz r0, 0x67a(r27)
/* 80D3D1C4  B0 1B 09 2E */	sth r0, 0x92e(r27)
/* 80D3D1C8  80 1B 06 7C */	lwz r0, 0x67c(r27)
/* 80D3D1CC  90 1B 09 30 */	stw r0, 0x930(r27)
/* 80D3D1D0  80 1B 06 80 */	lwz r0, 0x680(r27)
/* 80D3D1D4  90 1B 09 34 */	stw r0, 0x934(r27)
/* 80D3D1D8  C0 1B 06 88 */	lfs f0, 0x688(r27)
/* 80D3D1DC  D0 1B 09 3C */	stfs f0, 0x93c(r27)
/* 80D3D1E0  C0 1B 06 8C */	lfs f0, 0x68c(r27)
/* 80D3D1E4  D0 1B 09 40 */	stfs f0, 0x940(r27)
/* 80D3D1E8  C0 1B 06 90 */	lfs f0, 0x690(r27)
/* 80D3D1EC  D0 1B 09 44 */	stfs f0, 0x944(r27)
/* 80D3D1F0  80 1B 06 94 */	lwz r0, 0x694(r27)
/* 80D3D1F4  90 1B 09 48 */	stw r0, 0x948(r27)
/* 80D3D1F8  C0 1B 06 98 */	lfs f0, 0x698(r27)
/* 80D3D1FC  D0 1B 09 4C */	stfs f0, 0x94c(r27)
/* 80D3D200  80 1B 06 9C */	lwz r0, 0x69c(r27)
/* 80D3D204  90 1B 09 50 */	stw r0, 0x950(r27)
/* 80D3D208  C0 1B 06 20 */	lfs f0, 0x620(r27)
/* 80D3D20C  D0 1B 09 F0 */	stfs f0, 0x9f0(r27)
/* 80D3D210  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 80D3D214  C0 1B 09 F0 */	lfs f0, 0x9f0(r27)
/* 80D3D218  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D3D21C  41 82 00 24 */	beq lbl_80D3D240
/* 80D3D220  38 7B 09 2C */	addi r3, r27, 0x92c
/* 80D3D224  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80D3D228  4B 41 83 44 */	b daNpcF_getGroundAngle__FP13cBgS_PolyInfos
/* 80D3D22C  B0 7B 0A 02 */	sth r3, 0xa02(r27)
/* 80D3D230  7F 63 DB 78 */	mr r3, r27
/* 80D3D234  48 00 02 35 */	bl setEnvTevColor__12daObj_YBag_cFv
/* 80D3D238  7F 63 DB 78 */	mr r3, r27
/* 80D3D23C  48 00 02 89 */	bl setRoomNo__12daObj_YBag_cFv
lbl_80D3D240:
/* 80D3D240  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80D3D244  D0 1B 05 50 */	stfs f0, 0x550(r27)
/* 80D3D248  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80D3D24C  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 80D3D250  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80D3D254  D0 1B 05 58 */	stfs f0, 0x558(r27)
/* 80D3D258  C0 3B 05 54 */	lfs f1, 0x554(r27)
/* 80D3D25C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80D3D260  EC 01 00 2A */	fadds f0, f1, f0
/* 80D3D264  D0 1B 05 54 */	stfs f0, 0x554(r27)
/* 80D3D268  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80D3D26C  D0 1B 05 38 */	stfs f0, 0x538(r27)
/* 80D3D270  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80D3D274  D0 1B 05 3C */	stfs f0, 0x53c(r27)
/* 80D3D278  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80D3D27C  D0 1B 05 40 */	stfs f0, 0x540(r27)
/* 80D3D280  7F 63 DB 78 */	mr r3, r27
/* 80D3D284  48 00 03 45 */	bl setMtx__12daObj_YBag_cFv
/* 80D3D288  7F 63 DB 78 */	mr r3, r27
/* 80D3D28C  A8 9B 0A 04 */	lha r4, 0xa04(r27)
/* 80D3D290  3C A0 00 01 */	lis r5, 1
/* 80D3D294  48 00 04 09 */	bl calcRollAngle__12daObj_YBag_cFsi
/* 80D3D298  B0 7B 0A 04 */	sth r3, 0xa04(r27)
/* 80D3D29C  38 7B 07 DC */	addi r3, r27, 0x7dc
/* 80D3D2A0  81 9B 08 18 */	lwz r12, 0x818(r27)
/* 80D3D2A4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80D3D2A8  7D 89 03 A6 */	mtctr r12
/* 80D3D2AC  4E 80 04 21 */	bctrl 
/* 80D3D2B0  38 7B 09 00 */	addi r3, r27, 0x900
/* 80D3D2B4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D3D2B8  4B 53 1F 48 */	b SetR__8cM3dGCylFf
/* 80D3D2BC  38 7B 09 00 */	addi r3, r27, 0x900
/* 80D3D2C0  38 9D 00 30 */	addi r4, r29, 0x30
/* 80D3D2C4  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80D3D2C8  4B 53 1F 30 */	b SetH__8cM3dGCylFf
/* 80D3D2CC  38 7B 09 00 */	addi r3, r27, 0x900
/* 80D3D2D0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80D3D2D4  4B 53 1F 08 */	b SetC__8cM3dGCylFRC4cXyz
/* 80D3D2D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3D2DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3D2E0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D3D2E4  38 9B 07 DC */	addi r4, r27, 0x7dc
/* 80D3D2E8  4B 52 78 C0 */	b Set__4cCcSFP8cCcD_Obj
/* 80D3D2EC  30 1E FF FF */	addic r0, r30, -1
/* 80D3D2F0  7C 00 F1 10 */	subfe r0, r0, r30
/* 80D3D2F4  98 1B 0A 34 */	stb r0, 0xa34(r27)
/* 80D3D2F8  38 7B 09 E4 */	addi r3, r27, 0x9e4
/* 80D3D2FC  48 00 08 95 */	bl func_80D3DB90
/* 80D3D300  38 7B 09 E8 */	addi r3, r27, 0x9e8
/* 80D3D304  48 00 08 8D */	bl func_80D3DB90
/* 80D3D308  38 60 00 01 */	li r3, 1
/* 80D3D30C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80D3D310  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80D3D314  39 61 00 50 */	addi r11, r1, 0x50
/* 80D3D318  4B 62 4F 08 */	b _restgpr_27
/* 80D3D31C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D3D320  7C 08 03 A6 */	mtlr r0
/* 80D3D324  38 21 00 60 */	addi r1, r1, 0x60
/* 80D3D328  4E 80 00 20 */	blr 
