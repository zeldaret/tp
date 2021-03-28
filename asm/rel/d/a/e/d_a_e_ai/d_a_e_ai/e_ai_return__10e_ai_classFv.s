lbl_8067ACA0:
/* 8067ACA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8067ACA4  7C 08 02 A6 */	mflr r0
/* 8067ACA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8067ACAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8067ACB0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8067ACB4  7C 7E 1B 78 */	mr r30, r3
/* 8067ACB8  3C 60 80 68 */	lis r3, lit_3789@ha
/* 8067ACBC  3B E3 C3 FC */	addi r31, r3, lit_3789@l
/* 8067ACC0  A8 1E 06 90 */	lha r0, 0x690(r30)
/* 8067ACC4  2C 00 00 01 */	cmpwi r0, 1
/* 8067ACC8  41 82 00 48 */	beq lbl_8067AD10
/* 8067ACCC  40 80 03 40 */	bge lbl_8067B00C
/* 8067ACD0  2C 00 00 00 */	cmpwi r0, 0
/* 8067ACD4  40 80 00 08 */	bge lbl_8067ACDC
/* 8067ACD8  48 00 03 34 */	b lbl_8067B00C
lbl_8067ACDC:
/* 8067ACDC  80 1E 07 34 */	lwz r0, 0x734(r30)
/* 8067ACE0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8067ACE4  41 82 03 28 */	beq lbl_8067B00C
/* 8067ACE8  A8 1E 06 B2 */	lha r0, 0x6b2(r30)
/* 8067ACEC  2C 00 00 00 */	cmpwi r0, 0
/* 8067ACF0  40 82 00 14 */	bne lbl_8067AD04
/* 8067ACF4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8067ACF8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8067ACFC  38 00 00 01 */	li r0, 1
/* 8067AD00  B0 1E 06 90 */	sth r0, 0x690(r30)
lbl_8067AD04:
/* 8067AD04  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067AD08  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8067AD0C  48 00 03 00 */	b lbl_8067B00C
lbl_8067AD10:
/* 8067AD10  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8067AD14  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8067AD18  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8067AD1C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8067AD20  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8067AD24  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8067AD28  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 8067AD2C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8067AD30  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8067AD34  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8067AD38  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8067AD3C  38 61 00 10 */	addi r3, r1, 0x10
/* 8067AD40  38 81 00 1C */	addi r4, r1, 0x1c
/* 8067AD44  4B CC C6 58 */	b PSVECSquareDistance
/* 8067AD48  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067AD4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067AD50  40 81 00 58 */	ble lbl_8067ADA8
/* 8067AD54  FC 00 08 34 */	frsqrte f0, f1
/* 8067AD58  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8067AD5C  FC 44 00 32 */	fmul f2, f4, f0
/* 8067AD60  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8067AD64  FC 00 00 32 */	fmul f0, f0, f0
/* 8067AD68  FC 01 00 32 */	fmul f0, f1, f0
/* 8067AD6C  FC 03 00 28 */	fsub f0, f3, f0
/* 8067AD70  FC 02 00 32 */	fmul f0, f2, f0
/* 8067AD74  FC 44 00 32 */	fmul f2, f4, f0
/* 8067AD78  FC 00 00 32 */	fmul f0, f0, f0
/* 8067AD7C  FC 01 00 32 */	fmul f0, f1, f0
/* 8067AD80  FC 03 00 28 */	fsub f0, f3, f0
/* 8067AD84  FC 02 00 32 */	fmul f0, f2, f0
/* 8067AD88  FC 44 00 32 */	fmul f2, f4, f0
/* 8067AD8C  FC 00 00 32 */	fmul f0, f0, f0
/* 8067AD90  FC 01 00 32 */	fmul f0, f1, f0
/* 8067AD94  FC 03 00 28 */	fsub f0, f3, f0
/* 8067AD98  FC 02 00 32 */	fmul f0, f2, f0
/* 8067AD9C  FC 21 00 32 */	fmul f1, f1, f0
/* 8067ADA0  FC 20 08 18 */	frsp f1, f1
/* 8067ADA4  48 00 00 88 */	b lbl_8067AE2C
lbl_8067ADA8:
/* 8067ADA8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8067ADAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067ADB0  40 80 00 10 */	bge lbl_8067ADC0
/* 8067ADB4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8067ADB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8067ADBC  48 00 00 70 */	b lbl_8067AE2C
lbl_8067ADC0:
/* 8067ADC0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8067ADC4  80 81 00 08 */	lwz r4, 8(r1)
/* 8067ADC8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8067ADCC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8067ADD0  7C 03 00 00 */	cmpw r3, r0
/* 8067ADD4  41 82 00 14 */	beq lbl_8067ADE8
/* 8067ADD8  40 80 00 40 */	bge lbl_8067AE18
/* 8067ADDC  2C 03 00 00 */	cmpwi r3, 0
/* 8067ADE0  41 82 00 20 */	beq lbl_8067AE00
/* 8067ADE4  48 00 00 34 */	b lbl_8067AE18
lbl_8067ADE8:
/* 8067ADE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8067ADEC  41 82 00 0C */	beq lbl_8067ADF8
/* 8067ADF0  38 00 00 01 */	li r0, 1
/* 8067ADF4  48 00 00 28 */	b lbl_8067AE1C
lbl_8067ADF8:
/* 8067ADF8  38 00 00 02 */	li r0, 2
/* 8067ADFC  48 00 00 20 */	b lbl_8067AE1C
lbl_8067AE00:
/* 8067AE00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8067AE04  41 82 00 0C */	beq lbl_8067AE10
/* 8067AE08  38 00 00 05 */	li r0, 5
/* 8067AE0C  48 00 00 10 */	b lbl_8067AE1C
lbl_8067AE10:
/* 8067AE10  38 00 00 03 */	li r0, 3
/* 8067AE14  48 00 00 08 */	b lbl_8067AE1C
lbl_8067AE18:
/* 8067AE18  38 00 00 04 */	li r0, 4
lbl_8067AE1C:
/* 8067AE1C  2C 00 00 01 */	cmpwi r0, 1
/* 8067AE20  40 82 00 0C */	bne lbl_8067AE2C
/* 8067AE24  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8067AE28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8067AE2C:
/* 8067AE2C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8067AE30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067AE34  40 81 00 3C */	ble lbl_8067AE70
/* 8067AE38  3C 60 80 68 */	lis r3, l_HIO@ha
/* 8067AE3C  38 63 C6 A8 */	addi r3, r3, l_HIO@l
/* 8067AE40  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8067AE44  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8067AE48  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8067AE4C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8067AE50  4B BF 5D B4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8067AE54  B0 7E 06 A8 */	sth r3, 0x6a8(r30)
/* 8067AE58  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8067AE5C  A8 9E 06 A8 */	lha r4, 0x6a8(r30)
/* 8067AE60  38 A0 00 02 */	li r5, 2
/* 8067AE64  38 C0 05 00 */	li r6, 0x500
/* 8067AE68  4B BF 57 A0 */	b cLib_addCalcAngleS2__FPssss
/* 8067AE6C  48 00 00 24 */	b lbl_8067AE90
lbl_8067AE70:
/* 8067AE70  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067AE74  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8067AE78  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 8067AE7C  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 8067AE80  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8067AE84  A8 9E 06 A8 */	lha r4, 0x6a8(r30)
/* 8067AE88  38 A0 03 00 */	li r5, 0x300
/* 8067AE8C  4B BF 5D 04 */	b cLib_chaseAngleS__FPsss
lbl_8067AE90:
/* 8067AE90  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 8067AE94  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8067AE98  7C 03 00 00 */	cmpw r3, r0
/* 8067AE9C  40 82 00 94 */	bne lbl_8067AF30
/* 8067AEA0  80 1E 07 34 */	lwz r0, 0x734(r30)
/* 8067AEA4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8067AEA8  41 82 00 88 */	beq lbl_8067AF30
/* 8067AEAC  38 00 00 0A */	li r0, 0xa
/* 8067AEB0  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 8067AEB4  38 00 00 00 */	li r0, 0
/* 8067AEB8  B0 1E 06 8E */	sth r0, 0x68e(r30)
/* 8067AEBC  7F C3 F3 78 */	mr r3, r30
/* 8067AEC0  38 80 00 09 */	li r4, 9
/* 8067AEC4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8067AEC8  38 A0 00 02 */	li r5, 2
/* 8067AECC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8067AED0  4B FF E4 81 */	bl anm_init__10e_ai_classFifUcf
/* 8067AED4  3C 60 80 68 */	lis r3, stringBase0@ha
/* 8067AED8  38 63 C5 38 */	addi r3, r3, stringBase0@l
/* 8067AEDC  38 80 00 13 */	li r4, 0x13
/* 8067AEE0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8067AEE4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8067AEE8  3C A5 00 02 */	addis r5, r5, 2
/* 8067AEEC  38 C0 00 80 */	li r6, 0x80
/* 8067AEF0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8067AEF4  4B 9C 13 F8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8067AEF8  7C 65 1B 78 */	mr r5, r3
/* 8067AEFC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8067AF00  80 63 00 04 */	lwz r3, 4(r3)
/* 8067AF04  80 83 00 04 */	lwz r4, 4(r3)
/* 8067AF08  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8067AF0C  38 84 00 58 */	addi r4, r4, 0x58
/* 8067AF10  38 C0 00 01 */	li r6, 1
/* 8067AF14  38 E0 00 00 */	li r7, 0
/* 8067AF18  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067AF1C  39 00 00 00 */	li r8, 0
/* 8067AF20  39 20 FF FF */	li r9, -1
/* 8067AF24  4B 99 27 E8 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8067AF28  38 00 00 13 */	li r0, 0x13
/* 8067AF2C  98 1E 05 CC */	stb r0, 0x5cc(r30)
lbl_8067AF30:
/* 8067AF30  80 1E 07 34 */	lwz r0, 0x734(r30)
/* 8067AF34  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8067AF38  41 82 00 D4 */	beq lbl_8067B00C
/* 8067AF3C  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 8067AF40  3C 60 80 68 */	lis r3, l_HIO@ha
/* 8067AF44  38 63 C6 A8 */	addi r3, r3, l_HIO@l
/* 8067AF48  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8067AF4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067AF50  41 80 00 14 */	blt lbl_8067AF64
/* 8067AF54  38 7E 0B C8 */	addi r3, r30, 0xbc8
/* 8067AF58  4B A0 95 08 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8067AF5C  28 03 00 00 */	cmplwi r3, 0
/* 8067AF60  41 82 00 18 */	beq lbl_8067AF78
lbl_8067AF64:
/* 8067AF64  88 1E 05 CC */	lbz r0, 0x5cc(r30)
/* 8067AF68  28 00 00 13 */	cmplwi r0, 0x13
/* 8067AF6C  41 82 00 0C */	beq lbl_8067AF78
/* 8067AF70  38 00 00 01 */	li r0, 1
/* 8067AF74  B0 1E 06 8E */	sth r0, 0x68e(r30)
lbl_8067AF78:
/* 8067AF78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067AF7C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8067AF80  38 00 00 00 */	li r0, 0
/* 8067AF84  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 8067AF88  88 7E 0D 29 */	lbz r3, 0xd29(r30)
/* 8067AF8C  7C 60 07 75 */	extsb. r0, r3
/* 8067AF90  40 82 00 10 */	bne lbl_8067AFA0
/* 8067AF94  38 00 00 1E */	li r0, 0x1e
/* 8067AF98  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 8067AF9C  48 00 00 24 */	b lbl_8067AFC0
lbl_8067AFA0:
/* 8067AFA0  7C 60 07 74 */	extsb r0, r3
/* 8067AFA4  2C 00 00 01 */	cmpwi r0, 1
/* 8067AFA8  40 82 00 10 */	bne lbl_8067AFB8
/* 8067AFAC  38 00 00 14 */	li r0, 0x14
/* 8067AFB0  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
/* 8067AFB4  48 00 00 0C */	b lbl_8067AFC0
lbl_8067AFB8:
/* 8067AFB8  38 00 00 0F */	li r0, 0xf
/* 8067AFBC  B0 1E 06 B2 */	sth r0, 0x6b2(r30)
lbl_8067AFC0:
/* 8067AFC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070062@ha */
/* 8067AFC4  38 03 00 62 */	addi r0, r3, 0x0062 /* 0x00070062@l */
/* 8067AFC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8067AFCC  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8067AFD0  38 81 00 0C */	addi r4, r1, 0xc
/* 8067AFD4  38 A0 00 00 */	li r5, 0
/* 8067AFD8  38 C0 FF FF */	li r6, -1
/* 8067AFDC  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8067AFE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8067AFE4  7D 89 03 A6 */	mtctr r12
/* 8067AFE8  4E 80 04 21 */	bctrl 
/* 8067AFEC  38 7E 0D 2C */	addi r3, r30, 0xd2c
/* 8067AFF0  38 9E 0D 34 */	addi r4, r30, 0xd34
/* 8067AFF4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8067AFF8  38 DE 04 E4 */	addi r6, r30, 0x4e4
/* 8067AFFC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067B000  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8067B004  39 00 00 01 */	li r8, 1
/* 8067B008  4B 9A 20 18 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_8067B00C:
/* 8067B00C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8067B010  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8067B014  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8067B018  7C 08 03 A6 */	mtlr r0
/* 8067B01C  38 21 00 30 */	addi r1, r1, 0x30
/* 8067B020  4E 80 00 20 */	blr 
