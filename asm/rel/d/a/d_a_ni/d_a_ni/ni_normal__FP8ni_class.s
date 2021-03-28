lbl_8094C7B4:
/* 8094C7B4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8094C7B8  7C 08 02 A6 */	mflr r0
/* 8094C7BC  90 01 00 84 */	stw r0, 0x84(r1)
/* 8094C7C0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8094C7C4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8094C7C8  39 61 00 70 */	addi r11, r1, 0x70
/* 8094C7CC  4B A1 5A 0C */	b _savegpr_28
/* 8094C7D0  7C 7E 1B 78 */	mr r30, r3
/* 8094C7D4  3C 80 80 95 */	lis r4, lit_3958@ha
/* 8094C7D8  3B E4 11 C0 */	addi r31, r4, lit_3958@l
/* 8094C7DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8094C7E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8094C7E4  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 8094C7E8  C3 FF 00 24 */	lfs f31, 0x24(r31)
/* 8094C7EC  A8 03 05 FC */	lha r0, 0x5fc(r3)
/* 8094C7F0  2C 00 00 01 */	cmpwi r0, 1
/* 8094C7F4  41 82 00 68 */	beq lbl_8094C85C
/* 8094C7F8  40 80 00 10 */	bge lbl_8094C808
/* 8094C7FC  2C 00 00 00 */	cmpwi r0, 0
/* 8094C800  40 80 00 14 */	bge lbl_8094C814
/* 8094C804  48 00 02 30 */	b lbl_8094CA34
lbl_8094C808:
/* 8094C808  2C 00 00 0A */	cmpwi r0, 0xa
/* 8094C80C  41 82 01 60 */	beq lbl_8094C96C
/* 8094C810  48 00 02 24 */	b lbl_8094CA34
lbl_8094C814:
/* 8094C814  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8094C818  4B 91 B1 3C */	b cM_rndF__Ff
/* 8094C81C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8094C820  EC 00 08 2A */	fadds f0, f0, f1
/* 8094C824  FC 00 00 1E */	fctiwz f0, f0
/* 8094C828  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8094C82C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8094C830  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 8094C834  7F C3 F3 78 */	mr r3, r30
/* 8094C838  38 80 00 0B */	li r4, 0xb
/* 8094C83C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8094C840  38 A0 00 02 */	li r5, 2
/* 8094C844  FC 40 F8 90 */	fmr f2, f31
/* 8094C848  4B FF F4 61 */	bl anm_init__FP8ni_classifUcf
/* 8094C84C  A8 7E 05 FC */	lha r3, 0x5fc(r30)
/* 8094C850  38 03 00 01 */	addi r0, r3, 1
/* 8094C854  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8094C858  48 00 01 DC */	b lbl_8094CA34
lbl_8094C85C:
/* 8094C85C  A8 1E 06 04 */	lha r0, 0x604(r30)
/* 8094C860  2C 00 00 00 */	cmpwi r0, 0
/* 8094C864  40 82 01 D0 */	bne lbl_8094CA34
/* 8094C868  38 00 00 0A */	li r0, 0xa
/* 8094C86C  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8094C870  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8094C874  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 8094C878  4B 6D 06 58 */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 8094C87C  2C 03 00 00 */	cmpwi r3, 0
/* 8094C880  40 82 00 18 */	bne lbl_8094C898
/* 8094C884  7F C3 F3 78 */	mr r3, r30
/* 8094C888  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8094C88C  4B FF FE 39 */	bl move_gake_check__FP8ni_classf
/* 8094C890  2C 03 00 00 */	cmpwi r3, 0
/* 8094C894  41 82 00 38 */	beq lbl_8094C8CC
lbl_8094C898:
/* 8094C898  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8094C89C  4B 91 B0 F0 */	b cM_rndFX__Ff
/* 8094C8A0  FC 00 08 1E */	fctiwz f0, f1
/* 8094C8A4  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8094C8A8  80 81 00 54 */	lwz r4, 0x54(r1)
/* 8094C8AC  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8094C8B0  3C 03 00 01 */	addis r0, r3, 1
/* 8094C8B4  7C 60 22 14 */	add r3, r0, r4
/* 8094C8B8  38 03 80 00 */	addi r0, r3, -32768
/* 8094C8BC  B0 1E 05 DC */	sth r0, 0x5dc(r30)
/* 8094C8C0  38 00 00 1E */	li r0, 0x1e
/* 8094C8C4  B0 1E 06 06 */	sth r0, 0x606(r30)
/* 8094C8C8  48 00 00 60 */	b lbl_8094C928
lbl_8094C8CC:
/* 8094C8CC  38 61 00 34 */	addi r3, r1, 0x34
/* 8094C8D0  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8094C8D4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8094C8D8  4B 91 A2 5C */	b __mi__4cXyzCFRC3Vec
/* 8094C8DC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8094C8E0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8094C8E4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8094C8E8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8094C8EC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8094C8F0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8094C8F4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8094C8F8  4B 91 B0 94 */	b cM_rndFX__Ff
/* 8094C8FC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8094C900  EC 00 08 2A */	fadds f0, f0, f1
/* 8094C904  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8094C908  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8094C90C  4B 91 B0 80 */	b cM_rndFX__Ff
/* 8094C910  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8094C914  EC 40 08 2A */	fadds f2, f0, f1
/* 8094C918  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8094C91C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8094C920  4B 91 AD 54 */	b cM_atan2s__Fff
/* 8094C924  B0 7E 05 DC */	sth r3, 0x5dc(r30)
lbl_8094C928:
/* 8094C928  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8094C92C  4B 91 B0 28 */	b cM_rndF__Ff
/* 8094C930  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8094C934  EC 00 08 2A */	fadds f0, f0, f1
/* 8094C938  FC 00 00 1E */	fctiwz f0, f0
/* 8094C93C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8094C940  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8094C944  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 8094C948  7F C3 F3 78 */	mr r3, r30
/* 8094C94C  38 80 00 0C */	li r4, 0xc
/* 8094C950  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8094C954  38 A0 00 02 */	li r5, 2
/* 8094C958  3C C0 80 95 */	lis r6, l_HIO@ha
/* 8094C95C  38 C6 15 9C */	addi r6, r6, l_HIO@l
/* 8094C960  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 8094C964  4B FF F3 45 */	bl anm_init__FP8ni_classifUcf
/* 8094C968  48 00 00 CC */	b lbl_8094CA34
lbl_8094C96C:
/* 8094C96C  3C 60 80 95 */	lis r3, l_HIO@ha
/* 8094C970  38 63 15 9C */	addi r3, r3, l_HIO@l
/* 8094C974  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 8094C978  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8094C97C  A8 9E 05 DC */	lha r4, 0x5dc(r30)
/* 8094C980  38 A0 00 04 */	li r5, 4
/* 8094C984  38 C0 04 00 */	li r6, 0x400
/* 8094C988  4B 92 3C 80 */	b cLib_addCalcAngleS2__FPssss
/* 8094C98C  A8 1E 06 04 */	lha r0, 0x604(r30)
/* 8094C990  2C 00 00 00 */	cmpwi r0, 0
/* 8094C994  41 82 00 3C */	beq lbl_8094C9D0
/* 8094C998  7F C3 F3 78 */	mr r3, r30
/* 8094C99C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8094C9A0  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 8094C9A4  4B 6D 05 2C */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 8094C9A8  2C 03 00 00 */	cmpwi r3, 0
/* 8094C9AC  40 82 00 18 */	bne lbl_8094C9C4
/* 8094C9B0  7F C3 F3 78 */	mr r3, r30
/* 8094C9B4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8094C9B8  4B FF FD 0D */	bl move_gake_check__FP8ni_classf
/* 8094C9BC  2C 03 00 00 */	cmpwi r3, 0
/* 8094C9C0  41 82 00 18 */	beq lbl_8094C9D8
lbl_8094C9C4:
/* 8094C9C4  A8 1E 06 06 */	lha r0, 0x606(r30)
/* 8094C9C8  2C 00 00 00 */	cmpwi r0, 0
/* 8094C9CC  40 82 00 0C */	bne lbl_8094C9D8
lbl_8094C9D0:
/* 8094C9D0  38 00 00 00 */	li r0, 0
/* 8094C9D4  B0 1E 05 FC */	sth r0, 0x5fc(r30)
lbl_8094C9D8:
/* 8094C9D8  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 8094C9DC  38 63 00 0C */	addi r3, r3, 0xc
/* 8094C9E0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094C9E4  4B 9D BA 48 */	b checkPass__12J3DFrameCtrlFf
/* 8094C9E8  2C 03 00 00 */	cmpwi r3, 0
/* 8094C9EC  40 82 00 1C */	bne lbl_8094CA08
/* 8094C9F0  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 8094C9F4  38 63 00 0C */	addi r3, r3, 0xc
/* 8094C9F8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8094C9FC  4B 9D BA 30 */	b checkPass__12J3DFrameCtrlFf
/* 8094CA00  2C 03 00 00 */	cmpwi r3, 0
/* 8094CA04  41 82 00 30 */	beq lbl_8094CA34
lbl_8094CA08:
/* 8094CA08  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050006@ha */
/* 8094CA0C  38 03 00 06 */	addi r0, r3, 0x0006 /* 0x00050006@l */
/* 8094CA10  90 01 00 18 */	stw r0, 0x18(r1)
/* 8094CA14  38 7E 0A 28 */	addi r3, r30, 0xa28
/* 8094CA18  38 81 00 18 */	addi r4, r1, 0x18
/* 8094CA1C  38 A0 00 00 */	li r5, 0
/* 8094CA20  38 C0 FF FF */	li r6, -1
/* 8094CA24  81 9E 0A 38 */	lwz r12, 0xa38(r30)
/* 8094CA28  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8094CA2C  7D 89 03 A6 */	mtctr r12
/* 8094CA30  4E 80 04 21 */	bctrl 
lbl_8094CA34:
/* 8094CA34  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8094CA38  FC 20 F8 90 */	fmr f1, f31
/* 8094CA3C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8094CA40  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8094CA44  4B 92 2F F8 */	b cLib_addCalc2__FPffff
/* 8094CA48  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8094CA4C  FC 00 02 10 */	fabs f0, f0
/* 8094CA50  FC 20 00 18 */	frsp f1, f0
/* 8094CA54  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8094CA58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094CA5C  40 80 00 18 */	bge lbl_8094CA74
/* 8094CA60  A8 1E 06 0E */	lha r0, 0x60e(r30)
/* 8094CA64  2C 00 00 00 */	cmpwi r0, 0
/* 8094CA68  40 82 00 0C */	bne lbl_8094CA74
/* 8094CA6C  38 00 00 01 */	li r0, 1
/* 8094CA70  B0 1E 06 0E */	sth r0, 0x60e(r30)
lbl_8094CA74:
/* 8094CA74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8094CA78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8094CA7C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8094CA80  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 8094CA84  41 82 00 0C */	beq lbl_8094CA90
/* 8094CA88  38 00 00 1E */	li r0, 0x1e
/* 8094CA8C  B0 1E 06 0E */	sth r0, 0x60e(r30)
lbl_8094CA90:
/* 8094CA90  A8 7E 05 E4 */	lha r3, 0x5e4(r30)
/* 8094CA94  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8094CA98  7C 03 00 50 */	subf r0, r3, r0
/* 8094CA9C  7C 00 07 34 */	extsh r0, r0
/* 8094CAA0  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8094CAA4  40 80 00 10 */	bge lbl_8094CAB4
/* 8094CAA8  40 81 00 0C */	ble lbl_8094CAB4
/* 8094CAAC  38 00 00 00 */	li r0, 0
/* 8094CAB0  B0 1E 06 0E */	sth r0, 0x60e(r30)
lbl_8094CAB4:
/* 8094CAB4  3B A0 00 00 */	li r29, 0
/* 8094CAB8  38 00 FF FF */	li r0, -1
/* 8094CABC  90 1E 06 2C */	stw r0, 0x62c(r30)
/* 8094CAC0  A8 1E 05 F8 */	lha r0, 0x5f8(r30)
/* 8094CAC4  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 8094CAC8  40 82 01 58 */	bne lbl_8094CC20
/* 8094CACC  7F C3 F3 78 */	mr r3, r30
/* 8094CAD0  4B FF FA 51 */	bl search_test__FP8ni_class
/* 8094CAD4  7C 7C 1B 79 */	or. r28, r3, r3
/* 8094CAD8  41 82 01 48 */	beq lbl_8094CC20
/* 8094CADC  38 61 00 28 */	addi r3, r1, 0x28
/* 8094CAE0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8094CAE4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8094CAE8  4B 91 A0 4C */	b __mi__4cXyzCFRC3Vec
/* 8094CAEC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8094CAF0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8094CAF4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8094CAF8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8094CAFC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8094CB00  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8094CB04  38 61 00 40 */	addi r3, r1, 0x40
/* 8094CB08  4B 9F A6 30 */	b PSVECSquareMag
/* 8094CB0C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094CB10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094CB14  40 81 00 58 */	ble lbl_8094CB6C
/* 8094CB18  FC 00 08 34 */	frsqrte f0, f1
/* 8094CB1C  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 8094CB20  FC 44 00 32 */	fmul f2, f4, f0
/* 8094CB24  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 8094CB28  FC 00 00 32 */	fmul f0, f0, f0
/* 8094CB2C  FC 01 00 32 */	fmul f0, f1, f0
/* 8094CB30  FC 03 00 28 */	fsub f0, f3, f0
/* 8094CB34  FC 02 00 32 */	fmul f0, f2, f0
/* 8094CB38  FC 44 00 32 */	fmul f2, f4, f0
/* 8094CB3C  FC 00 00 32 */	fmul f0, f0, f0
/* 8094CB40  FC 01 00 32 */	fmul f0, f1, f0
/* 8094CB44  FC 03 00 28 */	fsub f0, f3, f0
/* 8094CB48  FC 02 00 32 */	fmul f0, f2, f0
/* 8094CB4C  FC 44 00 32 */	fmul f2, f4, f0
/* 8094CB50  FC 00 00 32 */	fmul f0, f0, f0
/* 8094CB54  FC 01 00 32 */	fmul f0, f1, f0
/* 8094CB58  FC 03 00 28 */	fsub f0, f3, f0
/* 8094CB5C  FC 02 00 32 */	fmul f0, f2, f0
/* 8094CB60  FC 21 00 32 */	fmul f1, f1, f0
/* 8094CB64  FC 20 08 18 */	frsp f1, f1
/* 8094CB68  48 00 00 88 */	b lbl_8094CBF0
lbl_8094CB6C:
/* 8094CB6C  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 8094CB70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094CB74  40 80 00 10 */	bge lbl_8094CB84
/* 8094CB78  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094CB7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8094CB80  48 00 00 70 */	b lbl_8094CBF0
lbl_8094CB84:
/* 8094CB84  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8094CB88  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8094CB8C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8094CB90  3C 00 7F 80 */	lis r0, 0x7f80
/* 8094CB94  7C 03 00 00 */	cmpw r3, r0
/* 8094CB98  41 82 00 14 */	beq lbl_8094CBAC
/* 8094CB9C  40 80 00 40 */	bge lbl_8094CBDC
/* 8094CBA0  2C 03 00 00 */	cmpwi r3, 0
/* 8094CBA4  41 82 00 20 */	beq lbl_8094CBC4
/* 8094CBA8  48 00 00 34 */	b lbl_8094CBDC
lbl_8094CBAC:
/* 8094CBAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094CBB0  41 82 00 0C */	beq lbl_8094CBBC
/* 8094CBB4  38 00 00 01 */	li r0, 1
/* 8094CBB8  48 00 00 28 */	b lbl_8094CBE0
lbl_8094CBBC:
/* 8094CBBC  38 00 00 02 */	li r0, 2
/* 8094CBC0  48 00 00 20 */	b lbl_8094CBE0
lbl_8094CBC4:
/* 8094CBC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094CBC8  41 82 00 0C */	beq lbl_8094CBD4
/* 8094CBCC  38 00 00 05 */	li r0, 5
/* 8094CBD0  48 00 00 10 */	b lbl_8094CBE0
lbl_8094CBD4:
/* 8094CBD4  38 00 00 03 */	li r0, 3
/* 8094CBD8  48 00 00 08 */	b lbl_8094CBE0
lbl_8094CBDC:
/* 8094CBDC  38 00 00 04 */	li r0, 4
lbl_8094CBE0:
/* 8094CBE0  2C 00 00 01 */	cmpwi r0, 1
/* 8094CBE4  40 82 00 0C */	bne lbl_8094CBF0
/* 8094CBE8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094CBEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8094CBF0:
/* 8094CBF0  3C 60 80 95 */	lis r3, l_HIO@ha
/* 8094CBF4  38 63 15 9C */	addi r3, r3, l_HIO@l
/* 8094CBF8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8094CBFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094CC00  40 80 00 20 */	bge lbl_8094CC20
/* 8094CC04  28 1C 00 00 */	cmplwi r28, 0
/* 8094CC08  41 82 00 0C */	beq lbl_8094CC14
/* 8094CC0C  80 1C 00 04 */	lwz r0, 4(r28)
/* 8094CC10  48 00 00 08 */	b lbl_8094CC18
lbl_8094CC14:
/* 8094CC14  38 00 FF FF */	li r0, -1
lbl_8094CC18:
/* 8094CC18  90 1E 06 2C */	stw r0, 0x62c(r30)
/* 8094CC1C  3B A0 00 01 */	li r29, 1
lbl_8094CC20:
/* 8094CC20  38 00 01 06 */	li r0, 0x106
/* 8094CC24  B0 01 00 08 */	sth r0, 8(r1)
/* 8094CC28  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 8094CC2C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 8094CC30  38 81 00 08 */	addi r4, r1, 8
/* 8094CC34  4B 6C CB C4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8094CC38  7C 64 1B 79 */	or. r4, r3, r3
/* 8094CC3C  41 82 01 CC */	beq lbl_8094CE08
/* 8094CC40  C0 24 05 2C */	lfs f1, 0x52c(r4)
/* 8094CC44  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8094CC48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094CC4C  40 81 01 BC */	ble lbl_8094CE08
/* 8094CC50  38 61 00 1C */	addi r3, r1, 0x1c
/* 8094CC54  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8094CC58  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8094CC5C  4B 91 9E D8 */	b __mi__4cXyzCFRC3Vec
/* 8094CC60  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8094CC64  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8094CC68  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8094CC6C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8094CC70  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8094CC74  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8094CC78  38 61 00 40 */	addi r3, r1, 0x40
/* 8094CC7C  4B 9F A4 BC */	b PSVECSquareMag
/* 8094CC80  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094CC84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094CC88  40 81 00 58 */	ble lbl_8094CCE0
/* 8094CC8C  FC 00 08 34 */	frsqrte f0, f1
/* 8094CC90  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 8094CC94  FC 44 00 32 */	fmul f2, f4, f0
/* 8094CC98  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 8094CC9C  FC 00 00 32 */	fmul f0, f0, f0
/* 8094CCA0  FC 01 00 32 */	fmul f0, f1, f0
/* 8094CCA4  FC 03 00 28 */	fsub f0, f3, f0
/* 8094CCA8  FC 02 00 32 */	fmul f0, f2, f0
/* 8094CCAC  FC 44 00 32 */	fmul f2, f4, f0
/* 8094CCB0  FC 00 00 32 */	fmul f0, f0, f0
/* 8094CCB4  FC 01 00 32 */	fmul f0, f1, f0
/* 8094CCB8  FC 03 00 28 */	fsub f0, f3, f0
/* 8094CCBC  FC 02 00 32 */	fmul f0, f2, f0
/* 8094CCC0  FC 44 00 32 */	fmul f2, f4, f0
/* 8094CCC4  FC 00 00 32 */	fmul f0, f0, f0
/* 8094CCC8  FC 01 00 32 */	fmul f0, f1, f0
/* 8094CCCC  FC 03 00 28 */	fsub f0, f3, f0
/* 8094CCD0  FC 02 00 32 */	fmul f0, f2, f0
/* 8094CCD4  FF E1 00 32 */	fmul f31, f1, f0
/* 8094CCD8  FF E0 F8 18 */	frsp f31, f31
/* 8094CCDC  48 00 00 90 */	b lbl_8094CD6C
lbl_8094CCE0:
/* 8094CCE0  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 8094CCE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094CCE8  40 80 00 10 */	bge lbl_8094CCF8
/* 8094CCEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094CCF0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8094CCF4  48 00 00 78 */	b lbl_8094CD6C
lbl_8094CCF8:
/* 8094CCF8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8094CCFC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8094CD00  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8094CD04  3C 00 7F 80 */	lis r0, 0x7f80
/* 8094CD08  7C 03 00 00 */	cmpw r3, r0
/* 8094CD0C  41 82 00 14 */	beq lbl_8094CD20
/* 8094CD10  40 80 00 40 */	bge lbl_8094CD50
/* 8094CD14  2C 03 00 00 */	cmpwi r3, 0
/* 8094CD18  41 82 00 20 */	beq lbl_8094CD38
/* 8094CD1C  48 00 00 34 */	b lbl_8094CD50
lbl_8094CD20:
/* 8094CD20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094CD24  41 82 00 0C */	beq lbl_8094CD30
/* 8094CD28  38 00 00 01 */	li r0, 1
/* 8094CD2C  48 00 00 28 */	b lbl_8094CD54
lbl_8094CD30:
/* 8094CD30  38 00 00 02 */	li r0, 2
/* 8094CD34  48 00 00 20 */	b lbl_8094CD54
lbl_8094CD38:
/* 8094CD38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094CD3C  41 82 00 0C */	beq lbl_8094CD48
/* 8094CD40  38 00 00 05 */	li r0, 5
/* 8094CD44  48 00 00 10 */	b lbl_8094CD54
lbl_8094CD48:
/* 8094CD48  38 00 00 03 */	li r0, 3
/* 8094CD4C  48 00 00 08 */	b lbl_8094CD54
lbl_8094CD50:
/* 8094CD50  38 00 00 04 */	li r0, 4
lbl_8094CD54:
/* 8094CD54  2C 00 00 01 */	cmpwi r0, 1
/* 8094CD58  40 82 00 10 */	bne lbl_8094CD68
/* 8094CD5C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094CD60  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8094CD64  48 00 00 08 */	b lbl_8094CD6C
lbl_8094CD68:
/* 8094CD68  FF E0 08 90 */	fmr f31, f1
lbl_8094CD6C:
/* 8094CD6C  88 1E 0A 48 */	lbz r0, 0xa48(r30)
/* 8094CD70  7C 00 07 75 */	extsb. r0, r0
/* 8094CD74  40 82 00 58 */	bne lbl_8094CDCC
/* 8094CD78  C0 3E 05 E0 */	lfs f1, 0x5e0(r30)
/* 8094CD7C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8094CD80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094CD84  40 80 00 48 */	bge lbl_8094CDCC
/* 8094CD88  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8094CD8C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8094CD90  40 80 00 3C */	bge lbl_8094CDCC
/* 8094CD94  38 00 00 01 */	li r0, 1
/* 8094CD98  98 1E 0A 48 */	stb r0, 0xa48(r30)
/* 8094CD9C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8094CDA0  4B 91 AB EC */	b cM_rndFX__Ff
/* 8094CDA4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8094CDA8  EC 00 08 2A */	fadds f0, f0, f1
/* 8094CDAC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8094CDB0  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8094CDB4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8094CDB8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8094CDBC  4B 91 AB D0 */	b cM_rndFX__Ff
/* 8094CDC0  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8094CDC4  EC 00 08 2A */	fadds f0, f0, f1
/* 8094CDC8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_8094CDCC:
/* 8094CDCC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8094CDD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8094CDD4  40 80 00 34 */	bge lbl_8094CE08
/* 8094CDD8  3B A0 00 01 */	li r29, 1
/* 8094CDDC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050007@ha */
/* 8094CDE0  38 03 00 07 */	addi r0, r3, 0x0007 /* 0x00050007@l */
/* 8094CDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094CDE8  38 7E 0A 28 */	addi r3, r30, 0xa28
/* 8094CDEC  38 81 00 14 */	addi r4, r1, 0x14
/* 8094CDF0  38 A0 00 00 */	li r5, 0
/* 8094CDF4  38 C0 FF FF */	li r6, -1
/* 8094CDF8  81 9E 0A 38 */	lwz r12, 0xa38(r30)
/* 8094CDFC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8094CE00  7D 89 03 A6 */	mtctr r12
/* 8094CE04  4E 80 04 21 */	bctrl 
lbl_8094CE08:
/* 8094CE08  88 1E 05 F0 */	lbz r0, 0x5f0(r30)
/* 8094CE0C  2C 00 00 03 */	cmpwi r0, 3
/* 8094CE10  41 82 00 4C */	beq lbl_8094CE5C
/* 8094CE14  7F A0 07 75 */	extsb. r0, r29
/* 8094CE18  40 82 00 34 */	bne lbl_8094CE4C
/* 8094CE1C  3C 60 80 95 */	lis r3, l_HIO@ha
/* 8094CE20  38 63 15 9C */	addi r3, r3, l_HIO@l
/* 8094CE24  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8094CE28  28 00 00 00 */	cmplwi r0, 0
/* 8094CE2C  41 82 00 30 */	beq lbl_8094CE5C
/* 8094CE30  A8 1E 06 0E */	lha r0, 0x60e(r30)
/* 8094CE34  2C 00 00 00 */	cmpwi r0, 0
/* 8094CE38  40 82 00 24 */	bne lbl_8094CE5C
/* 8094CE3C  C0 3E 05 E0 */	lfs f1, 0x5e0(r30)
/* 8094CE40  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8094CE44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094CE48  40 80 00 14 */	bge lbl_8094CE5C
lbl_8094CE4C:
/* 8094CE4C  38 00 00 01 */	li r0, 1
/* 8094CE50  B0 1E 05 FA */	sth r0, 0x5fa(r30)
/* 8094CE54  38 00 00 00 */	li r0, 0
/* 8094CE58  B0 1E 05 FC */	sth r0, 0x5fc(r30)
lbl_8094CE5C:
/* 8094CE5C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8094CE60  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8094CE64  39 61 00 70 */	addi r11, r1, 0x70
/* 8094CE68  4B A1 53 BC */	b _restgpr_28
/* 8094CE6C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8094CE70  7C 08 03 A6 */	mtlr r0
/* 8094CE74  38 21 00 80 */	addi r1, r1, 0x80
/* 8094CE78  4E 80 00 20 */	blr 
