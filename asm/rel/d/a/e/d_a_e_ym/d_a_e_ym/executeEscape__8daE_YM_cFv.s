lbl_8080ACB4:
/* 8080ACB4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8080ACB8  7C 08 02 A6 */	mflr r0
/* 8080ACBC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8080ACC0  39 61 00 70 */	addi r11, r1, 0x70
/* 8080ACC4  4B B5 75 18 */	b _savegpr_29
/* 8080ACC8  7C 7E 1B 78 */	mr r30, r3
/* 8080ACCC  3C 60 80 81 */	lis r3, lit_3925@ha
/* 8080ACD0  3B E3 59 94 */	addi r31, r3, lit_3925@l
/* 8080ACD4  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8080ACD8  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8080ACDC  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 8080ACE0  4B A6 5A 60 */	b cLib_chaseF__FPfff
/* 8080ACE4  C0 5E 06 DC */	lfs f2, 0x6dc(r30)
/* 8080ACE8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080ACEC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8080ACF0  40 80 00 20 */	bge lbl_8080AD10
/* 8080ACF4  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8080ACF8  EC 02 00 2A */	fadds f0, f2, f0
/* 8080ACFC  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 8080AD00  C0 1E 06 DC */	lfs f0, 0x6dc(r30)
/* 8080AD04  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8080AD08  40 81 00 08 */	ble lbl_8080AD10
/* 8080AD0C  D0 3E 06 DC */	stfs f1, 0x6dc(r30)
lbl_8080AD10:
/* 8080AD10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8080AD14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8080AD18  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8080AD1C  28 00 00 00 */	cmplwi r0, 0
/* 8080AD20  40 82 00 10 */	bne lbl_8080AD30
/* 8080AD24  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8080AD28  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8080AD2C  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_8080AD30:
/* 8080AD30  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 8080AD34  2C 00 00 02 */	cmpwi r0, 2
/* 8080AD38  41 82 02 B4 */	beq lbl_8080AFEC
/* 8080AD3C  40 80 00 14 */	bge lbl_8080AD50
/* 8080AD40  2C 00 00 00 */	cmpwi r0, 0
/* 8080AD44  41 82 00 1C */	beq lbl_8080AD60
/* 8080AD48  40 80 01 E4 */	bge lbl_8080AF2C
/* 8080AD4C  48 00 06 C4 */	b lbl_8080B410
lbl_8080AD50:
/* 8080AD50  2C 00 00 04 */	cmpwi r0, 4
/* 8080AD54  41 82 04 5C */	beq lbl_8080B1B0
/* 8080AD58  40 80 06 B8 */	bge lbl_8080B410
/* 8080AD5C  48 00 03 3C */	b lbl_8080B098
lbl_8080AD60:
/* 8080AD60  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 8080AD64  28 00 00 02 */	cmplwi r0, 2
/* 8080AD68  40 82 00 0C */	bne lbl_8080AD74
/* 8080AD6C  7F C3 F3 78 */	mr r3, r30
/* 8080AD70  4B FF F0 15 */	bl setAppear__8daE_YM_cFv
lbl_8080AD74:
/* 8080AD74  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 8080AD78  2C 00 00 04 */	cmpwi r0, 4
/* 8080AD7C  41 82 01 7C */	beq lbl_8080AEF8
/* 8080AD80  A8 7E 06 EA */	lha r3, 0x6ea(r30)
/* 8080AD84  3C 63 00 01 */	addis r3, r3, 1
/* 8080AD88  38 03 80 00 */	addi r0, r3, -32768
/* 8080AD8C  7C 1D 07 34 */	extsh r29, r0
/* 8080AD90  88 7E 06 AA */	lbz r3, 0x6aa(r30)
/* 8080AD94  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8080AD98  41 82 00 0C */	beq lbl_8080ADA4
/* 8080AD9C  B3 BE 04 E6 */	sth r29, 0x4e6(r30)
/* 8080ADA0  48 00 00 94 */	b lbl_8080AE34
lbl_8080ADA4:
/* 8080ADA4  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8080ADA8  41 82 00 28 */	beq lbl_8080ADD0
/* 8080ADAC  88 1E 06 A6 */	lbz r0, 0x6a6(r30)
/* 8080ADB0  28 00 00 00 */	cmplwi r0, 0
/* 8080ADB4  40 82 00 10 */	bne lbl_8080ADC4
/* 8080ADB8  38 1D 28 00 */	addi r0, r29, 0x2800
/* 8080ADBC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8080ADC0  48 00 00 74 */	b lbl_8080AE34
lbl_8080ADC4:
/* 8080ADC4  38 1D 18 00 */	addi r0, r29, 0x1800
/* 8080ADC8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8080ADCC  48 00 00 68 */	b lbl_8080AE34
lbl_8080ADD0:
/* 8080ADD0  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8080ADD4  41 82 00 28 */	beq lbl_8080ADFC
/* 8080ADD8  88 1E 06 A6 */	lbz r0, 0x6a6(r30)
/* 8080ADDC  28 00 00 00 */	cmplwi r0, 0
/* 8080ADE0  40 82 00 10 */	bne lbl_8080ADF0
/* 8080ADE4  38 1D D8 00 */	addi r0, r29, -10240
/* 8080ADE8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8080ADEC  48 00 00 48 */	b lbl_8080AE34
lbl_8080ADF0:
/* 8080ADF0  38 1D E8 00 */	addi r0, r29, -6144
/* 8080ADF4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8080ADF8  48 00 00 3C */	b lbl_8080AE34
lbl_8080ADFC:
/* 8080ADFC  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8080AE00  4B A5 CB 8C */	b cM_rndFX__Ff
/* 8080AE04  C8 5F 00 A8 */	lfd f2, 0xa8(r31)
/* 8080AE08  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 8080AE0C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8080AE10  3C 00 43 30 */	lis r0, 0x4330
/* 8080AE14  90 01 00 50 */	stw r0, 0x50(r1)
/* 8080AE18  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8080AE1C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8080AE20  EC 00 08 2A */	fadds f0, f0, f1
/* 8080AE24  FC 00 00 1E */	fctiwz f0, f0
/* 8080AE28  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8080AE2C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8080AE30  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_8080AE34:
/* 8080AE34  88 1E 06 A6 */	lbz r0, 0x6a6(r30)
/* 8080AE38  28 00 00 00 */	cmplwi r0, 0
/* 8080AE3C  41 82 00 0C */	beq lbl_8080AE48
/* 8080AE40  28 00 00 04 */	cmplwi r0, 4
/* 8080AE44  40 82 00 38 */	bne lbl_8080AE7C
lbl_8080AE48:
/* 8080AE48  38 00 00 28 */	li r0, 0x28
/* 8080AE4C  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 8080AE50  38 00 00 03 */	li r0, 3
/* 8080AE54  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080AE58  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080AE5C  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 8080AE60  4B A5 CA F4 */	b cM_rndF__Ff
/* 8080AE64  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8080AE68  EC 00 08 2A */	fadds f0, f0, f1
/* 8080AE6C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8080AE70  38 00 00 00 */	li r0, 0
/* 8080AE74  98 1E 06 A5 */	stb r0, 0x6a5(r30)
/* 8080AE78  48 00 00 30 */	b lbl_8080AEA8
lbl_8080AE7C:
/* 8080AE7C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8080AE80  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080AE84  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080AE88  4B A5 CA CC */	b cM_rndF__Ff
/* 8080AE8C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8080AE90  EC 00 08 2A */	fadds f0, f0, f1
/* 8080AE94  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8080AE98  38 00 00 28 */	li r0, 0x28
/* 8080AE9C  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 8080AEA0  38 00 00 01 */	li r0, 1
/* 8080AEA4  90 1E 06 98 */	stw r0, 0x698(r30)
lbl_8080AEA8:
/* 8080AEA8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080AEAC  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 8080AEB0  7F C3 F3 78 */	mr r3, r30
/* 8080AEB4  38 80 00 0B */	li r4, 0xb
/* 8080AEB8  38 A0 00 00 */	li r5, 0
/* 8080AEBC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080AEC0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080AEC4  4B FF D3 1D */	bl bckSet__8daE_YM_cFiUcff
/* 8080AEC8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F0@ha */
/* 8080AECC  38 03 00 F0 */	addi r0, r3, 0x00F0 /* 0x000700F0@l */
/* 8080AED0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8080AED4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080AED8  38 81 00 28 */	addi r4, r1, 0x28
/* 8080AEDC  38 A0 00 00 */	li r5, 0
/* 8080AEE0  38 C0 FF FF */	li r6, -1
/* 8080AEE4  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080AEE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080AEEC  7D 89 03 A6 */	mtctr r12
/* 8080AEF0  4E 80 04 21 */	bctrl 
/* 8080AEF4  48 00 00 14 */	b lbl_8080AF08
lbl_8080AEF8:
/* 8080AEF8  38 00 00 0A */	li r0, 0xa
/* 8080AEFC  B0 1E 06 F2 */	sth r0, 0x6f2(r30)
/* 8080AF00  38 00 00 02 */	li r0, 2
/* 8080AF04  90 1E 06 98 */	stw r0, 0x698(r30)
lbl_8080AF08:
/* 8080AF08  38 00 00 01 */	li r0, 1
/* 8080AF0C  98 1E 06 A9 */	stb r0, 0x6a9(r30)
/* 8080AF10  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8080AF14  B0 1E 06 E4 */	sth r0, 0x6e4(r30)
/* 8080AF18  38 00 05 DC */	li r0, 0x5dc
/* 8080AF1C  B0 1E 06 E6 */	sth r0, 0x6e6(r30)
/* 8080AF20  38 00 00 00 */	li r0, 0
/* 8080AF24  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
/* 8080AF28  48 00 04 E8 */	b lbl_8080B410
lbl_8080AF2C:
/* 8080AF2C  7F C3 F3 78 */	mr r3, r30
/* 8080AF30  4B FF D9 55 */	bl setElecEffect1__8daE_YM_cFv
/* 8080AF34  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070195@ha */
/* 8080AF38  38 03 01 95 */	addi r0, r3, 0x0195 /* 0x00070195@l */
/* 8080AF3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8080AF40  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080AF44  38 81 00 24 */	addi r4, r1, 0x24
/* 8080AF48  38 A0 00 00 */	li r5, 0
/* 8080AF4C  38 C0 FF FF */	li r6, -1
/* 8080AF50  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080AF54  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080AF58  7D 89 03 A6 */	mtctr r12
/* 8080AF5C  4E 80 04 21 */	bctrl 
/* 8080AF60  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8080AF64  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080AF68  41 82 04 A8 */	beq lbl_8080B410
/* 8080AF6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007011E@ha */
/* 8080AF70  38 03 01 1E */	addi r0, r3, 0x011E /* 0x0007011E@l */
/* 8080AF74  90 01 00 20 */	stw r0, 0x20(r1)
/* 8080AF78  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080AF7C  38 81 00 20 */	addi r4, r1, 0x20
/* 8080AF80  38 A0 00 00 */	li r5, 0
/* 8080AF84  38 C0 FF FF */	li r6, -1
/* 8080AF88  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080AF8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080AF90  7D 89 03 A6 */	mtctr r12
/* 8080AF94  4E 80 04 21 */	bctrl 
/* 8080AF98  7F C3 F3 78 */	mr r3, r30
/* 8080AF9C  38 80 00 0C */	li r4, 0xc
/* 8080AFA0  38 A0 00 00 */	li r5, 0
/* 8080AFA4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080AFA8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080AFAC  4B FF D2 35 */	bl bckSet__8daE_YM_cFiUcff
/* 8080AFB0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080AFB4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080AFB8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8080AFBC  38 00 00 02 */	li r0, 2
/* 8080AFC0  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080AFC4  38 00 00 0A */	li r0, 0xa
/* 8080AFC8  B0 1E 06 F2 */	sth r0, 0x6f2(r30)
/* 8080AFCC  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 8080AFD0  2C 00 00 02 */	cmpwi r0, 2
/* 8080AFD4  41 80 00 0C */	blt lbl_8080AFE0
/* 8080AFD8  38 00 00 01 */	li r0, 1
/* 8080AFDC  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
lbl_8080AFE0:
/* 8080AFE0  38 00 00 5A */	li r0, 0x5a
/* 8080AFE4  B0 1E 07 0E */	sth r0, 0x70e(r30)
/* 8080AFE8  48 00 04 28 */	b lbl_8080B410
lbl_8080AFEC:
/* 8080AFEC  A8 1E 07 0E */	lha r0, 0x70e(r30)
/* 8080AFF0  2C 00 00 00 */	cmpwi r0, 0
/* 8080AFF4  41 82 00 38 */	beq lbl_8080B02C
/* 8080AFF8  7F C3 F3 78 */	mr r3, r30
/* 8080AFFC  4B FF D8 89 */	bl setElecEffect1__8daE_YM_cFv
/* 8080B000  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070195@ha */
/* 8080B004  38 03 01 95 */	addi r0, r3, 0x0195 /* 0x00070195@l */
/* 8080B008  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8080B00C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080B010  38 81 00 1C */	addi r4, r1, 0x1c
/* 8080B014  38 A0 00 00 */	li r5, 0
/* 8080B018  38 C0 FF FF */	li r6, -1
/* 8080B01C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080B020  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080B024  7D 89 03 A6 */	mtctr r12
/* 8080B028  4E 80 04 21 */	bctrl 
lbl_8080B02C:
/* 8080B02C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700EA@ha */
/* 8080B030  38 03 00 EA */	addi r0, r3, 0x00EA /* 0x000700EA@l */
/* 8080B034  90 01 00 18 */	stw r0, 0x18(r1)
/* 8080B038  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080B03C  38 81 00 18 */	addi r4, r1, 0x18
/* 8080B040  38 A0 00 00 */	li r5, 0
/* 8080B044  38 C0 FF FF */	li r6, -1
/* 8080B048  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080B04C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080B050  7D 89 03 A6 */	mtctr r12
/* 8080B054  4E 80 04 21 */	bctrl 
/* 8080B058  A8 1E 06 F2 */	lha r0, 0x6f2(r30)
/* 8080B05C  2C 00 00 00 */	cmpwi r0, 0
/* 8080B060  40 82 03 B0 */	bne lbl_8080B410
/* 8080B064  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8080B068  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080B06C  38 00 00 04 */	li r0, 4
/* 8080B070  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080B074  38 00 05 DC */	li r0, 0x5dc
/* 8080B078  B0 1E 06 E6 */	sth r0, 0x6e6(r30)
/* 8080B07C  7F C3 F3 78 */	mr r3, r30
/* 8080B080  38 80 00 10 */	li r4, 0x10
/* 8080B084  38 A0 00 02 */	li r5, 2
/* 8080B088  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080B08C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080B090  4B FF D1 51 */	bl bckSet__8daE_YM_cFiUcff
/* 8080B094  48 00 03 7C */	b lbl_8080B410
lbl_8080B098:
/* 8080B098  7F C3 F3 78 */	mr r3, r30
/* 8080B09C  4B FF D7 E9 */	bl setElecEffect1__8daE_YM_cFv
/* 8080B0A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070195@ha */
/* 8080B0A4  38 03 01 95 */	addi r0, r3, 0x0195 /* 0x00070195@l */
/* 8080B0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080B0AC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080B0B0  38 81 00 14 */	addi r4, r1, 0x14
/* 8080B0B4  38 A0 00 00 */	li r5, 0
/* 8080B0B8  38 C0 FF FF */	li r6, -1
/* 8080B0BC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080B0C0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080B0C4  7D 89 03 A6 */	mtctr r12
/* 8080B0C8  4E 80 04 21 */	bctrl 
/* 8080B0CC  88 1E 06 A5 */	lbz r0, 0x6a5(r30)
/* 8080B0D0  28 00 00 00 */	cmplwi r0, 0
/* 8080B0D4  40 82 00 88 */	bne lbl_8080B15C
/* 8080B0D8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8080B0DC  A8 9E 06 E4 */	lha r4, 0x6e4(r30)
/* 8080B0E0  A8 1E 06 E8 */	lha r0, 0x6e8(r30)
/* 8080B0E4  7C 04 02 14 */	add r0, r4, r0
/* 8080B0E8  7C 04 07 34 */	extsh r4, r0
/* 8080B0EC  38 A0 00 08 */	li r5, 8
/* 8080B0F0  38 C0 10 00 */	li r6, 0x1000
/* 8080B0F4  38 E0 01 00 */	li r7, 0x100
/* 8080B0F8  4B A6 54 48 */	b cLib_addCalcAngleS__FPsssss
/* 8080B0FC  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8080B100  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080B104  41 82 03 0C */	beq lbl_8080B410
/* 8080B108  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007011E@ha */
/* 8080B10C  38 03 01 1E */	addi r0, r3, 0x011E /* 0x0007011E@l */
/* 8080B110  90 01 00 10 */	stw r0, 0x10(r1)
/* 8080B114  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080B118  38 81 00 10 */	addi r4, r1, 0x10
/* 8080B11C  38 A0 00 00 */	li r5, 0
/* 8080B120  38 C0 FF FF */	li r6, -1
/* 8080B124  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080B128  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080B12C  7D 89 03 A6 */	mtctr r12
/* 8080B130  4E 80 04 21 */	bctrl 
/* 8080B134  38 00 00 01 */	li r0, 1
/* 8080B138  98 1E 06 A5 */	stb r0, 0x6a5(r30)
/* 8080B13C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080B140  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 8080B144  7F C3 F3 78 */	mr r3, r30
/* 8080B148  38 80 00 0C */	li r4, 0xc
/* 8080B14C  38 A0 00 00 */	li r5, 0
/* 8080B150  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080B154  4B FF D0 8D */	bl bckSet__8daE_YM_cFiUcff
/* 8080B158  48 00 02 B8 */	b lbl_8080B410
lbl_8080B15C:
/* 8080B15C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8080B160  38 80 00 01 */	li r4, 1
/* 8080B164  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080B168  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080B16C  40 82 00 18 */	bne lbl_8080B184
/* 8080B170  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080B174  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080B178  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080B17C  41 82 00 08 */	beq lbl_8080B184
/* 8080B180  38 80 00 00 */	li r4, 0
lbl_8080B184:
/* 8080B184  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080B188  41 82 02 88 */	beq lbl_8080B410
/* 8080B18C  38 00 00 04 */	li r0, 4
/* 8080B190  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080B194  7F C3 F3 78 */	mr r3, r30
/* 8080B198  38 80 00 10 */	li r4, 0x10
/* 8080B19C  38 A0 00 02 */	li r5, 2
/* 8080B1A0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080B1A4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080B1A8  4B FF D0 39 */	bl bckSet__8daE_YM_cFiUcff
/* 8080B1AC  48 00 02 64 */	b lbl_8080B410
lbl_8080B1B0:
/* 8080B1B0  A8 1E 07 0E */	lha r0, 0x70e(r30)
/* 8080B1B4  2C 00 00 00 */	cmpwi r0, 0
/* 8080B1B8  41 82 00 60 */	beq lbl_8080B218
/* 8080B1BC  7F C3 F3 78 */	mr r3, r30
/* 8080B1C0  4B FF D8 1D */	bl setElecEffect2__8daE_YM_cFv
/* 8080B1C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070196@ha */
/* 8080B1C8  38 03 01 96 */	addi r0, r3, 0x0196 /* 0x00070196@l */
/* 8080B1CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8080B1D0  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8080B1D4  38 81 00 0C */	addi r4, r1, 0xc
/* 8080B1D8  38 A0 00 00 */	li r5, 0
/* 8080B1DC  38 C0 FF FF */	li r6, -1
/* 8080B1E0  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8080B1E4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080B1E8  7D 89 03 A6 */	mtctr r12
/* 8080B1EC  4E 80 04 21 */	bctrl 
/* 8080B1F0  3C 60 80 81 */	lis r3, l_HIO@ha
/* 8080B1F4  38 63 5D 38 */	addi r3, r3, l_HIO@l
/* 8080B1F8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8080B1FC  FC 00 00 1E */	fctiwz f0, f0
/* 8080B200  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8080B204  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8080B208  B0 1E 07 00 */	sth r0, 0x700(r30)
/* 8080B20C  80 1E 09 74 */	lwz r0, 0x974(r30)
/* 8080B210  60 00 00 01 */	ori r0, r0, 1
/* 8080B214  90 1E 09 74 */	stw r0, 0x974(r30)
lbl_8080B218:
/* 8080B218  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8080B21C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8080B220  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080B224  4B A6 55 1C */	b cLib_chaseF__FPfff
/* 8080B228  7F C3 F3 78 */	mr r3, r30
/* 8080B22C  38 80 00 00 */	li r4, 0
/* 8080B230  4B FF EB 79 */	bl setMoveSound__8daE_YM_cFi
/* 8080B234  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8080B238  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8080B23C  41 82 00 10 */	beq lbl_8080B24C
/* 8080B240  A8 7E 06 E4 */	lha r3, 0x6e4(r30)
/* 8080B244  38 03 08 00 */	addi r0, r3, 0x800
/* 8080B248  B0 1E 06 E4 */	sth r0, 0x6e4(r30)
lbl_8080B24C:
/* 8080B24C  A8 1E 06 E8 */	lha r0, 0x6e8(r30)
/* 8080B250  2C 00 00 00 */	cmpwi r0, 0
/* 8080B254  41 80 00 14 */	blt lbl_8080B268
/* 8080B258  A8 7E 06 E6 */	lha r3, 0x6e6(r30)
/* 8080B25C  38 03 FF 38 */	addi r0, r3, -200
/* 8080B260  B0 1E 06 E6 */	sth r0, 0x6e6(r30)
/* 8080B264  48 00 00 10 */	b lbl_8080B274
lbl_8080B268:
/* 8080B268  A8 7E 06 E6 */	lha r3, 0x6e6(r30)
/* 8080B26C  38 03 00 C8 */	addi r0, r3, 0xc8
/* 8080B270  B0 1E 06 E6 */	sth r0, 0x6e6(r30)
lbl_8080B274:
/* 8080B274  A8 7E 06 E8 */	lha r3, 0x6e8(r30)
/* 8080B278  A8 1E 06 E6 */	lha r0, 0x6e6(r30)
/* 8080B27C  7C 03 02 14 */	add r0, r3, r0
/* 8080B280  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
/* 8080B284  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8080B288  A8 9E 06 E4 */	lha r4, 0x6e4(r30)
/* 8080B28C  A8 1E 06 E8 */	lha r0, 0x6e8(r30)
/* 8080B290  7C 04 02 14 */	add r0, r4, r0
/* 8080B294  7C 04 07 34 */	extsh r4, r0
/* 8080B298  38 A0 00 08 */	li r5, 8
/* 8080B29C  38 C0 10 00 */	li r6, 0x1000
/* 8080B2A0  38 E0 01 00 */	li r7, 0x100
/* 8080B2A4  4B A6 52 9C */	b cLib_addCalcAngleS__FPsssss
/* 8080B2A8  38 61 00 38 */	addi r3, r1, 0x38
/* 8080B2AC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8080B2B0  38 BE 06 70 */	addi r5, r30, 0x670
/* 8080B2B4  4B A5 B8 80 */	b __mi__4cXyzCFRC3Vec
/* 8080B2B8  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8080B2BC  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8080B2C0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8080B2C4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8080B2C8  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8080B2CC  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8080B2D0  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8080B2D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080B2D8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8080B2DC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8080B2E0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8080B2E4  4B B3 BE 54 */	b PSVECSquareMag
/* 8080B2E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080B2EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080B2F0  40 81 00 58 */	ble lbl_8080B348
/* 8080B2F4  FC 00 08 34 */	frsqrte f0, f1
/* 8080B2F8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8080B2FC  FC 44 00 32 */	fmul f2, f4, f0
/* 8080B300  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8080B304  FC 00 00 32 */	fmul f0, f0, f0
/* 8080B308  FC 01 00 32 */	fmul f0, f1, f0
/* 8080B30C  FC 03 00 28 */	fsub f0, f3, f0
/* 8080B310  FC 02 00 32 */	fmul f0, f2, f0
/* 8080B314  FC 44 00 32 */	fmul f2, f4, f0
/* 8080B318  FC 00 00 32 */	fmul f0, f0, f0
/* 8080B31C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080B320  FC 03 00 28 */	fsub f0, f3, f0
/* 8080B324  FC 02 00 32 */	fmul f0, f2, f0
/* 8080B328  FC 44 00 32 */	fmul f2, f4, f0
/* 8080B32C  FC 00 00 32 */	fmul f0, f0, f0
/* 8080B330  FC 01 00 32 */	fmul f0, f1, f0
/* 8080B334  FC 03 00 28 */	fsub f0, f3, f0
/* 8080B338  FC 02 00 32 */	fmul f0, f2, f0
/* 8080B33C  FC 21 00 32 */	fmul f1, f1, f0
/* 8080B340  FC 20 08 18 */	frsp f1, f1
/* 8080B344  48 00 00 88 */	b lbl_8080B3CC
lbl_8080B348:
/* 8080B348  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8080B34C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080B350  40 80 00 10 */	bge lbl_8080B360
/* 8080B354  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080B358  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8080B35C  48 00 00 70 */	b lbl_8080B3CC
lbl_8080B360:
/* 8080B360  D0 21 00 08 */	stfs f1, 8(r1)
/* 8080B364  80 81 00 08 */	lwz r4, 8(r1)
/* 8080B368  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080B36C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080B370  7C 03 00 00 */	cmpw r3, r0
/* 8080B374  41 82 00 14 */	beq lbl_8080B388
/* 8080B378  40 80 00 40 */	bge lbl_8080B3B8
/* 8080B37C  2C 03 00 00 */	cmpwi r3, 0
/* 8080B380  41 82 00 20 */	beq lbl_8080B3A0
/* 8080B384  48 00 00 34 */	b lbl_8080B3B8
lbl_8080B388:
/* 8080B388  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080B38C  41 82 00 0C */	beq lbl_8080B398
/* 8080B390  38 00 00 01 */	li r0, 1
/* 8080B394  48 00 00 28 */	b lbl_8080B3BC
lbl_8080B398:
/* 8080B398  38 00 00 02 */	li r0, 2
/* 8080B39C  48 00 00 20 */	b lbl_8080B3BC
lbl_8080B3A0:
/* 8080B3A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080B3A4  41 82 00 0C */	beq lbl_8080B3B0
/* 8080B3A8  38 00 00 05 */	li r0, 5
/* 8080B3AC  48 00 00 10 */	b lbl_8080B3BC
lbl_8080B3B0:
/* 8080B3B0  38 00 00 03 */	li r0, 3
/* 8080B3B4  48 00 00 08 */	b lbl_8080B3BC
lbl_8080B3B8:
/* 8080B3B8  38 00 00 04 */	li r0, 4
lbl_8080B3BC:
/* 8080B3BC  2C 00 00 01 */	cmpwi r0, 1
/* 8080B3C0  40 82 00 0C */	bne lbl_8080B3CC
/* 8080B3C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080B3C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8080B3CC:
/* 8080B3CC  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8080B3D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080B3D4  40 81 00 3C */	ble lbl_8080B410
/* 8080B3D8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080B3DC  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 8080B3E0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8080B3E4  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 8080B3E8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8080B3EC  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8080B3F0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8080B3F4  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8080B3F8  D0 3E 06 DC */	stfs f1, 0x6dc(r30)
/* 8080B3FC  7F C3 F3 78 */	mr r3, r30
/* 8080B400  38 80 00 00 */	li r4, 0
/* 8080B404  4B FF EB 99 */	bl setActionMode__8daE_YM_cFi
/* 8080B408  7F C3 F3 78 */	mr r3, r30
/* 8080B40C  4B FF E9 61 */	bl setNormalCc__8daE_YM_cFv
lbl_8080B410:
/* 8080B410  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 8080B414  2C 00 00 01 */	cmpwi r0, 1
/* 8080B418  40 82 00 0C */	bne lbl_8080B424
/* 8080B41C  38 00 00 75 */	li r0, 0x75
/* 8080B420  90 1E 09 A0 */	stw r0, 0x9a0(r30)
lbl_8080B424:
/* 8080B424  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8080B428  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8080B42C  39 61 00 70 */	addi r11, r1, 0x70
/* 8080B430  4B B5 6D F8 */	b _restgpr_29
/* 8080B434  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8080B438  7C 08 03 A6 */	mtlr r0
/* 8080B43C  38 21 00 70 */	addi r1, r1, 0x70
/* 8080B440  4E 80 00 20 */	blr 
