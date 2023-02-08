lbl_8005E8F8:
/* 8005E8F8  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 8005E8FC  7C 08 02 A6 */	mflr r0
/* 8005E900  90 01 02 54 */	stw r0, 0x254(r1)
/* 8005E904  DB E1 02 40 */	stfd f31, 0x240(r1)
/* 8005E908  F3 E1 02 48 */	psq_st f31, 584(r1), 0, 0 /* qr0 */
/* 8005E90C  DB C1 02 30 */	stfd f30, 0x230(r1)
/* 8005E910  F3 C1 02 38 */	psq_st f30, 568(r1), 0, 0 /* qr0 */
/* 8005E914  DB A1 02 20 */	stfd f29, 0x220(r1)
/* 8005E918  F3 A1 02 28 */	psq_st f29, 552(r1), 0, 0 /* qr0 */
/* 8005E91C  DB 81 02 10 */	stfd f28, 0x210(r1)
/* 8005E920  F3 81 02 18 */	psq_st f28, 536(r1), 0, 0 /* qr0 */
/* 8005E924  DB 61 02 00 */	stfd f27, 0x200(r1)
/* 8005E928  F3 61 02 08 */	psq_st f27, 520(r1), 0, 0 /* qr0 */
/* 8005E92C  DB 41 01 F0 */	stfd f26, 0x1f0(r1)
/* 8005E930  F3 41 01 F8 */	psq_st f26, 504(r1), 0, 0 /* qr0 */
/* 8005E934  DB 21 01 E0 */	stfd f25, 0x1e0(r1)
/* 8005E938  F3 21 01 E8 */	psq_st f25, 488(r1), 0, 0 /* qr0 */
/* 8005E93C  DB 01 01 D0 */	stfd f24, 0x1d0(r1)
/* 8005E940  F3 01 01 D8 */	psq_st f24, 472(r1), 0, 0 /* qr0 */
/* 8005E944  DA E1 01 C0 */	stfd f23, 0x1c0(r1)
/* 8005E948  F2 E1 01 C8 */	psq_st f23, 456(r1), 0, 0 /* qr0 */
/* 8005E94C  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 8005E950  48 30 38 71 */	bl _savegpr_22
/* 8005E954  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005E958  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005E95C  83 43 0E B0 */	lwz r26, 0xeb0(r3)
/* 8005E960  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005E964  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005E968  83 3E 5D 74 */	lwz r25, 0x5d74(r30)
/* 8005E96C  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 8005E970  38 61 00 30 */	addi r3, r1, 0x30
/* 8005E974  4B FF C1 8D */	bl dKyw_get_wind_vecpow__Fv
/* 8005E978  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8005E97C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8005E980  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8005E984  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8005E988  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8005E98C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8005E990  38 61 01 38 */	addi r3, r1, 0x138
/* 8005E994  48 01 8B E9 */	bl __ct__11dBgS_GndChkFv
/* 8005E998  3B 60 00 00 */	li r27, 0
/* 8005E99C  C3 E2 88 14 */	lfs f31, lit_4354(r2)
/* 8005E9A0  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8005E9A4  48 01 90 5D */	bl __ct__18dBgS_CamGndChk_WtrFv
/* 8005E9A8  C3 C2 89 20 */	lfs f30, lit_5716(r2)
/* 8005E9AC  3B 00 00 00 */	li r24, 0
/* 8005E9B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005E9B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005E9B8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 8005E9BC  38 7F 3E C8 */	addi r3, r31, 0x3ec8
/* 8005E9C0  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8005E9C4  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8005E9C8  38 84 00 45 */	addi r4, r4, 0x45
/* 8005E9CC  48 30 9F C9 */	bl strcmp
/* 8005E9D0  2C 03 00 00 */	cmpwi r3, 0
/* 8005E9D4  40 82 00 08 */	bne lbl_8005E9DC
/* 8005E9D8  3B 00 00 01 */	li r24, 1
lbl_8005E9DC:
/* 8005E9DC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005E9E0  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005E9E4  88 1D 0E A9 */	lbz r0, 0xea9(r29)
/* 8005E9E8  28 00 00 02 */	cmplwi r0, 2
/* 8005E9EC  40 82 00 44 */	bne lbl_8005EA30
/* 8005E9F0  C0 19 00 D8 */	lfs f0, 0xd8(r25)
/* 8005E9F4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8005E9F8  C0 39 00 DC */	lfs f1, 0xdc(r25)
/* 8005E9FC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8005EA00  C0 19 00 E0 */	lfs f0, 0xe0(r25)
/* 8005EA04  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8005EA08  C0 02 89 24 */	lfs f0, lit_5717(r2)
/* 8005EA0C  EC 01 00 2A */	fadds f0, f1, f0
/* 8005EA10  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8005EA14  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8005EA18  38 81 00 54 */	addi r4, r1, 0x54
/* 8005EA1C  48 20 93 0D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8005EA20  7F E3 FB 78 */	mr r3, r31
/* 8005EA24  38 81 00 E4 */	addi r4, r1, 0xe4
/* 8005EA28  48 01 5A 79 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8005EA2C  FF C0 08 90 */	fmr f30, f1
lbl_8005EA30:
/* 8005EA30  48 14 DB 4D */	bl dKy_darkworld_check__Fv
/* 8005EA34  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8005EA38  28 00 00 01 */	cmplwi r0, 1
/* 8005EA3C  41 82 00 10 */	beq lbl_8005EA4C
/* 8005EA40  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 8005EA44  28 00 00 01 */	cmplwi r0, 1
/* 8005EA48  40 82 00 18 */	bne lbl_8005EA60
lbl_8005EA4C:
/* 8005EA4C  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005EA50  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8005EA54  C0 02 89 28 */	lfs f0, lit_5718(r2)
/* 8005EA58  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8005EA5C  D0 21 00 80 */	stfs f1, 0x80(r1)
lbl_8005EA60:
/* 8005EA60  88 1D 0E A9 */	lbz r0, 0xea9(r29)
/* 8005EA64  28 00 00 01 */	cmplwi r0, 1
/* 8005EA68  40 82 00 18 */	bne lbl_8005EA80
/* 8005EA6C  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005EA70  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8005EA74  C0 02 89 2C */	lfs f0, lit_5719(r2)
/* 8005EA78  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8005EA7C  D0 21 00 80 */	stfs f1, 0x80(r1)
lbl_8005EA80:
/* 8005EA80  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005EA84  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005EA88  80 03 0E AC */	lwz r0, 0xeac(r3)
/* 8005EA8C  2C 00 00 00 */	cmpwi r0, 0
/* 8005EA90  40 82 00 1C */	bne lbl_8005EAAC
/* 8005EA94  40 82 00 1C */	bne lbl_8005EAB0
/* 8005EA98  C0 3A 5D E8 */	lfs f1, 0x5de8(r26)
/* 8005EA9C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005EAA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005EAA4  4C 40 13 82 */	cror 2, 0, 2
/* 8005EAA8  40 82 00 08 */	bne lbl_8005EAB0
lbl_8005EAAC:
/* 8005EAAC  B0 1A 5D EC */	sth r0, 0x5dec(r26)
lbl_8005EAB0:
/* 8005EAB0  80 03 0E AC */	lwz r0, 0xeac(r3)
/* 8005EAB4  2C 00 00 00 */	cmpwi r0, 0
/* 8005EAB8  41 82 00 20 */	beq lbl_8005EAD8
/* 8005EABC  38 7A 5D E8 */	addi r3, r26, 0x5de8
/* 8005EAC0  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005EAC4  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005EAC8  C0 62 88 1C */	lfs f3, lit_4356(r2)
/* 8005EACC  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8005EAD0  48 21 0E AD */	bl cLib_addCalc__FPfffff
/* 8005EAD4  48 00 00 1C */	b lbl_8005EAF0
lbl_8005EAD8:
/* 8005EAD8  38 7A 5D E8 */	addi r3, r26, 0x5de8
/* 8005EADC  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005EAE0  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005EAE4  C0 62 88 1C */	lfs f3, lit_4356(r2)
/* 8005EAE8  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8005EAEC  48 21 0E 91 */	bl cLib_addCalc__FPfffff
lbl_8005EAF0:
/* 8005EAF0  A8 1A 5D EC */	lha r0, 0x5dec(r26)
/* 8005EAF4  2C 00 00 00 */	cmpwi r0, 0
/* 8005EAF8  40 82 00 20 */	bne lbl_8005EB18
/* 8005EAFC  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8005EB00  38 80 FF FF */	li r4, -1
/* 8005EB04  48 01 8F 95 */	bl __dt__18dBgS_CamGndChk_WtrFv
/* 8005EB08  38 61 01 38 */	addi r3, r1, 0x138
/* 8005EB0C  38 80 FF FF */	li r4, -1
/* 8005EB10  48 01 8A E1 */	bl __dt__11dBgS_GndChkFv
/* 8005EB14  48 00 10 68 */	b lbl_8005FB7C
lbl_8005EB18:
/* 8005EB18  7F 23 CB 78 */	mr r3, r25
/* 8005EB1C  38 81 00 84 */	addi r4, r1, 0x84
/* 8005EB20  C0 22 88 A4 */	lfs f1, lit_5104(r2)
/* 8005EB24  FC 40 08 90 */	fmr f2, f1
/* 8005EB28  4B FF CD 09 */	bl dKy_set_eyevect_calc2__FP12camera_classP3Vecff
/* 8005EB2C  38 61 00 84 */	addi r3, r1, 0x84
/* 8005EB30  38 9A 00 10 */	addi r4, r26, 0x10
/* 8005EB34  48 2E 88 69 */	bl PSVECSquareDistance
/* 8005EB38  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005EB3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005EB40  40 81 00 58 */	ble lbl_8005EB98
/* 8005EB44  FC 00 08 34 */	frsqrte f0, f1
/* 8005EB48  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005EB4C  FC 44 00 32 */	fmul f2, f4, f0
/* 8005EB50  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005EB54  FC 00 00 32 */	fmul f0, f0, f0
/* 8005EB58  FC 01 00 32 */	fmul f0, f1, f0
/* 8005EB5C  FC 03 00 28 */	fsub f0, f3, f0
/* 8005EB60  FC 02 00 32 */	fmul f0, f2, f0
/* 8005EB64  FC 44 00 32 */	fmul f2, f4, f0
/* 8005EB68  FC 00 00 32 */	fmul f0, f0, f0
/* 8005EB6C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005EB70  FC 03 00 28 */	fsub f0, f3, f0
/* 8005EB74  FC 02 00 32 */	fmul f0, f2, f0
/* 8005EB78  FC 44 00 32 */	fmul f2, f4, f0
/* 8005EB7C  FC 00 00 32 */	fmul f0, f0, f0
/* 8005EB80  FC 01 00 32 */	fmul f0, f1, f0
/* 8005EB84  FC 03 00 28 */	fsub f0, f3, f0
/* 8005EB88  FC 02 00 32 */	fmul f0, f2, f0
/* 8005EB8C  FC 21 00 32 */	fmul f1, f1, f0
/* 8005EB90  FC 20 08 18 */	frsp f1, f1
/* 8005EB94  48 00 00 88 */	b lbl_8005EC1C
lbl_8005EB98:
/* 8005EB98  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005EB9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005EBA0  40 80 00 10 */	bge lbl_8005EBB0
/* 8005EBA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005EBA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005EBAC  48 00 00 70 */	b lbl_8005EC1C
lbl_8005EBB0:
/* 8005EBB0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8005EBB4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8005EBB8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005EBBC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005EBC0  7C 03 00 00 */	cmpw r3, r0
/* 8005EBC4  41 82 00 14 */	beq lbl_8005EBD8
/* 8005EBC8  40 80 00 40 */	bge lbl_8005EC08
/* 8005EBCC  2C 03 00 00 */	cmpwi r3, 0
/* 8005EBD0  41 82 00 20 */	beq lbl_8005EBF0
/* 8005EBD4  48 00 00 34 */	b lbl_8005EC08
lbl_8005EBD8:
/* 8005EBD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005EBDC  41 82 00 0C */	beq lbl_8005EBE8
/* 8005EBE0  38 00 00 01 */	li r0, 1
/* 8005EBE4  48 00 00 28 */	b lbl_8005EC0C
lbl_8005EBE8:
/* 8005EBE8  38 00 00 02 */	li r0, 2
/* 8005EBEC  48 00 00 20 */	b lbl_8005EC0C
lbl_8005EBF0:
/* 8005EBF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005EBF4  41 82 00 0C */	beq lbl_8005EC00
/* 8005EBF8  38 00 00 05 */	li r0, 5
/* 8005EBFC  48 00 00 10 */	b lbl_8005EC0C
lbl_8005EC00:
/* 8005EC00  38 00 00 03 */	li r0, 3
/* 8005EC04  48 00 00 08 */	b lbl_8005EC0C
lbl_8005EC08:
/* 8005EC08  38 00 00 04 */	li r0, 4
lbl_8005EC0C:
/* 8005EC0C  2C 00 00 01 */	cmpwi r0, 1
/* 8005EC10  40 82 00 0C */	bne lbl_8005EC1C
/* 8005EC14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005EC18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005EC1C:
/* 8005EC1C  C0 02 88 E0 */	lfs f0, lit_5119(r2)
/* 8005EC20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005EC24  40 81 00 08 */	ble lbl_8005EC2C
/* 8005EC28  3B 60 00 01 */	li r27, 1
lbl_8005EC2C:
/* 8005EC2C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8005EC30  D0 1A 00 10 */	stfs f0, 0x10(r26)
/* 8005EC34  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8005EC38  D0 1A 00 14 */	stfs f0, 0x14(r26)
/* 8005EC3C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8005EC40  D0 1A 00 18 */	stfs f0, 0x18(r26)
/* 8005EC44  4B FF BE AD */	bl dKyw_get_wind_pow__Fv
/* 8005EC48  88 1D 0E A9 */	lbz r0, 0xea9(r29)
/* 8005EC4C  28 00 00 01 */	cmplwi r0, 1
/* 8005EC50  40 82 00 A8 */	bne lbl_8005ECF8
/* 8005EC54  C3 E2 87 B8 */	lfs f31, lit_3954(r2)
/* 8005EC58  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005EC5C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005EC60  88 03 12 D8 */	lbz r0, 0x12d8(r3)
/* 8005EC64  28 00 00 00 */	cmplwi r0, 0
/* 8005EC68  41 82 00 90 */	beq lbl_8005ECF8
/* 8005EC6C  38 61 00 90 */	addi r3, r1, 0x90
/* 8005EC70  48 01 8D 91 */	bl __ct__18dBgS_CamGndChk_WtrFv
/* 8005EC74  82 DE 5D 74 */	lwz r22, 0x5d74(r30)
/* 8005EC78  C0 16 00 D8 */	lfs f0, 0xd8(r22)
/* 8005EC7C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8005EC80  C0 36 00 DC */	lfs f1, 0xdc(r22)
/* 8005EC84  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8005EC88  C0 16 00 E0 */	lfs f0, 0xe0(r22)
/* 8005EC8C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8005EC90  C0 02 89 24 */	lfs f0, lit_5717(r2)
/* 8005EC94  EC 01 00 2A */	fadds f0, f1, f0
/* 8005EC98  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8005EC9C  38 61 00 90 */	addi r3, r1, 0x90
/* 8005ECA0  38 81 00 48 */	addi r4, r1, 0x48
/* 8005ECA4  48 20 90 85 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8005ECA8  7F E3 FB 78 */	mr r3, r31
/* 8005ECAC  38 81 00 90 */	addi r4, r1, 0x90
/* 8005ECB0  48 01 57 F1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8005ECB4  C0 16 00 DC */	lfs f0, 0xdc(r22)
/* 8005ECB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005ECBC  40 81 00 30 */	ble lbl_8005ECEC
/* 8005ECC0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8005ECC4  C0 02 88 94 */	lfs f0, lit_5100(r2)
/* 8005ECC8  EF E1 00 24 */	fdivs f31, f1, f0
/* 8005ECCC  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005ECD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8005ECD4  40 80 00 08 */	bge lbl_8005ECDC
/* 8005ECD8  FF E0 00 90 */	fmr f31, f0
lbl_8005ECDC:
/* 8005ECDC  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005ECE0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8005ECE4  40 81 00 08 */	ble lbl_8005ECEC
/* 8005ECE8  FF E0 00 90 */	fmr f31, f0
lbl_8005ECEC:
/* 8005ECEC  38 61 00 90 */	addi r3, r1, 0x90
/* 8005ECF0  38 80 FF FF */	li r4, -1
/* 8005ECF4  48 01 8D A5 */	bl __dt__18dBgS_CamGndChk_WtrFv
lbl_8005ECF8:
/* 8005ECF8  A8 7A 5D EC */	lha r3, 0x5dec(r26)
/* 8005ECFC  3A E3 FF FF */	addi r23, r3, -1
/* 8005ED00  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005ED04  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005ED08  C3 A2 89 30 */	lfs f29, lit_5720(r2)
/* 8005ED0C  57 7F 06 3E */	clrlwi r31, r27, 0x18
/* 8005ED10  C3 82 87 B8 */	lfs f28, lit_3954(r2)
/* 8005ED14  C3 62 89 A0 */	lfs f27, lit_5748(r2)
/* 8005ED18  C3 22 88 14 */	lfs f25, lit_4354(r2)
/* 8005ED1C  1E D7 00 50 */	mulli r22, r23, 0x50
/* 8005ED20  48 00 0E 3C */	b lbl_8005FB5C
lbl_8005ED24:
/* 8005ED24  C0 1A 5D E8 */	lfs f0, 0x5de8(r26)
/* 8005ED28  EF 5D 00 32 */	fmuls f26, f29, f0
/* 8005ED2C  7F 7A B2 14 */	add r27, r26, r22
/* 8005ED30  88 1B 00 20 */	lbz r0, 0x20(r27)
/* 8005ED34  7C 00 07 75 */	extsb. r0, r0
/* 8005ED38  41 82 00 14 */	beq lbl_8005ED4C
/* 8005ED3C  41 80 0B 40 */	blt lbl_8005F87C
/* 8005ED40  2C 00 00 05 */	cmpwi r0, 5
/* 8005ED44  40 80 0B 38 */	bge lbl_8005F87C
/* 8005ED48  48 00 01 20 */	b lbl_8005EE68
lbl_8005ED4C:
/* 8005ED4C  88 1D 0E A9 */	lbz r0, 0xea9(r29)
/* 8005ED50  28 00 00 01 */	cmplwi r0, 1
/* 8005ED54  40 82 00 1C */	bne lbl_8005ED70
/* 8005ED58  C0 22 88 3C */	lfs f1, lit_4364(r2)
/* 8005ED5C  48 20 8B F9 */	bl cM_rndF__Ff
/* 8005ED60  C0 02 88 20 */	lfs f0, lit_4357(r2)
/* 8005ED64  EC 00 08 2A */	fadds f0, f0, f1
/* 8005ED68  D0 1B 00 54 */	stfs f0, 0x54(r27)
/* 8005ED6C  48 00 00 18 */	b lbl_8005ED84
lbl_8005ED70:
/* 8005ED70  C0 22 89 34 */	lfs f1, lit_5721(r2)
/* 8005ED74  48 20 8B E1 */	bl cM_rndF__Ff
/* 8005ED78  C0 02 88 40 */	lfs f0, lit_4365(r2)
/* 8005ED7C  EC 00 08 2A */	fadds f0, f0, f1
/* 8005ED80  D0 1B 00 54 */	stfs f0, 0x54(r27)
lbl_8005ED84:
/* 8005ED84  38 00 00 00 */	li r0, 0
/* 8005ED88  B0 1B 00 5C */	sth r0, 0x5c(r27)
/* 8005ED8C  C0 22 89 38 */	lfs f1, lit_5722(r2)
/* 8005ED90  48 20 8B FD */	bl cM_rndFX__Ff
/* 8005ED94  FC 00 08 1E */	fctiwz f0, f1
/* 8005ED98  D8 01 01 90 */	stfd f0, 0x190(r1)
/* 8005ED9C  80 01 01 94 */	lwz r0, 0x194(r1)
/* 8005EDA0  B0 1B 00 6C */	sth r0, 0x6c(r27)
/* 8005EDA4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8005EDA8  D0 1B 00 30 */	stfs f0, 0x30(r27)
/* 8005EDAC  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8005EDB0  D0 1B 00 34 */	stfs f0, 0x34(r27)
/* 8005EDB4  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8005EDB8  D0 1B 00 38 */	stfs f0, 0x38(r27)
/* 8005EDBC  C0 22 89 3C */	lfs f1, lit_5723(r2)
/* 8005EDC0  48 20 8B CD */	bl cM_rndFX__Ff
/* 8005EDC4  D0 3B 00 24 */	stfs f1, 0x24(r27)
/* 8005EDC8  C0 22 89 3C */	lfs f1, lit_5723(r2)
/* 8005EDCC  48 20 8B C1 */	bl cM_rndFX__Ff
/* 8005EDD0  D0 3B 00 28 */	stfs f1, 0x28(r27)
/* 8005EDD4  C0 22 89 3C */	lfs f1, lit_5723(r2)
/* 8005EDD8  48 20 8B B5 */	bl cM_rndFX__Ff
/* 8005EDDC  D0 3B 00 2C */	stfs f1, 0x2c(r27)
/* 8005EDE0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005EDE4  D0 1B 00 60 */	stfs f0, 0x60(r27)
/* 8005EDE8  D0 1B 00 68 */	stfs f0, 0x68(r27)
/* 8005EDEC  C0 22 88 A8 */	lfs f1, lit_5105(r2)
/* 8005EDF0  48 20 8B 65 */	bl cM_rndF__Ff
/* 8005EDF4  D0 3B 00 48 */	stfs f1, 0x48(r27)
/* 8005EDF8  C0 22 88 A8 */	lfs f1, lit_5105(r2)
/* 8005EDFC  48 20 8B 59 */	bl cM_rndF__Ff
/* 8005EE00  D0 3B 00 4C */	stfs f1, 0x4c(r27)
/* 8005EE04  C0 22 88 A8 */	lfs f1, lit_5105(r2)
/* 8005EE08  48 20 8B 4D */	bl cM_rndF__Ff
/* 8005EE0C  D0 3B 00 50 */	stfs f1, 0x50(r27)
/* 8005EE10  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005EE14  D0 1B 00 3C */	stfs f0, 0x3c(r27)
/* 8005EE18  D0 1B 00 40 */	stfs f0, 0x40(r27)
/* 8005EE1C  D0 1B 00 44 */	stfs f0, 0x44(r27)
/* 8005EE20  C0 5B 00 34 */	lfs f2, 0x34(r27)
/* 8005EE24  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 8005EE28  EC 22 00 2A */	fadds f1, f2, f0
/* 8005EE2C  C0 02 89 40 */	lfs f0, lit_5724(r2)
/* 8005EE30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005EE34  40 80 00 18 */	bge lbl_8005EE4C
/* 8005EE38  C0 22 88 88 */	lfs f1, lit_5097(r2)
/* 8005EE3C  C0 02 89 44 */	lfs f0, lit_5725(r2)
/* 8005EE40  EC 00 10 28 */	fsubs f0, f0, f2
/* 8005EE44  EC 01 00 2A */	fadds f0, f1, f0
/* 8005EE48  D0 1B 00 28 */	stfs f0, 0x28(r27)
lbl_8005EE4C:
/* 8005EE4C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005EE50  D0 1B 00 58 */	stfs f0, 0x58(r27)
/* 8005EE54  D0 1B 00 64 */	stfs f0, 0x64(r27)
/* 8005EE58  88 7B 00 20 */	lbz r3, 0x20(r27)
/* 8005EE5C  38 03 00 01 */	addi r0, r3, 1
/* 8005EE60  98 1B 00 20 */	stb r0, 0x20(r27)
/* 8005EE64  48 00 0A 18 */	b lbl_8005F87C
lbl_8005EE68:
/* 8005EE68  C3 02 89 48 */	lfs f24, lit_5726(r2)
/* 8005EE6C  2C 00 00 04 */	cmpwi r0, 4
/* 8005EE70  41 82 01 C8 */	beq lbl_8005F038
/* 8005EE74  C2 FB 00 54 */	lfs f23, 0x54(r27)
/* 8005EE78  2C 00 00 02 */	cmpwi r0, 2
/* 8005EE7C  40 82 00 0C */	bne lbl_8005EE88
/* 8005EE80  C0 02 89 4C */	lfs f0, lit_5727(r2)
/* 8005EE84  EE F7 00 32 */	fmuls f23, f23, f0
lbl_8005EE88:
/* 8005EE88  C0 3B 00 48 */	lfs f1, 0x48(r27)
/* 8005EE8C  48 20 87 59 */	bl cM_rad2s__Ff
/* 8005EE90  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8005EE94  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8005EE98  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8005EE9C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8005EEA0  88 1D 0E A9 */	lbz r0, 0xea9(r29)
/* 8005EEA4  28 00 00 02 */	cmplwi r0, 2
/* 8005EEA8  40 82 00 08 */	bne lbl_8005EEB0
/* 8005EEAC  C3 02 89 50 */	lfs f24, lit_5728(r2)
lbl_8005EEB0:
/* 8005EEB0  88 1B 00 20 */	lbz r0, 0x20(r27)
/* 8005EEB4  2C 00 00 03 */	cmpwi r0, 3
/* 8005EEB8  41 82 00 A8 */	beq lbl_8005EF60
/* 8005EEBC  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 8005EEC0  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8005EEC4  EC 21 06 32 */	fmuls f1, f1, f24
/* 8005EEC8  EC 37 00 72 */	fmuls f1, f23, f1
/* 8005EECC  EC 22 08 2A */	fadds f1, f2, f1
/* 8005EED0  D0 3B 00 28 */	stfs f1, 0x28(r27)
/* 8005EED4  C0 5B 00 24 */	lfs f2, 0x24(r27)
/* 8005EED8  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8005EEDC  EC 21 06 32 */	fmuls f1, f1, f24
/* 8005EEE0  EC 37 00 72 */	fmuls f1, f23, f1
/* 8005EEE4  EC 22 08 2A */	fadds f1, f2, f1
/* 8005EEE8  D0 3B 00 24 */	stfs f1, 0x24(r27)
/* 8005EEEC  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 8005EEF0  C0 22 89 54 */	lfs f1, lit_5729(r2)
/* 8005EEF4  EC 21 05 F2 */	fmuls f1, f1, f23
/* 8005EEF8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8005EEFC  D0 3B 00 28 */	stfs f1, 0x28(r27)
/* 8005EF00  88 1D 0E A9 */	lbz r0, 0xea9(r29)
/* 8005EF04  28 00 00 02 */	cmplwi r0, 2
/* 8005EF08  40 82 00 3C */	bne lbl_8005EF44
/* 8005EF0C  88 1E 12 FE */	lbz r0, 0x12fe(r30)
/* 8005EF10  28 00 00 03 */	cmplwi r0, 3
/* 8005EF14  40 82 00 1C */	bne lbl_8005EF30
/* 8005EF18  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 8005EF1C  C0 22 89 58 */	lfs f1, lit_5730(r2)
/* 8005EF20  EC 21 05 F2 */	fmuls f1, f1, f23
/* 8005EF24  EC 22 08 28 */	fsubs f1, f2, f1
/* 8005EF28  D0 3B 00 28 */	stfs f1, 0x28(r27)
/* 8005EF2C  48 00 00 18 */	b lbl_8005EF44
lbl_8005EF30:
/* 8005EF30  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 8005EF34  C0 22 89 34 */	lfs f1, lit_5721(r2)
/* 8005EF38  EC 21 05 F2 */	fmuls f1, f1, f23
/* 8005EF3C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8005EF40  D0 3B 00 28 */	stfs f1, 0x28(r27)
lbl_8005EF44:
/* 8005EF44  C0 5B 00 2C */	lfs f2, 0x2c(r27)
/* 8005EF48  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8005EF4C  EC 21 06 32 */	fmuls f1, f1, f24
/* 8005EF50  EC 37 00 72 */	fmuls f1, f23, f1
/* 8005EF54  EC 22 08 2A */	fadds f1, f2, f1
/* 8005EF58  D0 3B 00 2C */	stfs f1, 0x2c(r27)
/* 8005EF5C  48 00 00 70 */	b lbl_8005EFCC
lbl_8005EF60:
/* 8005EF60  C0 22 89 5C */	lfs f1, lit_5731(r2)
/* 8005EF64  EE F7 00 72 */	fmuls f23, f23, f1
/* 8005EF68  C0 5B 00 24 */	lfs f2, 0x24(r27)
/* 8005EF6C  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8005EF70  EC 21 06 32 */	fmuls f1, f1, f24
/* 8005EF74  EC 37 00 72 */	fmuls f1, f23, f1
/* 8005EF78  EC 22 08 2A */	fadds f1, f2, f1
/* 8005EF7C  D0 3B 00 24 */	stfs f1, 0x24(r27)
/* 8005EF80  C0 7B 00 28 */	lfs f3, 0x28(r27)
/* 8005EF84  C0 42 89 60 */	lfs f2, lit_5732(r2)
/* 8005EF88  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8005EF8C  EC 21 06 32 */	fmuls f1, f1, f24
/* 8005EF90  EC 37 00 72 */	fmuls f1, f23, f1
/* 8005EF94  EC 22 00 72 */	fmuls f1, f2, f1
/* 8005EF98  EC 23 08 2A */	fadds f1, f3, f1
/* 8005EF9C  D0 3B 00 28 */	stfs f1, 0x28(r27)
/* 8005EFA0  C0 5B 00 28 */	lfs f2, 0x28(r27)
/* 8005EFA4  C0 22 88 44 */	lfs f1, lit_4366(r2)
/* 8005EFA8  EC 21 05 F2 */	fmuls f1, f1, f23
/* 8005EFAC  EC 22 08 2A */	fadds f1, f2, f1
/* 8005EFB0  D0 3B 00 28 */	stfs f1, 0x28(r27)
/* 8005EFB4  C0 5B 00 2C */	lfs f2, 0x2c(r27)
/* 8005EFB8  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8005EFBC  EC 21 06 32 */	fmuls f1, f1, f24
/* 8005EFC0  EC 37 00 72 */	fmuls f1, f23, f1
/* 8005EFC4  EC 22 08 2A */	fadds f1, f2, f1
/* 8005EFC8  D0 3B 00 2C */	stfs f1, 0x2c(r27)
lbl_8005EFCC:
/* 8005EFCC  C0 3B 00 24 */	lfs f1, 0x24(r27)
/* 8005EFD0  EC 00 05 F2 */	fmuls f0, f0, f23
/* 8005EFD4  EC 01 00 2A */	fadds f0, f1, f0
/* 8005EFD8  D0 1B 00 24 */	stfs f0, 0x24(r27)
/* 8005EFDC  C0 3B 00 4C */	lfs f1, 0x4c(r27)
/* 8005EFE0  48 20 86 05 */	bl cM_rad2s__Ff
/* 8005EFE4  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8005EFE8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8005EFEC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8005EFF0  7C 43 04 2E */	lfsx f2, r3, r0
/* 8005EFF4  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 8005EFF8  C0 02 88 3C */	lfs f0, lit_4364(r2)
/* 8005EFFC  EC 00 05 F2 */	fmuls f0, f0, f23
/* 8005F000  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8005F004  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F008  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 8005F00C  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 8005F010  48 20 85 D5 */	bl cM_rad2s__Ff
/* 8005F014  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8005F018  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8005F01C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8005F020  7C 03 04 2E */	lfsx f0, r3, r0
/* 8005F024  C0 3B 00 2C */	lfs f1, 0x2c(r27)
/* 8005F028  EC 17 00 32 */	fmuls f0, f23, f0
/* 8005F02C  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F030  D0 1B 00 2C */	stfs f0, 0x2c(r27)
/* 8005F034  48 00 00 18 */	b lbl_8005F04C
lbl_8005F038:
/* 8005F038  4B FF F8 79 */	bl d_krain_cut_turn_check__Fv
/* 8005F03C  2C 03 00 00 */	cmpwi r3, 0
/* 8005F040  41 82 00 0C */	beq lbl_8005F04C
/* 8005F044  38 00 00 03 */	li r0, 3
/* 8005F048  98 1B 00 20 */	stb r0, 0x20(r27)
lbl_8005F04C:
/* 8005F04C  C0 3B 00 48 */	lfs f1, 0x48(r27)
/* 8005F050  C0 02 89 64 */	lfs f0, lit_5733(r2)
/* 8005F054  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F058  D0 1B 00 48 */	stfs f0, 0x48(r27)
/* 8005F05C  C0 3B 00 4C */	lfs f1, 0x4c(r27)
/* 8005F060  C0 02 89 68 */	lfs f0, lit_5734(r2)
/* 8005F064  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F068  D0 1B 00 4C */	stfs f0, 0x4c(r27)
/* 8005F06C  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 8005F070  C0 02 87 C4 */	lfs f0, lit_3993(r2)
/* 8005F074  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F078  D0 1B 00 50 */	stfs f0, 0x50(r27)
/* 8005F07C  C0 3B 00 30 */	lfs f1, 0x30(r27)
/* 8005F080  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8005F084  EC 61 00 2A */	fadds f3, f1, f0
/* 8005F088  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 8005F08C  C0 3B 00 34 */	lfs f1, 0x34(r27)
/* 8005F090  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 8005F094  EC 41 00 2A */	fadds f2, f1, f0
/* 8005F098  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8005F09C  C0 3B 00 38 */	lfs f1, 0x38(r27)
/* 8005F0A0  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 8005F0A4  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F0A8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8005F0AC  88 1D 0E A9 */	lbz r0, 0xea9(r29)
/* 8005F0B0  28 00 00 02 */	cmplwi r0, 2
/* 8005F0B4  40 82 02 D8 */	bne lbl_8005F38C
/* 8005F0B8  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 8005F0BC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8005F0C0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8005F0C4  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 8005F0C8  4C 40 13 82 */	cror 2, 0, 2
/* 8005F0CC  40 82 00 0C */	bne lbl_8005F0D8
/* 8005F0D0  38 00 00 02 */	li r0, 2
/* 8005F0D4  98 1B 00 20 */	stb r0, 0x20(r27)
lbl_8005F0D8:
/* 8005F0D8  88 7B 00 20 */	lbz r3, 0x20(r27)
/* 8005F0DC  7C 60 07 74 */	extsb r0, r3
/* 8005F0E0  2C 00 00 02 */	cmpwi r0, 2
/* 8005F0E4  40 82 00 14 */	bne lbl_8005F0F8
/* 8005F0E8  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 8005F0EC  EC 1E 00 28 */	fsubs f0, f30, f0
/* 8005F0F0  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 8005F0F4  48 00 02 98 */	b lbl_8005F38C
lbl_8005F0F8:
/* 8005F0F8  2C 00 00 03 */	cmpwi r0, 3
/* 8005F0FC  41 82 01 68 */	beq lbl_8005F264
/* 8005F100  2C 00 00 04 */	cmpwi r0, 4
/* 8005F104  41 82 01 60 */	beq lbl_8005F264
/* 8005F108  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8005F10C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8005F110  38 61 00 3C */	addi r3, r1, 0x3c
/* 8005F114  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8005F118  48 2E 82 85 */	bl PSVECSquareDistance
/* 8005F11C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005F120  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F124  40 81 00 58 */	ble lbl_8005F17C
/* 8005F128  FC 00 08 34 */	frsqrte f0, f1
/* 8005F12C  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005F130  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F134  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005F138  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F13C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F140  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F144  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F148  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F14C  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F150  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F154  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F158  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F15C  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F160  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F164  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F168  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F16C  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F170  FC 21 00 32 */	fmul f1, f1, f0
/* 8005F174  FC 20 08 18 */	frsp f1, f1
/* 8005F178  48 00 00 88 */	b lbl_8005F200
lbl_8005F17C:
/* 8005F17C  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005F180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F184  40 80 00 10 */	bge lbl_8005F194
/* 8005F188  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005F18C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005F190  48 00 00 70 */	b lbl_8005F200
lbl_8005F194:
/* 8005F194  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8005F198  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8005F19C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005F1A0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005F1A4  7C 03 00 00 */	cmpw r3, r0
/* 8005F1A8  41 82 00 14 */	beq lbl_8005F1BC
/* 8005F1AC  40 80 00 40 */	bge lbl_8005F1EC
/* 8005F1B0  2C 03 00 00 */	cmpwi r3, 0
/* 8005F1B4  41 82 00 20 */	beq lbl_8005F1D4
/* 8005F1B8  48 00 00 34 */	b lbl_8005F1EC
lbl_8005F1BC:
/* 8005F1BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005F1C0  41 82 00 0C */	beq lbl_8005F1CC
/* 8005F1C4  38 00 00 01 */	li r0, 1
/* 8005F1C8  48 00 00 28 */	b lbl_8005F1F0
lbl_8005F1CC:
/* 8005F1CC  38 00 00 02 */	li r0, 2
/* 8005F1D0  48 00 00 20 */	b lbl_8005F1F0
lbl_8005F1D4:
/* 8005F1D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005F1D8  41 82 00 0C */	beq lbl_8005F1E4
/* 8005F1DC  38 00 00 05 */	li r0, 5
/* 8005F1E0  48 00 00 10 */	b lbl_8005F1F0
lbl_8005F1E4:
/* 8005F1E4  38 00 00 03 */	li r0, 3
/* 8005F1E8  48 00 00 08 */	b lbl_8005F1F0
lbl_8005F1EC:
/* 8005F1EC  38 00 00 04 */	li r0, 4
lbl_8005F1F0:
/* 8005F1F0  2C 00 00 01 */	cmpwi r0, 1
/* 8005F1F4  40 82 00 0C */	bne lbl_8005F200
/* 8005F1F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005F1FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005F200:
/* 8005F200  C0 02 89 6C */	lfs f0, lit_5735(r2)
/* 8005F204  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F208  40 80 01 84 */	bge lbl_8005F38C
/* 8005F20C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8005F210  C0 02 89 70 */	lfs f0, lit_5736(r2)
/* 8005F214  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F218  40 81 00 40 */	ble lbl_8005F258
/* 8005F21C  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 8005F220  C0 02 89 74 */	lfs f0, lit_5737(r2)
/* 8005F224  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8005F228  40 80 00 30 */	bge lbl_8005F258
/* 8005F22C  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8005F230  C0 02 89 78 */	lfs f0, lit_5738(r2)
/* 8005F234  EC 40 10 2A */	fadds f2, f0, f2
/* 8005F238  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8005F23C  40 80 01 50 */	bge lbl_8005F38C
/* 8005F240  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 8005F244  EC 02 00 28 */	fsubs f0, f2, f0
/* 8005F248  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 8005F24C  38 00 00 04 */	li r0, 4
/* 8005F250  98 1B 00 20 */	stb r0, 0x20(r27)
/* 8005F254  48 00 01 38 */	b lbl_8005F38C
lbl_8005F258:
/* 8005F258  38 00 00 03 */	li r0, 3
/* 8005F25C  98 1B 00 20 */	stb r0, 0x20(r27)
/* 8005F260  48 00 01 2C */	b lbl_8005F38C
lbl_8005F264:
/* 8005F264  7C 60 07 74 */	extsb r0, r3
/* 8005F268  2C 00 00 04 */	cmpwi r0, 4
/* 8005F26C  40 82 00 1C */	bne lbl_8005F288
/* 8005F270  C0 22 89 78 */	lfs f1, lit_5738(r2)
/* 8005F274  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8005F278  EC 21 00 2A */	fadds f1, f1, f0
/* 8005F27C  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 8005F280  EC 01 00 28 */	fsubs f0, f1, f0
/* 8005F284  D0 1B 00 28 */	stfs f0, 0x28(r27)
lbl_8005F288:
/* 8005F288  38 61 00 3C */	addi r3, r1, 0x3c
/* 8005F28C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8005F290  48 2E 81 0D */	bl PSVECSquareDistance
/* 8005F294  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005F298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F29C  40 81 00 58 */	ble lbl_8005F2F4
/* 8005F2A0  FC 00 08 34 */	frsqrte f0, f1
/* 8005F2A4  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005F2A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F2AC  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005F2B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F2B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F2B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F2BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F2C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F2C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F2C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F2CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F2D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F2D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F2D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F2DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F2E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F2E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F2E8  FC 21 00 32 */	fmul f1, f1, f0
/* 8005F2EC  FC 20 08 18 */	frsp f1, f1
/* 8005F2F0  48 00 00 88 */	b lbl_8005F378
lbl_8005F2F4:
/* 8005F2F4  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005F2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F2FC  40 80 00 10 */	bge lbl_8005F30C
/* 8005F300  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005F304  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005F308  48 00 00 70 */	b lbl_8005F378
lbl_8005F30C:
/* 8005F30C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8005F310  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8005F314  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005F318  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005F31C  7C 03 00 00 */	cmpw r3, r0
/* 8005F320  41 82 00 14 */	beq lbl_8005F334
/* 8005F324  40 80 00 40 */	bge lbl_8005F364
/* 8005F328  2C 03 00 00 */	cmpwi r3, 0
/* 8005F32C  41 82 00 20 */	beq lbl_8005F34C
/* 8005F330  48 00 00 34 */	b lbl_8005F364
lbl_8005F334:
/* 8005F334  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005F338  41 82 00 0C */	beq lbl_8005F344
/* 8005F33C  38 00 00 01 */	li r0, 1
/* 8005F340  48 00 00 28 */	b lbl_8005F368
lbl_8005F344:
/* 8005F344  38 00 00 02 */	li r0, 2
/* 8005F348  48 00 00 20 */	b lbl_8005F368
lbl_8005F34C:
/* 8005F34C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005F350  41 82 00 0C */	beq lbl_8005F35C
/* 8005F354  38 00 00 05 */	li r0, 5
/* 8005F358  48 00 00 10 */	b lbl_8005F368
lbl_8005F35C:
/* 8005F35C  38 00 00 03 */	li r0, 3
/* 8005F360  48 00 00 08 */	b lbl_8005F368
lbl_8005F364:
/* 8005F364  38 00 00 04 */	li r0, 4
lbl_8005F368:
/* 8005F368  2C 00 00 01 */	cmpwi r0, 1
/* 8005F36C  40 82 00 0C */	bne lbl_8005F378
/* 8005F370  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005F374  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005F378:
/* 8005F378  C0 02 89 7C */	lfs f0, lit_5739(r2)
/* 8005F37C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F380  40 81 00 0C */	ble lbl_8005F38C
/* 8005F384  38 00 00 01 */	li r0, 1
/* 8005F388  98 1B 00 20 */	stb r0, 0x20(r27)
lbl_8005F38C:
/* 8005F38C  38 61 00 24 */	addi r3, r1, 0x24
/* 8005F390  38 81 00 6C */	addi r4, r1, 0x6c
/* 8005F394  4B FF BE F1 */	bl dKyw_pntwind_get_vecpow__FP4cXyz
/* 8005F398  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8005F39C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8005F3A0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8005F3A4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8005F3A8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8005F3AC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8005F3B0  C0 3B 00 3C */	lfs f1, 0x3c(r27)
/* 8005F3B4  C0 02 89 80 */	lfs f0, lit_5740(r2)
/* 8005F3B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F3BC  40 80 00 14 */	bge lbl_8005F3D0
/* 8005F3C0  C0 02 89 84 */	lfs f0, lit_5741(r2)
/* 8005F3C4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8005F3C8  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F3CC  D0 1B 00 3C */	stfs f0, 0x3c(r27)
lbl_8005F3D0:
/* 8005F3D0  C0 5B 00 40 */	lfs f2, 0x40(r27)
/* 8005F3D4  C0 02 89 80 */	lfs f0, lit_5740(r2)
/* 8005F3D8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8005F3DC  40 80 00 18 */	bge lbl_8005F3F4
/* 8005F3E0  C0 22 89 84 */	lfs f1, lit_5741(r2)
/* 8005F3E4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8005F3E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005F3EC  EC 02 00 2A */	fadds f0, f2, f0
/* 8005F3F0  D0 1B 00 40 */	stfs f0, 0x40(r27)
lbl_8005F3F4:
/* 8005F3F4  C0 5B 00 44 */	lfs f2, 0x44(r27)
/* 8005F3F8  C0 02 89 80 */	lfs f0, lit_5740(r2)
/* 8005F3FC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8005F400  40 80 00 18 */	bge lbl_8005F418
/* 8005F404  C0 22 89 84 */	lfs f1, lit_5741(r2)
/* 8005F408  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8005F40C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005F410  EC 02 00 2A */	fadds f0, f2, f0
/* 8005F414  D0 1B 00 44 */	stfs f0, 0x44(r27)
lbl_8005F418:
/* 8005F418  38 7B 00 3C */	addi r3, r27, 0x3c
/* 8005F41C  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005F420  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005F424  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 8005F428  C0 82 88 24 */	lfs f4, lit_4358(r2)
/* 8005F42C  48 21 05 51 */	bl cLib_addCalc__FPfffff
/* 8005F430  38 7B 00 40 */	addi r3, r27, 0x40
/* 8005F434  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005F438  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005F43C  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 8005F440  C0 82 88 24 */	lfs f4, lit_4358(r2)
/* 8005F444  48 21 05 39 */	bl cLib_addCalc__FPfffff
/* 8005F448  38 7B 00 44 */	addi r3, r27, 0x44
/* 8005F44C  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005F450  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005F454  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 8005F458  C0 82 88 24 */	lfs f4, lit_4358(r2)
/* 8005F45C  48 21 05 21 */	bl cLib_addCalc__FPfffff
/* 8005F460  C0 3B 00 24 */	lfs f1, 0x24(r27)
/* 8005F464  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 8005F468  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F46C  D0 1B 00 24 */	stfs f0, 0x24(r27)
/* 8005F470  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 8005F474  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 8005F478  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F47C  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 8005F480  C0 3B 00 2C */	lfs f1, 0x2c(r27)
/* 8005F484  C0 1B 00 44 */	lfs f0, 0x44(r27)
/* 8005F488  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F48C  D0 1B 00 2C */	stfs f0, 0x2c(r27)
/* 8005F490  C0 3B 00 30 */	lfs f1, 0x30(r27)
/* 8005F494  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8005F498  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F49C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8005F4A0  C0 3B 00 34 */	lfs f1, 0x34(r27)
/* 8005F4A4  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 8005F4A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F4AC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8005F4B0  C0 3B 00 38 */	lfs f1, 0x38(r27)
/* 8005F4B4  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 8005F4B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F4BC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8005F4C0  38 61 00 6C */	addi r3, r1, 0x6c
/* 8005F4C4  38 81 00 84 */	addi r4, r1, 0x84
/* 8005F4C8  48 2E 7E D5 */	bl PSVECSquareDistance
/* 8005F4CC  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005F4D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F4D4  40 81 00 58 */	ble lbl_8005F52C
/* 8005F4D8  FC 00 08 34 */	frsqrte f0, f1
/* 8005F4DC  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005F4E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F4E4  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005F4E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F4EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F4F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F4F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F4F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F4FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F500  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F504  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F508  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F50C  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F510  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F514  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F518  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F51C  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F520  FC 21 00 32 */	fmul f1, f1, f0
/* 8005F524  FC 20 08 18 */	frsp f1, f1
/* 8005F528  48 00 00 88 */	b lbl_8005F5B0
lbl_8005F52C:
/* 8005F52C  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005F530  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F534  40 80 00 10 */	bge lbl_8005F544
/* 8005F538  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005F53C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005F540  48 00 00 70 */	b lbl_8005F5B0
lbl_8005F544:
/* 8005F544  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8005F548  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8005F54C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005F550  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005F554  7C 03 00 00 */	cmpw r3, r0
/* 8005F558  41 82 00 14 */	beq lbl_8005F56C
/* 8005F55C  40 80 00 40 */	bge lbl_8005F59C
/* 8005F560  2C 03 00 00 */	cmpwi r3, 0
/* 8005F564  41 82 00 20 */	beq lbl_8005F584
/* 8005F568  48 00 00 34 */	b lbl_8005F59C
lbl_8005F56C:
/* 8005F56C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005F570  41 82 00 0C */	beq lbl_8005F57C
/* 8005F574  38 00 00 01 */	li r0, 1
/* 8005F578  48 00 00 28 */	b lbl_8005F5A0
lbl_8005F57C:
/* 8005F57C  38 00 00 02 */	li r0, 2
/* 8005F580  48 00 00 20 */	b lbl_8005F5A0
lbl_8005F584:
/* 8005F584  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005F588  41 82 00 0C */	beq lbl_8005F594
/* 8005F58C  38 00 00 05 */	li r0, 5
/* 8005F590  48 00 00 10 */	b lbl_8005F5A0
lbl_8005F594:
/* 8005F594  38 00 00 03 */	li r0, 3
/* 8005F598  48 00 00 08 */	b lbl_8005F5A0
lbl_8005F59C:
/* 8005F59C  38 00 00 04 */	li r0, 4
lbl_8005F5A0:
/* 8005F5A0  2C 00 00 01 */	cmpwi r0, 1
/* 8005F5A4  40 82 00 0C */	bne lbl_8005F5B0
/* 8005F5A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005F5AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005F5B0:
/* 8005F5B0  A0 7B 00 5C */	lhz r3, 0x5c(r27)
/* 8005F5B4  28 03 00 00 */	cmplwi r3, 0
/* 8005F5B8  40 82 02 BC */	bne lbl_8005F874
/* 8005F5BC  C0 02 89 3C */	lfs f0, lit_5723(r2)
/* 8005F5C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F5C4  41 81 00 14 */	bgt lbl_8005F5D8
/* 8005F5C8  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8005F5CC  C0 02 89 88 */	lfs f0, lit_5742(r2)
/* 8005F5D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F5D4  40 80 02 A8 */	bge lbl_8005F87C
lbl_8005F5D8:
/* 8005F5D8  38 00 00 0A */	li r0, 0xa
/* 8005F5DC  B0 1B 00 5C */	sth r0, 0x5c(r27)
/* 8005F5E0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8005F5E4  D0 1B 00 30 */	stfs f0, 0x30(r27)
/* 8005F5E8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8005F5EC  D0 1B 00 34 */	stfs f0, 0x34(r27)
/* 8005F5F0  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8005F5F4  D0 1B 00 38 */	stfs f0, 0x38(r27)
/* 8005F5F8  38 61 00 6C */	addi r3, r1, 0x6c
/* 8005F5FC  38 81 00 84 */	addi r4, r1, 0x84
/* 8005F600  48 2E 7D 9D */	bl PSVECSquareDistance
/* 8005F604  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005F608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F60C  40 81 00 58 */	ble lbl_8005F664
/* 8005F610  FC 00 08 34 */	frsqrte f0, f1
/* 8005F614  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005F618  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F61C  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005F620  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F624  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F628  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F62C  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F630  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F634  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F638  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F63C  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F640  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F644  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F648  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F64C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F650  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F654  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F658  FC 21 00 32 */	fmul f1, f1, f0
/* 8005F65C  FC 20 08 18 */	frsp f1, f1
/* 8005F660  48 00 00 88 */	b lbl_8005F6E8
lbl_8005F664:
/* 8005F664  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005F668  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F66C  40 80 00 10 */	bge lbl_8005F67C
/* 8005F670  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005F674  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005F678  48 00 00 70 */	b lbl_8005F6E8
lbl_8005F67C:
/* 8005F67C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8005F680  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8005F684  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005F688  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005F68C  7C 03 00 00 */	cmpw r3, r0
/* 8005F690  41 82 00 14 */	beq lbl_8005F6A4
/* 8005F694  40 80 00 40 */	bge lbl_8005F6D4
/* 8005F698  2C 03 00 00 */	cmpwi r3, 0
/* 8005F69C  41 82 00 20 */	beq lbl_8005F6BC
/* 8005F6A0  48 00 00 34 */	b lbl_8005F6D4
lbl_8005F6A4:
/* 8005F6A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005F6A8  41 82 00 0C */	beq lbl_8005F6B4
/* 8005F6AC  38 00 00 01 */	li r0, 1
/* 8005F6B0  48 00 00 28 */	b lbl_8005F6D8
lbl_8005F6B4:
/* 8005F6B4  38 00 00 02 */	li r0, 2
/* 8005F6B8  48 00 00 20 */	b lbl_8005F6D8
lbl_8005F6BC:
/* 8005F6BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005F6C0  41 82 00 0C */	beq lbl_8005F6CC
/* 8005F6C4  38 00 00 05 */	li r0, 5
/* 8005F6C8  48 00 00 10 */	b lbl_8005F6D8
lbl_8005F6CC:
/* 8005F6CC  38 00 00 03 */	li r0, 3
/* 8005F6D0  48 00 00 08 */	b lbl_8005F6D8
lbl_8005F6D4:
/* 8005F6D4  38 00 00 04 */	li r0, 4
lbl_8005F6D8:
/* 8005F6D8  2C 00 00 01 */	cmpwi r0, 1
/* 8005F6DC  40 82 00 0C */	bne lbl_8005F6E8
/* 8005F6E0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005F6E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005F6E8:
/* 8005F6E8  C0 02 89 8C */	lfs f0, lit_5743(r2)
/* 8005F6EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F6F0  40 81 00 2C */	ble lbl_8005F71C
/* 8005F6F4  C0 22 89 3C */	lfs f1, lit_5723(r2)
/* 8005F6F8  48 20 82 95 */	bl cM_rndFX__Ff
/* 8005F6FC  D0 3B 00 24 */	stfs f1, 0x24(r27)
/* 8005F700  C0 22 89 3C */	lfs f1, lit_5723(r2)
/* 8005F704  48 20 82 89 */	bl cM_rndFX__Ff
/* 8005F708  D0 3B 00 28 */	stfs f1, 0x28(r27)
/* 8005F70C  C0 22 89 3C */	lfs f1, lit_5723(r2)
/* 8005F710  48 20 82 7D */	bl cM_rndFX__Ff
/* 8005F714  D0 3B 00 2C */	stfs f1, 0x2c(r27)
/* 8005F718  48 00 00 4C */	b lbl_8005F764
lbl_8005F71C:
/* 8005F71C  C0 22 88 7C */	lfs f1, lit_4467(r2)
/* 8005F720  48 20 82 6D */	bl cM_rndFX__Ff
/* 8005F724  FE E0 08 90 */	fmr f23, f1
/* 8005F728  38 61 00 6C */	addi r3, r1, 0x6c
/* 8005F72C  38 81 00 84 */	addi r4, r1, 0x84
/* 8005F730  38 A1 00 60 */	addi r5, r1, 0x60
/* 8005F734  4B FF BF D5 */	bl get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8005F738  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8005F73C  C0 02 89 3C */	lfs f0, lit_5723(r2)
/* 8005F740  EC 40 B8 2A */	fadds f2, f0, f23
/* 8005F744  EC 01 00 B2 */	fmuls f0, f1, f2
/* 8005F748  D0 1B 00 24 */	stfs f0, 0x24(r27)
/* 8005F74C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8005F750  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8005F754  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 8005F758  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8005F75C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8005F760  D0 1B 00 2C */	stfs f0, 0x2c(r27)
lbl_8005F764:
/* 8005F764  C0 3B 00 30 */	lfs f1, 0x30(r27)
/* 8005F768  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8005F76C  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F770  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8005F774  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 8005F778  C0 7B 00 28 */	lfs f3, 0x28(r27)
/* 8005F77C  EC 40 18 2A */	fadds f2, f0, f3
/* 8005F780  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8005F784  C0 3B 00 38 */	lfs f1, 0x38(r27)
/* 8005F788  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 8005F78C  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F790  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8005F794  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 8005F798  4C 40 13 82 */	cror 2, 0, 2
/* 8005F79C  40 82 00 10 */	bne lbl_8005F7AC
/* 8005F7A0  C0 02 89 3C */	lfs f0, lit_5723(r2)
/* 8005F7A4  EC 03 00 2A */	fadds f0, f3, f0
/* 8005F7A8  D0 1B 00 28 */	stfs f0, 0x28(r27)
lbl_8005F7AC:
/* 8005F7AC  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005F7B0  D0 1B 00 3C */	stfs f0, 0x3c(r27)
/* 8005F7B4  D0 1B 00 40 */	stfs f0, 0x40(r27)
/* 8005F7B8  D0 1B 00 44 */	stfs f0, 0x44(r27)
/* 8005F7BC  88 1D 0E A9 */	lbz r0, 0xea9(r29)
/* 8005F7C0  28 00 00 02 */	cmplwi r0, 2
/* 8005F7C4  40 82 00 B8 */	bne lbl_8005F87C
/* 8005F7C8  C0 22 89 90 */	lfs f1, lit_5744(r2)
/* 8005F7CC  48 20 81 89 */	bl cM_rndF__Ff
/* 8005F7D0  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 8005F7D4  EC 00 08 2A */	fadds f0, f0, f1
/* 8005F7D8  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 8005F7DC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8005F7E0  C0 22 89 90 */	lfs f1, lit_5744(r2)
/* 8005F7E4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8005F7E8  40 81 00 10 */	ble lbl_8005F7F8
/* 8005F7EC  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 8005F7F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8005F7F4  D0 1B 00 28 */	stfs f0, 0x28(r27)
lbl_8005F7F8:
/* 8005F7F8  88 1E 12 FE */	lbz r0, 0x12fe(r30)
/* 8005F7FC  28 00 00 01 */	cmplwi r0, 1
/* 8005F800  40 82 00 3C */	bne lbl_8005F83C
/* 8005F804  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8005F808  C0 02 87 FC */	lfs f0, lit_4112(r2)
/* 8005F80C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F810  41 81 00 14 */	bgt lbl_8005F824
/* 8005F814  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8005F818  C0 02 88 C8 */	lfs f0, lit_5113(r2)
/* 8005F81C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F820  40 81 00 10 */	ble lbl_8005F830
lbl_8005F824:
/* 8005F824  38 00 00 01 */	li r0, 1
/* 8005F828  98 1B 00 20 */	stb r0, 0x20(r27)
/* 8005F82C  48 00 00 50 */	b lbl_8005F87C
lbl_8005F830:
/* 8005F830  38 00 00 02 */	li r0, 2
/* 8005F834  98 1B 00 20 */	stb r0, 0x20(r27)
/* 8005F838  48 00 00 44 */	b lbl_8005F87C
lbl_8005F83C:
/* 8005F83C  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8005F840  C0 02 89 94 */	lfs f0, lit_5745(r2)
/* 8005F844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F848  41 81 00 14 */	bgt lbl_8005F85C
/* 8005F84C  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8005F850  C0 02 89 98 */	lfs f0, lit_5746(r2)
/* 8005F854  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F858  40 81 00 10 */	ble lbl_8005F868
lbl_8005F85C:
/* 8005F85C  38 00 00 01 */	li r0, 1
/* 8005F860  98 1B 00 20 */	stb r0, 0x20(r27)
/* 8005F864  48 00 00 18 */	b lbl_8005F87C
lbl_8005F868:
/* 8005F868  38 00 00 02 */	li r0, 2
/* 8005F86C  98 1B 00 20 */	stb r0, 0x20(r27)
/* 8005F870  48 00 00 0C */	b lbl_8005F87C
lbl_8005F874:
/* 8005F874  38 03 FF FF */	addi r0, r3, -1
/* 8005F878  B0 1B 00 5C */	sth r0, 0x5c(r27)
lbl_8005F87C:
/* 8005F87C  C0 3B 00 30 */	lfs f1, 0x30(r27)
/* 8005F880  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8005F884  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F888  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8005F88C  C0 3B 00 34 */	lfs f1, 0x34(r27)
/* 8005F890  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 8005F894  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F898  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8005F89C  C0 3B 00 38 */	lfs f1, 0x38(r27)
/* 8005F8A0  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 8005F8A4  EC 01 00 2A */	fadds f0, f1, f0
/* 8005F8A8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8005F8AC  88 1D 0E A9 */	lbz r0, 0xea9(r29)
/* 8005F8B0  28 00 00 02 */	cmplwi r0, 2
/* 8005F8B4  41 82 00 24 */	beq lbl_8005F8D8
/* 8005F8B8  A0 7B 00 6C */	lhz r3, 0x6c(r27)
/* 8005F8BC  38 03 02 58 */	addi r0, r3, 0x258
/* 8005F8C0  B0 1B 00 6C */	sth r0, 0x6c(r27)
/* 8005F8C4  A0 1B 00 6C */	lhz r0, 0x6c(r27)
/* 8005F8C8  28 00 75 30 */	cmplwi r0, 0x7530
/* 8005F8CC  40 81 00 10 */	ble lbl_8005F8DC
/* 8005F8D0  C3 42 87 B8 */	lfs f26, lit_3954(r2)
/* 8005F8D4  48 00 00 08 */	b lbl_8005F8DC
lbl_8005F8D8:
/* 8005F8D8  C3 42 88 14 */	lfs f26, lit_4354(r2)
lbl_8005F8DC:
/* 8005F8DC  38 7B 00 60 */	addi r3, r27, 0x60
/* 8005F8E0  FC 20 D0 90 */	fmr f1, f26
/* 8005F8E4  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 8005F8E8  C0 62 89 68 */	lfs f3, lit_5734(r2)
/* 8005F8EC  C0 82 88 24 */	lfs f4, lit_4358(r2)
/* 8005F8F0  48 21 00 8D */	bl cLib_addCalc__FPfffff
/* 8005F8F4  C0 1B 00 60 */	lfs f0, 0x60(r27)
/* 8005F8F8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8005F8FC  D0 1B 00 60 */	stfs f0, 0x60(r27)
/* 8005F900  28 1F 00 00 */	cmplwi r31, 0
/* 8005F904  41 82 00 0C */	beq lbl_8005F910
/* 8005F908  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005F90C  D0 1B 00 60 */	stfs f0, 0x60(r27)
lbl_8005F910:
/* 8005F910  48 14 CC 6D */	bl dKy_darkworld_check__Fv
/* 8005F914  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8005F918  28 00 00 01 */	cmplwi r0, 1
/* 8005F91C  41 82 00 10 */	beq lbl_8005F92C
/* 8005F920  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 8005F924  28 00 00 01 */	cmplwi r0, 1
/* 8005F928  40 82 01 30 */	bne lbl_8005FA58
lbl_8005F92C:
/* 8005F92C  38 61 00 6C */	addi r3, r1, 0x6c
/* 8005F930  38 99 00 D8 */	addi r4, r25, 0xd8
/* 8005F934  48 2E 7A 69 */	bl PSVECSquareDistance
/* 8005F938  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005F93C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F940  40 81 00 58 */	ble lbl_8005F998
/* 8005F944  FC 00 08 34 */	frsqrte f0, f1
/* 8005F948  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005F94C  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F950  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005F954  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F958  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F95C  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F960  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F964  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F968  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F96C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F970  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F974  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F978  FC 44 00 32 */	fmul f2, f4, f0
/* 8005F97C  FC 00 00 32 */	fmul f0, f0, f0
/* 8005F980  FC 01 00 32 */	fmul f0, f1, f0
/* 8005F984  FC 03 00 28 */	fsub f0, f3, f0
/* 8005F988  FC 02 00 32 */	fmul f0, f2, f0
/* 8005F98C  FC 21 00 32 */	fmul f1, f1, f0
/* 8005F990  FC 20 08 18 */	frsp f1, f1
/* 8005F994  48 00 00 88 */	b lbl_8005FA1C
lbl_8005F998:
/* 8005F998  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005F99C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005F9A0  40 80 00 10 */	bge lbl_8005F9B0
/* 8005F9A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005F9A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005F9AC  48 00 00 70 */	b lbl_8005FA1C
lbl_8005F9B0:
/* 8005F9B0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8005F9B4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8005F9B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005F9BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005F9C0  7C 03 00 00 */	cmpw r3, r0
/* 8005F9C4  41 82 00 14 */	beq lbl_8005F9D8
/* 8005F9C8  40 80 00 40 */	bge lbl_8005FA08
/* 8005F9CC  2C 03 00 00 */	cmpwi r3, 0
/* 8005F9D0  41 82 00 20 */	beq lbl_8005F9F0
/* 8005F9D4  48 00 00 34 */	b lbl_8005FA08
lbl_8005F9D8:
/* 8005F9D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005F9DC  41 82 00 0C */	beq lbl_8005F9E8
/* 8005F9E0  38 00 00 01 */	li r0, 1
/* 8005F9E4  48 00 00 28 */	b lbl_8005FA0C
lbl_8005F9E8:
/* 8005F9E8  38 00 00 02 */	li r0, 2
/* 8005F9EC  48 00 00 20 */	b lbl_8005FA0C
lbl_8005F9F0:
/* 8005F9F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005F9F4  41 82 00 0C */	beq lbl_8005FA00
/* 8005F9F8  38 00 00 05 */	li r0, 5
/* 8005F9FC  48 00 00 10 */	b lbl_8005FA0C
lbl_8005FA00:
/* 8005FA00  38 00 00 03 */	li r0, 3
/* 8005FA04  48 00 00 08 */	b lbl_8005FA0C
lbl_8005FA08:
/* 8005FA08  38 00 00 04 */	li r0, 4
lbl_8005FA0C:
/* 8005FA0C  2C 00 00 01 */	cmpwi r0, 1
/* 8005FA10  40 82 00 0C */	bne lbl_8005FA1C
/* 8005FA14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005FA18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005FA1C:
/* 8005FA1C  D0 3B 00 68 */	stfs f1, 0x68(r27)
/* 8005FA20  C0 02 88 A4 */	lfs f0, lit_5104(r2)
/* 8005FA24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005FA28  4C 41 13 82 */	cror 2, 1, 2
/* 8005FA2C  40 82 00 24 */	bne lbl_8005FA50
/* 8005FA30  EC 21 00 28 */	fsubs f1, f1, f0
/* 8005FA34  C0 02 89 9C */	lfs f0, lit_5747(r2)
/* 8005FA38  EC 21 00 24 */	fdivs f1, f1, f0
/* 8005FA3C  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005FA40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005FA44  40 81 00 10 */	ble lbl_8005FA54
/* 8005FA48  FC 20 00 90 */	fmr f1, f0
/* 8005FA4C  48 00 00 08 */	b lbl_8005FA54
lbl_8005FA50:
/* 8005FA50  C0 22 87 B8 */	lfs f1, lit_3954(r2)
lbl_8005FA54:
/* 8005FA54  D0 3B 00 60 */	stfs f1, 0x60(r27)
lbl_8005FA58:
/* 8005FA58  38 61 00 6C */	addi r3, r1, 0x6c
/* 8005FA5C  38 99 00 D8 */	addi r4, r25, 0xd8
/* 8005FA60  48 2E 79 3D */	bl PSVECSquareDistance
/* 8005FA64  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 8005FA68  40 81 00 58 */	ble lbl_8005FAC0
/* 8005FA6C  FC 00 08 34 */	frsqrte f0, f1
/* 8005FA70  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005FA74  FC 44 00 32 */	fmul f2, f4, f0
/* 8005FA78  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005FA7C  FC 00 00 32 */	fmul f0, f0, f0
/* 8005FA80  FC 01 00 32 */	fmul f0, f1, f0
/* 8005FA84  FC 03 00 28 */	fsub f0, f3, f0
/* 8005FA88  FC 02 00 32 */	fmul f0, f2, f0
/* 8005FA8C  FC 44 00 32 */	fmul f2, f4, f0
/* 8005FA90  FC 00 00 32 */	fmul f0, f0, f0
/* 8005FA94  FC 01 00 32 */	fmul f0, f1, f0
/* 8005FA98  FC 03 00 28 */	fsub f0, f3, f0
/* 8005FA9C  FC 02 00 32 */	fmul f0, f2, f0
/* 8005FAA0  FC 44 00 32 */	fmul f2, f4, f0
/* 8005FAA4  FC 00 00 32 */	fmul f0, f0, f0
/* 8005FAA8  FC 01 00 32 */	fmul f0, f1, f0
/* 8005FAAC  FC 03 00 28 */	fsub f0, f3, f0
/* 8005FAB0  FC 02 00 32 */	fmul f0, f2, f0
/* 8005FAB4  FC 21 00 32 */	fmul f1, f1, f0
/* 8005FAB8  FC 20 08 18 */	frsp f1, f1
/* 8005FABC  48 00 00 88 */	b lbl_8005FB44
lbl_8005FAC0:
/* 8005FAC0  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005FAC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005FAC8  40 80 00 10 */	bge lbl_8005FAD8
/* 8005FACC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005FAD0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005FAD4  48 00 00 70 */	b lbl_8005FB44
lbl_8005FAD8:
/* 8005FAD8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8005FADC  80 81 00 08 */	lwz r4, 8(r1)
/* 8005FAE0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005FAE4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005FAE8  7C 03 00 00 */	cmpw r3, r0
/* 8005FAEC  41 82 00 14 */	beq lbl_8005FB00
/* 8005FAF0  40 80 00 40 */	bge lbl_8005FB30
/* 8005FAF4  2C 03 00 00 */	cmpwi r3, 0
/* 8005FAF8  41 82 00 20 */	beq lbl_8005FB18
/* 8005FAFC  48 00 00 34 */	b lbl_8005FB30
lbl_8005FB00:
/* 8005FB00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005FB04  41 82 00 0C */	beq lbl_8005FB10
/* 8005FB08  38 00 00 01 */	li r0, 1
/* 8005FB0C  48 00 00 28 */	b lbl_8005FB34
lbl_8005FB10:
/* 8005FB10  38 00 00 02 */	li r0, 2
/* 8005FB14  48 00 00 20 */	b lbl_8005FB34
lbl_8005FB18:
/* 8005FB18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005FB1C  41 82 00 0C */	beq lbl_8005FB28
/* 8005FB20  38 00 00 05 */	li r0, 5
/* 8005FB24  48 00 00 10 */	b lbl_8005FB34
lbl_8005FB28:
/* 8005FB28  38 00 00 03 */	li r0, 3
/* 8005FB2C  48 00 00 08 */	b lbl_8005FB34
lbl_8005FB30:
/* 8005FB30  38 00 00 04 */	li r0, 4
lbl_8005FB34:
/* 8005FB34  2C 00 00 01 */	cmpwi r0, 1
/* 8005FB38  40 82 00 0C */	bne lbl_8005FB44
/* 8005FB3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005FB40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005FB44:
/* 8005FB44  EC 01 D8 24 */	fdivs f0, f1, f27
/* 8005FB48  EC 00 00 32 */	fmuls f0, f0, f0
/* 8005FB4C  EC 19 00 28 */	fsubs f0, f25, f0
/* 8005FB50  D0 1B 00 68 */	stfs f0, 0x68(r27)
/* 8005FB54  3A F7 FF FF */	addi r23, r23, -1
/* 8005FB58  3A D6 FF B0 */	addi r22, r22, -80
lbl_8005FB5C:
/* 8005FB5C  2C 17 00 00 */	cmpwi r23, 0
/* 8005FB60  40 80 F1 C4 */	bge lbl_8005ED24
/* 8005FB64  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8005FB68  38 80 FF FF */	li r4, -1
/* 8005FB6C  48 01 7F 2D */	bl __dt__18dBgS_CamGndChk_WtrFv
/* 8005FB70  38 61 01 38 */	addi r3, r1, 0x138
/* 8005FB74  38 80 FF FF */	li r4, -1
/* 8005FB78  48 01 7A 79 */	bl __dt__11dBgS_GndChkFv
lbl_8005FB7C:
/* 8005FB7C  E3 E1 02 48 */	psq_l f31, 584(r1), 0, 0 /* qr0 */
/* 8005FB80  CB E1 02 40 */	lfd f31, 0x240(r1)
/* 8005FB84  E3 C1 02 38 */	psq_l f30, 568(r1), 0, 0 /* qr0 */
/* 8005FB88  CB C1 02 30 */	lfd f30, 0x230(r1)
/* 8005FB8C  E3 A1 02 28 */	psq_l f29, 552(r1), 0, 0 /* qr0 */
/* 8005FB90  CB A1 02 20 */	lfd f29, 0x220(r1)
/* 8005FB94  E3 81 02 18 */	psq_l f28, 536(r1), 0, 0 /* qr0 */
/* 8005FB98  CB 81 02 10 */	lfd f28, 0x210(r1)
/* 8005FB9C  E3 61 02 08 */	psq_l f27, 520(r1), 0, 0 /* qr0 */
/* 8005FBA0  CB 61 02 00 */	lfd f27, 0x200(r1)
/* 8005FBA4  E3 41 01 F8 */	psq_l f26, 504(r1), 0, 0 /* qr0 */
/* 8005FBA8  CB 41 01 F0 */	lfd f26, 0x1f0(r1)
/* 8005FBAC  E3 21 01 E8 */	psq_l f25, 488(r1), 0, 0 /* qr0 */
/* 8005FBB0  CB 21 01 E0 */	lfd f25, 0x1e0(r1)
/* 8005FBB4  E3 01 01 D8 */	psq_l f24, 472(r1), 0, 0 /* qr0 */
/* 8005FBB8  CB 01 01 D0 */	lfd f24, 0x1d0(r1)
/* 8005FBBC  E2 E1 01 C8 */	psq_l f23, 456(r1), 0, 0 /* qr0 */
/* 8005FBC0  CA E1 01 C0 */	lfd f23, 0x1c0(r1)
/* 8005FBC4  39 61 01 C0 */	addi r11, r1, 0x1c0
/* 8005FBC8  48 30 26 45 */	bl _restgpr_22
/* 8005FBCC  80 01 02 54 */	lwz r0, 0x254(r1)
/* 8005FBD0  7C 08 03 A6 */	mtlr r0
/* 8005FBD4  38 21 02 50 */	addi r1, r1, 0x250
/* 8005FBD8  4E 80 00 20 */	blr 
