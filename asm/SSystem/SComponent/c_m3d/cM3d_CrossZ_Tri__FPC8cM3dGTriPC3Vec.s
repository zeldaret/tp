lbl_8026AD7C:
/* 8026AD7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026AD80  7C 08 02 A6 */	mflr r0
/* 8026AD84  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026AD88  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8026AD8C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8026AD90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026AD94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026AD98  7C 7E 1B 78 */	mr r30, r3
/* 8026AD9C  7C 9F 23 78 */	mr r31, r4
/* 8026ADA0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8026ADA4  FC 00 02 10 */	fabs f0, f0
/* 8026ADA8  FC 20 00 18 */	frsp f1, f0
/* 8026ADAC  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026ADB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026ADB4  40 80 00 0C */	bge lbl_8026ADC0
/* 8026ADB8  38 60 00 00 */	li r3, 0
/* 8026ADBC  48 00 01 44 */	b lbl_8026AF00
lbl_8026ADC0:
/* 8026ADC0  C0 02 B7 AC */	lfs f0, lit_3205(r2)
/* 8026ADC4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026ADC8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8026ADCC  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8026ADD0  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 8026ADD4  C0 9E 00 24 */	lfs f4, 0x24(r30)
/* 8026ADD8  C0 BE 00 2C */	lfs f5, 0x2c(r30)
/* 8026ADDC  C0 DE 00 30 */	lfs f6, 0x30(r30)
/* 8026ADE0  C0 FF 00 00 */	lfs f7, 0(r31)
/* 8026ADE4  C1 1F 00 04 */	lfs f8, 4(r31)
/* 8026ADE8  4B FF EF 7D */	bl cM3d_InclusionCheckPosIn3PosBox2d__Ffffffffff
/* 8026ADEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026ADF0  40 82 00 0C */	bne lbl_8026ADFC
/* 8026ADF4  38 60 00 00 */	li r3, 0
/* 8026ADF8  48 00 01 08 */	b lbl_8026AF00
lbl_8026ADFC:
/* 8026ADFC  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8026AE00  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8026AE04  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 8026AE08  C0 9E 00 24 */	lfs f4, 0x24(r30)
/* 8026AE0C  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026AE10  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026AE14  4B FF DA 81 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AE18  FF E0 08 90 */	fmr f31, f1
/* 8026AE1C  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026AE20  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026AE24  4C 40 13 82 */	cror 2, 0, 2
/* 8026AE28  40 82 00 64 */	bne lbl_8026AE8C
/* 8026AE2C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8026AE30  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8026AE34  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 8026AE38  C0 9E 00 30 */	lfs f4, 0x30(r30)
/* 8026AE3C  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026AE40  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026AE44  4B FF DA 51 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AE48  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026AE4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026AE50  4C 40 13 82 */	cror 2, 0, 2
/* 8026AE54  40 82 00 38 */	bne lbl_8026AE8C
/* 8026AE58  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8026AE5C  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8026AE60  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 8026AE64  C0 9E 00 18 */	lfs f4, 0x18(r30)
/* 8026AE68  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026AE6C  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026AE70  4B FF DA 25 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AE74  C0 02 B7 B0 */	lfs f0, lit_3229(r2)
/* 8026AE78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026AE7C  4C 40 13 82 */	cror 2, 0, 2
/* 8026AE80  40 82 00 0C */	bne lbl_8026AE8C
/* 8026AE84  38 60 00 01 */	li r3, 1
/* 8026AE88  48 00 00 78 */	b lbl_8026AF00
lbl_8026AE8C:
/* 8026AE8C  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026AE90  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026AE94  4C 41 13 82 */	cror 2, 1, 2
/* 8026AE98  40 82 00 64 */	bne lbl_8026AEFC
/* 8026AE9C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8026AEA0  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8026AEA4  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 8026AEA8  C0 9E 00 30 */	lfs f4, 0x30(r30)
/* 8026AEAC  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026AEB0  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026AEB4  4B FF D9 E1 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AEB8  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026AEBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026AEC0  4C 41 13 82 */	cror 2, 1, 2
/* 8026AEC4  40 82 00 38 */	bne lbl_8026AEFC
/* 8026AEC8  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8026AECC  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8026AED0  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 8026AED4  C0 9E 00 18 */	lfs f4, 0x18(r30)
/* 8026AED8  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8026AEDC  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8026AEE0  4B FF D9 B5 */	bl cM3d_VectorProduct2d__Fffffff
/* 8026AEE4  C0 02 B7 B4 */	lfs f0, lit_3230(r2)
/* 8026AEE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026AEEC  4C 41 13 82 */	cror 2, 1, 2
/* 8026AEF0  40 82 00 0C */	bne lbl_8026AEFC
/* 8026AEF4  38 60 00 01 */	li r3, 1
/* 8026AEF8  48 00 00 08 */	b lbl_8026AF00
lbl_8026AEFC:
/* 8026AEFC  38 60 00 00 */	li r3, 0
lbl_8026AF00:
/* 8026AF00  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8026AF04  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8026AF08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026AF0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026AF10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026AF14  7C 08 03 A6 */	mtlr r0
/* 8026AF18  38 21 00 30 */	addi r1, r1, 0x30
/* 8026AF1C  4E 80 00 20 */	blr 
