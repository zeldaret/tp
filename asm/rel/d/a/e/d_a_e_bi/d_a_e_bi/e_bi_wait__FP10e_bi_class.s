lbl_8068ABD8:
/* 8068ABD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8068ABDC  7C 08 02 A6 */	mflr r0
/* 8068ABE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8068ABE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8068ABE8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8068ABEC  7C 7F 1B 78 */	mr r31, r3
/* 8068ABF0  3C 80 80 69 */	lis r4, lit_3903@ha
/* 8068ABF4  3B C4 D7 EC */	addi r30, r4, lit_3903@l
/* 8068ABF8  A8 03 06 70 */	lha r0, 0x670(r3)
/* 8068ABFC  2C 00 00 00 */	cmpwi r0, 0
/* 8068AC00  41 82 00 44 */	beq lbl_8068AC44
/* 8068AC04  40 80 00 10 */	bge lbl_8068AC14
/* 8068AC08  2C 00 FF FE */	cmpwi r0, -2
/* 8068AC0C  41 82 00 18 */	beq lbl_8068AC24
/* 8068AC10  48 00 02 A8 */	b lbl_8068AEB8
lbl_8068AC14:
/* 8068AC14  2C 00 00 02 */	cmpwi r0, 2
/* 8068AC18  41 82 00 FC */	beq lbl_8068AD14
/* 8068AC1C  40 80 02 9C */	bge lbl_8068AEB8
/* 8068AC20  48 00 00 70 */	b lbl_8068AC90
lbl_8068AC24:
/* 8068AC24  38 80 00 04 */	li r4, 4
/* 8068AC28  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8068AC2C  38 A0 00 00 */	li r5, 0
/* 8068AC30  FC 40 08 90 */	fmr f2, f1
/* 8068AC34  4B FF FA 01 */	bl anm_init__FP10e_bi_classifUcf
/* 8068AC38  38 00 00 01 */	li r0, 1
/* 8068AC3C  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 8068AC40  48 00 02 78 */	b lbl_8068AEB8
lbl_8068AC44:
/* 8068AC44  38 80 00 09 */	li r4, 9
/* 8068AC48  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8068AC4C  38 A0 00 00 */	li r5, 0
/* 8068AC50  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8068AC54  4B FF F9 E1 */	bl anm_init__FP10e_bi_classifUcf
/* 8068AC58  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700EF@ha */
/* 8068AC5C  38 03 00 EF */	addi r0, r3, 0x00EF /* 0x000700EF@l */
/* 8068AC60  90 01 00 0C */	stw r0, 0xc(r1)
/* 8068AC64  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8068AC68  38 81 00 0C */	addi r4, r1, 0xc
/* 8068AC6C  38 A0 00 00 */	li r5, 0
/* 8068AC70  38 C0 FF FF */	li r6, -1
/* 8068AC74  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8068AC78  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068AC7C  7D 89 03 A6 */	mtctr r12
/* 8068AC80  4E 80 04 21 */	bctrl 
/* 8068AC84  38 00 00 01 */	li r0, 1
/* 8068AC88  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 8068AC8C  48 00 02 2C */	b lbl_8068AEB8
lbl_8068AC90:
/* 8068AC90  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068AC94  38 80 00 01 */	li r4, 1
/* 8068AC98  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8068AC9C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8068ACA0  40 82 00 18 */	bne lbl_8068ACB8
/* 8068ACA4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8068ACA8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8068ACAC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8068ACB0  41 82 00 08 */	beq lbl_8068ACB8
/* 8068ACB4  38 80 00 00 */	li r4, 0
lbl_8068ACB8:
/* 8068ACB8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8068ACBC  41 82 01 FC */	beq lbl_8068AEB8
/* 8068ACC0  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 8068ACC4  28 00 00 01 */	cmplwi r0, 1
/* 8068ACC8  40 82 00 18 */	bne lbl_8068ACE0
/* 8068ACCC  38 00 00 01 */	li r0, 1
/* 8068ACD0  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 8068ACD4  38 00 00 00 */	li r0, 0
/* 8068ACD8  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 8068ACDC  48 00 01 DC */	b lbl_8068AEB8
lbl_8068ACE0:
/* 8068ACE0  7F E3 FB 78 */	mr r3, r31
/* 8068ACE4  38 80 00 0A */	li r4, 0xa
/* 8068ACE8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8068ACEC  38 A0 00 02 */	li r5, 2
/* 8068ACF0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8068ACF4  4B FF F9 41 */	bl anm_init__FP10e_bi_classifUcf
/* 8068ACF8  38 00 00 02 */	li r0, 2
/* 8068ACFC  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 8068AD00  3C 60 80 69 */	lis r3, l_HIO@ha
/* 8068AD04  38 63 DB 2C */	addi r3, r3, l_HIO@l
/* 8068AD08  A8 03 00 14 */	lha r0, 0x14(r3)
/* 8068AD0C  B0 1F 06 8C */	sth r0, 0x68c(r31)
/* 8068AD10  48 00 01 A8 */	b lbl_8068AEB8
lbl_8068AD14:
/* 8068AD14  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8068AD18  C0 3F 04 A8 */	lfs f1, 0x4a8(r31)
/* 8068AD1C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8068AD20  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 8068AD24  4B BE 4D 18 */	b cLib_addCalc2__FPffff
/* 8068AD28  38 7F 04 D8 */	addi r3, r31, 0x4d8
/* 8068AD2C  C0 3F 04 B0 */	lfs f1, 0x4b0(r31)
/* 8068AD30  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8068AD34  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 8068AD38  4B BE 4D 04 */	b cLib_addCalc2__FPffff
/* 8068AD3C  38 61 00 10 */	addi r3, r1, 0x10
/* 8068AD40  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8068AD44  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 8068AD48  4B BD BD EC */	b __mi__4cXyzCFRC3Vec
/* 8068AD4C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8068AD50  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8068AD54  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8068AD58  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8068AD5C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8068AD60  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8068AD64  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8068AD68  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8068AD6C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8068AD70  4B CB C3 C8 */	b PSVECSquareMag
/* 8068AD74  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8068AD78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068AD7C  40 81 00 58 */	ble lbl_8068ADD4
/* 8068AD80  FC 00 08 34 */	frsqrte f0, f1
/* 8068AD84  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8068AD88  FC 44 00 32 */	fmul f2, f4, f0
/* 8068AD8C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8068AD90  FC 00 00 32 */	fmul f0, f0, f0
/* 8068AD94  FC 01 00 32 */	fmul f0, f1, f0
/* 8068AD98  FC 03 00 28 */	fsub f0, f3, f0
/* 8068AD9C  FC 02 00 32 */	fmul f0, f2, f0
/* 8068ADA0  FC 44 00 32 */	fmul f2, f4, f0
/* 8068ADA4  FC 00 00 32 */	fmul f0, f0, f0
/* 8068ADA8  FC 01 00 32 */	fmul f0, f1, f0
/* 8068ADAC  FC 03 00 28 */	fsub f0, f3, f0
/* 8068ADB0  FC 02 00 32 */	fmul f0, f2, f0
/* 8068ADB4  FC 44 00 32 */	fmul f2, f4, f0
/* 8068ADB8  FC 00 00 32 */	fmul f0, f0, f0
/* 8068ADBC  FC 01 00 32 */	fmul f0, f1, f0
/* 8068ADC0  FC 03 00 28 */	fsub f0, f3, f0
/* 8068ADC4  FC 02 00 32 */	fmul f0, f2, f0
/* 8068ADC8  FC 21 00 32 */	fmul f1, f1, f0
/* 8068ADCC  FC 20 08 18 */	frsp f1, f1
/* 8068ADD0  48 00 00 88 */	b lbl_8068AE58
lbl_8068ADD4:
/* 8068ADD4  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8068ADD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068ADDC  40 80 00 10 */	bge lbl_8068ADEC
/* 8068ADE0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8068ADE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8068ADE8  48 00 00 70 */	b lbl_8068AE58
lbl_8068ADEC:
/* 8068ADEC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8068ADF0  80 81 00 08 */	lwz r4, 8(r1)
/* 8068ADF4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8068ADF8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8068ADFC  7C 03 00 00 */	cmpw r3, r0
/* 8068AE00  41 82 00 14 */	beq lbl_8068AE14
/* 8068AE04  40 80 00 40 */	bge lbl_8068AE44
/* 8068AE08  2C 03 00 00 */	cmpwi r3, 0
/* 8068AE0C  41 82 00 20 */	beq lbl_8068AE2C
/* 8068AE10  48 00 00 34 */	b lbl_8068AE44
lbl_8068AE14:
/* 8068AE14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068AE18  41 82 00 0C */	beq lbl_8068AE24
/* 8068AE1C  38 00 00 01 */	li r0, 1
/* 8068AE20  48 00 00 28 */	b lbl_8068AE48
lbl_8068AE24:
/* 8068AE24  38 00 00 02 */	li r0, 2
/* 8068AE28  48 00 00 20 */	b lbl_8068AE48
lbl_8068AE2C:
/* 8068AE2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068AE30  41 82 00 0C */	beq lbl_8068AE3C
/* 8068AE34  38 00 00 05 */	li r0, 5
/* 8068AE38  48 00 00 10 */	b lbl_8068AE48
lbl_8068AE3C:
/* 8068AE3C  38 00 00 03 */	li r0, 3
/* 8068AE40  48 00 00 08 */	b lbl_8068AE48
lbl_8068AE44:
/* 8068AE44  38 00 00 04 */	li r0, 4
lbl_8068AE48:
/* 8068AE48  2C 00 00 01 */	cmpwi r0, 1
/* 8068AE4C  40 82 00 0C */	bne lbl_8068AE58
/* 8068AE50  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8068AE54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8068AE58:
/* 8068AE58  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8068AE5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068AE60  40 80 00 3C */	bge lbl_8068AE9C
/* 8068AE64  7F E3 FB 78 */	mr r3, r31
/* 8068AE68  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8068AE6C  3C 80 80 69 */	lis r4, l_HIO@ha
/* 8068AE70  38 84 DB 2C */	addi r4, r4, l_HIO@l
/* 8068AE74  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8068AE78  EC 21 00 2A */	fadds f1, f1, f0
/* 8068AE7C  4B FF FA 91 */	bl pl_check__FP10e_bi_classf
/* 8068AE80  2C 03 00 00 */	cmpwi r3, 0
/* 8068AE84  40 82 00 18 */	bne lbl_8068AE9C
/* 8068AE88  38 00 00 01 */	li r0, 1
/* 8068AE8C  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 8068AE90  38 00 00 00 */	li r0, 0
/* 8068AE94  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 8068AE98  48 00 00 20 */	b lbl_8068AEB8
lbl_8068AE9C:
/* 8068AE9C  A8 1F 06 8C */	lha r0, 0x68c(r31)
/* 8068AEA0  2C 00 00 00 */	cmpwi r0, 0
/* 8068AEA4  40 82 00 14 */	bne lbl_8068AEB8
/* 8068AEA8  38 00 00 02 */	li r0, 2
/* 8068AEAC  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 8068AEB0  38 00 00 00 */	li r0, 0
/* 8068AEB4  B0 1F 06 70 */	sth r0, 0x670(r31)
lbl_8068AEB8:
/* 8068AEB8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8068AEBC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8068AEC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8068AEC4  7C 08 03 A6 */	mtlr r0
/* 8068AEC8  38 21 00 30 */	addi r1, r1, 0x30
/* 8068AECC  4E 80 00 20 */	blr 
