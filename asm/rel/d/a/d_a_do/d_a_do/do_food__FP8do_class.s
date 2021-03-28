lbl_8066AB78:
/* 8066AB78  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8066AB7C  7C 08 02 A6 */	mflr r0
/* 8066AB80  90 01 00 64 */	stw r0, 0x64(r1)
/* 8066AB84  39 61 00 60 */	addi r11, r1, 0x60
/* 8066AB88  4B CF 76 4C */	b _savegpr_27
/* 8066AB8C  7C 7C 1B 78 */	mr r28, r3
/* 8066AB90  3C 60 80 67 */	lis r3, lit_3662@ha
/* 8066AB94  3B C3 ED E8 */	addi r30, r3, lit_3662@l
/* 8066AB98  80 1C 06 84 */	lwz r0, 0x684(r28)
/* 8066AB9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8066ABA0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8066ABA4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8066ABA8  38 81 00 10 */	addi r4, r1, 0x10
/* 8066ABAC  4B 9A EC 4C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8066ABB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8066ABB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066ABB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066ABBC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8066ABC0  38 80 00 00 */	li r4, 0
/* 8066ABC4  40 82 00 08 */	bne lbl_8066ABCC
/* 8066ABC8  38 80 00 01 */	li r4, 1
lbl_8066ABCC:
/* 8066ABCC  80 1C 07 28 */	lwz r0, 0x728(r28)
/* 8066ABD0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8066ABD4  41 82 00 24 */	beq lbl_8066ABF8
/* 8066ABD8  88 7C 0C 04 */	lbz r3, 0xc04(r28)
/* 8066ABDC  38 03 00 02 */	addi r0, r3, 2
/* 8066ABE0  98 1C 0C 04 */	stb r0, 0xc04(r28)
/* 8066ABE4  88 1C 0C 04 */	lbz r0, 0xc04(r28)
/* 8066ABE8  28 00 00 3C */	cmplwi r0, 0x3c
/* 8066ABEC  41 80 00 20 */	blt lbl_8066AC0C
/* 8066ABF0  38 80 00 01 */	li r4, 1
/* 8066ABF4  48 00 00 18 */	b lbl_8066AC0C
lbl_8066ABF8:
/* 8066ABF8  88 7C 0C 04 */	lbz r3, 0xc04(r28)
/* 8066ABFC  28 03 00 00 */	cmplwi r3, 0
/* 8066AC00  41 82 00 0C */	beq lbl_8066AC0C
/* 8066AC04  38 03 FF FF */	addi r0, r3, -1
/* 8066AC08  98 1C 0C 04 */	stb r0, 0xc04(r28)
lbl_8066AC0C:
/* 8066AC0C  2C 04 00 00 */	cmpwi r4, 0
/* 8066AC10  41 82 00 18 */	beq lbl_8066AC28
/* 8066AC14  38 00 00 06 */	li r0, 6
/* 8066AC18  B0 1C 05 F2 */	sth r0, 0x5f2(r28)
/* 8066AC1C  38 00 00 00 */	li r0, 0
/* 8066AC20  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066AC24  48 00 0A 14 */	b lbl_8066B638
lbl_8066AC28:
/* 8066AC28  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8066AC2C  D0 1C 06 48 */	stfs f0, 0x648(r28)
/* 8066AC30  A8 9C 05 F6 */	lha r4, 0x5f6(r28)
/* 8066AC34  28 04 00 19 */	cmplwi r4, 0x19
/* 8066AC38  41 81 0A 00 */	bgt lbl_8066B638
/* 8066AC3C  3C 60 80 67 */	lis r3, lit_4969@ha
/* 8066AC40  38 63 F0 5C */	addi r3, r3, lit_4969@l
/* 8066AC44  54 80 10 3A */	slwi r0, r4, 2
/* 8066AC48  7C 03 00 2E */	lwzx r0, r3, r0
/* 8066AC4C  7C 09 03 A6 */	mtctr r0
/* 8066AC50  4E 80 04 20 */	bctr 
lbl_8066AC54:
/* 8066AC54  38 04 00 01 */	addi r0, r4, 1
/* 8066AC58  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066AC5C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 8066AC60  4B BF CC F4 */	b cM_rndF__Ff
/* 8066AC64  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8066AC68  EC 00 08 2A */	fadds f0, f0, f1
/* 8066AC6C  FC 00 00 1E */	fctiwz f0, f0
/* 8066AC70  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8066AC74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8066AC78  B0 1C 05 FE */	sth r0, 0x5fe(r28)
/* 8066AC7C  38 00 00 00 */	li r0, 0
/* 8066AC80  B0 1C 05 FC */	sth r0, 0x5fc(r28)
lbl_8066AC84:
/* 8066AC84  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066AC88  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8066AC8C  A8 1C 05 FE */	lha r0, 0x5fe(r28)
/* 8066AC90  2C 00 00 00 */	cmpwi r0, 0
/* 8066AC94  40 82 01 8C */	bne lbl_8066AE20
/* 8066AC98  A8 1C 05 FC */	lha r0, 0x5fc(r28)
/* 8066AC9C  2C 00 00 00 */	cmpwi r0, 0
/* 8066ACA0  40 82 01 24 */	bne lbl_8066ADC4
/* 8066ACA4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8066ACA8  4B BF CC AC */	b cM_rndF__Ff
/* 8066ACAC  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 8066ACB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066ACB4  40 80 00 54 */	bge lbl_8066AD08
/* 8066ACB8  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 8066ACBC  4B BF CC D0 */	b cM_rndFX__Ff
/* 8066ACC0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8066ACC4  EC 40 08 2A */	fadds f2, f0, f1
/* 8066ACC8  7F 83 E3 78 */	mr r3, r28
/* 8066ACCC  38 80 00 0D */	li r4, 0xd
/* 8066ACD0  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8066ACD4  38 A0 00 02 */	li r5, 2
/* 8066ACD8  4B FF D0 D1 */	bl anm_init__FP8do_classifUcf
/* 8066ACDC  38 00 00 02 */	li r0, 2
/* 8066ACE0  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066ACE4  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8066ACE8  4B BF CC 6C */	b cM_rndF__Ff
/* 8066ACEC  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8066ACF0  EC 00 08 2A */	fadds f0, f0, f1
/* 8066ACF4  FC 00 00 1E */	fctiwz f0, f0
/* 8066ACF8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8066ACFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8066AD00  B0 1C 05 FC */	sth r0, 0x5fc(r28)
/* 8066AD04  48 00 00 C0 */	b lbl_8066ADC4
lbl_8066AD08:
/* 8066AD08  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8066AD0C  4B BF CC 48 */	b cM_rndF__Ff
/* 8066AD10  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8066AD14  EC 00 08 2A */	fadds f0, f0, f1
/* 8066AD18  FC 00 00 1E */	fctiwz f0, f0
/* 8066AD1C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8066AD20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8066AD24  B0 1C 05 FC */	sth r0, 0x5fc(r28)
/* 8066AD28  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 8066AD2C  4B BF CC 60 */	b cM_rndFX__Ff
/* 8066AD30  FC 00 08 1E */	fctiwz f0, f1
/* 8066AD34  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8066AD38  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8066AD3C  B0 1C 06 56 */	sth r0, 0x656(r28)
/* 8066AD40  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 8066AD44  4B BF CC 10 */	b cM_rndF__Ff
/* 8066AD48  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8066AD4C  EC 00 08 2A */	fadds f0, f0, f1
/* 8066AD50  D0 1C 05 E8 */	stfs f0, 0x5e8(r28)
/* 8066AD54  7F 83 E3 78 */	mr r3, r28
/* 8066AD58  38 80 00 11 */	li r4, 0x11
/* 8066AD5C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8066AD60  38 A0 00 02 */	li r5, 2
/* 8066AD64  C0 5C 05 E8 */	lfs f2, 0x5e8(r28)
/* 8066AD68  4B FF D0 41 */	bl anm_init__FP8do_classifUcf
/* 8066AD6C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8066AD70  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8066AD74  80 63 00 00 */	lwz r3, 0(r3)
/* 8066AD78  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8066AD7C  4B 9A 16 60 */	b mDoMtx_YrotS__FPA4_fs
/* 8066AD80  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8066AD84  4B BF CC 08 */	b cM_rndFX__Ff
/* 8066AD88  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8066AD8C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066AD90  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8066AD94  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8066AD98  4B BF CB BC */	b cM_rndF__Ff
/* 8066AD9C  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8066ADA0  EC 00 08 2A */	fadds f0, f0, f1
/* 8066ADA4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8066ADA8  38 61 00 20 */	addi r3, r1, 0x20
/* 8066ADAC  38 9C 05 B8 */	addi r4, r28, 0x5b8
/* 8066ADB0  4B C0 61 3C */	b MtxPosition__FP4cXyzP4cXyz
/* 8066ADB4  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 8066ADB8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8066ADBC  7C 65 1B 78 */	mr r5, r3
/* 8066ADC0  4B CD C2 D0 */	b PSVECAdd
lbl_8066ADC4:
/* 8066ADC4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8066ADC8  C0 3C 05 B8 */	lfs f1, 0x5b8(r28)
/* 8066ADCC  C0 5E 00 A8 */	lfs f2, 0xa8(r30)
/* 8066ADD0  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 8066ADD4  4B C0 4C 68 */	b cLib_addCalc2__FPffff
/* 8066ADD8  38 7C 04 D8 */	addi r3, r28, 0x4d8
/* 8066ADDC  C0 3C 05 C0 */	lfs f1, 0x5c0(r28)
/* 8066ADE0  C0 5E 00 A8 */	lfs f2, 0xa8(r30)
/* 8066ADE4  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 8066ADE8  4B C0 4C 54 */	b cLib_addCalc2__FPffff
/* 8066ADEC  38 7C 04 DE */	addi r3, r28, 0x4de
/* 8066ADF0  A8 9C 05 CC */	lha r4, 0x5cc(r28)
/* 8066ADF4  A8 1C 06 54 */	lha r0, 0x654(r28)
/* 8066ADF8  7C 04 02 14 */	add r0, r4, r0
/* 8066ADFC  7C 04 07 34 */	extsh r4, r0
/* 8066AE00  38 A0 00 04 */	li r5, 4
/* 8066AE04  38 C0 08 00 */	li r6, 0x800
/* 8066AE08  4B C0 58 00 */	b cLib_addCalcAngleS2__FPssss
/* 8066AE0C  38 7C 06 54 */	addi r3, r28, 0x654
/* 8066AE10  A8 9C 06 56 */	lha r4, 0x656(r28)
/* 8066AE14  38 A0 00 04 */	li r5, 4
/* 8066AE18  38 C0 10 00 */	li r6, 0x1000
/* 8066AE1C  4B C0 57 EC */	b cLib_addCalcAngleS2__FPssss
lbl_8066AE20:
/* 8066AE20  38 00 00 01 */	li r0, 1
/* 8066AE24  98 1C 06 16 */	stb r0, 0x616(r28)
/* 8066AE28  88 1F 05 67 */	lbz r0, 0x567(r31)
/* 8066AE2C  7C 00 07 74 */	extsb r0, r0
/* 8066AE30  2C 00 00 01 */	cmpwi r0, 1
/* 8066AE34  40 82 00 48 */	bne lbl_8066AE7C
/* 8066AE38  38 00 00 0A */	li r0, 0xa
/* 8066AE3C  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066AE40  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8066AE44  4B BF CB 10 */	b cM_rndF__Ff
/* 8066AE48  FC 00 08 1E */	fctiwz f0, f1
/* 8066AE4C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8066AE50  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8066AE54  B0 1C 05 FC */	sth r0, 0x5fc(r28)
/* 8066AE58  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8066AE5C  4B BF CA F8 */	b cM_rndF__Ff
/* 8066AE60  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8066AE64  EC 00 08 2A */	fadds f0, f0, f1
/* 8066AE68  FC 00 00 1E */	fctiwz f0, f0
/* 8066AE6C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8066AE70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8066AE74  B0 1C 06 00 */	sth r0, 0x600(r28)
/* 8066AE78  48 00 07 C0 */	b lbl_8066B638
lbl_8066AE7C:
/* 8066AE7C  2C 00 00 00 */	cmpwi r0, 0
/* 8066AE80  40 82 00 18 */	bne lbl_8066AE98
/* 8066AE84  38 00 00 06 */	li r0, 6
/* 8066AE88  B0 1C 05 F2 */	sth r0, 0x5f2(r28)
/* 8066AE8C  38 00 00 00 */	li r0, 0
/* 8066AE90  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066AE94  48 00 07 A4 */	b lbl_8066B638
lbl_8066AE98:
/* 8066AE98  C0 5C 05 C8 */	lfs f2, 0x5c8(r28)
/* 8066AE9C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8066AEA0  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 8066AEA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066AEA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8066AEAC  40 81 07 8C */	ble lbl_8066B638
/* 8066AEB0  38 00 00 03 */	li r0, 3
/* 8066AEB4  B0 1C 05 F2 */	sth r0, 0x5f2(r28)
/* 8066AEB8  38 00 00 00 */	li r0, 0
/* 8066AEBC  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066AEC0  48 00 07 78 */	b lbl_8066B638
lbl_8066AEC4:
/* 8066AEC4  A8 1C 05 FC */	lha r0, 0x5fc(r28)
/* 8066AEC8  2C 00 00 00 */	cmpwi r0, 0
/* 8066AECC  40 82 FF 54 */	bne lbl_8066AE20
/* 8066AED0  38 00 00 01 */	li r0, 1
/* 8066AED4  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066AED8  4B FF FF 48 */	b lbl_8066AE20
lbl_8066AEDC:
/* 8066AEDC  A8 1C 05 FC */	lha r0, 0x5fc(r28)
/* 8066AEE0  2C 00 00 00 */	cmpwi r0, 0
/* 8066AEE4  40 82 00 50 */	bne lbl_8066AF34
/* 8066AEE8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8066AEEC  D0 1C 05 E8 */	stfs f0, 0x5e8(r28)
/* 8066AEF0  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 8066AEF4  4B BF CA 60 */	b cM_rndF__Ff
/* 8066AEF8  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 8066AEFC  EC 00 08 2A */	fadds f0, f0, f1
/* 8066AF00  D0 1C 05 EC */	stfs f0, 0x5ec(r28)
/* 8066AF04  7F 83 E3 78 */	mr r3, r28
/* 8066AF08  38 80 00 0E */	li r4, 0xe
/* 8066AF0C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8066AF10  38 A0 00 02 */	li r5, 2
/* 8066AF14  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 8066AF18  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 8066AF1C  EC 42 00 32 */	fmuls f2, f2, f0
/* 8066AF20  4B FF CE 89 */	bl anm_init__FP8do_classifUcf
/* 8066AF24  A8 7C 05 F6 */	lha r3, 0x5f6(r28)
/* 8066AF28  38 03 00 01 */	addi r0, r3, 1
/* 8066AF2C  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066AF30  48 00 00 28 */	b lbl_8066AF58
lbl_8066AF34:
/* 8066AF34  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8066AF38  D0 1C 06 18 */	stfs f0, 0x618(r28)
/* 8066AF3C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8066AF40  D0 1C 06 1C */	stfs f0, 0x61c(r28)
/* 8066AF44  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8066AF48  D0 1C 06 20 */	stfs f0, 0x620(r28)
/* 8066AF4C  38 00 00 0A */	li r0, 0xa
/* 8066AF50  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 8066AF54  48 00 06 E4 */	b lbl_8066B638
lbl_8066AF58:
/* 8066AF58  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8066AF5C  D0 1C 06 18 */	stfs f0, 0x618(r28)
/* 8066AF60  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8066AF64  D0 1C 06 1C */	stfs f0, 0x61c(r28)
/* 8066AF68  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8066AF6C  D0 1C 06 20 */	stfs f0, 0x620(r28)
/* 8066AF70  38 00 00 0A */	li r0, 0xa
/* 8066AF74  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 8066AF78  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 8066AF7C  C0 3C 05 EC */	lfs f1, 0x5ec(r28)
/* 8066AF80  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066AF84  C0 7E 00 D0 */	lfs f3, 0xd0(r30)
/* 8066AF88  4B C0 4A B4 */	b cLib_addCalc2__FPffff
/* 8066AF8C  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 8066AF90  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8066AF94  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8066AF98  3C 60 80 67 */	lis r3, l_HIO@ha
/* 8066AF9C  3B A3 F2 C4 */	addi r29, r3, l_HIO@l
/* 8066AFA0  C0 7D 00 10 */	lfs f3, 0x10(r29)
/* 8066AFA4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8066AFA8  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 8066AFAC  EC 20 00 F2 */	fmuls f1, f0, f3
/* 8066AFB0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066AFB4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8066AFB8  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8066AFBC  4B C0 4A 80 */	b cLib_addCalc2__FPffff
/* 8066AFC0  38 61 00 14 */	addi r3, r1, 0x14
/* 8066AFC4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8066AFC8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8066AFCC  4B BF BB 68 */	b __mi__4cXyzCFRC3Vec
/* 8066AFD0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8066AFD4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8066AFD8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8066AFDC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8066AFE0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8066AFE4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8066AFE8  3B 60 10 00 */	li r27, 0x1000
/* 8066AFEC  38 61 00 20 */	addi r3, r1, 0x20
/* 8066AFF0  4B CD C1 48 */	b PSVECSquareMag
/* 8066AFF4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066AFF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066AFFC  40 81 00 58 */	ble lbl_8066B054
/* 8066B000  FC 00 08 34 */	frsqrte f0, f1
/* 8066B004  C8 9E 00 58 */	lfd f4, 0x58(r30)
/* 8066B008  FC 44 00 32 */	fmul f2, f4, f0
/* 8066B00C  C8 7E 00 60 */	lfd f3, 0x60(r30)
/* 8066B010  FC 00 00 32 */	fmul f0, f0, f0
/* 8066B014  FC 01 00 32 */	fmul f0, f1, f0
/* 8066B018  FC 03 00 28 */	fsub f0, f3, f0
/* 8066B01C  FC 02 00 32 */	fmul f0, f2, f0
/* 8066B020  FC 44 00 32 */	fmul f2, f4, f0
/* 8066B024  FC 00 00 32 */	fmul f0, f0, f0
/* 8066B028  FC 01 00 32 */	fmul f0, f1, f0
/* 8066B02C  FC 03 00 28 */	fsub f0, f3, f0
/* 8066B030  FC 02 00 32 */	fmul f0, f2, f0
/* 8066B034  FC 44 00 32 */	fmul f2, f4, f0
/* 8066B038  FC 00 00 32 */	fmul f0, f0, f0
/* 8066B03C  FC 01 00 32 */	fmul f0, f1, f0
/* 8066B040  FC 03 00 28 */	fsub f0, f3, f0
/* 8066B044  FC 02 00 32 */	fmul f0, f2, f0
/* 8066B048  FC 21 00 32 */	fmul f1, f1, f0
/* 8066B04C  FC 20 08 18 */	frsp f1, f1
/* 8066B050  48 00 00 88 */	b lbl_8066B0D8
lbl_8066B054:
/* 8066B054  C8 1E 00 68 */	lfd f0, 0x68(r30)
/* 8066B058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B05C  40 80 00 10 */	bge lbl_8066B06C
/* 8066B060  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8066B064  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8066B068  48 00 00 70 */	b lbl_8066B0D8
lbl_8066B06C:
/* 8066B06C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8066B070  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8066B074  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8066B078  3C 00 7F 80 */	lis r0, 0x7f80
/* 8066B07C  7C 03 00 00 */	cmpw r3, r0
/* 8066B080  41 82 00 14 */	beq lbl_8066B094
/* 8066B084  40 80 00 40 */	bge lbl_8066B0C4
/* 8066B088  2C 03 00 00 */	cmpwi r3, 0
/* 8066B08C  41 82 00 20 */	beq lbl_8066B0AC
/* 8066B090  48 00 00 34 */	b lbl_8066B0C4
lbl_8066B094:
/* 8066B094  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066B098  41 82 00 0C */	beq lbl_8066B0A4
/* 8066B09C  38 00 00 01 */	li r0, 1
/* 8066B0A0  48 00 00 28 */	b lbl_8066B0C8
lbl_8066B0A4:
/* 8066B0A4  38 00 00 02 */	li r0, 2
/* 8066B0A8  48 00 00 20 */	b lbl_8066B0C8
lbl_8066B0AC:
/* 8066B0AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066B0B0  41 82 00 0C */	beq lbl_8066B0BC
/* 8066B0B4  38 00 00 05 */	li r0, 5
/* 8066B0B8  48 00 00 10 */	b lbl_8066B0C8
lbl_8066B0BC:
/* 8066B0BC  38 00 00 03 */	li r0, 3
/* 8066B0C0  48 00 00 08 */	b lbl_8066B0C8
lbl_8066B0C4:
/* 8066B0C4  38 00 00 04 */	li r0, 4
lbl_8066B0C8:
/* 8066B0C8  2C 00 00 01 */	cmpwi r0, 1
/* 8066B0CC  40 82 00 0C */	bne lbl_8066B0D8
/* 8066B0D0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8066B0D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8066B0D8:
/* 8066B0D8  C0 5E 00 F8 */	lfs f2, 0xf8(r30)
/* 8066B0DC  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 8066B0E0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8066B0E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B0E8  40 80 00 38 */	bge lbl_8066B120
/* 8066B0EC  3B 60 20 00 */	li r27, 0x2000
/* 8066B0F0  C0 9D 00 10 */	lfs f4, 0x10(r29)
/* 8066B0F4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8066B0F8  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 8066B0FC  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 8066B100  EC 00 01 32 */	fmuls f0, f0, f4
/* 8066B104  EC 21 00 32 */	fmuls f1, f1, f0
/* 8066B108  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066B10C  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 8066B110  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8066B114  EC 00 01 32 */	fmuls f0, f0, f4
/* 8066B118  EC 63 00 32 */	fmuls f3, f3, f0
/* 8066B11C  4B C0 49 20 */	b cLib_addCalc2__FPffff
lbl_8066B120:
/* 8066B120  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8066B124  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8066B128  4B BF C5 4C */	b cM_atan2s__Fff
/* 8066B12C  7C 64 1B 78 */	mr r4, r3
/* 8066B130  38 7C 04 DE */	addi r3, r28, 0x4de
/* 8066B134  38 A0 00 08 */	li r5, 8
/* 8066B138  7F 66 DB 78 */	mr r6, r27
/* 8066B13C  4B C0 54 CC */	b cLib_addCalcAngleS2__FPssss
/* 8066B140  88 1F 05 67 */	lbz r0, 0x567(r31)
/* 8066B144  7C 00 07 74 */	extsb r0, r0
/* 8066B148  2C 00 00 02 */	cmpwi r0, 2
/* 8066B14C  41 82 00 14 */	beq lbl_8066B160
/* 8066B150  2C 00 00 03 */	cmpwi r0, 3
/* 8066B154  41 82 00 0C */	beq lbl_8066B160
/* 8066B158  2C 00 00 04 */	cmpwi r0, 4
/* 8066B15C  40 82 00 30 */	bne lbl_8066B18C
lbl_8066B160:
/* 8066B160  38 00 00 19 */	li r0, 0x19
/* 8066B164  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066B168  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8066B16C  4B BF C7 E8 */	b cM_rndF__Ff
/* 8066B170  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8066B174  EC 00 08 2A */	fadds f0, f0, f1
/* 8066B178  FC 00 00 1E */	fctiwz f0, f0
/* 8066B17C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8066B180  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8066B184  B0 1C 05 FC */	sth r0, 0x5fc(r28)
/* 8066B188  48 00 04 B0 */	b lbl_8066B638
lbl_8066B18C:
/* 8066B18C  38 61 00 20 */	addi r3, r1, 0x20
/* 8066B190  4B CD BF A8 */	b PSVECSquareMag
/* 8066B194  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066B198  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B19C  40 81 00 58 */	ble lbl_8066B1F4
/* 8066B1A0  FC 00 08 34 */	frsqrte f0, f1
/* 8066B1A4  C8 9E 00 58 */	lfd f4, 0x58(r30)
/* 8066B1A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8066B1AC  C8 7E 00 60 */	lfd f3, 0x60(r30)
/* 8066B1B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8066B1B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8066B1B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8066B1BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8066B1C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8066B1C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8066B1C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8066B1CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8066B1D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8066B1D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8066B1D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8066B1DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8066B1E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8066B1E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8066B1E8  FC 21 00 32 */	fmul f1, f1, f0
/* 8066B1EC  FC 20 08 18 */	frsp f1, f1
/* 8066B1F0  48 00 00 88 */	b lbl_8066B278
lbl_8066B1F4:
/* 8066B1F4  C8 1E 00 68 */	lfd f0, 0x68(r30)
/* 8066B1F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B1FC  40 80 00 10 */	bge lbl_8066B20C
/* 8066B200  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8066B204  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8066B208  48 00 00 70 */	b lbl_8066B278
lbl_8066B20C:
/* 8066B20C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8066B210  80 81 00 08 */	lwz r4, 8(r1)
/* 8066B214  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8066B218  3C 00 7F 80 */	lis r0, 0x7f80
/* 8066B21C  7C 03 00 00 */	cmpw r3, r0
/* 8066B220  41 82 00 14 */	beq lbl_8066B234
/* 8066B224  40 80 00 40 */	bge lbl_8066B264
/* 8066B228  2C 03 00 00 */	cmpwi r3, 0
/* 8066B22C  41 82 00 20 */	beq lbl_8066B24C
/* 8066B230  48 00 00 34 */	b lbl_8066B264
lbl_8066B234:
/* 8066B234  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066B238  41 82 00 0C */	beq lbl_8066B244
/* 8066B23C  38 00 00 01 */	li r0, 1
/* 8066B240  48 00 00 28 */	b lbl_8066B268
lbl_8066B244:
/* 8066B244  38 00 00 02 */	li r0, 2
/* 8066B248  48 00 00 20 */	b lbl_8066B268
lbl_8066B24C:
/* 8066B24C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066B250  41 82 00 0C */	beq lbl_8066B25C
/* 8066B254  38 00 00 05 */	li r0, 5
/* 8066B258  48 00 00 10 */	b lbl_8066B268
lbl_8066B25C:
/* 8066B25C  38 00 00 03 */	li r0, 3
/* 8066B260  48 00 00 08 */	b lbl_8066B268
lbl_8066B264:
/* 8066B264  38 00 00 04 */	li r0, 4
lbl_8066B268:
/* 8066B268  2C 00 00 01 */	cmpwi r0, 1
/* 8066B26C  40 82 00 0C */	bne lbl_8066B278
/* 8066B270  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8066B274  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8066B278:
/* 8066B278  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8066B27C  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 8066B280  EC 02 00 32 */	fmuls f0, f2, f0
/* 8066B284  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B288  40 80 03 B0 */	bge lbl_8066B638
/* 8066B28C  3B 60 00 00 */	li r27, 0
/* 8066B290  C0 3C 05 C8 */	lfs f1, 0x5c8(r28)
/* 8066B294  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8066B298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B29C  40 81 00 A8 */	ble lbl_8066B344
/* 8066B2A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066B2A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066B2A8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8066B2AC  3C 80 80 67 */	lis r4, stringBase0@ha
/* 8066B2B0  38 84 EF B0 */	addi r4, r4, stringBase0@l
/* 8066B2B4  38 84 00 03 */	addi r4, r4, 3
/* 8066B2B8  4B CF D6 DC */	b strcmp
/* 8066B2BC  2C 03 00 00 */	cmpwi r3, 0
/* 8066B2C0  40 82 00 84 */	bne lbl_8066B344
/* 8066B2C4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8066B2C8  7C 00 07 74 */	extsb r0, r0
/* 8066B2CC  2C 00 00 04 */	cmpwi r0, 4
/* 8066B2D0  40 82 00 1C */	bne lbl_8066B2EC
/* 8066B2D4  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 8066B2D8  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 8066B2DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B2E0  40 80 00 64 */	bge lbl_8066B344
/* 8066B2E4  3B 60 00 01 */	li r27, 1
/* 8066B2E8  48 00 00 5C */	b lbl_8066B344
lbl_8066B2EC:
/* 8066B2EC  2C 00 00 02 */	cmpwi r0, 2
/* 8066B2F0  40 82 00 54 */	bne lbl_8066B344
/* 8066B2F4  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 8066B2F8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8066B2FC  EC 41 00 28 */	fsubs f2, f1, f0
/* 8066B300  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8066B304  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 8066B308  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8066B30C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8066B310  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8066B314  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8066B318  EC 00 00 32 */	fmuls f0, f0, f0
/* 8066B31C  EC 21 00 2A */	fadds f1, f1, f0
/* 8066B320  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066B324  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B328  40 81 00 0C */	ble lbl_8066B334
/* 8066B32C  FC 00 08 34 */	frsqrte f0, f1
/* 8066B330  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8066B334:
/* 8066B334  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 8066B338  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B33C  40 80 00 08 */	bge lbl_8066B344
/* 8066B340  3B 60 00 01 */	li r27, 1
lbl_8066B344:
/* 8066B344  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8066B348  41 82 00 A4 */	beq lbl_8066B3EC
/* 8066B34C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066B350  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066B354  A0 03 00 02 */	lhz r0, 2(r3)
/* 8066B358  28 00 00 04 */	cmplwi r0, 4
/* 8066B35C  41 81 00 0C */	bgt lbl_8066B368
/* 8066B360  38 80 00 00 */	li r4, 0
/* 8066B364  48 00 00 3C */	b lbl_8066B3A0
lbl_8066B368:
/* 8066B368  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 8066B36C  4B BF C5 E8 */	b cM_rndF__Ff
/* 8066B370  FC 00 08 1E */	fctiwz f0, f1
/* 8066B374  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8066B378  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8066B37C  2C 00 00 05 */	cmpwi r0, 5
/* 8066B380  41 81 00 0C */	bgt lbl_8066B38C
/* 8066B384  38 80 00 00 */	li r4, 0
/* 8066B388  48 00 00 18 */	b lbl_8066B3A0
lbl_8066B38C:
/* 8066B38C  2C 00 00 09 */	cmpwi r0, 9
/* 8066B390  41 81 00 0C */	bgt lbl_8066B39C
/* 8066B394  38 80 00 01 */	li r4, 1
/* 8066B398  48 00 00 08 */	b lbl_8066B3A0
lbl_8066B39C:
/* 8066B39C  38 80 00 02 */	li r4, 2
lbl_8066B3A0:
/* 8066B3A0  38 7C 05 38 */	addi r3, r28, 0x538
/* 8066B3A4  38 A0 FF FF */	li r5, -1
/* 8066B3A8  38 C0 FF FF */	li r6, -1
/* 8066B3AC  38 E0 00 00 */	li r7, 0
/* 8066B3B0  39 00 00 00 */	li r8, 0
/* 8066B3B4  39 20 00 00 */	li r9, 0
/* 8066B3B8  4B 9B 0E 88 */	b fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 8066B3BC  90 7C 06 80 */	stw r3, 0x680(r28)
/* 8066B3C0  38 00 00 19 */	li r0, 0x19
/* 8066B3C4  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066B3C8  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 8066B3CC  4B BF C5 88 */	b cM_rndF__Ff
/* 8066B3D0  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8066B3D4  EC 00 08 2A */	fadds f0, f0, f1
/* 8066B3D8  FC 00 00 1E */	fctiwz f0, f0
/* 8066B3DC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8066B3E0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8066B3E4  B0 1C 05 FC */	sth r0, 0x5fc(r28)
/* 8066B3E8  48 00 02 50 */	b lbl_8066B638
lbl_8066B3EC:
/* 8066B3EC  38 00 00 14 */	li r0, 0x14
/* 8066B3F0  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066B3F4  38 00 00 01 */	li r0, 1
/* 8066B3F8  98 1C 06 88 */	stb r0, 0x688(r28)
/* 8066B3FC  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 8066B400  D0 1C 05 E8 */	stfs f0, 0x5e8(r28)
/* 8066B404  7F 83 E3 78 */	mr r3, r28
/* 8066B408  38 80 00 0D */	li r4, 0xd
/* 8066B40C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8066B410  38 A0 00 02 */	li r5, 2
/* 8066B414  C0 5E 01 3C */	lfs f2, 0x13c(r30)
/* 8066B418  4B FF C9 91 */	bl anm_init__FP8do_classifUcf
/* 8066B41C  48 00 02 1C */	b lbl_8066B638
lbl_8066B420:
/* 8066B420  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8066B424  D0 1C 06 18 */	stfs f0, 0x618(r28)
/* 8066B428  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8066B42C  D0 1C 06 1C */	stfs f0, 0x61c(r28)
/* 8066B430  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8066B434  D0 1C 06 20 */	stfs f0, 0x620(r28)
/* 8066B438  38 00 00 0A */	li r0, 0xa
/* 8066B43C  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 8066B440  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 8066B444  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 8066B448  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066B44C  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 8066B450  4B C0 45 EC */	b cLib_addCalc2__FPffff
/* 8066B454  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8066B458  C0 3C 05 E8 */	lfs f1, 0x5e8(r28)
/* 8066B45C  3C 80 80 67 */	lis r4, l_HIO@ha
/* 8066B460  38 84 F2 C4 */	addi r4, r4, l_HIO@l
/* 8066B464  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8066B468  EC 21 00 32 */	fmuls f1, f1, f0
/* 8066B46C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066B470  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 8066B474  4B C0 45 C8 */	b cLib_addCalc2__FPffff
/* 8066B478  C0 3C 05 E8 */	lfs f1, 0x5e8(r28)
/* 8066B47C  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 8066B480  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B484  4C 40 13 82 */	cror 2, 0, 2
/* 8066B488  40 82 00 44 */	bne lbl_8066B4CC
/* 8066B48C  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 8066B490  4B BF C4 C4 */	b cM_rndF__Ff
/* 8066B494  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 8066B498  EC 00 08 2A */	fadds f0, f0, f1
/* 8066B49C  D0 1C 05 EC */	stfs f0, 0x5ec(r28)
/* 8066B4A0  7F 83 E3 78 */	mr r3, r28
/* 8066B4A4  38 80 00 0E */	li r4, 0xe
/* 8066B4A8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8066B4AC  38 A0 00 02 */	li r5, 2
/* 8066B4B0  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 8066B4B4  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 8066B4B8  EC 42 00 32 */	fmuls f2, f2, f0
/* 8066B4BC  4B FF C8 ED */	bl anm_init__FP8do_classifUcf
/* 8066B4C0  A8 7C 05 F6 */	lha r3, 0x5f6(r28)
/* 8066B4C4  38 03 00 01 */	addi r0, r3, 1
/* 8066B4C8  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
lbl_8066B4CC:
/* 8066B4CC  38 00 00 01 */	li r0, 1
/* 8066B4D0  98 1C 06 88 */	stb r0, 0x688(r28)
/* 8066B4D4  48 00 01 64 */	b lbl_8066B638
lbl_8066B4D8:
/* 8066B4D8  38 00 00 01 */	li r0, 1
/* 8066B4DC  98 1C 06 16 */	stb r0, 0x616(r28)
/* 8066B4E0  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 8066B4E4  C0 3C 05 EC */	lfs f1, 0x5ec(r28)
/* 8066B4E8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066B4EC  C0 7E 00 D0 */	lfs f3, 0xd0(r30)
/* 8066B4F0  4B C0 45 4C */	b cLib_addCalc2__FPffff
/* 8066B4F4  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 8066B4F8  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8066B4FC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8066B500  3C 60 80 67 */	lis r3, l_HIO@ha
/* 8066B504  38 63 F2 C4 */	addi r3, r3, l_HIO@l
/* 8066B508  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8066B50C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8066B510  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 8066B514  EC 20 00 F2 */	fmuls f1, f0, f3
/* 8066B518  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066B51C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8066B520  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8066B524  4B C0 45 18 */	b cLib_addCalc2__FPffff
/* 8066B528  38 7C 04 DE */	addi r3, r28, 0x4de
/* 8066B52C  A8 9C 05 CC */	lha r4, 0x5cc(r28)
/* 8066B530  38 A0 00 08 */	li r5, 8
/* 8066B534  38 C0 10 00 */	li r6, 0x1000
/* 8066B538  4B C0 50 D0 */	b cLib_addCalcAngleS2__FPssss
/* 8066B53C  38 00 00 01 */	li r0, 1
/* 8066B540  98 1C 06 88 */	stb r0, 0x688(r28)
/* 8066B544  C0 5C 05 C8 */	lfs f2, 0x5c8(r28)
/* 8066B548  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 8066B54C  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 8066B550  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066B554  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8066B558  40 80 00 E0 */	bge lbl_8066B638
/* 8066B55C  38 00 00 04 */	li r0, 4
/* 8066B560  B0 1C 05 F2 */	sth r0, 0x5f2(r28)
/* 8066B564  38 00 00 00 */	li r0, 0
/* 8066B568  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
/* 8066B56C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066B570  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8066B574  48 00 00 C4 */	b lbl_8066B638
lbl_8066B578:
/* 8066B578  A8 7C 05 FC */	lha r3, 0x5fc(r28)
/* 8066B57C  7C 60 07 35 */	extsh. r0, r3
/* 8066B580  41 82 00 3C */	beq lbl_8066B5BC
/* 8066B584  2C 03 00 01 */	cmpwi r3, 1
/* 8066B588  40 82 00 B0 */	bne lbl_8066B638
/* 8066B58C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8066B590  4B BF C3 FC */	b cM_rndFX__Ff
/* 8066B594  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 8066B598  EC 02 08 2A */	fadds f0, f2, f1
/* 8066B59C  D0 1C 05 E8 */	stfs f0, 0x5e8(r28)
/* 8066B5A0  7F 83 E3 78 */	mr r3, r28
/* 8066B5A4  38 80 00 0D */	li r4, 0xd
/* 8066B5A8  FC 20 10 90 */	fmr f1, f2
/* 8066B5AC  38 A0 00 02 */	li r5, 2
/* 8066B5B0  C0 5E 01 3C */	lfs f2, 0x13c(r30)
/* 8066B5B4  4B FF C7 F5 */	bl anm_init__FP8do_classifUcf
/* 8066B5B8  48 00 00 80 */	b lbl_8066B638
lbl_8066B5BC:
/* 8066B5BC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8066B5C0  D0 1C 06 18 */	stfs f0, 0x618(r28)
/* 8066B5C4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8066B5C8  D0 1C 06 1C */	stfs f0, 0x61c(r28)
/* 8066B5CC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8066B5D0  D0 1C 06 20 */	stfs f0, 0x620(r28)
/* 8066B5D4  38 00 00 0A */	li r0, 0xa
/* 8066B5D8  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 8066B5DC  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 8066B5E0  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 8066B5E4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066B5E8  C0 7E 00 C8 */	lfs f3, 0xc8(r30)
/* 8066B5EC  4B C0 44 50 */	b cLib_addCalc2__FPffff
/* 8066B5F0  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8066B5F4  C0 3C 05 E8 */	lfs f1, 0x5e8(r28)
/* 8066B5F8  3C 80 80 67 */	lis r4, l_HIO@ha
/* 8066B5FC  38 84 F2 C4 */	addi r4, r4, l_HIO@l
/* 8066B600  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8066B604  EC 21 00 32 */	fmuls f1, f1, f0
/* 8066B608  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8066B60C  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 8066B610  4B C0 44 2C */	b cLib_addCalc2__FPffff
/* 8066B614  C0 3C 05 E8 */	lfs f1, 0x5e8(r28)
/* 8066B618  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 8066B61C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B620  4C 40 13 82 */	cror 2, 0, 2
/* 8066B624  40 82 00 14 */	bne lbl_8066B638
/* 8066B628  38 00 00 03 */	li r0, 3
/* 8066B62C  B0 1C 05 F2 */	sth r0, 0x5f2(r28)
/* 8066B630  38 00 00 00 */	li r0, 0
/* 8066B634  B0 1C 05 F6 */	sth r0, 0x5f6(r28)
lbl_8066B638:
/* 8066B638  39 61 00 60 */	addi r11, r1, 0x60
/* 8066B63C  4B CF 6B E4 */	b _restgpr_27
/* 8066B640  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8066B644  7C 08 03 A6 */	mtlr r0
/* 8066B648  38 21 00 60 */	addi r1, r1, 0x60
/* 8066B64C  4E 80 00 20 */	blr 
