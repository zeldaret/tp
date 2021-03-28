lbl_80B2AB60:
/* 80B2AB60  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B2AB64  7C 08 02 A6 */	mflr r0
/* 80B2AB68  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B2AB6C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B2AB70  4B 83 76 58 */	b _savegpr_24
/* 80B2AB74  7C 79 1B 78 */	mr r25, r3
/* 80B2AB78  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha
/* 80B2AB7C  3B C3 CE 14 */	addi r30, r3, m__17daNpc_Uri_Param_c@l
/* 80B2AB80  3B A0 00 00 */	li r29, 0
/* 80B2AB84  38 7E 00 00 */	addi r3, r30, 0
/* 80B2AB88  AB 83 00 8C */	lha r28, 0x8c(r3)
/* 80B2AB8C  AB 63 00 8E */	lha r27, 0x8e(r3)
/* 80B2AB90  AB 43 00 90 */	lha r26, 0x90(r3)
/* 80B2AB94  A0 19 0E 22 */	lhz r0, 0xe22(r25)
/* 80B2AB98  2C 00 00 02 */	cmpwi r0, 2
/* 80B2AB9C  41 82 00 38 */	beq lbl_80B2ABD4
/* 80B2ABA0  40 80 06 90 */	bge lbl_80B2B230
/* 80B2ABA4  2C 00 00 00 */	cmpwi r0, 0
/* 80B2ABA8  40 80 00 0C */	bge lbl_80B2ABB4
/* 80B2ABAC  48 00 06 84 */	b lbl_80B2B230
/* 80B2ABB0  48 00 06 80 */	b lbl_80B2B230
lbl_80B2ABB4:
/* 80B2ABB4  A8 19 0D 1C */	lha r0, 0xd1c(r25)
/* 80B2ABB8  2C 00 00 00 */	cmpwi r0, 0
/* 80B2ABBC  40 82 00 18 */	bne lbl_80B2ABD4
/* 80B2ABC0  38 00 00 00 */	li r0, 0
/* 80B2ABC4  90 19 0F F4 */	stw r0, 0xff4(r25)
/* 80B2ABC8  90 19 0F F8 */	stw r0, 0xff8(r25)
/* 80B2ABCC  38 00 00 02 */	li r0, 2
/* 80B2ABD0  B0 19 0E 22 */	sth r0, 0xe22(r25)
lbl_80B2ABD4:
/* 80B2ABD4  7F 23 CB 78 */	mr r3, r25
/* 80B2ABD8  4B FF DC 91 */	bl chkPlayerCarryBasket__11daNpc_Uri_cFv
/* 80B2ABDC  2C 03 00 00 */	cmpwi r3, 0
/* 80B2ABE0  41 82 00 70 */	beq lbl_80B2AC50
/* 80B2ABE4  7F 23 CB 78 */	mr r3, r25
/* 80B2ABE8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B2ABEC  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80B2ABF0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B2ABF4  4B 4E FB 1C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B2ABF8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B2ABFC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B2AC00  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B2AC04  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B2AC08  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B2AC0C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B2AC10  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B2AC14  7F 23 CB 78 */	mr r3, r25
/* 80B2AC18  38 81 00 38 */	addi r4, r1, 0x38
/* 80B2AC1C  4B FF DC F5 */	bl getTutorialCond__11daNpc_Uri_cF4cXyz
/* 80B2AC20  2C 03 00 09 */	cmpwi r3, 9
/* 80B2AC24  41 82 00 08 */	beq lbl_80B2AC2C
/* 80B2AC28  48 00 00 1C */	b lbl_80B2AC44
lbl_80B2AC2C:
/* 80B2AC2C  38 00 00 00 */	li r0, 0
/* 80B2AC30  98 19 10 09 */	stb r0, 0x1009(r25)
/* 80B2AC34  98 19 10 0A */	stb r0, 0x100a(r25)
/* 80B2AC38  38 00 00 06 */	li r0, 6
/* 80B2AC3C  B0 19 0E 30 */	sth r0, 0xe30(r25)
/* 80B2AC40  48 00 00 10 */	b lbl_80B2AC50
lbl_80B2AC44:
/* 80B2AC44  38 00 00 00 */	li r0, 0
/* 80B2AC48  98 19 10 09 */	stb r0, 0x1009(r25)
/* 80B2AC4C  98 19 10 0A */	stb r0, 0x100a(r25)
lbl_80B2AC50:
/* 80B2AC50  A8 19 0D 1C */	lha r0, 0xd1c(r25)
/* 80B2AC54  2C 00 00 00 */	cmpwi r0, 0
/* 80B2AC58  40 82 05 D8 */	bne lbl_80B2B230
/* 80B2AC5C  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 80B2AC60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B2AC64  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80B2AC68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B2AC6C  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 80B2AC70  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B2AC74  38 79 0F 98 */	addi r3, r25, 0xf98
/* 80B2AC78  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B2AC7C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80B2AC80  80 D9 0F 98 */	lwz r6, 0xf98(r25)
/* 80B2AC84  A0 C6 00 00 */	lhz r6, 0(r6)
/* 80B2AC88  38 E0 00 04 */	li r7, 4
/* 80B2AC8C  4B 61 B3 28 */	b getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii
/* 80B2AC90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2AC94  41 82 00 08 */	beq lbl_80B2AC9C
/* 80B2AC98  3B A0 00 01 */	li r29, 1
lbl_80B2AC9C:
/* 80B2AC9C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80B2ACA0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B2ACA4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80B2ACA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B2ACAC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B2ACB0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B2ACB4  7F 23 CB 78 */	mr r3, r25
/* 80B2ACB8  38 81 00 20 */	addi r4, r1, 0x20
/* 80B2ACBC  7F A5 EB 78 */	mr r5, r29
/* 80B2ACC0  38 C0 00 06 */	li r6, 6
/* 80B2ACC4  38 E0 08 00 */	li r7, 0x800
/* 80B2ACC8  4B 62 0B 40 */	b calcSpeedAndAngle__8daNpcT_cF4cXyziss
/* 80B2ACCC  2C 1F 00 00 */	cmpwi r31, 0
/* 80B2ACD0  41 82 01 08 */	beq lbl_80B2ADD8
/* 80B2ACD4  C0 19 05 2C */	lfs f0, 0x52c(r25)
/* 80B2ACD8  FC 00 02 10 */	fabs f0, f0
/* 80B2ACDC  FC 20 00 18 */	frsp f1, f0
/* 80B2ACE0  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80B2ACE4  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80B2ACE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2ACEC  40 80 00 EC */	bge lbl_80B2ADD8
/* 80B2ACF0  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80B2ACF4  2C 00 00 08 */	cmpwi r0, 8
/* 80B2ACF8  41 82 00 E0 */	beq lbl_80B2ADD8
/* 80B2ACFC  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 80B2AD00  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B2AD04  41 82 00 24 */	beq lbl_80B2AD28
/* 80B2AD08  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 80B2AD0C  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80B2AD10  4B 61 AB 88 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2AD14  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 80B2AD18  38 00 00 11 */	li r0, 0x11
/* 80B2AD1C  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80B2AD20  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B2AD24  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_80B2AD28:
/* 80B2AD28  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80B2AD2C  2C 00 00 08 */	cmpwi r0, 8
/* 80B2AD30  41 82 00 24 */	beq lbl_80B2AD54
/* 80B2AD34  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 80B2AD38  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80B2AD3C  4B 61 AB 5C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2AD40  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 80B2AD44  38 00 00 08 */	li r0, 8
/* 80B2AD48  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80B2AD4C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B2AD50  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_80B2AD54:
/* 80B2AD54  80 99 0F 98 */	lwz r4, 0xf98(r25)
/* 80B2AD58  A0 64 00 00 */	lhz r3, 0(r4)
/* 80B2AD5C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B2AD60  54 63 20 36 */	slwi r3, r3, 4
/* 80B2AD64  7C 80 1A 14 */	add r4, r0, r3
/* 80B2AD68  80 64 FF F4 */	lwz r3, -0xc(r4)
/* 80B2AD6C  80 04 FF F8 */	lwz r0, -8(r4)
/* 80B2AD70  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B2AD74  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B2AD78  80 04 FF FC */	lwz r0, -4(r4)
/* 80B2AD7C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B2AD80  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B2AD84  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B2AD88  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B2AD8C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B2AD90  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B2AD94  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B2AD98  80 64 FF E4 */	lwz r3, -0x1c(r4)
/* 80B2AD9C  80 04 FF E8 */	lwz r0, -0x18(r4)
/* 80B2ADA0  90 61 00 08 */	stw r3, 8(r1)
/* 80B2ADA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B2ADA8  80 04 FF EC */	lwz r0, -0x14(r4)
/* 80B2ADAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B2ADB0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B2ADB4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B2ADB8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B2ADBC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B2ADC0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B2ADC4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B2ADC8  38 61 00 50 */	addi r3, r1, 0x50
/* 80B2ADCC  38 81 00 44 */	addi r4, r1, 0x44
/* 80B2ADD0  4B 74 5E 34 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B2ADD4  B0 79 04 B6 */	sth r3, 0x4b6(r25)
lbl_80B2ADD8:
/* 80B2ADD8  2C 1D 00 00 */	cmpwi r29, 0
/* 80B2ADDC  40 82 01 44 */	bne lbl_80B2AF20
/* 80B2ADE0  88 19 10 11 */	lbz r0, 0x1011(r25)
/* 80B2ADE4  28 00 00 00 */	cmplwi r0, 0
/* 80B2ADE8  40 82 01 38 */	bne lbl_80B2AF20
/* 80B2ADEC  80 79 0F FC */	lwz r3, 0xffc(r25)
/* 80B2ADF0  2C 03 00 00 */	cmpwi r3, 0
/* 80B2ADF4  40 82 01 24 */	bne lbl_80B2AF18
/* 80B2ADF8  3B 00 00 00 */	li r24, 0
/* 80B2ADFC  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80B2AE00  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80B2AE04  41 82 00 1C */	beq lbl_80B2AE20
/* 80B2AE08  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80B2AE0C  41 82 00 14 */	beq lbl_80B2AE20
/* 80B2AE10  3B 00 00 01 */	li r24, 1
/* 80B2AE14  38 00 00 00 */	li r0, 0
/* 80B2AE18  90 19 0F EC */	stw r0, 0xfec(r25)
/* 80B2AE1C  48 00 00 14 */	b lbl_80B2AE30
lbl_80B2AE20:
/* 80B2AE20  38 79 10 04 */	addi r3, r25, 0x1004
/* 80B2AE24  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 80B2AE28  C0 5E 00 E8 */	lfs f2, 0xe8(r30)
/* 80B2AE2C  4B 74 59 14 */	b cLib_chaseF__FPfff
lbl_80B2AE30:
/* 80B2AE30  80 79 0F EC */	lwz r3, 0xfec(r25)
/* 80B2AE34  2C 03 00 00 */	cmpwi r3, 0
/* 80B2AE38  40 82 00 D4 */	bne lbl_80B2AF0C
/* 80B2AE3C  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80B2AE40  40 82 00 14 */	bne lbl_80B2AE54
/* 80B2AE44  80 79 05 78 */	lwz r3, 0x578(r25)
/* 80B2AE48  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B2AE4C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80B2AE50  41 82 00 D0 */	beq lbl_80B2AF20
lbl_80B2AE54:
/* 80B2AE54  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 80B2AE58  C8 7E 01 10 */	lfd f3, 0x110(r30)
/* 80B2AE5C  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 80B2AE60  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80B2AE64  3C 00 43 30 */	lis r0, 0x4330
/* 80B2AE68  90 01 00 68 */	stw r0, 0x68(r1)
/* 80B2AE6C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80B2AE70  EC 00 18 28 */	fsubs f0, f0, f3
/* 80B2AE74  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B2AE78  C0 5E 01 54 */	lfs f2, 0x154(r30)
/* 80B2AE7C  90 61 00 74 */	stw r3, 0x74(r1)
/* 80B2AE80  90 01 00 70 */	stw r0, 0x70(r1)
/* 80B2AE84  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80B2AE88  EC 00 18 28 */	fsubs f0, f0, f3
/* 80B2AE8C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80B2AE90  48 00 1C 9D */	bl func_80B2CB2C
/* 80B2AE94  FC 00 08 1E */	fctiwz f0, f1
/* 80B2AE98  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80B2AE9C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80B2AEA0  90 19 0F EC */	stw r0, 0xfec(r25)
/* 80B2AEA4  C0 19 0A 84 */	lfs f0, 0xa84(r25)
/* 80B2AEA8  D0 19 10 04 */	stfs f0, 0x1004(r25)
/* 80B2AEAC  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80B2AEB0  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80B2AEB4  40 82 00 30 */	bne lbl_80B2AEE4
/* 80B2AEB8  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80B2AEBC  41 82 00 64 */	beq lbl_80B2AF20
/* 80B2AEC0  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 80B2AEC4  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80B2AEC8  4B 61 A9 D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2AECC  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 80B2AED0  38 00 00 1D */	li r0, 0x1d
/* 80B2AED4  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80B2AED8  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B2AEDC  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 80B2AEE0  48 00 00 40 */	b lbl_80B2AF20
lbl_80B2AEE4:
/* 80B2AEE4  41 82 00 3C */	beq lbl_80B2AF20
/* 80B2AEE8  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 80B2AEEC  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80B2AEF0  4B 61 A9 A8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2AEF4  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 80B2AEF8  38 00 00 1C */	li r0, 0x1c
/* 80B2AEFC  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80B2AF00  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B2AF04  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 80B2AF08  48 00 00 18 */	b lbl_80B2AF20
lbl_80B2AF0C:
/* 80B2AF0C  38 03 FF FF */	addi r0, r3, -1
/* 80B2AF10  90 19 0F EC */	stw r0, 0xfec(r25)
/* 80B2AF14  48 00 00 0C */	b lbl_80B2AF20
lbl_80B2AF18:
/* 80B2AF18  38 03 FF FF */	addi r0, r3, -1
/* 80B2AF1C  90 19 0F FC */	stw r0, 0xffc(r25)
lbl_80B2AF20:
/* 80B2AF20  80 79 0F F4 */	lwz r3, 0xff4(r25)
/* 80B2AF24  2C 03 00 00 */	cmpwi r3, 0
/* 80B2AF28  40 82 00 88 */	bne lbl_80B2AFB0
/* 80B2AF2C  80 19 0F F8 */	lwz r0, 0xff8(r25)
/* 80B2AF30  2C 00 00 00 */	cmpwi r0, 0
/* 80B2AF34  41 82 00 28 */	beq lbl_80B2AF5C
/* 80B2AF38  38 79 0B 98 */	addi r3, r25, 0xb98
/* 80B2AF3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B2AF40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B2AF44  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B2AF48  4B 61 A7 98 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B2AF4C  80 79 0F F8 */	lwz r3, 0xff8(r25)
/* 80B2AF50  38 03 FF FF */	addi r0, r3, -1
/* 80B2AF54  90 19 0F F8 */	stw r0, 0xff8(r25)
/* 80B2AF58  48 00 00 BC */	b lbl_80B2B014
lbl_80B2AF5C:
/* 80B2AF5C  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 80B2AF60  C8 7E 01 10 */	lfd f3, 0x110(r30)
/* 80B2AF64  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 80B2AF68  90 61 00 7C */	stw r3, 0x7c(r1)
/* 80B2AF6C  3C 00 43 30 */	lis r0, 0x4330
/* 80B2AF70  90 01 00 78 */	stw r0, 0x78(r1)
/* 80B2AF74  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80B2AF78  EC 00 18 28 */	fsubs f0, f0, f3
/* 80B2AF7C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B2AF80  C0 5E 01 54 */	lfs f2, 0x154(r30)
/* 80B2AF84  90 61 00 74 */	stw r3, 0x74(r1)
/* 80B2AF88  90 01 00 70 */	stw r0, 0x70(r1)
/* 80B2AF8C  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80B2AF90  EC 00 18 28 */	fsubs f0, f0, f3
/* 80B2AF94  EC 42 00 32 */	fmuls f2, f2, f0
/* 80B2AF98  48 00 1B 95 */	bl func_80B2CB2C
/* 80B2AF9C  FC 00 08 1E */	fctiwz f0, f1
/* 80B2AFA0  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80B2AFA4  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80B2AFA8  90 19 0F F4 */	stw r0, 0xff4(r25)
/* 80B2AFAC  48 00 00 68 */	b lbl_80B2B014
lbl_80B2AFB0:
/* 80B2AFB0  38 03 FF FF */	addi r0, r3, -1
/* 80B2AFB4  90 19 0F F4 */	stw r0, 0xff4(r25)
/* 80B2AFB8  80 19 0F F4 */	lwz r0, 0xff4(r25)
/* 80B2AFBC  2C 00 00 00 */	cmpwi r0, 0
/* 80B2AFC0  40 82 00 54 */	bne lbl_80B2B014
/* 80B2AFC4  C0 3E 01 50 */	lfs f1, 0x150(r30)
/* 80B2AFC8  C8 7E 01 10 */	lfd f3, 0x110(r30)
/* 80B2AFCC  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 80B2AFD0  90 61 00 7C */	stw r3, 0x7c(r1)
/* 80B2AFD4  3C 00 43 30 */	lis r0, 0x4330
/* 80B2AFD8  90 01 00 78 */	stw r0, 0x78(r1)
/* 80B2AFDC  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80B2AFE0  EC 00 18 28 */	fsubs f0, f0, f3
/* 80B2AFE4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B2AFE8  C0 5E 01 54 */	lfs f2, 0x154(r30)
/* 80B2AFEC  90 61 00 74 */	stw r3, 0x74(r1)
/* 80B2AFF0  90 01 00 70 */	stw r0, 0x70(r1)
/* 80B2AFF4  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80B2AFF8  EC 00 18 28 */	fsubs f0, f0, f3
/* 80B2AFFC  EC 42 00 32 */	fmuls f2, f2, f0
/* 80B2B000  48 00 1B 2D */	bl func_80B2CB2C
/* 80B2B004  FC 00 08 1E */	fctiwz f0, f1
/* 80B2B008  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80B2B00C  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80B2B010  90 19 0F F8 */	stw r0, 0xff8(r25)
lbl_80B2B014:
/* 80B2B014  2C 1F 00 00 */	cmpwi r31, 0
/* 80B2B018  41 82 00 D8 */	beq lbl_80B2B0F0
/* 80B2B01C  A8 79 04 B6 */	lha r3, 0x4b6(r25)
/* 80B2B020  A8 19 0D 7A */	lha r0, 0xd7a(r25)
/* 80B2B024  7C 03 00 00 */	cmpw r3, r0
/* 80B2B028  41 82 00 C8 */	beq lbl_80B2B0F0
/* 80B2B02C  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80B2B030  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B034  41 82 00 24 */	beq lbl_80B2B058
/* 80B2B038  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80B2B03C  4B 61 A6 C0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2B040  38 00 00 00 */	li r0, 0
/* 80B2B044  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80B2B048  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80B2B04C  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80B2B050  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80B2B054  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80B2B058:
/* 80B2B058  38 00 00 00 */	li r0, 0
/* 80B2B05C  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80B2B060  7F 23 CB 78 */	mr r3, r25
/* 80B2B064  A8 99 04 B6 */	lha r4, 0x4b6(r25)
/* 80B2B068  38 A0 00 11 */	li r5, 0x11
/* 80B2B06C  38 C0 00 18 */	li r6, 0x18
/* 80B2B070  38 E0 00 0F */	li r7, 0xf
/* 80B2B074  39 00 00 00 */	li r8, 0
/* 80B2B078  4B 62 05 D0 */	b step__8daNpcT_cFsiiii
/* 80B2B07C  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B080  41 82 00 64 */	beq lbl_80B2B0E4
/* 80B2B084  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 80B2B088  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B2B08C  41 82 00 24 */	beq lbl_80B2B0B0
/* 80B2B090  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 80B2B094  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80B2B098  4B 61 A8 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2B09C  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 80B2B0A0  38 00 00 11 */	li r0, 0x11
/* 80B2B0A4  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80B2B0A8  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B2B0AC  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_80B2B0B0:
/* 80B2B0B0  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80B2B0B4  2C 00 00 08 */	cmpwi r0, 8
/* 80B2B0B8  41 82 00 24 */	beq lbl_80B2B0DC
/* 80B2B0BC  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 80B2B0C0  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80B2B0C4  4B 61 A7 D4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2B0C8  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 80B2B0CC  38 00 00 08 */	li r0, 8
/* 80B2B0D0  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80B2B0D4  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B2B0D8  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_80B2B0DC:
/* 80B2B0DC  38 00 00 01 */	li r0, 1
/* 80B2B0E0  98 19 10 0F */	stb r0, 0x100f(r25)
lbl_80B2B0E4:
/* 80B2B0E4  38 00 00 00 */	li r0, 0
/* 80B2B0E8  90 19 05 5C */	stw r0, 0x55c(r25)
/* 80B2B0EC  48 00 01 44 */	b lbl_80B2B230
lbl_80B2B0F0:
/* 80B2B0F0  38 79 0B 98 */	addi r3, r25, 0xb98
/* 80B2B0F4  4B 61 A6 14 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B2B0F8  28 03 00 00 */	cmplwi r3, 0
/* 80B2B0FC  41 82 00 EC */	beq lbl_80B2B1E8
/* 80B2B100  88 19 0A 89 */	lbz r0, 0xa89(r25)
/* 80B2B104  28 00 00 00 */	cmplwi r0, 0
/* 80B2B108  40 82 00 E0 */	bne lbl_80B2B1E8
/* 80B2B10C  80 19 0F F8 */	lwz r0, 0xff8(r25)
/* 80B2B110  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B114  40 82 00 0C */	bne lbl_80B2B120
/* 80B2B118  38 00 00 00 */	li r0, 0
/* 80B2B11C  98 19 10 11 */	stb r0, 0x1011(r25)
lbl_80B2B120:
/* 80B2B120  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80B2B124  2C 00 00 01 */	cmpwi r0, 1
/* 80B2B128  41 82 00 28 */	beq lbl_80B2B150
/* 80B2B12C  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80B2B130  4B 61 A5 CC */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2B134  38 00 00 00 */	li r0, 0
/* 80B2B138  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80B2B13C  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80B2B140  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80B2B144  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80B2B148  38 00 00 01 */	li r0, 1
/* 80B2B14C  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80B2B150:
/* 80B2B150  38 00 00 00 */	li r0, 0
/* 80B2B154  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80B2B158  38 79 0B 98 */	addi r3, r25, 0xb98
/* 80B2B15C  4B 61 A5 AC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B2B160  7C 64 1B 78 */	mr r4, r3
/* 80B2B164  7F 23 CB 78 */	mr r3, r25
/* 80B2B168  C0 39 0D F8 */	lfs f1, 0xdf8(r25)
/* 80B2B16C  A8 B9 0D 7A */	lha r5, 0xd7a(r25)
/* 80B2B170  4B 61 FA 60 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B2B174  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B178  40 82 00 44 */	bne lbl_80B2B1BC
/* 80B2B17C  80 19 0F F8 */	lwz r0, 0xff8(r25)
/* 80B2B180  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B184  40 82 00 38 */	bne lbl_80B2B1BC
/* 80B2B188  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80B2B18C  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B190  41 82 00 24 */	beq lbl_80B2B1B4
/* 80B2B194  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80B2B198  4B 61 A5 64 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2B19C  38 00 00 00 */	li r0, 0
/* 80B2B1A0  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80B2B1A4  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80B2B1A8  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80B2B1AC  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80B2B1B0  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80B2B1B4:
/* 80B2B1B4  38 00 00 00 */	li r0, 0
/* 80B2B1B8  98 19 0C FF */	stb r0, 0xcff(r25)
lbl_80B2B1BC:
/* 80B2B1BC  7F 23 CB 78 */	mr r3, r25
/* 80B2B1C0  4B 62 01 78 */	b srchPlayerActor__8daNpcT_cFv
/* 80B2B1C4  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B1C8  40 82 00 68 */	bne lbl_80B2B230
/* 80B2B1CC  A8 79 04 B6 */	lha r3, 0x4b6(r25)
/* 80B2B1D0  A8 19 0D 7A */	lha r0, 0xd7a(r25)
/* 80B2B1D4  7C 03 00 00 */	cmpw r3, r0
/* 80B2B1D8  40 82 00 58 */	bne lbl_80B2B230
/* 80B2B1DC  38 00 00 01 */	li r0, 1
/* 80B2B1E0  B0 19 0E 22 */	sth r0, 0xe22(r25)
/* 80B2B1E4  48 00 00 4C */	b lbl_80B2B230
lbl_80B2B1E8:
/* 80B2B1E8  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80B2B1EC  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B1F0  41 82 00 24 */	beq lbl_80B2B214
/* 80B2B1F4  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80B2B1F8  4B 61 A5 04 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2B1FC  38 00 00 00 */	li r0, 0
/* 80B2B200  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80B2B204  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80B2B208  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80B2B20C  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80B2B210  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80B2B214:
/* 80B2B214  38 00 00 00 */	li r0, 0
/* 80B2B218  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80B2B21C  88 19 0A 89 */	lbz r0, 0xa89(r25)
/* 80B2B220  28 00 00 00 */	cmplwi r0, 0
/* 80B2B224  40 82 00 0C */	bne lbl_80B2B230
/* 80B2B228  7F 23 CB 78 */	mr r3, r25
/* 80B2B22C  4B 62 01 0C */	b srchPlayerActor__8daNpcT_cFv
lbl_80B2B230:
/* 80B2B230  38 60 00 01 */	li r3, 1
/* 80B2B234  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B2B238  4B 83 6F DC */	b _restgpr_24
/* 80B2B23C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B2B240  7C 08 03 A6 */	mtlr r0
/* 80B2B244  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B2B248  4E 80 00 20 */	blr 
