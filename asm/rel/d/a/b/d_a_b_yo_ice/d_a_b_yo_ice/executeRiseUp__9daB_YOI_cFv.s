lbl_8063ACCC:
/* 8063ACCC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8063ACD0  7C 08 02 A6 */	mflr r0
/* 8063ACD4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8063ACD8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8063ACDC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8063ACE0  39 61 00 70 */	addi r11, r1, 0x70
/* 8063ACE4  4B D2 74 F9 */	bl _savegpr_29
/* 8063ACE8  7C 7E 1B 78 */	mr r30, r3
/* 8063ACEC  3C 60 80 64 */	lis r3, lit_3776@ha /* 0x8063DC84@ha */
/* 8063ACF0  3B E3 DC 84 */	addi r31, r3, lit_3776@l /* 0x8063DC84@l */
/* 8063ACF4  38 61 00 24 */	addi r3, r1, 0x24
/* 8063ACF8  80 9E 06 68 */	lwz r4, 0x668(r30)
/* 8063ACFC  48 00 2F 59 */	bl getIceCenterPos__8daB_YO_cFv
/* 8063AD00  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8063AD04  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8063AD08  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8063AD0C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8063AD10  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8063AD14  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8063AD18  80 7E 06 68 */	lwz r3, 0x668(r30)
/* 8063AD1C  C3 E3 0F 4C */	lfs f31, 0xf4c(r3)
/* 8063AD20  AB A3 0F 5C */	lha r29, 0xf5c(r3)
/* 8063AD24  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 8063AD28  28 00 00 09 */	cmplwi r0, 9
/* 8063AD2C  41 81 04 EC */	bgt lbl_8063B218
/* 8063AD30  3C 60 80 64 */	lis r3, lit_4180@ha /* 0x8063DEDC@ha */
/* 8063AD34  38 63 DE DC */	addi r3, r3, lit_4180@l /* 0x8063DEDC@l */
/* 8063AD38  54 00 10 3A */	slwi r0, r0, 2
/* 8063AD3C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8063AD40  7C 09 03 A6 */	mtctr r0
/* 8063AD44  4E 80 04 20 */	bctr 
lbl_8063AD48:
/* 8063AD48  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063AD4C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8063AD50  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8063AD54  38 00 00 96 */	li r0, 0x96
/* 8063AD58  90 1E 06 A4 */	stw r0, 0x6a4(r30)
/* 8063AD5C  38 00 00 05 */	li r0, 5
/* 8063AD60  90 1E 06 98 */	stw r0, 0x698(r30)
lbl_8063AD64:
/* 8063AD64  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702FA@ha */
/* 8063AD68  38 03 02 FA */	addi r0, r3, 0x02FA /* 0x000702FA@l */
/* 8063AD6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063AD70  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063AD74  38 81 00 14 */	addi r4, r1, 0x14
/* 8063AD78  38 A0 00 00 */	li r5, 0
/* 8063AD7C  38 C0 FF FF */	li r6, -1
/* 8063AD80  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063AD84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063AD88  7D 89 03 A6 */	mtctr r12
/* 8063AD8C  4E 80 04 21 */	bctrl 
/* 8063AD90  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8063AD94  38 80 00 00 */	li r4, 0
/* 8063AD98  38 A0 00 40 */	li r5, 0x40
/* 8063AD9C  4B C3 5D F5 */	bl cLib_chaseAngleS__FPsss
/* 8063ADA0  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 8063ADA4  38 80 00 00 */	li r4, 0
/* 8063ADA8  38 A0 00 40 */	li r5, 0x40
/* 8063ADAC  4B C3 5D E5 */	bl cLib_chaseAngleS__FPsss
/* 8063ADB0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8063ADB4  4B C2 CB D9 */	bl cM_rndFX__Ff
/* 8063ADB8  FC 00 08 1E */	fctiwz f0, f1
/* 8063ADBC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8063ADC0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8063ADC4  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 8063ADC8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8063ADCC  4B C2 CB C1 */	bl cM_rndFX__Ff
/* 8063ADD0  FC 00 08 1E */	fctiwz f0, f1
/* 8063ADD4  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8063ADD8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8063ADDC  B0 1E 06 7C */	sth r0, 0x67c(r30)
/* 8063ADE0  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 8063ADE4  2C 00 00 05 */	cmpwi r0, 5
/* 8063ADE8  40 82 00 18 */	bne lbl_8063AE00
/* 8063ADEC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8063ADF0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8063ADF4  EC 01 00 2A */	fadds f0, f1, f0
/* 8063ADF8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8063ADFC  48 00 00 14 */	b lbl_8063AE10
lbl_8063AE00:
/* 8063AE00  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8063AE04  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8063AE08  EC 01 00 2A */	fadds f0, f1, f0
/* 8063AE0C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_8063AE10:
/* 8063AE10  80 1E 06 A4 */	lwz r0, 0x6a4(r30)
/* 8063AE14  2C 00 00 00 */	cmpwi r0, 0
/* 8063AE18  40 82 04 00 */	bne lbl_8063B218
/* 8063AE1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702FB@ha */
/* 8063AE20  38 03 02 FB */	addi r0, r3, 0x02FB /* 0x000702FB@l */
/* 8063AE24  90 01 00 10 */	stw r0, 0x10(r1)
/* 8063AE28  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063AE2C  38 81 00 10 */	addi r4, r1, 0x10
/* 8063AE30  38 A0 00 00 */	li r5, 0
/* 8063AE34  38 C0 FF FF */	li r6, -1
/* 8063AE38  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063AE3C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8063AE40  7D 89 03 A6 */	mtctr r12
/* 8063AE44  4E 80 04 21 */	bctrl 
/* 8063AE48  38 00 00 07 */	li r0, 7
/* 8063AE4C  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8063AE50  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8063AE54  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8063AE58  38 00 00 00 */	li r0, 0
/* 8063AE5C  B0 1E 06 7C */	sth r0, 0x67c(r30)
/* 8063AE60  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 8063AE64  4B C2 CA 09 */	bl cM_rnd__Fv
/* 8063AE68  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8063AE6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063AE70  40 80 00 28 */	bge lbl_8063AE98
/* 8063AE74  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8063AE78  4B C2 CA DD */	bl cM_rndF__Ff
/* 8063AE7C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8063AE80  EC 00 08 2A */	fadds f0, f0, f1
/* 8063AE84  FC 00 00 1E */	fctiwz f0, f0
/* 8063AE88  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8063AE8C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8063AE90  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 8063AE94  48 00 03 84 */	b lbl_8063B218
lbl_8063AE98:
/* 8063AE98  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8063AE9C  4B C2 CA B9 */	bl cM_rndF__Ff
/* 8063AEA0  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8063AEA4  EC 00 08 2A */	fadds f0, f0, f1
/* 8063AEA8  FC 00 00 1E */	fctiwz f0, f0
/* 8063AEAC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8063AEB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8063AEB4  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 8063AEB8  48 00 03 60 */	b lbl_8063B218
lbl_8063AEBC:
/* 8063AEBC  38 00 00 07 */	li r0, 7
/* 8063AEC0  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8063AEC4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8063AEC8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8063AECC  38 00 00 00 */	li r0, 0
/* 8063AED0  B0 1E 06 7C */	sth r0, 0x67c(r30)
/* 8063AED4  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 8063AED8  4B C2 C9 95 */	bl cM_rnd__Fv
/* 8063AEDC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8063AEE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063AEE4  40 80 00 28 */	bge lbl_8063AF0C
/* 8063AEE8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8063AEEC  4B C2 CA 69 */	bl cM_rndF__Ff
/* 8063AEF0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8063AEF4  EC 00 08 2A */	fadds f0, f0, f1
/* 8063AEF8  FC 00 00 1E */	fctiwz f0, f0
/* 8063AEFC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8063AF00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8063AF04  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 8063AF08  48 00 00 24 */	b lbl_8063AF2C
lbl_8063AF0C:
/* 8063AF0C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8063AF10  4B C2 CA 45 */	bl cM_rndF__Ff
/* 8063AF14  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8063AF18  EC 00 08 2A */	fadds f0, f0, f1
/* 8063AF1C  FC 00 00 1E */	fctiwz f0, f0
/* 8063AF20  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8063AF24  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8063AF28  B0 1E 06 9E */	sth r0, 0x69e(r30)
lbl_8063AF2C:
/* 8063AF2C  38 7E 06 9E */	addi r3, r30, 0x69e
/* 8063AF30  38 80 00 00 */	li r4, 0
/* 8063AF34  38 A0 00 40 */	li r5, 0x40
/* 8063AF38  4B C3 5C 59 */	bl cLib_chaseAngleS__FPsss
/* 8063AF3C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8063AF40  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 8063AF44  7C 03 02 14 */	add r0, r3, r0
/* 8063AF48  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8063AF4C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8063AF50  38 80 00 00 */	li r4, 0
/* 8063AF54  38 A0 00 40 */	li r5, 0x40
/* 8063AF58  4B C3 5C 39 */	bl cLib_chaseAngleS__FPsss
/* 8063AF5C  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 8063AF60  38 80 00 00 */	li r4, 0
/* 8063AF64  38 A0 00 40 */	li r5, 0x40
/* 8063AF68  4B C3 5C 29 */	bl cLib_chaseAngleS__FPsss
/* 8063AF6C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063AF70  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8063AF74  FC 40 08 90 */	fmr f2, f1
/* 8063AF78  4B C3 57 C9 */	bl cLib_chaseF__FPfff
/* 8063AF7C  2C 03 00 00 */	cmpwi r3, 0
/* 8063AF80  41 82 02 98 */	beq lbl_8063B218
/* 8063AF84  38 00 00 08 */	li r0, 8
/* 8063AF88  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8063AF8C  48 00 02 8C */	b lbl_8063B218
lbl_8063AF90:
/* 8063AF90  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F7@ha */
/* 8063AF94  38 03 02 F7 */	addi r0, r3, 0x02F7 /* 0x000702F7@l */
/* 8063AF98  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063AF9C  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063AFA0  38 81 00 0C */	addi r4, r1, 0xc
/* 8063AFA4  38 A0 00 00 */	li r5, 0
/* 8063AFA8  38 C0 FF FF */	li r6, -1
/* 8063AFAC  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063AFB0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063AFB4  7D 89 03 A6 */	mtctr r12
/* 8063AFB8  4E 80 04 21 */	bctrl 
/* 8063AFBC  38 7E 06 9E */	addi r3, r30, 0x69e
/* 8063AFC0  38 80 00 00 */	li r4, 0
/* 8063AFC4  38 A0 00 40 */	li r5, 0x40
/* 8063AFC8  4B C3 5B C9 */	bl cLib_chaseAngleS__FPsss
/* 8063AFCC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8063AFD0  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 8063AFD4  7C 03 02 14 */	add r0, r3, r0
/* 8063AFD8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8063AFDC  38 7E 06 80 */	addi r3, r30, 0x680
/* 8063AFE0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8063AFE4  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8063AFE8  4B C3 57 59 */	bl cLib_chaseF__FPfff
/* 8063AFEC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8063AFF0  38 80 00 00 */	li r4, 0
/* 8063AFF4  38 A0 00 40 */	li r5, 0x40
/* 8063AFF8  4B C3 5B 99 */	bl cLib_chaseAngleS__FPsss
/* 8063AFFC  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 8063B000  38 80 00 00 */	li r4, 0
/* 8063B004  38 A0 00 40 */	li r5, 0x40
/* 8063B008  4B C3 5B 89 */	bl cLib_chaseAngleS__FPsss
/* 8063B00C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8063B010  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8063B014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063B018  40 80 00 08 */	bge lbl_8063B020
/* 8063B01C  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8063B020:
/* 8063B020  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8063B024  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8063B028  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063B02C  40 81 00 08 */	ble lbl_8063B034
/* 8063B030  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8063B034:
/* 8063B034  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8063B038  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8063B03C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8063B040  EC 01 00 28 */	fsubs f0, f1, f0
/* 8063B044  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8063B048  40 80 00 18 */	bge lbl_8063B060
/* 8063B04C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063B050  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8063B054  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8063B058  4B C3 56 E9 */	bl cLib_chaseF__FPfff
/* 8063B05C  48 00 00 14 */	b lbl_8063B070
lbl_8063B060:
/* 8063B060  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063B064  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8063B068  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8063B06C  4B C3 56 D5 */	bl cLib_chaseF__FPfff
lbl_8063B070:
/* 8063B070  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8063B074  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8063B078  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 8063B07C  1C 00 19 99 */	mulli r0, r0, 0x1999
/* 8063B080  7C 1D 02 14 */	add r0, r29, r0
/* 8063B084  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8063B088  7C 64 02 14 */	add r3, r4, r0
/* 8063B08C  C0 63 00 04 */	lfs f3, 4(r3)
/* 8063B090  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8063B094  7C 04 04 2E */	lfsx f0, r4, r0
/* 8063B098  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8063B09C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8063B0A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8063B0A4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8063B0A8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8063B0AC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8063B0B0  EC 1F 00 F2 */	fmuls f0, f31, f3
/* 8063B0B4  EC 01 00 2A */	fadds f0, f1, f0
/* 8063B0B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8063B0BC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8063B0C0  38 81 00 30 */	addi r4, r1, 0x30
/* 8063B0C4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8063B0C8  4B C3 56 E5 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8063B0CC  48 00 01 4C */	b lbl_8063B218
lbl_8063B0D0:
/* 8063B0D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F7@ha */
/* 8063B0D4  38 03 02 F7 */	addi r0, r3, 0x02F7 /* 0x000702F7@l */
/* 8063B0D8  90 01 00 08 */	stw r0, 8(r1)
/* 8063B0DC  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063B0E0  38 81 00 08 */	addi r4, r1, 8
/* 8063B0E4  38 A0 00 00 */	li r5, 0
/* 8063B0E8  38 C0 FF FF */	li r6, -1
/* 8063B0EC  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063B0F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063B0F4  7D 89 03 A6 */	mtctr r12
/* 8063B0F8  4E 80 04 21 */	bctrl 
/* 8063B0FC  38 7E 06 80 */	addi r3, r30, 0x680
/* 8063B100  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8063B104  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8063B108  4B C3 56 39 */	bl cLib_chaseF__FPfff
/* 8063B10C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8063B110  38 80 00 00 */	li r4, 0
/* 8063B114  38 A0 00 40 */	li r5, 0x40
/* 8063B118  4B C3 5A 79 */	bl cLib_chaseAngleS__FPsss
/* 8063B11C  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 8063B120  38 80 00 00 */	li r4, 0
/* 8063B124  38 A0 00 40 */	li r5, 0x40
/* 8063B128  4B C3 5A 69 */	bl cLib_chaseAngleS__FPsss
/* 8063B12C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8063B130  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8063B134  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063B138  40 80 00 08 */	bge lbl_8063B140
/* 8063B13C  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8063B140:
/* 8063B140  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8063B144  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8063B148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063B14C  40 81 00 08 */	ble lbl_8063B154
/* 8063B150  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8063B154:
/* 8063B154  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8063B158  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8063B15C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8063B160  EC 01 00 28 */	fsubs f0, f1, f0
/* 8063B164  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8063B168  40 80 00 18 */	bge lbl_8063B180
/* 8063B16C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063B170  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8063B174  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8063B178  4B C3 55 C9 */	bl cLib_chaseF__FPfff
/* 8063B17C  48 00 00 14 */	b lbl_8063B190
lbl_8063B180:
/* 8063B180  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063B184  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8063B188  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8063B18C  4B C3 55 B5 */	bl cLib_chaseF__FPfff
lbl_8063B190:
/* 8063B190  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 8063B194  80 1E 06 90 */	lwz r0, 0x690(r30)
/* 8063B198  54 00 10 3A */	slwi r0, r0, 2
/* 8063B19C  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8063B1A0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8063B1A4  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 8063B1A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8063B1AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8063B1B0  3C 00 43 30 */	lis r0, 0x4330
/* 8063B1B4  90 01 00 50 */	stw r0, 0x50(r1)
/* 8063B1B8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8063B1BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8063B1C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8063B1C4  FC 00 00 1E */	fctiwz f0, f0
/* 8063B1C8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8063B1CC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8063B1D0  90 1E 06 A4 */	stw r0, 0x6a4(r30)
/* 8063B1D4  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8063B1D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8063B1DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8063B1E0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8063B1E4  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 8063B1E8  EF E1 00 2A */	fadds f31, f1, f0
/* 8063B1EC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8063B1F0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8063B1F4  40 81 00 08 */	ble lbl_8063B1FC
/* 8063B1F8  FF E0 00 90 */	fmr f31, f0
lbl_8063B1FC:
/* 8063B1FC  38 61 00 18 */	addi r3, r1, 0x18
/* 8063B200  7F C4 F3 78 */	mr r4, r30
/* 8063B204  4B FF F9 BD */	bl getSingleFallPos__9daB_YOI_cFv
/* 8063B208  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8063B20C  38 81 00 18 */	addi r4, r1, 0x18
/* 8063B210  FC 20 F8 90 */	fmr f1, f31
/* 8063B214  4B C3 57 7D */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
lbl_8063B218:
/* 8063B218  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8063B21C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8063B220  39 61 00 70 */	addi r11, r1, 0x70
/* 8063B224  4B D2 70 05 */	bl _restgpr_29
/* 8063B228  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8063B22C  7C 08 03 A6 */	mtlr r0
/* 8063B230  38 21 00 80 */	addi r1, r1, 0x80
/* 8063B234  4E 80 00 20 */	blr 
