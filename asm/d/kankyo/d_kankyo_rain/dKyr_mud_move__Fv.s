lbl_8006C85C:
/* 8006C85C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8006C860  7C 08 02 A6 */	mflr r0
/* 8006C864  90 01 01 24 */	stw r0, 0x124(r1)
/* 8006C868  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 8006C86C  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 8006C870  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 8006C874  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 8006C878  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 8006C87C  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, 0 /* qr0 */
/* 8006C880  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 8006C884  F3 81 00 E8 */	psq_st f28, 232(r1), 0, 0 /* qr0 */
/* 8006C888  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8006C88C  48 2F 59 41 */	bl _savegpr_25
/* 8006C890  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006C894  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006C898  83 C3 10 4C */	lwz r30, 0x104c(r3)
/* 8006C89C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006C8A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006C8A4  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 8006C8A8  38 61 00 14 */	addi r3, r1, 0x14
/* 8006C8AC  4B FE E2 55 */	bl dKyw_get_wind_vecpow__Fv
/* 8006C8B0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8006C8B4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8006C8B8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8006C8BC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8006C8C0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8006C8C4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8006C8C8  38 61 00 5C */	addi r3, r1, 0x5c
/* 8006C8CC  48 00 AC B1 */	bl __ct__11dBgS_GndChkFv
/* 8006C8D0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006C8D4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006C8D8  80 03 10 48 */	lwz r0, 0x1048(r3)
/* 8006C8DC  2C 00 00 00 */	cmpwi r0, 0
/* 8006C8E0  40 82 00 1C */	bne lbl_8006C8FC
/* 8006C8E4  40 82 00 20 */	bne lbl_8006C904
/* 8006C8E8  C0 3E 1C 3C */	lfs f1, 0x1c3c(r30)
/* 8006C8EC  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006C8F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006C8F4  4C 40 13 82 */	cror 2, 0, 2
/* 8006C8F8  40 82 00 0C */	bne lbl_8006C904
lbl_8006C8FC:
/* 8006C8FC  7C 00 07 34 */	extsh r0, r0
/* 8006C900  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_8006C904:
/* 8006C904  80 03 10 48 */	lwz r0, 0x1048(r3)
/* 8006C908  2C 00 00 00 */	cmpwi r0, 0
/* 8006C90C  41 82 00 7C */	beq lbl_8006C988
/* 8006C910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006C914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006C918  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8006C91C  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006C920  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006C924  38 84 00 54 */	addi r4, r4, 0x54
/* 8006C928  48 2F C0 6D */	bl strcmp
/* 8006C92C  2C 03 00 00 */	cmpwi r3, 0
/* 8006C930  40 82 00 3C */	bne lbl_8006C96C
/* 8006C934  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006C938  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006C93C  88 03 12 C3 */	lbz r0, 0x12c3(r3)
/* 8006C940  28 00 00 06 */	cmplwi r0, 6
/* 8006C944  40 82 00 28 */	bne lbl_8006C96C
/* 8006C948  38 60 00 01 */	li r3, 1
/* 8006C94C  4B FC 30 A5 */	bl dComIfGs_PolyDamageOff_Set__FSc
/* 8006C950  38 7E 1C 3C */	addi r3, r30, 0x1c3c
/* 8006C954  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8006C958  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 8006C95C  C0 62 88 38 */	lfs f3, lit_4363(r2)
/* 8006C960  C0 82 89 E8 */	lfs f4, lit_6721(r2)
/* 8006C964  48 20 30 19 */	bl cLib_addCalc__FPfffff
/* 8006C968  48 00 00 38 */	b lbl_8006C9A0
lbl_8006C96C:
/* 8006C96C  38 7E 1C 3C */	addi r3, r30, 0x1c3c
/* 8006C970  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006C974  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8006C978  C0 62 88 1C */	lfs f3, lit_4356(r2)
/* 8006C97C  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8006C980  48 20 2F FD */	bl cLib_addCalc__FPfffff
/* 8006C984  48 00 00 1C */	b lbl_8006C9A0
lbl_8006C988:
/* 8006C988  38 7E 1C 3C */	addi r3, r30, 0x1c3c
/* 8006C98C  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8006C990  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8006C994  C0 62 88 1C */	lfs f3, lit_4356(r2)
/* 8006C998  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8006C99C  48 20 2F E1 */	bl cLib_addCalc__FPfffff
lbl_8006C9A0:
/* 8006C9A0  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8006C9A4  2C 00 00 00 */	cmpwi r0, 0
/* 8006C9A8  40 82 00 14 */	bne lbl_8006C9BC
/* 8006C9AC  38 61 00 5C */	addi r3, r1, 0x5c
/* 8006C9B0  38 80 FF FF */	li r4, -1
/* 8006C9B4  48 00 AC 3D */	bl __dt__11dBgS_GndChkFv
/* 8006C9B8  48 00 06 2C */	b lbl_8006CFE4
lbl_8006C9BC:
/* 8006C9BC  7F A3 EB 78 */	mr r3, r29
/* 8006C9C0  38 81 00 50 */	addi r4, r1, 0x50
/* 8006C9C4  C0 22 88 A4 */	lfs f1, lit_5104(r2)
/* 8006C9C8  C0 42 87 B8 */	lfs f2, lit_3954(r2)
/* 8006C9CC  4B FE EE 65 */	bl dKy_set_eyevect_calc2__FP12camera_classP3Vecff
/* 8006C9D0  4B FE E1 21 */	bl dKyw_get_wind_pow__Fv
/* 8006C9D4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8006C9D8  3B 63 FF FF */	addi r27, r3, -1
/* 8006C9DC  C3 A2 87 B8 */	lfs f29, lit_3954(r2)
/* 8006C9E0  C3 C2 88 14 */	lfs f30, lit_4354(r2)
/* 8006C9E4  CB E2 87 C8 */	lfd f31, lit_3995(r2)
/* 8006C9E8  3F 20 43 30 */	lis r25, 0x4330
/* 8006C9EC  C3 82 89 7C */	lfs f28, lit_5739(r2)
/* 8006C9F0  1F 5B 00 48 */	mulli r26, r27, 0x48
/* 8006C9F4  48 00 05 DC */	b lbl_8006CFD0
lbl_8006C9F8:
/* 8006C9F8  3B 80 00 00 */	li r28, 0
/* 8006C9FC  7F FE D2 14 */	add r31, r30, r26
/* 8006CA00  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 8006CA04  7C 00 07 75 */	extsb. r0, r0
/* 8006CA08  41 82 00 14 */	beq lbl_8006CA1C
/* 8006CA0C  41 80 04 44 */	blt lbl_8006CE50
/* 8006CA10  2C 00 00 04 */	cmpwi r0, 4
/* 8006CA14  40 80 04 3C */	bge lbl_8006CE50
/* 8006CA18  48 00 00 B8 */	b lbl_8006CAD0
lbl_8006CA1C:
/* 8006CA1C  C0 22 88 3C */	lfs f1, lit_4364(r2)
/* 8006CA20  48 1F AF 35 */	bl cM_rndF__Ff
/* 8006CA24  C0 02 88 3C */	lfs f0, lit_4364(r2)
/* 8006CA28  EC 20 08 2A */	fadds f1, f0, f1
/* 8006CA2C  C0 02 89 48 */	lfs f0, lit_5726(r2)
/* 8006CA30  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006CA34  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8006CA38  38 00 00 00 */	li r0, 0
/* 8006CA3C  B0 1F 00 58 */	sth r0, 0x58(r31)
/* 8006CA40  C0 22 89 38 */	lfs f1, lit_5722(r2)
/* 8006CA44  48 1F AF 49 */	bl cM_rndFX__Ff
/* 8006CA48  FC 00 08 1E */	fctiwz f0, f1
/* 8006CA4C  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 8006CA50  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8006CA54  B0 1F 00 5A */	sth r0, 0x5a(r31)
/* 8006CA58  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8006CA5C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8006CA60  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006CA64  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8006CA68  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8006CA6C  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8006CA70  C0 22 88 94 */	lfs f1, lit_5100(r2)
/* 8006CA74  48 1F AF 19 */	bl cM_rndFX__Ff
/* 8006CA78  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8006CA7C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006CA80  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8006CA84  C0 22 88 94 */	lfs f1, lit_5100(r2)
/* 8006CA88  48 1F AF 05 */	bl cM_rndFX__Ff
/* 8006CA8C  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8006CA90  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006CA94  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8006CA98  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 8006CA9C  C0 22 88 A8 */	lfs f1, lit_5105(r2)
/* 8006CAA0  48 1F AE B5 */	bl cM_rndF__Ff
/* 8006CAA4  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 8006CAA8  C0 22 88 A8 */	lfs f1, lit_5105(r2)
/* 8006CAAC  48 1F AE A9 */	bl cM_rndF__Ff
/* 8006CAB0  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 8006CAB4  C0 22 88 A8 */	lfs f1, lit_5105(r2)
/* 8006CAB8  48 1F AE 9D */	bl cM_rndF__Ff
/* 8006CABC  D0 3F 00 48 */	stfs f1, 0x48(r31)
/* 8006CAC0  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 8006CAC4  38 03 00 01 */	addi r0, r3, 1
/* 8006CAC8  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8006CACC  48 00 03 84 */	b lbl_8006CE50
lbl_8006CAD0:
/* 8006CAD0  2C 00 00 01 */	cmpwi r0, 1
/* 8006CAD4  40 82 00 8C */	bne lbl_8006CB60
/* 8006CAD8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8006CADC  48 1F AB 09 */	bl cM_rad2s__Ff
/* 8006CAE0  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8006CAE4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8006CAE8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8006CAEC  7C 43 04 2E */	lfsx f2, r3, r0
/* 8006CAF0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8006CAF4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8006CAF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8006CAFC  EC 01 00 2A */	fadds f0, f1, f0
/* 8006CB00  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8006CB04  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8006CB08  48 1F AA DD */	bl cM_rad2s__Ff
/* 8006CB0C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8006CB10  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8006CB14  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8006CB18  7C 43 04 2E */	lfsx f2, r3, r0
/* 8006CB1C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8006CB20  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8006CB24  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8006CB28  EC 01 00 2A */	fadds f0, f1, f0
/* 8006CB2C  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8006CB30  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8006CB34  C0 02 89 64 */	lfs f0, lit_5733(r2)
/* 8006CB38  EC 01 00 2A */	fadds f0, f1, f0
/* 8006CB3C  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8006CB40  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8006CB44  C0 02 89 68 */	lfs f0, lit_5734(r2)
/* 8006CB48  EC 01 00 2A */	fadds f0, f1, f0
/* 8006CB4C  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8006CB50  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8006CB54  C0 02 87 C4 */	lfs f0, lit_3993(r2)
/* 8006CB58  EC 01 00 2A */	fadds f0, f1, f0
/* 8006CB5C  D0 1F 00 48 */	stfs f0, 0x48(r31)
lbl_8006CB60:
/* 8006CB60  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8006CB64  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8006CB68  EC 01 00 2A */	fadds f0, f1, f0
/* 8006CB6C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8006CB70  C0 42 87 B8 */	lfs f2, lit_3954(r2)
/* 8006CB74  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8006CB78  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8006CB7C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8006CB80  EC 01 00 2A */	fadds f0, f1, f0
/* 8006CB84  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8006CB88  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8006CB8C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8006CB90  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8006CB94  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8006CB98  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8006CB9C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8006CBA0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8006CBA4  38 61 00 38 */	addi r3, r1, 0x38
/* 8006CBA8  38 81 00 20 */	addi r4, r1, 0x20
/* 8006CBAC  48 2D A7 F1 */	bl PSVECSquareDistance
/* 8006CBB0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006CBB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006CBB8  40 81 00 58 */	ble lbl_8006CC10
/* 8006CBBC  FC 00 08 34 */	frsqrte f0, f1
/* 8006CBC0  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8006CBC4  FC 44 00 32 */	fmul f2, f4, f0
/* 8006CBC8  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8006CBCC  FC 00 00 32 */	fmul f0, f0, f0
/* 8006CBD0  FC 01 00 32 */	fmul f0, f1, f0
/* 8006CBD4  FC 03 00 28 */	fsub f0, f3, f0
/* 8006CBD8  FC 02 00 32 */	fmul f0, f2, f0
/* 8006CBDC  FC 44 00 32 */	fmul f2, f4, f0
/* 8006CBE0  FC 00 00 32 */	fmul f0, f0, f0
/* 8006CBE4  FC 01 00 32 */	fmul f0, f1, f0
/* 8006CBE8  FC 03 00 28 */	fsub f0, f3, f0
/* 8006CBEC  FC 02 00 32 */	fmul f0, f2, f0
/* 8006CBF0  FC 44 00 32 */	fmul f2, f4, f0
/* 8006CBF4  FC 00 00 32 */	fmul f0, f0, f0
/* 8006CBF8  FC 01 00 32 */	fmul f0, f1, f0
/* 8006CBFC  FC 03 00 28 */	fsub f0, f3, f0
/* 8006CC00  FC 02 00 32 */	fmul f0, f2, f0
/* 8006CC04  FC 21 00 32 */	fmul f1, f1, f0
/* 8006CC08  FC 20 08 18 */	frsp f1, f1
/* 8006CC0C  48 00 00 88 */	b lbl_8006CC94
lbl_8006CC10:
/* 8006CC10  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8006CC14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006CC18  40 80 00 10 */	bge lbl_8006CC28
/* 8006CC1C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8006CC20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8006CC24  48 00 00 70 */	b lbl_8006CC94
lbl_8006CC28:
/* 8006CC28  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8006CC2C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8006CC30  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8006CC34  3C 00 7F 80 */	lis r0, 0x7f80
/* 8006CC38  7C 03 00 00 */	cmpw r3, r0
/* 8006CC3C  41 82 00 14 */	beq lbl_8006CC50
/* 8006CC40  40 80 00 40 */	bge lbl_8006CC80
/* 8006CC44  2C 03 00 00 */	cmpwi r3, 0
/* 8006CC48  41 82 00 20 */	beq lbl_8006CC68
/* 8006CC4C  48 00 00 34 */	b lbl_8006CC80
lbl_8006CC50:
/* 8006CC50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006CC54  41 82 00 0C */	beq lbl_8006CC60
/* 8006CC58  38 00 00 01 */	li r0, 1
/* 8006CC5C  48 00 00 28 */	b lbl_8006CC84
lbl_8006CC60:
/* 8006CC60  38 00 00 02 */	li r0, 2
/* 8006CC64  48 00 00 20 */	b lbl_8006CC84
lbl_8006CC68:
/* 8006CC68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006CC6C  41 82 00 0C */	beq lbl_8006CC78
/* 8006CC70  38 00 00 05 */	li r0, 5
/* 8006CC74  48 00 00 10 */	b lbl_8006CC84
lbl_8006CC78:
/* 8006CC78  38 00 00 03 */	li r0, 3
/* 8006CC7C  48 00 00 08 */	b lbl_8006CC84
lbl_8006CC80:
/* 8006CC80  38 00 00 04 */	li r0, 4
lbl_8006CC84:
/* 8006CC84  2C 00 00 01 */	cmpwi r0, 1
/* 8006CC88  40 82 00 0C */	bne lbl_8006CC94
/* 8006CC8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8006CC90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8006CC94:
/* 8006CC94  C0 02 88 94 */	lfs f0, lit_5100(r2)
/* 8006CC98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006CC9C  40 81 01 B4 */	ble lbl_8006CE50
/* 8006CCA0  3B 80 00 01 */	li r28, 1
/* 8006CCA4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8006CCA8  C0 02 87 C4 */	lfs f0, lit_3993(r2)
/* 8006CCAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006CCB0  40 80 01 A0 */	bge lbl_8006CE50
/* 8006CCB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8006CCB8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8006CCBC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8006CCC0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8006CCC4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8006CCC8  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8006CCCC  38 61 00 38 */	addi r3, r1, 0x38
/* 8006CCD0  38 81 00 20 */	addi r4, r1, 0x20
/* 8006CCD4  48 2D A6 C9 */	bl PSVECSquareDistance
/* 8006CCD8  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006CCDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006CCE0  40 81 00 58 */	ble lbl_8006CD38
/* 8006CCE4  FC 00 08 34 */	frsqrte f0, f1
/* 8006CCE8  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8006CCEC  FC 44 00 32 */	fmul f2, f4, f0
/* 8006CCF0  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8006CCF4  FC 00 00 32 */	fmul f0, f0, f0
/* 8006CCF8  FC 01 00 32 */	fmul f0, f1, f0
/* 8006CCFC  FC 03 00 28 */	fsub f0, f3, f0
/* 8006CD00  FC 02 00 32 */	fmul f0, f2, f0
/* 8006CD04  FC 44 00 32 */	fmul f2, f4, f0
/* 8006CD08  FC 00 00 32 */	fmul f0, f0, f0
/* 8006CD0C  FC 01 00 32 */	fmul f0, f1, f0
/* 8006CD10  FC 03 00 28 */	fsub f0, f3, f0
/* 8006CD14  FC 02 00 32 */	fmul f0, f2, f0
/* 8006CD18  FC 44 00 32 */	fmul f2, f4, f0
/* 8006CD1C  FC 00 00 32 */	fmul f0, f0, f0
/* 8006CD20  FC 01 00 32 */	fmul f0, f1, f0
/* 8006CD24  FC 03 00 28 */	fsub f0, f3, f0
/* 8006CD28  FC 02 00 32 */	fmul f0, f2, f0
/* 8006CD2C  FC 21 00 32 */	fmul f1, f1, f0
/* 8006CD30  FC 20 08 18 */	frsp f1, f1
/* 8006CD34  48 00 00 88 */	b lbl_8006CDBC
lbl_8006CD38:
/* 8006CD38  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8006CD3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006CD40  40 80 00 10 */	bge lbl_8006CD50
/* 8006CD44  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8006CD48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8006CD4C  48 00 00 70 */	b lbl_8006CDBC
lbl_8006CD50:
/* 8006CD50  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8006CD54  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8006CD58  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8006CD5C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8006CD60  7C 03 00 00 */	cmpw r3, r0
/* 8006CD64  41 82 00 14 */	beq lbl_8006CD78
/* 8006CD68  40 80 00 40 */	bge lbl_8006CDA8
/* 8006CD6C  2C 03 00 00 */	cmpwi r3, 0
/* 8006CD70  41 82 00 20 */	beq lbl_8006CD90
/* 8006CD74  48 00 00 34 */	b lbl_8006CDA8
lbl_8006CD78:
/* 8006CD78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006CD7C  41 82 00 0C */	beq lbl_8006CD88
/* 8006CD80  38 00 00 01 */	li r0, 1
/* 8006CD84  48 00 00 28 */	b lbl_8006CDAC
lbl_8006CD88:
/* 8006CD88  38 00 00 02 */	li r0, 2
/* 8006CD8C  48 00 00 20 */	b lbl_8006CDAC
lbl_8006CD90:
/* 8006CD90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006CD94  41 82 00 0C */	beq lbl_8006CDA0
/* 8006CD98  38 00 00 05 */	li r0, 5
/* 8006CD9C  48 00 00 10 */	b lbl_8006CDAC
lbl_8006CDA0:
/* 8006CDA0  38 00 00 03 */	li r0, 3
/* 8006CDA4  48 00 00 08 */	b lbl_8006CDAC
lbl_8006CDA8:
/* 8006CDA8  38 00 00 04 */	li r0, 4
lbl_8006CDAC:
/* 8006CDAC  2C 00 00 01 */	cmpwi r0, 1
/* 8006CDB0  40 82 00 0C */	bne lbl_8006CDBC
/* 8006CDB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8006CDB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8006CDBC:
/* 8006CDBC  C0 02 8B D4 */	lfs f0, lit_11302(r2)
/* 8006CDC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006CDC4  40 81 00 28 */	ble lbl_8006CDEC
/* 8006CDC8  C0 22 88 94 */	lfs f1, lit_5100(r2)
/* 8006CDCC  48 1F AB C1 */	bl cM_rndFX__Ff
/* 8006CDD0  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8006CDD4  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006CDD8  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8006CDDC  C0 22 88 94 */	lfs f1, lit_5100(r2)
/* 8006CDE0  48 1F AB AD */	bl cM_rndFX__Ff
/* 8006CDE4  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8006CDE8  48 00 00 68 */	b lbl_8006CE50
lbl_8006CDEC:
/* 8006CDEC  38 61 00 38 */	addi r3, r1, 0x38
/* 8006CDF0  38 81 00 20 */	addi r4, r1, 0x20
/* 8006CDF4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8006CDF8  4B FE E9 11 */	bl get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8006CDFC  C0 22 88 40 */	lfs f1, lit_4365(r2)
/* 8006CE00  48 1F AB 8D */	bl cM_rndFX__Ff
/* 8006CE04  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8006CE08  EC 00 08 2A */	fadds f0, f0, f1
/* 8006CE0C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8006CE10  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006CE14  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8006CE18  C0 22 88 40 */	lfs f1, lit_4365(r2)
/* 8006CE1C  48 1F AB 71 */	bl cM_rndFX__Ff
/* 8006CE20  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8006CE24  EC 00 08 2A */	fadds f0, f0, f1
/* 8006CE28  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8006CE2C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8006CE30  C0 22 88 94 */	lfs f1, lit_5100(r2)
/* 8006CE34  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006CE38  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8006CE3C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006CE40  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8006CE44  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8006CE48  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006CE4C  D0 1F 00 24 */	stfs f0, 0x24(r31)
lbl_8006CE50:
/* 8006CE50  D3 BF 00 2C */	stfs f29, 0x2c(r31)
/* 8006CE54  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 8006CE58  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8006CE5C  93 21 00 B0 */	stw r25, 0xb0(r1)
/* 8006CE60  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 8006CE64  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8006CE68  EC 1E 00 2A */	fadds f0, f30, f0
/* 8006CE6C  EC 1D 00 28 */	fsubs f0, f29, f0
/* 8006CE70  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8006CE74  FC 20 F0 90 */	fmr f1, f30
/* 8006CE78  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8006CE7C  41 82 00 08 */	beq lbl_8006CE84
/* 8006CE80  FC 20 E8 90 */	fmr f1, f29
lbl_8006CE84:
/* 8006CE84  38 7F 00 50 */	addi r3, r31, 0x50
/* 8006CE88  C0 1E 1C 3C */	lfs f0, 0x1c3c(r30)
/* 8006CE8C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8006CE90  C0 42 89 4C */	lfs f2, lit_5727(r2)
/* 8006CE94  C0 62 88 1C */	lfs f3, lit_4356(r2)
/* 8006CE98  C0 82 89 E8 */	lfs f4, lit_6721(r2)
/* 8006CE9C  48 20 2A E1 */	bl cLib_addCalc__FPfffff
/* 8006CEA0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8006CEA4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8006CEA8  EC 01 00 2A */	fadds f0, f1, f0
/* 8006CEAC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8006CEB0  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 8006CEB4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8006CEB8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8006CEBC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8006CEC0  EC 01 00 2A */	fadds f0, f1, f0
/* 8006CEC4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8006CEC8  38 61 00 38 */	addi r3, r1, 0x38
/* 8006CECC  38 9D 00 D8 */	addi r4, r29, 0xd8
/* 8006CED0  48 2D A4 CD */	bl PSVECSquareDistance
/* 8006CED4  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8006CED8  40 81 00 58 */	ble lbl_8006CF30
/* 8006CEDC  FC 00 08 34 */	frsqrte f0, f1
/* 8006CEE0  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8006CEE4  FC 44 00 32 */	fmul f2, f4, f0
/* 8006CEE8  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8006CEEC  FC 00 00 32 */	fmul f0, f0, f0
/* 8006CEF0  FC 01 00 32 */	fmul f0, f1, f0
/* 8006CEF4  FC 03 00 28 */	fsub f0, f3, f0
/* 8006CEF8  FC 02 00 32 */	fmul f0, f2, f0
/* 8006CEFC  FC 44 00 32 */	fmul f2, f4, f0
/* 8006CF00  FC 00 00 32 */	fmul f0, f0, f0
/* 8006CF04  FC 01 00 32 */	fmul f0, f1, f0
/* 8006CF08  FC 03 00 28 */	fsub f0, f3, f0
/* 8006CF0C  FC 02 00 32 */	fmul f0, f2, f0
/* 8006CF10  FC 44 00 32 */	fmul f2, f4, f0
/* 8006CF14  FC 00 00 32 */	fmul f0, f0, f0
/* 8006CF18  FC 01 00 32 */	fmul f0, f1, f0
/* 8006CF1C  FC 03 00 28 */	fsub f0, f3, f0
/* 8006CF20  FC 02 00 32 */	fmul f0, f2, f0
/* 8006CF24  FC 21 00 32 */	fmul f1, f1, f0
/* 8006CF28  FC 20 08 18 */	frsp f1, f1
/* 8006CF2C  48 00 00 88 */	b lbl_8006CFB4
lbl_8006CF30:
/* 8006CF30  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8006CF34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006CF38  40 80 00 10 */	bge lbl_8006CF48
/* 8006CF3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8006CF40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8006CF44  48 00 00 70 */	b lbl_8006CFB4
lbl_8006CF48:
/* 8006CF48  D0 21 00 08 */	stfs f1, 8(r1)
/* 8006CF4C  80 81 00 08 */	lwz r4, 8(r1)
/* 8006CF50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8006CF54  3C 00 7F 80 */	lis r0, 0x7f80
/* 8006CF58  7C 03 00 00 */	cmpw r3, r0
/* 8006CF5C  41 82 00 14 */	beq lbl_8006CF70
/* 8006CF60  40 80 00 40 */	bge lbl_8006CFA0
/* 8006CF64  2C 03 00 00 */	cmpwi r3, 0
/* 8006CF68  41 82 00 20 */	beq lbl_8006CF88
/* 8006CF6C  48 00 00 34 */	b lbl_8006CFA0
lbl_8006CF70:
/* 8006CF70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006CF74  41 82 00 0C */	beq lbl_8006CF80
/* 8006CF78  38 00 00 01 */	li r0, 1
/* 8006CF7C  48 00 00 28 */	b lbl_8006CFA4
lbl_8006CF80:
/* 8006CF80  38 00 00 02 */	li r0, 2
/* 8006CF84  48 00 00 20 */	b lbl_8006CFA4
lbl_8006CF88:
/* 8006CF88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006CF8C  41 82 00 0C */	beq lbl_8006CF98
/* 8006CF90  38 00 00 05 */	li r0, 5
/* 8006CF94  48 00 00 10 */	b lbl_8006CFA4
lbl_8006CF98:
/* 8006CF98  38 00 00 03 */	li r0, 3
/* 8006CF9C  48 00 00 08 */	b lbl_8006CFA4
lbl_8006CFA0:
/* 8006CFA0  38 00 00 04 */	li r0, 4
lbl_8006CFA4:
/* 8006CFA4  2C 00 00 01 */	cmpwi r0, 1
/* 8006CFA8  40 82 00 0C */	bne lbl_8006CFB4
/* 8006CFAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8006CFB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8006CFB4:
/* 8006CFB4  EC 01 E0 24 */	fdivs f0, f1, f28
/* 8006CFB8  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8006CFBC  40 81 00 08 */	ble lbl_8006CFC4
/* 8006CFC0  FC 00 F0 90 */	fmr f0, f30
lbl_8006CFC4:
/* 8006CFC4  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 8006CFC8  3B 7B FF FF */	addi r27, r27, -1
/* 8006CFCC  3B 5A FF B8 */	addi r26, r26, -72
lbl_8006CFD0:
/* 8006CFD0  2C 1B 00 00 */	cmpwi r27, 0
/* 8006CFD4  40 80 FA 24 */	bge lbl_8006C9F8
/* 8006CFD8  38 61 00 5C */	addi r3, r1, 0x5c
/* 8006CFDC  38 80 FF FF */	li r4, -1
/* 8006CFE0  48 00 A6 11 */	bl __dt__11dBgS_GndChkFv
lbl_8006CFE4:
/* 8006CFE4  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 8006CFE8  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 8006CFEC  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 8006CFF0  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 8006CFF4  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, 0 /* qr0 */
/* 8006CFF8  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 8006CFFC  E3 81 00 E8 */	psq_l f28, 232(r1), 0, 0 /* qr0 */
/* 8006D000  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 8006D004  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8006D008  48 2F 52 11 */	bl _restgpr_25
/* 8006D00C  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8006D010  7C 08 03 A6 */	mtlr r0
/* 8006D014  38 21 01 20 */	addi r1, r1, 0x120
/* 8006D018  4E 80 00 20 */	blr 
