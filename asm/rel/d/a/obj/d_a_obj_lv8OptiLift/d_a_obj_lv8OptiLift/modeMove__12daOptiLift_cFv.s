lbl_80C8ABBC:
/* 80C8ABBC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C8ABC0  7C 08 02 A6 */	mflr r0
/* 80C8ABC4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C8ABC8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80C8ABCC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80C8ABD0  39 61 00 60 */	addi r11, r1, 0x60
/* 80C8ABD4  4B 6D 76 09 */	bl _savegpr_29
/* 80C8ABD8  7C 7E 1B 78 */	mr r30, r3
/* 80C8ABDC  3C 60 80 C9 */	lis r3, lit_3661@ha /* 0x80C8B9AC@ha */
/* 80C8ABE0  3B E3 B9 AC */	addi r31, r3, lit_3661@l /* 0x80C8B9AC@l */
/* 80C8ABE4  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 80C8ABE8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C8ABEC  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 80C8ABF0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C8ABF4  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80C8ABF8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C8ABFC  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80C8AC00  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C8AC04  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 80C8AC08  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C8AC0C  C0 1E 05 D4 */	lfs f0, 0x5d4(r30)
/* 80C8AC10  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C8AC14  38 61 00 20 */	addi r3, r1, 0x20
/* 80C8AC18  38 81 00 38 */	addi r4, r1, 0x38
/* 80C8AC1C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80C8AC20  4B 5D BF 15 */	bl __mi__4cXyzCFRC3Vec
/* 80C8AC24  38 61 00 20 */	addi r3, r1, 0x20
/* 80C8AC28  4B 6B C5 11 */	bl PSVECSquareMag
/* 80C8AC2C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C8AC30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8AC34  40 81 00 58 */	ble lbl_80C8AC8C
/* 80C8AC38  FC 00 08 34 */	frsqrte f0, f1
/* 80C8AC3C  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 80C8AC40  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8AC44  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 80C8AC48  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8AC4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8AC50  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8AC54  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8AC58  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8AC5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8AC60  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8AC64  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8AC68  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8AC6C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8AC70  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8AC74  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8AC78  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8AC7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8AC80  FC 21 00 32 */	fmul f1, f1, f0
/* 80C8AC84  FC 20 08 18 */	frsp f1, f1
/* 80C8AC88  48 00 00 88 */	b lbl_80C8AD10
lbl_80C8AC8C:
/* 80C8AC8C  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 80C8AC90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8AC94  40 80 00 10 */	bge lbl_80C8ACA4
/* 80C8AC98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C8AC9C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C8ACA0  48 00 00 70 */	b lbl_80C8AD10
lbl_80C8ACA4:
/* 80C8ACA4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C8ACA8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C8ACAC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C8ACB0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C8ACB4  7C 03 00 00 */	cmpw r3, r0
/* 80C8ACB8  41 82 00 14 */	beq lbl_80C8ACCC
/* 80C8ACBC  40 80 00 40 */	bge lbl_80C8ACFC
/* 80C8ACC0  2C 03 00 00 */	cmpwi r3, 0
/* 80C8ACC4  41 82 00 20 */	beq lbl_80C8ACE4
/* 80C8ACC8  48 00 00 34 */	b lbl_80C8ACFC
lbl_80C8ACCC:
/* 80C8ACCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C8ACD0  41 82 00 0C */	beq lbl_80C8ACDC
/* 80C8ACD4  38 00 00 01 */	li r0, 1
/* 80C8ACD8  48 00 00 28 */	b lbl_80C8AD00
lbl_80C8ACDC:
/* 80C8ACDC  38 00 00 02 */	li r0, 2
/* 80C8ACE0  48 00 00 20 */	b lbl_80C8AD00
lbl_80C8ACE4:
/* 80C8ACE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C8ACE8  41 82 00 0C */	beq lbl_80C8ACF4
/* 80C8ACEC  38 00 00 05 */	li r0, 5
/* 80C8ACF0  48 00 00 10 */	b lbl_80C8AD00
lbl_80C8ACF4:
/* 80C8ACF4  38 00 00 03 */	li r0, 3
/* 80C8ACF8  48 00 00 08 */	b lbl_80C8AD00
lbl_80C8ACFC:
/* 80C8ACFC  38 00 00 04 */	li r0, 4
lbl_80C8AD00:
/* 80C8AD00  2C 00 00 01 */	cmpwi r0, 1
/* 80C8AD04  40 82 00 0C */	bne lbl_80C8AD10
/* 80C8AD08  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C8AD0C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C8AD10:
/* 80C8AD10  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80C8AD14  EF E0 00 72 */	fmuls f31, f0, f1
/* 80C8AD18  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C8AD1C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C8AD20  40 80 00 08 */	bge lbl_80C8AD28
/* 80C8AD24  FF E0 00 90 */	fmr f31, f0
lbl_80C8AD28:
/* 80C8AD28  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80C8AD2C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C8AD30  40 81 00 08 */	ble lbl_80C8AD38
/* 80C8AD34  FF E0 00 90 */	fmr f31, f0
lbl_80C8AD38:
/* 80C8AD38  38 61 00 14 */	addi r3, r1, 0x14
/* 80C8AD3C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C8AD40  38 BE 05 CC */	addi r5, r30, 0x5cc
/* 80C8AD44  4B 5D BD F1 */	bl __mi__4cXyzCFRC3Vec
/* 80C8AD48  38 61 00 14 */	addi r3, r1, 0x14
/* 80C8AD4C  4B 6B C3 ED */	bl PSVECSquareMag
/* 80C8AD50  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C8AD54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8AD58  40 81 00 58 */	ble lbl_80C8ADB0
/* 80C8AD5C  FC 00 08 34 */	frsqrte f0, f1
/* 80C8AD60  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 80C8AD64  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8AD68  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 80C8AD6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8AD70  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8AD74  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8AD78  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8AD7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8AD80  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8AD84  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8AD88  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8AD8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8AD90  FC 44 00 32 */	fmul f2, f4, f0
/* 80C8AD94  FC 00 00 32 */	fmul f0, f0, f0
/* 80C8AD98  FC 01 00 32 */	fmul f0, f1, f0
/* 80C8AD9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C8ADA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C8ADA4  FC 21 00 32 */	fmul f1, f1, f0
/* 80C8ADA8  FC 20 08 18 */	frsp f1, f1
/* 80C8ADAC  48 00 00 88 */	b lbl_80C8AE34
lbl_80C8ADB0:
/* 80C8ADB0  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 80C8ADB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C8ADB8  40 80 00 10 */	bge lbl_80C8ADC8
/* 80C8ADBC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C8ADC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C8ADC4  48 00 00 70 */	b lbl_80C8AE34
lbl_80C8ADC8:
/* 80C8ADC8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C8ADCC  80 81 00 08 */	lwz r4, 8(r1)
/* 80C8ADD0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C8ADD4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C8ADD8  7C 03 00 00 */	cmpw r3, r0
/* 80C8ADDC  41 82 00 14 */	beq lbl_80C8ADF0
/* 80C8ADE0  40 80 00 40 */	bge lbl_80C8AE20
/* 80C8ADE4  2C 03 00 00 */	cmpwi r3, 0
/* 80C8ADE8  41 82 00 20 */	beq lbl_80C8AE08
/* 80C8ADEC  48 00 00 34 */	b lbl_80C8AE20
lbl_80C8ADF0:
/* 80C8ADF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C8ADF4  41 82 00 0C */	beq lbl_80C8AE00
/* 80C8ADF8  38 00 00 01 */	li r0, 1
/* 80C8ADFC  48 00 00 28 */	b lbl_80C8AE24
lbl_80C8AE00:
/* 80C8AE00  38 00 00 02 */	li r0, 2
/* 80C8AE04  48 00 00 20 */	b lbl_80C8AE24
lbl_80C8AE08:
/* 80C8AE08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C8AE0C  41 82 00 0C */	beq lbl_80C8AE18
/* 80C8AE10  38 00 00 05 */	li r0, 5
/* 80C8AE14  48 00 00 10 */	b lbl_80C8AE24
lbl_80C8AE18:
/* 80C8AE18  38 00 00 03 */	li r0, 3
/* 80C8AE1C  48 00 00 08 */	b lbl_80C8AE24
lbl_80C8AE20:
/* 80C8AE20  38 00 00 04 */	li r0, 4
lbl_80C8AE24:
/* 80C8AE24  2C 00 00 01 */	cmpwi r0, 1
/* 80C8AE28  40 82 00 0C */	bne lbl_80C8AE34
/* 80C8AE2C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C8AE30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C8AE34:
/* 80C8AE34  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C8AE38  40 81 00 0C */	ble lbl_80C8AE44
/* 80C8AE3C  7F C3 F3 78 */	mr r3, r30
/* 80C8AE40  48 00 00 95 */	bl init_modeBrk__12daOptiLift_cFv
lbl_80C8AE44:
/* 80C8AE44  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C8AE48  38 9E 05 CC */	addi r4, r30, 0x5cc
/* 80C8AE4C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C8AE50  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C8AE54  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C8AE58  4B 5E 4C 61 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C8AE5C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8AE60  7C 03 07 74 */	extsb r3, r0
/* 80C8AE64  4B 3A 22 09 */	bl dComIfGp_getReverb__Fi
/* 80C8AE68  7C 7D 1B 78 */	mr r29, r3
/* 80C8AE6C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C8AE70  4B 6D 72 3D */	bl __cvt_fp2unsigned
/* 80C8AE74  7C 66 1B 78 */	mr r6, r3
/* 80C8AE78  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080214@ha */
/* 80C8AE7C  38 03 02 14 */	addi r0, r3, 0x0214 /* 0x00080214@l */
/* 80C8AE80  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C8AE84  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C8AE88  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C8AE8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8AE90  38 81 00 10 */	addi r4, r1, 0x10
/* 80C8AE94  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C8AE98  7F A7 EB 78 */	mr r7, r29
/* 80C8AE9C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C8AEA0  FC 40 08 90 */	fmr f2, f1
/* 80C8AEA4  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80C8AEA8  FC 80 18 90 */	fmr f4, f3
/* 80C8AEAC  39 00 00 00 */	li r8, 0
/* 80C8AEB0  4B 62 16 5D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C8AEB4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80C8AEB8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80C8AEBC  39 61 00 60 */	addi r11, r1, 0x60
/* 80C8AEC0  4B 6D 73 69 */	bl _restgpr_29
/* 80C8AEC4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C8AEC8  7C 08 03 A6 */	mtlr r0
/* 80C8AECC  38 21 00 70 */	addi r1, r1, 0x70
/* 80C8AED0  4E 80 00 20 */	blr 
