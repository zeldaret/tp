lbl_8097ABE8:
/* 8097ABE8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8097ABEC  7C 08 02 A6 */	mflr r0
/* 8097ABF0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8097ABF4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8097ABF8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8097ABFC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8097AC00  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8097AC04  39 61 00 30 */	addi r11, r1, 0x30
/* 8097AC08  4B 9E 75 D4 */	b _savegpr_29
/* 8097AC0C  7C 7D 1B 78 */	mr r29, r3
/* 8097AC10  3C 60 80 98 */	lis r3, lit_4037@ha
/* 8097AC14  3B E3 F5 40 */	addi r31, r3, lit_4037@l
/* 8097AC18  C3 FF 00 00 */	lfs f31, 0(r31)
/* 8097AC1C  FF C0 F8 90 */	fmr f30, f31
/* 8097AC20  3B DD 08 50 */	addi r30, r29, 0x850
/* 8097AC24  80 1D 0B 68 */	lwz r0, 0xb68(r29)
/* 8097AC28  28 00 00 02 */	cmplwi r0, 2
/* 8097AC2C  40 82 00 E0 */	bne lbl_8097AD0C
/* 8097AC30  80 9D 0A 98 */	lwz r4, 0xa98(r29)
/* 8097AC34  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097AC38  40 80 00 1C */	bge lbl_8097AC54
/* 8097AC3C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097AC40  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097AC44  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097AC48  7C 63 02 14 */	add r3, r3, r0
/* 8097AC4C  C3 E3 01 FC */	lfs f31, 0x1fc(r3)
/* 8097AC50  48 00 00 18 */	b lbl_8097AC68
lbl_8097AC54:
/* 8097AC54  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097AC58  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097AC5C  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097AC60  7C 63 02 14 */	add r3, r3, r0
/* 8097AC64  C3 E3 FF 2C */	lfs f31, -0xd4(r3)
lbl_8097AC68:
/* 8097AC68  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097AC6C  40 80 00 1C */	bge lbl_8097AC88
/* 8097AC70  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097AC74  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097AC78  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097AC7C  7C 63 02 14 */	add r3, r3, r0
/* 8097AC80  C0 03 01 F4 */	lfs f0, 0x1f4(r3)
/* 8097AC84  48 00 00 18 */	b lbl_8097AC9C
lbl_8097AC88:
/* 8097AC88  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097AC8C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097AC90  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097AC94  7C 63 02 14 */	add r3, r3, r0
/* 8097AC98  C0 03 FF 24 */	lfs f0, -0xdc(r3)
lbl_8097AC9C:
/* 8097AC9C  FF C0 00 90 */	fmr f30, f0
/* 8097ACA0  38 7D 0B 5C */	addi r3, r29, 0xb5c
/* 8097ACA4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8097ACA8  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8097ACAC  4B 8F 5A 94 */	b cLib_chaseF__FPfff
/* 8097ACB0  C0 5D 0B 5C */	lfs f2, 0xb5c(r29)
/* 8097ACB4  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 8097ACB8  EC 22 00 32 */	fmuls f1, f2, f0
/* 8097ACBC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8097ACC0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8097ACC4  EC 42 00 32 */	fmuls f2, f2, f0
/* 8097ACC8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8097ACCC  40 80 00 08 */	bge lbl_8097ACD4
/* 8097ACD0  FC 20 F8 90 */	fmr f1, f31
lbl_8097ACD4:
/* 8097ACD4  38 7D 0B 60 */	addi r3, r29, 0xb60
/* 8097ACD8  4B 8F 5A 68 */	b cLib_chaseF__FPfff
/* 8097ACDC  C0 5D 0B 5C */	lfs f2, 0xb5c(r29)
/* 8097ACE0  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 8097ACE4  EC 22 00 32 */	fmuls f1, f2, f0
/* 8097ACE8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8097ACEC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8097ACF0  EC 42 00 32 */	fmuls f2, f2, f0
/* 8097ACF4  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8097ACF8  40 80 00 08 */	bge lbl_8097AD00
/* 8097ACFC  FC 20 F8 90 */	fmr f1, f31
lbl_8097AD00:
/* 8097AD00  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8097AD04  4B 8F 5A 3C */	b cLib_chaseF__FPfff
/* 8097AD08  48 00 01 3C */	b lbl_8097AE44
lbl_8097AD0C:
/* 8097AD0C  28 00 00 01 */	cmplwi r0, 1
/* 8097AD10  40 82 00 FC */	bne lbl_8097AE0C
/* 8097AD14  80 9D 0A 98 */	lwz r4, 0xa98(r29)
/* 8097AD18  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097AD1C  40 80 00 1C */	bge lbl_8097AD38
/* 8097AD20  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097AD24  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097AD28  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097AD2C  7C 63 02 14 */	add r3, r3, r0
/* 8097AD30  C0 03 01 F8 */	lfs f0, 0x1f8(r3)
/* 8097AD34  48 00 00 18 */	b lbl_8097AD4C
lbl_8097AD38:
/* 8097AD38  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097AD3C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097AD40  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097AD44  7C 63 02 14 */	add r3, r3, r0
/* 8097AD48  C0 03 FF 28 */	lfs f0, -0xd8(r3)
lbl_8097AD4C:
/* 8097AD4C  FF E0 00 90 */	fmr f31, f0
/* 8097AD50  2C 04 00 10 */	cmpwi r4, 0x10
/* 8097AD54  40 80 00 1C */	bge lbl_8097AD70
/* 8097AD58  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097AD5C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097AD60  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 8097AD64  7C 63 02 14 */	add r3, r3, r0
/* 8097AD68  C0 23 01 F0 */	lfs f1, 0x1f0(r3)
/* 8097AD6C  48 00 00 18 */	b lbl_8097AD84
lbl_8097AD70:
/* 8097AD70  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097AD74  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097AD78  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 8097AD7C  7C 63 02 14 */	add r3, r3, r0
/* 8097AD80  C0 23 FF 20 */	lfs f1, -0xe0(r3)
lbl_8097AD84:
/* 8097AD84  FF C0 08 90 */	fmr f30, f1
/* 8097AD88  80 1D 0B 50 */	lwz r0, 0xb50(r29)
/* 8097AD8C  2C 00 00 03 */	cmpwi r0, 3
/* 8097AD90  40 82 00 10 */	bne lbl_8097ADA0
/* 8097AD94  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8097AD98  EF FF 00 32 */	fmuls f31, f31, f0
/* 8097AD9C  EF C1 00 32 */	fmuls f30, f1, f0
lbl_8097ADA0:
/* 8097ADA0  38 7D 0B 5C */	addi r3, r29, 0xb5c
/* 8097ADA4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8097ADA8  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8097ADAC  4B 8F 59 94 */	b cLib_chaseF__FPfff
/* 8097ADB0  C0 5D 0B 5C */	lfs f2, 0xb5c(r29)
/* 8097ADB4  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 8097ADB8  EC 22 00 32 */	fmuls f1, f2, f0
/* 8097ADBC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8097ADC0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8097ADC4  EC 42 00 32 */	fmuls f2, f2, f0
/* 8097ADC8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8097ADCC  40 80 00 08 */	bge lbl_8097ADD4
/* 8097ADD0  FC 20 F8 90 */	fmr f1, f31
lbl_8097ADD4:
/* 8097ADD4  38 7D 0B 60 */	addi r3, r29, 0xb60
/* 8097ADD8  4B 8F 59 68 */	b cLib_chaseF__FPfff
/* 8097ADDC  C0 5D 0B 5C */	lfs f2, 0xb5c(r29)
/* 8097ADE0  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 8097ADE4  EC 22 00 32 */	fmuls f1, f2, f0
/* 8097ADE8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8097ADEC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8097ADF0  EC 42 00 32 */	fmuls f2, f2, f0
/* 8097ADF4  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8097ADF8  40 80 00 08 */	bge lbl_8097AE00
/* 8097ADFC  FC 20 F8 90 */	fmr f1, f31
lbl_8097AE00:
/* 8097AE00  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8097AE04  4B 8F 59 3C */	b cLib_chaseF__FPfff
/* 8097AE08  48 00 00 3C */	b lbl_8097AE44
lbl_8097AE0C:
/* 8097AE0C  28 00 00 00 */	cmplwi r0, 0
/* 8097AE10  40 82 00 34 */	bne lbl_8097AE44
/* 8097AE14  38 7D 0B 5C */	addi r3, r29, 0xb5c
/* 8097AE18  FC 20 F8 90 */	fmr f1, f31
/* 8097AE1C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8097AE20  4B 8F 59 20 */	b cLib_chaseF__FPfff
/* 8097AE24  38 7D 0B 60 */	addi r3, r29, 0xb60
/* 8097AE28  FC 20 F8 90 */	fmr f1, f31
/* 8097AE2C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8097AE30  4B 8F 59 10 */	b cLib_chaseF__FPfff
/* 8097AE34  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8097AE38  FC 20 F8 90 */	fmr f1, f31
/* 8097AE3C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8097AE40  4B 8F 59 00 */	b cLib_chaseF__FPfff
lbl_8097AE44:
/* 8097AE44  38 7D 0A D0 */	addi r3, r29, 0xad0
/* 8097AE48  38 81 00 08 */	addi r4, r1, 8
/* 8097AE4C  4B 7D F0 08 */	b getTargetPoint__11PathTrace_cFP3Vec
/* 8097AE50  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8097AE54  38 81 00 08 */	addi r4, r1, 8
/* 8097AE58  4B 8F 5D AC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8097AE5C  7C 64 1B 78 */	mr r4, r3
/* 8097AE60  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8097AE64  4B 8F 5F C0 */	b cLib_distanceAngleS__Fss
/* 8097AE68  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8097AE6C  41 80 00 34 */	blt lbl_8097AEA0
/* 8097AE70  38 7D 0B 5C */	addi r3, r29, 0xb5c
/* 8097AE74  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8097AE78  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8097AE7C  4B 8F 58 C4 */	b cLib_chaseF__FPfff
/* 8097AE80  38 7D 0B 60 */	addi r3, r29, 0xb60
/* 8097AE84  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8097AE88  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8097AE8C  4B 8F 58 B4 */	b cLib_chaseF__FPfff
/* 8097AE90  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8097AE94  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8097AE98  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8097AE9C  4B 8F 58 A4 */	b cLib_chaseF__FPfff
lbl_8097AEA0:
/* 8097AEA0  7F A3 EB 78 */	mr r3, r29
/* 8097AEA4  7F C4 F3 78 */	mr r4, r30
/* 8097AEA8  4B 69 F8 24 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8097AEAC  80 1D 0B 68 */	lwz r0, 0xb68(r29)
/* 8097AEB0  28 00 00 00 */	cmplwi r0, 0
/* 8097AEB4  41 82 00 38 */	beq lbl_8097AEEC
/* 8097AEB8  C0 1D 0B 60 */	lfs f0, 0xb60(r29)
/* 8097AEBC  EC 20 F8 24 */	fdivs f1, f0, f31
/* 8097AEC0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8097AEC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8097AEC8  40 81 00 08 */	ble lbl_8097AED0
/* 8097AECC  FC 20 00 90 */	fmr f1, f0
lbl_8097AED0:
/* 8097AED0  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8097AED4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8097AED8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8097AEDC  40 80 00 08 */	bge lbl_8097AEE4
/* 8097AEE0  FC 20 00 90 */	fmr f1, f0
lbl_8097AEE4:
/* 8097AEE4  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 8097AEE8  D0 23 00 18 */	stfs f1, 0x18(r3)
lbl_8097AEEC:
/* 8097AEEC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8097AEF0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8097AEF4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8097AEF8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8097AEFC  39 61 00 30 */	addi r11, r1, 0x30
/* 8097AF00  4B 9E 73 28 */	b _restgpr_29
/* 8097AF04  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8097AF08  7C 08 03 A6 */	mtlr r0
/* 8097AF0C  38 21 00 50 */	addi r1, r1, 0x50
/* 8097AF10  4E 80 00 20 */	blr 
