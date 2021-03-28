lbl_8078AA3C:
/* 8078AA3C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8078AA40  7C 08 02 A6 */	mflr r0
/* 8078AA44  90 01 00 84 */	stw r0, 0x84(r1)
/* 8078AA48  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8078AA4C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8078AA50  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8078AA54  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8078AA58  39 61 00 60 */	addi r11, r1, 0x60
/* 8078AA5C  4B BD 77 74 */	b _savegpr_26
/* 8078AA60  7C 7E 1B 78 */	mr r30, r3
/* 8078AA64  3C 60 80 79 */	lis r3, lit_3767@ha
/* 8078AA68  3B E3 DD A4 */	addi r31, r3, lit_3767@l
/* 8078AA6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8078AA70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8078AA74  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8078AA78  3B 60 00 00 */	li r27, 0
/* 8078AA7C  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 8078AA80  2C 00 00 0A */	cmpwi r0, 0xa
/* 8078AA84  41 82 02 38 */	beq lbl_8078ACBC
/* 8078AA88  40 80 00 1C */	bge lbl_8078AAA4
/* 8078AA8C  2C 00 00 01 */	cmpwi r0, 1
/* 8078AA90  41 82 01 E4 */	beq lbl_8078AC74
/* 8078AA94  40 80 03 4C */	bge lbl_8078ADE0
/* 8078AA98  2C 00 00 00 */	cmpwi r0, 0
/* 8078AA9C  40 80 00 14 */	bge lbl_8078AAB0
/* 8078AAA0  48 00 03 40 */	b lbl_8078ADE0
lbl_8078AAA4:
/* 8078AAA4  2C 00 00 0C */	cmpwi r0, 0xc
/* 8078AAA8  40 80 03 38 */	bge lbl_8078ADE0
/* 8078AAAC  48 00 02 94 */	b lbl_8078AD40
lbl_8078AAB0:
/* 8078AAB0  A8 1E 06 60 */	lha r0, 0x660(r30)
/* 8078AAB4  2C 00 00 00 */	cmpwi r0, 0
/* 8078AAB8  40 82 01 A8 */	bne lbl_8078AC60
/* 8078AABC  3B 80 00 00 */	li r28, 0
/* 8078AAC0  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 8078AAC4  C3 DF 00 48 */	lfs f30, 0x48(r31)
lbl_8078AAC8:
/* 8078AAC8  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 8078AACC  4B AD CE C0 */	b cM_rndFX__Ff
/* 8078AAD0  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8078AAD4  EC 00 08 2A */	fadds f0, f0, f1
/* 8078AAD8  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8078AADC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8078AAE0  4B AD CE AC */	b cM_rndFX__Ff
/* 8078AAE4  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8078AAE8  EC 00 08 2A */	fadds f0, f0, f1
/* 8078AAEC  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8078AAF0  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 8078AAF4  4B AD CE 98 */	b cM_rndFX__Ff
/* 8078AAF8  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8078AAFC  EC 00 08 2A */	fadds f0, f0, f1
/* 8078AB00  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 8078AB04  38 61 00 1C */	addi r3, r1, 0x1c
/* 8078AB08  38 9E 06 78 */	addi r4, r30, 0x678
/* 8078AB0C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8078AB10  4B AD C0 24 */	b __mi__4cXyzCFRC3Vec
/* 8078AB14  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8078AB18  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8078AB1C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8078AB20  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8078AB24  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8078AB28  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8078AB2C  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 8078AB30  38 61 00 28 */	addi r3, r1, 0x28
/* 8078AB34  4B BB C6 04 */	b PSVECSquareMag
/* 8078AB38  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8078AB3C  40 81 00 58 */	ble lbl_8078AB94
/* 8078AB40  FC 00 08 34 */	frsqrte f0, f1
/* 8078AB44  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 8078AB48  FC 44 00 32 */	fmul f2, f4, f0
/* 8078AB4C  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 8078AB50  FC 00 00 32 */	fmul f0, f0, f0
/* 8078AB54  FC 01 00 32 */	fmul f0, f1, f0
/* 8078AB58  FC 03 00 28 */	fsub f0, f3, f0
/* 8078AB5C  FC 02 00 32 */	fmul f0, f2, f0
/* 8078AB60  FC 44 00 32 */	fmul f2, f4, f0
/* 8078AB64  FC 00 00 32 */	fmul f0, f0, f0
/* 8078AB68  FC 01 00 32 */	fmul f0, f1, f0
/* 8078AB6C  FC 03 00 28 */	fsub f0, f3, f0
/* 8078AB70  FC 02 00 32 */	fmul f0, f2, f0
/* 8078AB74  FC 44 00 32 */	fmul f2, f4, f0
/* 8078AB78  FC 00 00 32 */	fmul f0, f0, f0
/* 8078AB7C  FC 01 00 32 */	fmul f0, f1, f0
/* 8078AB80  FC 03 00 28 */	fsub f0, f3, f0
/* 8078AB84  FC 02 00 32 */	fmul f0, f2, f0
/* 8078AB88  FC 21 00 32 */	fmul f1, f1, f0
/* 8078AB8C  FC 20 08 18 */	frsp f1, f1
/* 8078AB90  48 00 00 88 */	b lbl_8078AC18
lbl_8078AB94:
/* 8078AB94  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 8078AB98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078AB9C  40 80 00 10 */	bge lbl_8078ABAC
/* 8078ABA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8078ABA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8078ABA8  48 00 00 70 */	b lbl_8078AC18
lbl_8078ABAC:
/* 8078ABAC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8078ABB0  80 81 00 08 */	lwz r4, 8(r1)
/* 8078ABB4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8078ABB8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8078ABBC  7C 03 00 00 */	cmpw r3, r0
/* 8078ABC0  41 82 00 14 */	beq lbl_8078ABD4
/* 8078ABC4  40 80 00 40 */	bge lbl_8078AC04
/* 8078ABC8  2C 03 00 00 */	cmpwi r3, 0
/* 8078ABCC  41 82 00 20 */	beq lbl_8078ABEC
/* 8078ABD0  48 00 00 34 */	b lbl_8078AC04
lbl_8078ABD4:
/* 8078ABD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078ABD8  41 82 00 0C */	beq lbl_8078ABE4
/* 8078ABDC  38 00 00 01 */	li r0, 1
/* 8078ABE0  48 00 00 28 */	b lbl_8078AC08
lbl_8078ABE4:
/* 8078ABE4  38 00 00 02 */	li r0, 2
/* 8078ABE8  48 00 00 20 */	b lbl_8078AC08
lbl_8078ABEC:
/* 8078ABEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078ABF0  41 82 00 0C */	beq lbl_8078ABFC
/* 8078ABF4  38 00 00 05 */	li r0, 5
/* 8078ABF8  48 00 00 10 */	b lbl_8078AC08
lbl_8078ABFC:
/* 8078ABFC  38 00 00 03 */	li r0, 3
/* 8078AC00  48 00 00 08 */	b lbl_8078AC08
lbl_8078AC04:
/* 8078AC04  38 00 00 04 */	li r0, 4
lbl_8078AC08:
/* 8078AC08  2C 00 00 01 */	cmpwi r0, 1
/* 8078AC0C  40 82 00 0C */	bne lbl_8078AC18
/* 8078AC10  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8078AC14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8078AC18:
/* 8078AC18  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 8078AC1C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8078AC20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078AC24  40 81 00 30 */	ble lbl_8078AC54
/* 8078AC28  38 00 00 01 */	li r0, 1
/* 8078AC2C  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8078AC30  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8078AC34  4B AD CD 20 */	b cM_rndF__Ff
/* 8078AC38  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8078AC3C  EC 00 08 2A */	fadds f0, f0, f1
/* 8078AC40  FC 00 00 1E */	fctiwz f0, f0
/* 8078AC44  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078AC48  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8078AC4C  B0 1E 06 60 */	sth r0, 0x660(r30)
/* 8078AC50  48 00 00 10 */	b lbl_8078AC60
lbl_8078AC54:
/* 8078AC54  3B 9C 00 01 */	addi r28, r28, 1
/* 8078AC58  2C 1C 00 14 */	cmpwi r28, 0x14
/* 8078AC5C  41 80 FE 6C */	blt lbl_8078AAC8
lbl_8078AC60:
/* 8078AC60  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8078AC64  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 8078AC68  3B 80 00 00 */	li r28, 0
/* 8078AC6C  C3 FF 00 50 */	lfs f31, 0x50(r31)
/* 8078AC70  48 00 01 70 */	b lbl_8078ADE0
lbl_8078AC74:
/* 8078AC74  A8 1E 06 60 */	lha r0, 0x660(r30)
/* 8078AC78  2C 00 00 00 */	cmpwi r0, 0
/* 8078AC7C  40 82 00 2C */	bne lbl_8078ACA8
/* 8078AC80  38 00 00 00 */	li r0, 0
/* 8078AC84  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8078AC88  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8078AC8C  4B AD CC C8 */	b cM_rndF__Ff
/* 8078AC90  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8078AC94  EC 00 08 2A */	fadds f0, f0, f1
/* 8078AC98  FC 00 00 1E */	fctiwz f0, f0
/* 8078AC9C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078ACA0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8078ACA4  B0 1E 06 60 */	sth r0, 0x660(r30)
lbl_8078ACA8:
/* 8078ACA8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8078ACAC  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 8078ACB0  3B 80 04 00 */	li r28, 0x400
/* 8078ACB4  C3 FF 00 54 */	lfs f31, 0x54(r31)
/* 8078ACB8  48 00 01 28 */	b lbl_8078ADE0
lbl_8078ACBC:
/* 8078ACBC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8078ACC0  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8078ACC4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8078ACC8  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8078ACCC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8078ACD0  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 8078ACD4  C0 3E 06 B8 */	lfs f1, 0x6b8(r30)
/* 8078ACD8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8078ACDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078ACE0  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8078ACE4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8078ACE8  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 8078ACEC  3B 80 02 00 */	li r28, 0x200
/* 8078ACF0  C3 FF 00 58 */	lfs f31, 0x58(r31)
/* 8078ACF4  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 8078ACF8  1C 00 02 BC */	mulli r0, r0, 0x2bc
/* 8078ACFC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8078AD00  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8078AD04  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8078AD08  7C 23 04 2E */	lfsx f1, r3, r0
/* 8078AD0C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8078AD10  EC 00 00 72 */	fmuls f0, f0, f1
/* 8078AD14  FC 00 00 1E */	fctiwz f0, f0
/* 8078AD18  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078AD1C  83 61 00 3C */	lwz r27, 0x3c(r1)
/* 8078AD20  A8 1E 06 60 */	lha r0, 0x660(r30)
/* 8078AD24  2C 00 00 00 */	cmpwi r0, 0
/* 8078AD28  40 82 00 0C */	bne lbl_8078AD34
/* 8078AD2C  38 00 00 00 */	li r0, 0
/* 8078AD30  B0 1E 06 6E */	sth r0, 0x66e(r30)
lbl_8078AD34:
/* 8078AD34  38 00 00 01 */	li r0, 1
/* 8078AD38  98 1E 0A 91 */	stb r0, 0xa91(r30)
/* 8078AD3C  48 00 00 A4 */	b lbl_8078ADE0
lbl_8078AD40:
/* 8078AD40  80 1E 06 CC */	lwz r0, 0x6cc(r30)
/* 8078AD44  90 01 00 0C */	stw r0, 0xc(r1)
/* 8078AD48  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8078AD4C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8078AD50  38 81 00 0C */	addi r4, r1, 0xc
/* 8078AD54  4B 88 EA A4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8078AD58  28 03 00 00 */	cmplwi r3, 0
/* 8078AD5C  41 82 00 2C */	beq lbl_8078AD88
/* 8078AD60  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8078AD64  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8078AD68  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8078AD6C  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8078AD70  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8078AD74  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 8078AD78  C0 3E 06 B8 */	lfs f1, 0x6b8(r30)
/* 8078AD7C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8078AD80  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078AD84  D0 1E 06 7C */	stfs f0, 0x67c(r30)
lbl_8078AD88:
/* 8078AD88  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8078AD8C  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 8078AD90  3B 80 02 00 */	li r28, 0x200
/* 8078AD94  C3 FF 00 58 */	lfs f31, 0x58(r31)
/* 8078AD98  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 8078AD9C  1C 00 02 BC */	mulli r0, r0, 0x2bc
/* 8078ADA0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8078ADA4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8078ADA8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8078ADAC  7C 23 04 2E */	lfsx f1, r3, r0
/* 8078ADB0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8078ADB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8078ADB8  FC 00 00 1E */	fctiwz f0, f0
/* 8078ADBC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078ADC0  83 61 00 3C */	lwz r27, 0x3c(r1)
/* 8078ADC4  A8 1E 06 60 */	lha r0, 0x660(r30)
/* 8078ADC8  2C 00 00 00 */	cmpwi r0, 0
/* 8078ADCC  40 82 00 0C */	bne lbl_8078ADD8
/* 8078ADD0  38 00 00 00 */	li r0, 0
/* 8078ADD4  B0 1E 06 6E */	sth r0, 0x66e(r30)
lbl_8078ADD8:
/* 8078ADD8  38 00 00 01 */	li r0, 1
/* 8078ADDC  98 1E 0A 91 */	stb r0, 0xa91(r30)
lbl_8078ADE0:
/* 8078ADE0  C0 5E 06 7C */	lfs f2, 0x67c(r30)
/* 8078ADE4  C0 3E 06 B8 */	lfs f1, 0x6b8(r30)
/* 8078ADE8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8078ADEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078ADF0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078ADF4  40 81 00 08 */	ble lbl_8078ADFC
/* 8078ADF8  D0 1E 06 7C */	stfs f0, 0x67c(r30)
lbl_8078ADFC:
/* 8078ADFC  38 61 00 10 */	addi r3, r1, 0x10
/* 8078AE00  38 9E 06 78 */	addi r4, r30, 0x678
/* 8078AE04  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8078AE08  4B AD BD 2C */	b __mi__4cXyzCFRC3Vec
/* 8078AE0C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8078AE10  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8078AE14  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8078AE18  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8078AE1C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8078AE20  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8078AE24  AB 5E 04 DE */	lha r26, 0x4de(r30)
/* 8078AE28  4B AD C8 4C */	b cM_atan2s__Fff
/* 8078AE2C  7C 1B 1A 14 */	add r0, r27, r3
/* 8078AE30  7C 04 07 34 */	extsh r4, r0
/* 8078AE34  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8078AE38  38 A0 00 04 */	li r5, 4
/* 8078AE3C  7F 86 E3 78 */	mr r6, r28
/* 8078AE40  4B AE 57 C8 */	b cLib_addCalcAngleS2__FPssss
/* 8078AE44  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8078AE48  EC 20 00 32 */	fmuls f1, f0, f0
/* 8078AE4C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8078AE50  EC 00 00 32 */	fmuls f0, f0, f0
/* 8078AE54  EC 41 00 2A */	fadds f2, f1, f0
/* 8078AE58  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078AE5C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078AE60  40 81 00 0C */	ble lbl_8078AE6C
/* 8078AE64  FC 00 10 34 */	frsqrte f0, f2
/* 8078AE68  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8078AE6C:
/* 8078AE6C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8078AE70  4B AD C8 04 */	b cM_atan2s__Fff
/* 8078AE74  7C 03 00 D0 */	neg r0, r3
/* 8078AE78  7C 04 07 34 */	extsh r4, r0
/* 8078AE7C  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 8078AE80  38 A0 00 04 */	li r5, 4
/* 8078AE84  7F 86 E3 78 */	mr r6, r28
/* 8078AE88  4B AE 57 80 */	b cLib_addCalcAngleS2__FPssss
/* 8078AE8C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8078AE90  7F 40 D0 50 */	subf r26, r0, r26
/* 8078AE94  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8078AE98  7F 40 07 34 */	extsh r0, r26
/* 8078AE9C  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 8078AEA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8078AEA4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8078AEA8  3C 00 43 30 */	lis r0, 0x4330
/* 8078AEAC  90 01 00 38 */	stw r0, 0x38(r1)
/* 8078AEB0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8078AEB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8078AEB8  EC 22 00 32 */	fmuls f1, f2, f0
/* 8078AEBC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8078AEC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078AEC4  40 81 00 0C */	ble lbl_8078AED0
/* 8078AEC8  FC 20 00 90 */	fmr f1, f0
/* 8078AECC  48 00 00 14 */	b lbl_8078AEE0
lbl_8078AED0:
/* 8078AED0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8078AED4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078AED8  40 80 00 08 */	bge lbl_8078AEE0
/* 8078AEDC  FC 20 00 90 */	fmr f1, f0
lbl_8078AEE0:
/* 8078AEE0  38 7E 06 A8 */	addi r3, r30, 0x6a8
/* 8078AEE4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8078AEE8  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 8078AEEC  4B AE 4B 50 */	b cLib_addCalc2__FPffff
/* 8078AEF0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8078AEF4  C0 3E 06 94 */	lfs f1, 0x694(r30)
/* 8078AEF8  3C 80 80 79 */	lis r4, l_HIO@ha
/* 8078AEFC  38 84 E0 EC */	addi r4, r4, l_HIO@l
/* 8078AF00  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8078AF04  EC 21 00 32 */	fmuls f1, f1, f0
/* 8078AF08  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8078AF0C  FC 60 F8 90 */	fmr f3, f31
/* 8078AF10  4B AE 4B 2C */	b cLib_addCalc2__FPffff
/* 8078AF14  7F C3 F3 78 */	mr r3, r30
/* 8078AF18  7F A4 EB 78 */	mr r4, r29
/* 8078AF1C  4B 89 1E E0 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8078AF20  7C 7B 1B 78 */	mr r27, r3
/* 8078AF24  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 8078AF28  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8078AF2C  28 1E 00 00 */	cmplwi r30, 0
/* 8078AF30  41 82 00 0C */	beq lbl_8078AF3C
/* 8078AF34  80 1E 00 04 */	lwz r0, 4(r30)
/* 8078AF38  48 00 00 08 */	b lbl_8078AF40
lbl_8078AF3C:
/* 8078AF3C  38 00 FF FF */	li r0, -1
lbl_8078AF40:
/* 8078AF40  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8078AF44  7C 03 00 40 */	cmplw r3, r0
/* 8078AF48  40 82 01 84 */	bne lbl_8078B0CC
/* 8078AF4C  7F C3 F3 78 */	mr r3, r30
/* 8078AF50  4B FF F7 9D */	bl search_box__FP10e_sg_class
/* 8078AF54  28 03 00 00 */	cmplwi r3, 0
/* 8078AF58  41 82 00 64 */	beq lbl_8078AFBC
/* 8078AF5C  41 82 00 0C */	beq lbl_8078AF68
/* 8078AF60  80 03 00 04 */	lwz r0, 4(r3)
/* 8078AF64  48 00 00 08 */	b lbl_8078AF6C
lbl_8078AF68:
/* 8078AF68  38 00 FF FF */	li r0, -1
lbl_8078AF6C:
/* 8078AF6C  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 8078AF70  38 00 00 05 */	li r0, 5
/* 8078AF74  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8078AF78  38 00 00 00 */	li r0, 0
/* 8078AF7C  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8078AF80  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8078AF84  4B AD C9 D0 */	b cM_rndF__Ff
/* 8078AF88  FC 00 08 1E */	fctiwz f0, f1
/* 8078AF8C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078AF90  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8078AF94  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8078AF98  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8078AF9C  4B AD C9 B8 */	b cM_rndF__Ff
/* 8078AFA0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8078AFA4  EC 00 08 2A */	fadds f0, f0, f1
/* 8078AFA8  FC 00 00 1E */	fctiwz f0, f0
/* 8078AFAC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8078AFB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8078AFB4  B0 1E 06 60 */	sth r0, 0x660(r30)
/* 8078AFB8  48 00 01 14 */	b lbl_8078B0CC
lbl_8078AFBC:
/* 8078AFBC  A8 1E 06 62 */	lha r0, 0x662(r30)
/* 8078AFC0  2C 00 00 00 */	cmpwi r0, 0
/* 8078AFC4  40 82 00 80 */	bne lbl_8078B044
/* 8078AFC8  2C 1B 00 00 */	cmpwi r27, 0
/* 8078AFCC  40 82 00 78 */	bne lbl_8078B044
/* 8078AFD0  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8078AFD4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8078AFD8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8078AFDC  C0 3E 06 B8 */	lfs f1, 0x6b8(r30)
/* 8078AFE0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8078AFE4  40 80 00 60 */	bge lbl_8078B044
/* 8078AFE8  3C 60 80 79 */	lis r3, l_HIO@ha
/* 8078AFEC  38 63 E0 EC */	addi r3, r3, l_HIO@l
/* 8078AFF0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8078AFF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078AFF8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078AFFC  40 81 00 48 */	ble lbl_8078B044
/* 8078B000  C0 3E 06 90 */	lfs f1, 0x690(r30)
/* 8078B004  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 8078B008  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078B00C  40 80 00 38 */	bge lbl_8078B044
/* 8078B010  38 00 00 01 */	li r0, 1
/* 8078B014  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8078B018  38 00 00 00 */	li r0, 0
/* 8078B01C  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8078B020  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8078B024  4B AD C9 30 */	b cM_rndF__Ff
/* 8078B028  FC 00 08 1E */	fctiwz f0, f1
/* 8078B02C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8078B030  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8078B034  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8078B038  7F C3 F3 78 */	mr r3, r30
/* 8078B03C  4B FF F4 DD */	bl pl_joint_search__FP10e_sg_class
/* 8078B040  48 00 00 8C */	b lbl_8078B0CC
lbl_8078B044:
/* 8078B044  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 8078B048  54 03 06 FE */	clrlwi r3, r0, 0x1b
/* 8078B04C  28 1E 00 00 */	cmplwi r30, 0
/* 8078B050  41 82 00 0C */	beq lbl_8078B05C
/* 8078B054  80 1E 00 04 */	lwz r0, 4(r30)
/* 8078B058  48 00 00 08 */	b lbl_8078B060
lbl_8078B05C:
/* 8078B05C  38 00 FF FF */	li r0, -1
lbl_8078B060:
/* 8078B060  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 8078B064  7C 03 00 40 */	cmplw r3, r0
/* 8078B068  40 82 00 64 */	bne lbl_8078B0CC
/* 8078B06C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8078B070  4B AD C8 E4 */	b cM_rndF__Ff
/* 8078B074  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8078B078  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078B07C  40 80 00 50 */	bge lbl_8078B0CC
/* 8078B080  7F C3 F3 78 */	mr r3, r30
/* 8078B084  4B FF F9 35 */	bl search_esa__FP10e_sg_class
/* 8078B088  28 03 00 00 */	cmplwi r3, 0
/* 8078B08C  41 82 00 40 */	beq lbl_8078B0CC
/* 8078B090  41 82 00 0C */	beq lbl_8078B09C
/* 8078B094  80 03 00 04 */	lwz r0, 4(r3)
/* 8078B098  48 00 00 08 */	b lbl_8078B0A0
lbl_8078B09C:
/* 8078B09C  38 00 FF FF */	li r0, -1
lbl_8078B0A0:
/* 8078B0A0  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 8078B0A4  38 00 00 07 */	li r0, 7
/* 8078B0A8  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8078B0AC  38 00 00 00 */	li r0, 0
/* 8078B0B0  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8078B0B4  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8078B0B8  4B AD C8 9C */	b cM_rndF__Ff
/* 8078B0BC  FC 00 08 1E */	fctiwz f0, f1
/* 8078B0C0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8078B0C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8078B0C8  B0 1E 06 6A */	sth r0, 0x66a(r30)
lbl_8078B0CC:
/* 8078B0CC  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 8078B0D0  38 80 00 00 */	li r4, 0
/* 8078B0D4  38 A0 00 02 */	li r5, 2
/* 8078B0D8  38 C0 03 E8 */	li r6, 0x3e8
/* 8078B0DC  4B AE 55 2C */	b cLib_addCalcAngleS2__FPssss
/* 8078B0E0  38 00 00 00 */	li r0, 0
/* 8078B0E4  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 8078B0E8  B0 1E 06 C2 */	sth r0, 0x6c2(r30)
/* 8078B0EC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8078B0F0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8078B0F4  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8078B0F8  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8078B0FC  39 61 00 60 */	addi r11, r1, 0x60
/* 8078B100  4B BD 71 1C */	b _restgpr_26
/* 8078B104  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8078B108  7C 08 03 A6 */	mtlr r0
/* 8078B10C  38 21 00 80 */	addi r1, r1, 0x80
/* 8078B110  4E 80 00 20 */	blr 
