lbl_804DB828:
/* 804DB828  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 804DB82C  7C 08 02 A6 */	mflr r0
/* 804DB830  90 01 01 44 */	stw r0, 0x144(r1)
/* 804DB834  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 804DB838  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 804DB83C  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 804DB840  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 804DB844  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 804DB848  F3 A1 01 18 */	psq_st f29, 280(r1), 0, 0 /* qr0 */
/* 804DB84C  39 61 01 10 */	addi r11, r1, 0x110
/* 804DB850  4B E8 69 65 */	bl _savegpr_19
/* 804DB854  7C 75 1B 78 */	mr r21, r3
/* 804DB858  3C 80 80 4E */	lis r4, lit_3766@ha /* 0x804DD5DC@ha */
/* 804DB85C  3B C4 D5 DC */	addi r30, r4, lit_3766@l /* 0x804DD5DC@l */
/* 804DB860  4B FF FF 4D */	bl setFrontBackPos__9daCanoe_cFv
/* 804DB864  38 75 09 D0 */	addi r3, r21, 0x9d0
/* 804DB868  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DB86C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DB870  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 804DB874  7F A4 EB 78 */	mr r4, r29
/* 804DB878  4B B9 B2 35 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804DB87C  38 75 0B A8 */	addi r3, r21, 0xba8
/* 804DB880  7F A4 EB 78 */	mr r4, r29
/* 804DB884  4B B9 B2 29 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804DB888  3B 20 00 00 */	li r25, 0
/* 804DB88C  3B 00 00 00 */	li r24, 0
/* 804DB890  3C 60 80 4E */	lis r3, __vt__8cM3dGPla@ha /* 0x804DD784@ha */
/* 804DB894  38 03 D7 84 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804DD784@l */
/* 804DB898  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 804DB89C  C0 35 14 98 */	lfs f1, 0x1498(r21)
/* 804DB8A0  C0 15 0A 68 */	lfs f0, 0xa68(r21)
/* 804DB8A4  EC 21 00 28 */	fsubs f1, f1, f0
/* 804DB8A8  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 804DB8AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB8B0  40 80 00 24 */	bge lbl_804DB8D4
/* 804DB8B4  C0 15 14 AC */	lfs f0, 0x14ac(r21)
/* 804DB8B8  D0 15 14 94 */	stfs f0, 0x1494(r21)
/* 804DB8BC  C0 15 14 B0 */	lfs f0, 0x14b0(r21)
/* 804DB8C0  D0 15 14 98 */	stfs f0, 0x1498(r21)
/* 804DB8C4  C0 15 14 B4 */	lfs f0, 0x14b4(r21)
/* 804DB8C8  D0 15 14 9C */	stfs f0, 0x149c(r21)
/* 804DB8CC  3B 60 00 01 */	li r27, 1
/* 804DB8D0  48 00 00 08 */	b lbl_804DB8D8
lbl_804DB8D4:
/* 804DB8D4  3B 60 00 00 */	li r27, 0
lbl_804DB8D8:
/* 804DB8D8  C0 35 14 A4 */	lfs f1, 0x14a4(r21)
/* 804DB8DC  C0 15 0C 40 */	lfs f0, 0xc40(r21)
/* 804DB8E0  EC 21 00 28 */	fsubs f1, f1, f0
/* 804DB8E4  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 804DB8E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB8EC  40 80 00 24 */	bge lbl_804DB910
/* 804DB8F0  C0 15 14 B8 */	lfs f0, 0x14b8(r21)
/* 804DB8F4  D0 15 14 A0 */	stfs f0, 0x14a0(r21)
/* 804DB8F8  C0 15 14 BC */	lfs f0, 0x14bc(r21)
/* 804DB8FC  D0 15 14 A4 */	stfs f0, 0x14a4(r21)
/* 804DB900  C0 15 14 C0 */	lfs f0, 0x14c0(r21)
/* 804DB904  D0 15 14 A8 */	stfs f0, 0x14a8(r21)
/* 804DB908  3B 40 00 01 */	li r26, 1
/* 804DB90C  48 00 00 08 */	b lbl_804DB914
lbl_804DB910:
/* 804DB910  3B 40 00 00 */	li r26, 0
lbl_804DB914:
/* 804DB914  A8 15 04 E6 */	lha r0, 0x4e6(r21)
/* 804DB918  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DB91C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804DB920  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804DB924  7C 23 04 2E */	lfsx f1, r3, r0
/* 804DB928  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 804DB92C  EF E0 00 72 */	fmuls f31, f0, f1
/* 804DB930  3B 83 00 04 */	addi r28, r3, 4
/* 804DB934  7C 3C 04 2E */	lfsx f1, r28, r0
/* 804DB938  EF C0 00 72 */	fmuls f30, f0, f1
/* 804DB93C  2C 1B 00 00 */	cmpwi r27, 0
/* 804DB940  40 82 02 4C */	bne lbl_804DBB8C
/* 804DB944  C0 15 14 9C */	lfs f0, 0x149c(r21)
/* 804DB948  EC 40 F0 2A */	fadds f2, f0, f30
/* 804DB94C  C0 35 14 98 */	lfs f1, 0x1498(r21)
/* 804DB950  C0 15 14 94 */	lfs f0, 0x1494(r21)
/* 804DB954  EC 00 F8 2A */	fadds f0, f0, f31
/* 804DB958  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804DB95C  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 804DB960  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 804DB964  38 75 13 AC */	addi r3, r21, 0x13ac
/* 804DB968  38 95 04 D0 */	addi r4, r21, 0x4d0
/* 804DB96C  38 A1 00 9C */	addi r5, r1, 0x9c
/* 804DB970  7E A6 AB 78 */	mr r6, r21
/* 804DB974  4B B9 C3 F1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804DB978  7F A3 EB 78 */	mr r3, r29
/* 804DB97C  38 95 13 AC */	addi r4, r21, 0x13ac
/* 804DB980  4B B9 8A 35 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804DB984  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804DB988  41 82 01 BC */	beq lbl_804DBB44
/* 804DB98C  38 95 13 DC */	addi r4, r21, 0x13dc
/* 804DB990  38 61 00 9C */	addi r3, r1, 0x9c
/* 804DB994  7C 65 1B 78 */	mr r5, r3
/* 804DB998  4B E6 B7 1D */	bl PSVECSubtract
/* 804DB99C  7F A3 EB 78 */	mr r3, r29
/* 804DB9A0  38 95 13 C0 */	addi r4, r21, 0x13c0
/* 804DB9A4  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 804DB9A8  4B B9 8D 9D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804DB9AC  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 804DB9B0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804DB9B4  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 804DB9B8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804DB9BC  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 804DB9C0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804DB9C4  38 61 00 30 */	addi r3, r1, 0x30
/* 804DB9C8  4B E6 B7 71 */	bl PSVECSquareMag
/* 804DB9CC  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 804DB9D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DB9D4  40 81 00 58 */	ble lbl_804DBA2C
/* 804DB9D8  FC 00 08 34 */	frsqrte f0, f1
/* 804DB9DC  C8 9E 00 B0 */	lfd f4, 0xb0(r30)
/* 804DB9E0  FC 44 00 32 */	fmul f2, f4, f0
/* 804DB9E4  C8 7E 00 B8 */	lfd f3, 0xb8(r30)
/* 804DB9E8  FC 00 00 32 */	fmul f0, f0, f0
/* 804DB9EC  FC 01 00 32 */	fmul f0, f1, f0
/* 804DB9F0  FC 03 00 28 */	fsub f0, f3, f0
/* 804DB9F4  FC 02 00 32 */	fmul f0, f2, f0
/* 804DB9F8  FC 44 00 32 */	fmul f2, f4, f0
/* 804DB9FC  FC 00 00 32 */	fmul f0, f0, f0
/* 804DBA00  FC 01 00 32 */	fmul f0, f1, f0
/* 804DBA04  FC 03 00 28 */	fsub f0, f3, f0
/* 804DBA08  FC 02 00 32 */	fmul f0, f2, f0
/* 804DBA0C  FC 44 00 32 */	fmul f2, f4, f0
/* 804DBA10  FC 00 00 32 */	fmul f0, f0, f0
/* 804DBA14  FC 01 00 32 */	fmul f0, f1, f0
/* 804DBA18  FC 03 00 28 */	fsub f0, f3, f0
/* 804DBA1C  FC 02 00 32 */	fmul f0, f2, f0
/* 804DBA20  FF A1 00 32 */	fmul f29, f1, f0
/* 804DBA24  FF A0 E8 18 */	frsp f29, f29
/* 804DBA28  48 00 00 90 */	b lbl_804DBAB8
lbl_804DBA2C:
/* 804DBA2C  C8 1E 00 C0 */	lfd f0, 0xc0(r30)
/* 804DBA30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DBA34  40 80 00 10 */	bge lbl_804DBA44
/* 804DBA38  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804DBA3C  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804DBA40  48 00 00 78 */	b lbl_804DBAB8
lbl_804DBA44:
/* 804DBA44  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804DBA48  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804DBA4C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804DBA50  3C 00 7F 80 */	lis r0, 0x7f80
/* 804DBA54  7C 03 00 00 */	cmpw r3, r0
/* 804DBA58  41 82 00 14 */	beq lbl_804DBA6C
/* 804DBA5C  40 80 00 40 */	bge lbl_804DBA9C
/* 804DBA60  2C 03 00 00 */	cmpwi r3, 0
/* 804DBA64  41 82 00 20 */	beq lbl_804DBA84
/* 804DBA68  48 00 00 34 */	b lbl_804DBA9C
lbl_804DBA6C:
/* 804DBA6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804DBA70  41 82 00 0C */	beq lbl_804DBA7C
/* 804DBA74  38 00 00 01 */	li r0, 1
/* 804DBA78  48 00 00 28 */	b lbl_804DBAA0
lbl_804DBA7C:
/* 804DBA7C  38 00 00 02 */	li r0, 2
/* 804DBA80  48 00 00 20 */	b lbl_804DBAA0
lbl_804DBA84:
/* 804DBA84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804DBA88  41 82 00 0C */	beq lbl_804DBA94
/* 804DBA8C  38 00 00 05 */	li r0, 5
/* 804DBA90  48 00 00 10 */	b lbl_804DBAA0
lbl_804DBA94:
/* 804DBA94  38 00 00 03 */	li r0, 3
/* 804DBA98  48 00 00 08 */	b lbl_804DBAA0
lbl_804DBA9C:
/* 804DBA9C  38 00 00 04 */	li r0, 4
lbl_804DBAA0:
/* 804DBAA0  2C 00 00 01 */	cmpwi r0, 1
/* 804DBAA4  40 82 00 10 */	bne lbl_804DBAB4
/* 804DBAA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804DBAAC  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804DBAB0  48 00 00 08 */	b lbl_804DBAB8
lbl_804DBAB4:
/* 804DBAB4  FF A0 08 90 */	fmr f29, f1
lbl_804DBAB8:
/* 804DBAB8  38 61 00 9C */	addi r3, r1, 0x9c
/* 804DBABC  4B D8 B6 6D */	bl atan2sX_Z__4cXyzCFv
/* 804DBAC0  7C 74 1B 78 */	mr r20, r3
/* 804DBAC4  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 804DBAC8  FC 20 00 50 */	fneg f1, f0
/* 804DBACC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 804DBAD0  FC 40 00 50 */	fneg f2, f0
/* 804DBAD4  4B D8 BB A1 */	bl cM_atan2s__Fff
/* 804DBAD8  7C 03 A0 50 */	subf r0, r3, r20
/* 804DBADC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DBAE0  7C 3C 04 2E */	lfsx f1, r28, r0
/* 804DBAE4  FC 00 E8 50 */	fneg f0, f29
/* 804DBAE8  EC 40 00 72 */	fmuls f2, f0, f1
/* 804DBAEC  C0 35 14 94 */	lfs f1, 0x1494(r21)
/* 804DBAF0  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 804DBAF4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804DBAF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DBAFC  D0 15 14 94 */	stfs f0, 0x1494(r21)
/* 804DBB00  C0 35 14 98 */	lfs f1, 0x1498(r21)
/* 804DBB04  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804DBB08  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DBB0C  D0 15 14 98 */	stfs f0, 0x1498(r21)
/* 804DBB10  C0 35 14 9C */	lfs f1, 0x149c(r21)
/* 804DBB14  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 804DBB18  EC 02 00 32 */	fmuls f0, f2, f0
/* 804DBB1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DBB20  D0 15 14 9C */	stfs f0, 0x149c(r21)
/* 804DBB24  3B 20 00 01 */	li r25, 1
/* 804DBB28  38 61 00 A8 */	addi r3, r1, 0xa8
/* 804DBB2C  4B D8 B5 FD */	bl atan2sX_Z__4cXyzCFv
/* 804DBB30  7C 77 1B 78 */	mr r23, r3
/* 804DBB34  7E A3 AB 78 */	mr r3, r21
/* 804DBB38  38 95 13 C0 */	addi r4, r21, 0x13c0
/* 804DBB3C  4B FF FC 19 */	bl checkGomikabe__9daCanoe_cFR13cBgS_PolyInfo
/* 804DBB40  48 00 00 4C */	b lbl_804DBB8C
lbl_804DBB44:
/* 804DBB44  80 15 09 FC */	lwz r0, 0x9fc(r21)
/* 804DBB48  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804DBB4C  41 82 00 40 */	beq lbl_804DBB8C
/* 804DBB50  3B 20 00 01 */	li r25, 1
/* 804DBB54  3B E0 00 00 */	li r31, 0
/* 804DBB58  3A 80 00 00 */	li r20, 0
lbl_804DBB5C:
/* 804DBB5C  7C 95 A2 14 */	add r4, r21, r20
/* 804DBB60  80 04 06 88 */	lwz r0, 0x688(r4)
/* 804DBB64  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804DBB68  41 82 00 14 */	beq lbl_804DBB7C
/* 804DBB6C  AA E4 06 B4 */	lha r23, 0x6b4(r4)
/* 804DBB70  7E A3 AB 78 */	mr r3, r21
/* 804DBB74  38 84 06 78 */	addi r4, r4, 0x678
/* 804DBB78  4B FF FB DD */	bl checkGomikabe__9daCanoe_cFR13cBgS_PolyInfo
lbl_804DBB7C:
/* 804DBB7C  3B FF 00 01 */	addi r31, r31, 1
/* 804DBB80  2C 1F 00 03 */	cmpwi r31, 3
/* 804DBB84  3A 94 00 40 */	addi r20, r20, 0x40
/* 804DBB88  41 80 FF D4 */	blt lbl_804DBB5C
lbl_804DBB8C:
/* 804DBB8C  2C 1A 00 00 */	cmpwi r26, 0
/* 804DBB90  40 82 02 4C */	bne lbl_804DBDDC
/* 804DBB94  C0 15 14 A8 */	lfs f0, 0x14a8(r21)
/* 804DBB98  EC 40 F0 28 */	fsubs f2, f0, f30
/* 804DBB9C  C0 35 14 A4 */	lfs f1, 0x14a4(r21)
/* 804DBBA0  C0 15 14 A0 */	lfs f0, 0x14a0(r21)
/* 804DBBA4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804DBBA8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804DBBAC  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 804DBBB0  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 804DBBB4  38 75 13 AC */	addi r3, r21, 0x13ac
/* 804DBBB8  38 95 04 D0 */	addi r4, r21, 0x4d0
/* 804DBBBC  38 A1 00 9C */	addi r5, r1, 0x9c
/* 804DBBC0  7E A6 AB 78 */	mr r6, r21
/* 804DBBC4  4B B9 C1 A1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804DBBC8  7F A3 EB 78 */	mr r3, r29
/* 804DBBCC  38 95 13 AC */	addi r4, r21, 0x13ac
/* 804DBBD0  4B B9 87 E5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804DBBD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804DBBD8  41 82 01 BC */	beq lbl_804DBD94
/* 804DBBDC  38 95 13 DC */	addi r4, r21, 0x13dc
/* 804DBBE0  38 61 00 9C */	addi r3, r1, 0x9c
/* 804DBBE4  7C 65 1B 78 */	mr r5, r3
/* 804DBBE8  4B E6 B4 CD */	bl PSVECSubtract
/* 804DBBEC  7F A3 EB 78 */	mr r3, r29
/* 804DBBF0  38 95 13 C0 */	addi r4, r21, 0x13c0
/* 804DBBF4  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 804DBBF8  4B B9 8B 4D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804DBBFC  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 804DBC00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804DBC04  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 804DBC08  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804DBC0C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 804DBC10  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804DBC14  38 61 00 24 */	addi r3, r1, 0x24
/* 804DBC18  4B E6 B5 21 */	bl PSVECSquareMag
/* 804DBC1C  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 804DBC20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DBC24  40 81 00 58 */	ble lbl_804DBC7C
/* 804DBC28  FC 00 08 34 */	frsqrte f0, f1
/* 804DBC2C  C8 9E 00 B0 */	lfd f4, 0xb0(r30)
/* 804DBC30  FC 44 00 32 */	fmul f2, f4, f0
/* 804DBC34  C8 7E 00 B8 */	lfd f3, 0xb8(r30)
/* 804DBC38  FC 00 00 32 */	fmul f0, f0, f0
/* 804DBC3C  FC 01 00 32 */	fmul f0, f1, f0
/* 804DBC40  FC 03 00 28 */	fsub f0, f3, f0
/* 804DBC44  FC 02 00 32 */	fmul f0, f2, f0
/* 804DBC48  FC 44 00 32 */	fmul f2, f4, f0
/* 804DBC4C  FC 00 00 32 */	fmul f0, f0, f0
/* 804DBC50  FC 01 00 32 */	fmul f0, f1, f0
/* 804DBC54  FC 03 00 28 */	fsub f0, f3, f0
/* 804DBC58  FC 02 00 32 */	fmul f0, f2, f0
/* 804DBC5C  FC 44 00 32 */	fmul f2, f4, f0
/* 804DBC60  FC 00 00 32 */	fmul f0, f0, f0
/* 804DBC64  FC 01 00 32 */	fmul f0, f1, f0
/* 804DBC68  FC 03 00 28 */	fsub f0, f3, f0
/* 804DBC6C  FC 02 00 32 */	fmul f0, f2, f0
/* 804DBC70  FF A1 00 32 */	fmul f29, f1, f0
/* 804DBC74  FF A0 E8 18 */	frsp f29, f29
/* 804DBC78  48 00 00 90 */	b lbl_804DBD08
lbl_804DBC7C:
/* 804DBC7C  C8 1E 00 C0 */	lfd f0, 0xc0(r30)
/* 804DBC80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DBC84  40 80 00 10 */	bge lbl_804DBC94
/* 804DBC88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804DBC8C  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804DBC90  48 00 00 78 */	b lbl_804DBD08
lbl_804DBC94:
/* 804DBC94  D0 21 00 08 */	stfs f1, 8(r1)
/* 804DBC98  80 81 00 08 */	lwz r4, 8(r1)
/* 804DBC9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804DBCA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 804DBCA4  7C 03 00 00 */	cmpw r3, r0
/* 804DBCA8  41 82 00 14 */	beq lbl_804DBCBC
/* 804DBCAC  40 80 00 40 */	bge lbl_804DBCEC
/* 804DBCB0  2C 03 00 00 */	cmpwi r3, 0
/* 804DBCB4  41 82 00 20 */	beq lbl_804DBCD4
/* 804DBCB8  48 00 00 34 */	b lbl_804DBCEC
lbl_804DBCBC:
/* 804DBCBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804DBCC0  41 82 00 0C */	beq lbl_804DBCCC
/* 804DBCC4  38 00 00 01 */	li r0, 1
/* 804DBCC8  48 00 00 28 */	b lbl_804DBCF0
lbl_804DBCCC:
/* 804DBCCC  38 00 00 02 */	li r0, 2
/* 804DBCD0  48 00 00 20 */	b lbl_804DBCF0
lbl_804DBCD4:
/* 804DBCD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804DBCD8  41 82 00 0C */	beq lbl_804DBCE4
/* 804DBCDC  38 00 00 05 */	li r0, 5
/* 804DBCE0  48 00 00 10 */	b lbl_804DBCF0
lbl_804DBCE4:
/* 804DBCE4  38 00 00 03 */	li r0, 3
/* 804DBCE8  48 00 00 08 */	b lbl_804DBCF0
lbl_804DBCEC:
/* 804DBCEC  38 00 00 04 */	li r0, 4
lbl_804DBCF0:
/* 804DBCF0  2C 00 00 01 */	cmpwi r0, 1
/* 804DBCF4  40 82 00 10 */	bne lbl_804DBD04
/* 804DBCF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804DBCFC  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804DBD00  48 00 00 08 */	b lbl_804DBD08
lbl_804DBD04:
/* 804DBD04  FF A0 08 90 */	fmr f29, f1
lbl_804DBD08:
/* 804DBD08  38 61 00 9C */	addi r3, r1, 0x9c
/* 804DBD0C  4B D8 B4 1D */	bl atan2sX_Z__4cXyzCFv
/* 804DBD10  7C 74 1B 78 */	mr r20, r3
/* 804DBD14  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 804DBD18  FC 20 00 50 */	fneg f1, f0
/* 804DBD1C  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 804DBD20  FC 40 00 50 */	fneg f2, f0
/* 804DBD24  4B D8 B9 51 */	bl cM_atan2s__Fff
/* 804DBD28  7C 03 A0 50 */	subf r0, r3, r20
/* 804DBD2C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DBD30  7C 3C 04 2E */	lfsx f1, r28, r0
/* 804DBD34  FC 00 E8 50 */	fneg f0, f29
/* 804DBD38  EC 40 00 72 */	fmuls f2, f0, f1
/* 804DBD3C  C0 35 14 A0 */	lfs f1, 0x14a0(r21)
/* 804DBD40  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 804DBD44  EC 02 00 32 */	fmuls f0, f2, f0
/* 804DBD48  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DBD4C  D0 15 14 A0 */	stfs f0, 0x14a0(r21)
/* 804DBD50  C0 35 14 A4 */	lfs f1, 0x14a4(r21)
/* 804DBD54  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804DBD58  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DBD5C  D0 15 14 A4 */	stfs f0, 0x14a4(r21)
/* 804DBD60  C0 35 14 A8 */	lfs f1, 0x14a8(r21)
/* 804DBD64  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 804DBD68  EC 02 00 32 */	fmuls f0, f2, f0
/* 804DBD6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DBD70  D0 15 14 A8 */	stfs f0, 0x14a8(r21)
/* 804DBD74  3B 00 00 01 */	li r24, 1
/* 804DBD78  38 61 00 A8 */	addi r3, r1, 0xa8
/* 804DBD7C  4B D8 B3 AD */	bl atan2sX_Z__4cXyzCFv
/* 804DBD80  7C 76 1B 78 */	mr r22, r3
/* 804DBD84  7E A3 AB 78 */	mr r3, r21
/* 804DBD88  38 95 13 C0 */	addi r4, r21, 0x13c0
/* 804DBD8C  4B FF F9 C9 */	bl checkGomikabe__9daCanoe_cFR13cBgS_PolyInfo
/* 804DBD90  48 00 00 4C */	b lbl_804DBDDC
lbl_804DBD94:
/* 804DBD94  80 15 0B D4 */	lwz r0, 0xbd4(r21)
/* 804DBD98  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804DBD9C  41 82 00 40 */	beq lbl_804DBDDC
/* 804DBDA0  3B 00 00 01 */	li r24, 1
/* 804DBDA4  3B E0 00 00 */	li r31, 0
/* 804DBDA8  3A 80 00 00 */	li r20, 0
lbl_804DBDAC:
/* 804DBDAC  7C 95 A2 14 */	add r4, r21, r20
/* 804DBDB0  80 04 07 48 */	lwz r0, 0x748(r4)
/* 804DBDB4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804DBDB8  41 82 00 14 */	beq lbl_804DBDCC
/* 804DBDBC  AA C4 07 74 */	lha r22, 0x774(r4)
/* 804DBDC0  7E A3 AB 78 */	mr r3, r21
/* 804DBDC4  38 84 07 38 */	addi r4, r4, 0x738
/* 804DBDC8  4B FF F9 8D */	bl checkGomikabe__9daCanoe_cFR13cBgS_PolyInfo
lbl_804DBDCC:
/* 804DBDCC  3B FF 00 01 */	addi r31, r31, 1
/* 804DBDD0  2C 1F 00 03 */	cmpwi r31, 3
/* 804DBDD4  3A 94 00 40 */	addi r20, r20, 0x40
/* 804DBDD8  41 80 FF D4 */	blt lbl_804DBDAC
lbl_804DBDDC:
/* 804DBDDC  A8 75 14 5C */	lha r3, 0x145c(r21)
/* 804DBDE0  2C 03 00 00 */	cmpwi r3, 0
/* 804DBDE4  40 81 00 0C */	ble lbl_804DBDF0
/* 804DBDE8  38 03 FF FF */	addi r0, r3, -1
/* 804DBDEC  B0 15 14 5C */	sth r0, 0x145c(r21)
lbl_804DBDF0:
/* 804DBDF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DBDF4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DBDF8  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804DBDFC  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 804DBE00  28 00 00 2D */	cmplwi r0, 0x2d
/* 804DBE04  40 82 01 C8 */	bne lbl_804DBFCC
/* 804DBE08  3A 60 00 00 */	li r19, 0
/* 804DBE0C  3A 80 00 00 */	li r20, 0
lbl_804DBE10:
/* 804DBE10  38 74 05 F8 */	addi r3, r20, 0x5f8
/* 804DBE14  7C 75 1A 14 */	add r3, r21, r3
/* 804DBE18  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 804DBE1C  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 804DBE20  4B B9 A1 39 */	bl SetWall__12dBgS_AcchCirFff
/* 804DBE24  3A 73 00 01 */	addi r19, r19, 1
/* 804DBE28  2C 13 00 03 */	cmpwi r19, 3
/* 804DBE2C  3A 94 00 C0 */	addi r20, r20, 0xc0
/* 804DBE30  41 80 FF E0 */	blt lbl_804DBE10
/* 804DBE34  C0 35 14 CC */	lfs f1, 0x14cc(r21)
/* 804DBE38  C0 15 14 C4 */	lfs f0, 0x14c4(r21)
/* 804DBE3C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804DBE40  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 804DBE44  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804DBE48  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 804DBE4C  38 61 00 3C */	addi r3, r1, 0x3c
/* 804DBE50  4B E6 B2 E9 */	bl PSVECSquareMag
/* 804DBE54  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 804DBE58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DBE5C  40 81 01 68 */	ble lbl_804DBFC4
/* 804DBE60  2C 19 00 00 */	cmpwi r25, 0
/* 804DBE64  40 82 00 0C */	bne lbl_804DBE70
/* 804DBE68  2C 18 00 00 */	cmpwi r24, 0
/* 804DBE6C  41 82 01 58 */	beq lbl_804DBFC4
lbl_804DBE70:
/* 804DBE70  88 15 14 47 */	lbz r0, 0x1447(r21)
/* 804DBE74  28 00 00 00 */	cmplwi r0, 0
/* 804DBE78  40 82 01 54 */	bne lbl_804DBFCC
/* 804DBE7C  A8 15 14 5C */	lha r0, 0x145c(r21)
/* 804DBE80  2C 00 00 00 */	cmpwi r0, 0
/* 804DBE84  40 82 01 48 */	bne lbl_804DBFCC
/* 804DBE88  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 804DBE8C  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 804DBE90  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 804DBE94  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 804DBE98  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 804DBE9C  38 7D 4C 9C */	addi r3, r29, 0x4c9c
/* 804DBEA0  38 80 00 06 */	li r4, 6
/* 804DBEA4  38 A0 00 0F */	li r5, 0xf
/* 804DBEA8  38 C1 00 84 */	addi r6, r1, 0x84
/* 804DBEAC  4B B9 3B 79 */	bl StartShock__12dVibration_cFii4cXyz
/* 804DBEB0  38 00 00 01 */	li r0, 1
/* 804DBEB4  98 15 14 47 */	stb r0, 0x1447(r21)
/* 804DBEB8  38 00 00 1E */	li r0, 0x1e
/* 804DBEBC  B0 15 14 5C */	sth r0, 0x145c(r21)
/* 804DBEC0  38 00 00 00 */	li r0, 0
/* 804DBEC4  90 15 14 90 */	stw r0, 0x1490(r21)
/* 804DBEC8  A0 75 14 5E */	lhz r3, 0x145e(r21)
/* 804DBECC  38 03 00 01 */	addi r0, r3, 1
/* 804DBED0  B0 15 14 5E */	sth r0, 0x145e(r21)
/* 804DBED4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 804DBED8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 804DBEDC  A0 15 14 5E */	lhz r0, 0x145e(r21)
/* 804DBEE0  7C 04 07 74 */	extsb r4, r0
/* 804DBEE4  4B D4 23 85 */	bl setMiniGameCount__13dMeter2Info_cFSc
/* 804DBEE8  A8 75 14 50 */	lha r3, 0x1450(r21)
/* 804DBEEC  2C 03 00 00 */	cmpwi r3, 0
/* 804DBEF0  40 80 00 10 */	bge lbl_804DBF00
/* 804DBEF4  38 03 FF 00 */	addi r0, r3, -256
/* 804DBEF8  B0 15 14 50 */	sth r0, 0x1450(r21)
/* 804DBEFC  48 00 00 0C */	b lbl_804DBF08
lbl_804DBF00:
/* 804DBF00  38 03 01 00 */	addi r0, r3, 0x100
/* 804DBF04  B0 15 14 50 */	sth r0, 0x1450(r21)
lbl_804DBF08:
/* 804DBF08  2C 19 00 00 */	cmpwi r25, 0
/* 804DBF0C  41 82 00 0C */	beq lbl_804DBF18
/* 804DBF10  B2 F5 14 60 */	sth r23, 0x1460(r21)
/* 804DBF14  48 00 00 08 */	b lbl_804DBF1C
lbl_804DBF18:
/* 804DBF18  B2 D5 14 60 */	sth r22, 0x1460(r21)
lbl_804DBF1C:
/* 804DBF1C  38 75 14 C4 */	addi r3, r21, 0x14c4
/* 804DBF20  7C 64 1B 78 */	mr r4, r3
/* 804DBF24  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 804DBF28  4B E6 B1 B1 */	bl PSVECScale
/* 804DBF2C  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804DBF30  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 804DBF34  64 00 20 00 */	oris r0, r0, 0x2000
/* 804DBF38  90 03 05 8C */	stw r0, 0x58c(r3)
/* 804DBF3C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 804DBF40  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 804DBF44  88 83 00 BC */	lbz r4, 0xbc(r3)
/* 804DBF48  28 04 00 00 */	cmplwi r4, 0
/* 804DBF4C  41 82 00 48 */	beq lbl_804DBF94
/* 804DBF50  38 04 FF FF */	addi r0, r4, -1
/* 804DBF54  98 03 00 BC */	stb r0, 0xbc(r3)
/* 804DBF58  38 00 00 CE */	li r0, 0xce
/* 804DBF5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DBF60  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804DBF64  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804DBF68  80 63 00 00 */	lwz r3, 0(r3)
/* 804DBF6C  38 81 00 10 */	addi r4, r1, 0x10
/* 804DBF70  38 A0 00 00 */	li r5, 0
/* 804DBF74  38 C0 00 00 */	li r6, 0
/* 804DBF78  38 E0 00 00 */	li r7, 0
/* 804DBF7C  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804DBF80  FC 40 08 90 */	fmr f2, f1
/* 804DBF84  C0 7E 00 84 */	lfs f3, 0x84(r30)
/* 804DBF88  FC 80 18 90 */	fmr f4, f3
/* 804DBF8C  39 00 00 00 */	li r8, 0
/* 804DBF90  4B DC F9 F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804DBF94:
/* 804DBF94  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002009E@ha */
/* 804DBF98  38 03 00 9E */	addi r0, r3, 0x009E /* 0x0002009E@l */
/* 804DBF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DBFA0  38 75 14 1C */	addi r3, r21, 0x141c
/* 804DBFA4  38 81 00 14 */	addi r4, r1, 0x14
/* 804DBFA8  38 A0 00 00 */	li r5, 0
/* 804DBFAC  38 C0 FF FF */	li r6, -1
/* 804DBFB0  81 95 14 2C */	lwz r12, 0x142c(r21)
/* 804DBFB4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804DBFB8  7D 89 03 A6 */	mtctr r12
/* 804DBFBC  4E 80 04 21 */	bctrl 
/* 804DBFC0  48 00 00 0C */	b lbl_804DBFCC
lbl_804DBFC4:
/* 804DBFC4  38 00 00 00 */	li r0, 0
/* 804DBFC8  98 15 14 47 */	stb r0, 0x1447(r21)
lbl_804DBFCC:
/* 804DBFCC  38 61 00 78 */	addi r3, r1, 0x78
/* 804DBFD0  38 95 14 94 */	addi r4, r21, 0x1494
/* 804DBFD4  38 B5 14 A0 */	addi r5, r21, 0x14a0
/* 804DBFD8  4B D8 AB 5D */	bl __mi__4cXyzCFRC3Vec
/* 804DBFDC  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 804DBFE0  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 804DBFE4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 804DBFE8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804DBFEC  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 804DBFF0  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 804DBFF4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 804DBFF8  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 804DBFFC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804DC000  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804DC004  38 61 00 18 */	addi r3, r1, 0x18
/* 804DC008  4B E6 B1 31 */	bl PSVECSquareMag
/* 804DC00C  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 804DC010  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DC014  40 81 00 08 */	ble lbl_804DC01C
/* 804DC018  48 00 00 0C */	b lbl_804DC024
lbl_804DC01C:
/* 804DC01C  C8 1E 00 C0 */	lfd f0, 0xc0(r30)
/* 804DC020  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_804DC024:
/* 804DC024  38 61 00 90 */	addi r3, r1, 0x90
/* 804DC028  4B D8 B1 01 */	bl atan2sX_Z__4cXyzCFv
/* 804DC02C  B0 75 04 E6 */	sth r3, 0x4e6(r21)
/* 804DC030  A8 15 04 E6 */	lha r0, 0x4e6(r21)
/* 804DC034  B0 15 04 DE */	sth r0, 0x4de(r21)
/* 804DC038  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804DC03C  4B C1 7B 75 */	bl getCanoeMaxSpeed__9daAlink_cCFv
/* 804DC040  FF E0 08 90 */	fmr f31, f1
/* 804DC044  2C 19 00 00 */	cmpwi r25, 0
/* 804DC048  40 82 00 0C */	bne lbl_804DC054
/* 804DC04C  2C 1B 00 00 */	cmpwi r27, 0
/* 804DC050  41 82 00 C8 */	beq lbl_804DC118
lbl_804DC054:
/* 804DC054  38 61 00 6C */	addi r3, r1, 0x6c
/* 804DC058  38 81 00 90 */	addi r4, r1, 0x90
/* 804DC05C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 804DC060  38 BE 00 24 */	addi r5, r30, 0x24
/* 804DC064  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 804DC068  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DC06C  EC 21 00 24 */	fdivs f1, f1, f0
/* 804DC070  4B D8 AB 15 */	bl __ml__4cXyzCFf
/* 804DC074  38 61 00 60 */	addi r3, r1, 0x60
/* 804DC078  38 95 14 94 */	addi r4, r21, 0x1494
/* 804DC07C  38 A1 00 6C */	addi r5, r1, 0x6c
/* 804DC080  4B D8 AA B5 */	bl __mi__4cXyzCFRC3Vec
/* 804DC084  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804DC088  D0 15 04 D0 */	stfs f0, 0x4d0(r21)
/* 804DC08C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 804DC090  D0 15 04 D4 */	stfs f0, 0x4d4(r21)
/* 804DC094  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 804DC098  D0 15 04 D8 */	stfs f0, 0x4d8(r21)
/* 804DC09C  7E A3 AB 78 */	mr r3, r21
/* 804DC0A0  4B FF F7 0D */	bl setFrontBackPos__9daCanoe_cFv
/* 804DC0A4  C0 35 05 2C */	lfs f1, 0x52c(r21)
/* 804DC0A8  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 804DC0AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DC0B0  40 81 01 34 */	ble lbl_804DC1E4
/* 804DC0B4  2C 1B 00 00 */	cmpwi r27, 0
/* 804DC0B8  41 82 00 0C */	beq lbl_804DC0C4
/* 804DC0BC  D0 15 05 2C */	stfs f0, 0x52c(r21)
/* 804DC0C0  48 00 01 24 */	b lbl_804DC1E4
lbl_804DC0C4:
/* 804DC0C4  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 804DC0C8  3C 63 00 01 */	addis r3, r3, 1
/* 804DC0CC  38 03 80 00 */	addi r0, r3, -32768
/* 804DC0D0  7C 17 00 50 */	subf r0, r23, r0
/* 804DC0D4  7C 13 07 34 */	extsh r19, r0
/* 804DC0D8  7E 63 9B 78 */	mr r3, r19
/* 804DC0DC  4B E8 8F F5 */	bl abs
/* 804DC0E0  2C 03 40 00 */	cmpwi r3, 0x4000
/* 804DC0E4  40 80 01 00 */	bge lbl_804DC1E4
/* 804DC0E8  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 804DC0EC  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 804DC0F0  56 60 04 38 */	rlwinm r0, r19, 0, 0x10, 0x1c
/* 804DC0F4  7C 1C 04 2E */	lfsx f0, r28, r0
/* 804DC0F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804DC0FC  EC 02 00 28 */	fsubs f0, f2, f0
/* 804DC100  EC 3F 00 32 */	fmuls f1, f31, f0
/* 804DC104  C0 15 05 2C */	lfs f0, 0x52c(r21)
/* 804DC108  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804DC10C  40 81 00 D8 */	ble lbl_804DC1E4
/* 804DC110  D0 35 05 2C */	stfs f1, 0x52c(r21)
/* 804DC114  48 00 00 D0 */	b lbl_804DC1E4
lbl_804DC118:
/* 804DC118  2C 1A 00 00 */	cmpwi r26, 0
/* 804DC11C  40 82 00 0C */	bne lbl_804DC128
/* 804DC120  2C 18 00 00 */	cmpwi r24, 0
/* 804DC124  41 82 00 C0 */	beq lbl_804DC1E4
lbl_804DC128:
/* 804DC128  38 61 00 54 */	addi r3, r1, 0x54
/* 804DC12C  38 81 00 90 */	addi r4, r1, 0x90
/* 804DC130  38 BE 00 24 */	addi r5, r30, 0x24
/* 804DC134  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 804DC138  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 804DC13C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DC140  EC 21 00 24 */	fdivs f1, f1, f0
/* 804DC144  4B D8 AA 41 */	bl __ml__4cXyzCFf
/* 804DC148  38 61 00 48 */	addi r3, r1, 0x48
/* 804DC14C  38 95 14 A0 */	addi r4, r21, 0x14a0
/* 804DC150  38 A1 00 54 */	addi r5, r1, 0x54
/* 804DC154  4B D8 A9 E1 */	bl __mi__4cXyzCFRC3Vec
/* 804DC158  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804DC15C  D0 15 04 D0 */	stfs f0, 0x4d0(r21)
/* 804DC160  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804DC164  D0 15 04 D4 */	stfs f0, 0x4d4(r21)
/* 804DC168  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 804DC16C  D0 15 04 D8 */	stfs f0, 0x4d8(r21)
/* 804DC170  7E A3 AB 78 */	mr r3, r21
/* 804DC174  4B FF F6 39 */	bl setFrontBackPos__9daCanoe_cFv
/* 804DC178  C0 35 05 2C */	lfs f1, 0x52c(r21)
/* 804DC17C  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 804DC180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DC184  40 80 00 60 */	bge lbl_804DC1E4
/* 804DC188  2C 1A 00 00 */	cmpwi r26, 0
/* 804DC18C  41 82 00 0C */	beq lbl_804DC198
/* 804DC190  D0 15 05 2C */	stfs f0, 0x52c(r21)
/* 804DC194  48 00 00 50 */	b lbl_804DC1E4
lbl_804DC198:
/* 804DC198  A8 15 04 E6 */	lha r0, 0x4e6(r21)
/* 804DC19C  7C 16 00 50 */	subf r0, r22, r0
/* 804DC1A0  7C 14 07 34 */	extsh r20, r0
/* 804DC1A4  7E 83 A3 78 */	mr r3, r20
/* 804DC1A8  4B E8 8F 29 */	bl abs
/* 804DC1AC  2C 03 40 00 */	cmpwi r3, 0x4000
/* 804DC1B0  40 80 00 34 */	bge lbl_804DC1E4
/* 804DC1B4  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 804DC1B8  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 804DC1BC  56 80 04 38 */	rlwinm r0, r20, 0, 0x10, 0x1c
/* 804DC1C0  7C 1C 04 2E */	lfsx f0, r28, r0
/* 804DC1C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804DC1C8  EC 02 00 28 */	fsubs f0, f2, f0
/* 804DC1CC  FC 00 00 50 */	fneg f0, f0
/* 804DC1D0  EC 3F 00 32 */	fmuls f1, f31, f0
/* 804DC1D4  C0 15 05 2C */	lfs f0, 0x52c(r21)
/* 804DC1D8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804DC1DC  40 80 00 08 */	bge lbl_804DC1E4
/* 804DC1E0  D0 35 05 2C */	stfs f1, 0x52c(r21)
lbl_804DC1E4:
/* 804DC1E4  A8 15 14 5C */	lha r0, 0x145c(r21)
/* 804DC1E8  2C 00 00 00 */	cmpwi r0, 0
/* 804DC1EC  41 82 00 C0 */	beq lbl_804DC2AC
/* 804DC1F0  A8 75 14 60 */	lha r3, 0x1460(r21)
/* 804DC1F4  A8 15 04 E6 */	lha r0, 0x4e6(r21)
/* 804DC1F8  7C 03 00 50 */	subf r0, r3, r0
/* 804DC1FC  7C 00 07 35 */	extsh. r0, r0
/* 804DC200  38 03 C0 00 */	addi r0, r3, -16384
/* 804DC204  7C 04 07 34 */	extsh r4, r0
/* 804DC208  41 80 00 0C */	blt lbl_804DC214
/* 804DC20C  38 03 40 00 */	addi r0, r3, 0x4000
/* 804DC210  7C 04 07 34 */	extsh r4, r0
lbl_804DC214:
/* 804DC214  38 75 04 E6 */	addi r3, r21, 0x4e6
/* 804DC218  38 A0 00 04 */	li r5, 4
/* 804DC21C  38 C0 04 00 */	li r6, 0x400
/* 804DC220  4B D9 43 E9 */	bl cLib_addCalcAngleS2__FPssss
/* 804DC224  A8 15 04 E6 */	lha r0, 0x4e6(r21)
/* 804DC228  B0 15 04 DE */	sth r0, 0x4de(r21)
/* 804DC22C  A8 15 14 60 */	lha r0, 0x1460(r21)
/* 804DC230  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DC234  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804DC238  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804DC23C  7C 63 04 2E */	lfsx f3, r3, r0
/* 804DC240  C0 35 04 D0 */	lfs f1, 0x4d0(r21)
/* 804DC244  A8 15 14 5C */	lha r0, 0x145c(r21)
/* 804DC248  C8 5E 00 A8 */	lfd f2, 0xa8(r30)
/* 804DC24C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DC250  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804DC254  3C 60 43 30 */	lis r3, 0x4330
/* 804DC258  90 61 00 C0 */	stw r3, 0xc0(r1)
/* 804DC25C  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 804DC260  EC 00 10 28 */	fsubs f0, f0, f2
/* 804DC264  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804DC268  EC 01 00 2A */	fadds f0, f1, f0
/* 804DC26C  D0 15 04 D0 */	stfs f0, 0x4d0(r21)
/* 804DC270  A8 15 14 60 */	lha r0, 0x1460(r21)
/* 804DC274  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DC278  7C 7C 04 2E */	lfsx f3, r28, r0
/* 804DC27C  C0 35 04 D8 */	lfs f1, 0x4d8(r21)
/* 804DC280  A8 15 14 5C */	lha r0, 0x145c(r21)
/* 804DC284  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DC288  90 01 00 CC */	stw r0, 0xcc(r1)
/* 804DC28C  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 804DC290  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 804DC294  EC 00 10 28 */	fsubs f0, f0, f2
/* 804DC298  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804DC29C  EC 01 00 2A */	fadds f0, f1, f0
/* 804DC2A0  D0 15 04 D8 */	stfs f0, 0x4d8(r21)
/* 804DC2A4  7E A3 AB 78 */	mr r3, r21
/* 804DC2A8  4B FF F5 05 */	bl setFrontBackPos__9daCanoe_cFv
lbl_804DC2AC:
/* 804DC2AC  3C 60 80 4E */	lis r3, __vt__8cM3dGPla@ha /* 0x804DD784@ha */
/* 804DC2B0  38 03 D7 84 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804DD784@l */
/* 804DC2B4  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 804DC2B8  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 804DC2BC  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 804DC2C0  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 804DC2C4  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 804DC2C8  E3 A1 01 18 */	psq_l f29, 280(r1), 0, 0 /* qr0 */
/* 804DC2CC  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 804DC2D0  39 61 01 10 */	addi r11, r1, 0x110
/* 804DC2D4  4B E8 5F 2D */	bl _restgpr_19
/* 804DC2D8  80 01 01 44 */	lwz r0, 0x144(r1)
/* 804DC2DC  7C 08 03 A6 */	mtlr r0
/* 804DC2E0  38 21 01 40 */	addi r1, r1, 0x140
/* 804DC2E4  4E 80 00 20 */	blr 
