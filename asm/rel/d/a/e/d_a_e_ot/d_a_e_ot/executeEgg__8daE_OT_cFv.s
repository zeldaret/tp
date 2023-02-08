lbl_8073AC14:
/* 8073AC14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8073AC18  7C 08 02 A6 */	mflr r0
/* 8073AC1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073AC20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8073AC24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8073AC28  7C 7E 1B 78 */	mr r30, r3
/* 8073AC2C  3C 60 80 74 */	lis r3, lit_3910@ha /* 0x8073CEA8@ha */
/* 8073AC30  3B E3 CE A8 */	addi r31, r3, lit_3910@l /* 0x8073CEA8@l */
/* 8073AC34  80 1E 06 78 */	lwz r0, 0x678(r30)
/* 8073AC38  28 00 00 09 */	cmplwi r0, 9
/* 8073AC3C  41 81 03 1C */	bgt lbl_8073AF58
/* 8073AC40  3C 60 80 74 */	lis r3, lit_4281@ha /* 0x8073D150@ha */
/* 8073AC44  38 63 D1 50 */	addi r3, r3, lit_4281@l /* 0x8073D150@l */
/* 8073AC48  54 00 10 3A */	slwi r0, r0, 2
/* 8073AC4C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8073AC50  7C 09 03 A6 */	mtctr r0
/* 8073AC54  4E 80 04 20 */	bctr 
lbl_8073AC58:
/* 8073AC58  80 1E 08 EC */	lwz r0, 0x8ec(r30)
/* 8073AC5C  60 00 00 01 */	ori r0, r0, 1
/* 8073AC60  90 1E 08 EC */	stw r0, 0x8ec(r30)
/* 8073AC64  7F C3 F3 78 */	mr r3, r30
/* 8073AC68  4B FF FE D1 */	bl setEggStay__8daE_OT_cFv
/* 8073AC6C  80 1E 06 78 */	lwz r0, 0x678(r30)
/* 8073AC70  2C 00 00 00 */	cmpwi r0, 0
/* 8073AC74  40 82 00 2C */	bne lbl_8073ACA0
/* 8073AC78  38 7E 06 80 */	addi r3, r30, 0x680
/* 8073AC7C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8073AC80  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8073AC84  4B B3 5A BD */	bl cLib_chaseF__FPfff
/* 8073AC88  2C 03 00 00 */	cmpwi r3, 0
/* 8073AC8C  41 82 02 CC */	beq lbl_8073AF58
/* 8073AC90  80 7E 06 78 */	lwz r3, 0x678(r30)
/* 8073AC94  38 03 00 01 */	addi r0, r3, 1
/* 8073AC98  90 1E 06 78 */	stw r0, 0x678(r30)
/* 8073AC9C  48 00 02 BC */	b lbl_8073AF58
lbl_8073ACA0:
/* 8073ACA0  2C 00 00 01 */	cmpwi r0, 1
/* 8073ACA4  40 82 00 28 */	bne lbl_8073ACCC
/* 8073ACA8  38 7E 06 80 */	addi r3, r30, 0x680
/* 8073ACAC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8073ACB0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8073ACB4  4B B3 5A 8D */	bl cLib_chaseF__FPfff
/* 8073ACB8  2C 03 00 00 */	cmpwi r3, 0
/* 8073ACBC  41 82 02 9C */	beq lbl_8073AF58
/* 8073ACC0  38 00 00 02 */	li r0, 2
/* 8073ACC4  90 1E 06 78 */	stw r0, 0x678(r30)
/* 8073ACC8  48 00 02 90 */	b lbl_8073AF58
lbl_8073ACCC:
/* 8073ACCC  38 7E 06 80 */	addi r3, r30, 0x680
/* 8073ACD0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8073ACD4  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8073ACD8  4B B3 5A 69 */	bl cLib_chaseF__FPfff
/* 8073ACDC  48 00 02 7C */	b lbl_8073AF58
lbl_8073ACE0:
/* 8073ACE0  80 1E 09 18 */	lwz r0, 0x918(r30)
/* 8073ACE4  60 00 00 01 */	ori r0, r0, 1
/* 8073ACE8  90 1E 09 18 */	stw r0, 0x918(r30)
/* 8073ACEC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8073ACF0  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 8073ACF4  80 1E 06 78 */	lwz r0, 0x678(r30)
/* 8073ACF8  2C 00 00 08 */	cmpwi r0, 8
/* 8073ACFC  40 82 00 5C */	bne lbl_8073AD58
/* 8073AD00  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8073AD04  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8073AD08  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8073AD0C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8073AD10  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8073AD14  4B B2 CC 79 */	bl cM_rndFX__Ff
/* 8073AD18  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 8073AD1C  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 8073AD20  38 03 80 00 */	addi r0, r3, -32768
/* 8073AD24  C8 5F 00 80 */	lfd f2, 0x80(r31)
/* 8073AD28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073AD2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8073AD30  3C 00 43 30 */	lis r0, 0x4330
/* 8073AD34  90 01 00 08 */	stw r0, 8(r1)
/* 8073AD38  C8 01 00 08 */	lfd f0, 8(r1)
/* 8073AD3C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8073AD40  EC 00 08 2A */	fadds f0, f0, f1
/* 8073AD44  FC 00 00 1E */	fctiwz f0, f0
/* 8073AD48  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8073AD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073AD50  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8073AD54  48 00 00 F8 */	b lbl_8073AE4C
lbl_8073AD58:
/* 8073AD58  88 1E 06 92 */	lbz r0, 0x692(r30)
/* 8073AD5C  28 00 00 03 */	cmplwi r0, 3
/* 8073AD60  40 82 00 48 */	bne lbl_8073ADA8
/* 8073AD64  28 1E 00 00 */	cmplwi r30, 0
/* 8073AD68  41 82 00 0C */	beq lbl_8073AD74
/* 8073AD6C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8073AD70  48 00 00 08 */	b lbl_8073AD78
lbl_8073AD74:
/* 8073AD74  38 00 FF FF */	li r0, -1
lbl_8073AD78:
/* 8073AD78  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 8073AD7C  80 63 06 78 */	lwz r3, 0x678(r3)
/* 8073AD80  7C 00 18 40 */	cmplw r0, r3
/* 8073AD84  40 82 00 24 */	bne lbl_8073ADA8
/* 8073AD88  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8073AD8C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8073AD90  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8073AD94  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8073AD98  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8073AD9C  38 03 40 00 */	addi r0, r3, 0x4000
/* 8073ADA0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8073ADA4  48 00 00 A8 */	b lbl_8073AE4C
lbl_8073ADA8:
/* 8073ADA8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8073ADAC  4B B2 CB E1 */	bl cM_rndFX__Ff
/* 8073ADB0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8073ADB4  EC 00 08 2A */	fadds f0, f0, f1
/* 8073ADB8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8073ADBC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8073ADC0  4B B2 CB CD */	bl cM_rndFX__Ff
/* 8073ADC4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8073ADC8  EC 00 08 2A */	fadds f0, f0, f1
/* 8073ADCC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8073ADD0  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 8073ADD4  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 8073ADD8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8073ADDC  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 8073ADE0  2C 00 00 05 */	cmpwi r0, 5
/* 8073ADE4  41 80 00 14 */	blt lbl_8073ADF8
/* 8073ADE8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8073ADEC  41 80 00 38 */	blt lbl_8073AE24
/* 8073ADF0  2C 00 00 0F */	cmpwi r0, 0xf
/* 8073ADF4  40 80 00 30 */	bge lbl_8073AE24
lbl_8073ADF8:
/* 8073ADF8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8073ADFC  4B B2 CB 91 */	bl cM_rndFX__Ff
/* 8073AE00  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8073AE04  EC 00 08 2A */	fadds f0, f0, f1
/* 8073AE08  FC 00 00 1E */	fctiwz f0, f0
/* 8073AE0C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8073AE10  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8073AE14  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8073AE18  7C 00 1A 14 */	add r0, r0, r3
/* 8073AE1C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8073AE20  48 00 00 2C */	b lbl_8073AE4C
lbl_8073AE24:
/* 8073AE24  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8073AE28  4B B2 CB 65 */	bl cM_rndFX__Ff
/* 8073AE2C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8073AE30  EC 00 08 2A */	fadds f0, f0, f1
/* 8073AE34  FC 00 00 1E */	fctiwz f0, f0
/* 8073AE38  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8073AE3C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8073AE40  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8073AE44  7C 00 1A 14 */	add r0, r0, r3
/* 8073AE48  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8073AE4C:
/* 8073AE4C  80 7E 06 78 */	lwz r3, 0x678(r30)
/* 8073AE50  38 03 00 01 */	addi r0, r3, 1
/* 8073AE54  90 1E 06 78 */	stw r0, 0x678(r30)
/* 8073AE58  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8073AE5C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8073AE60  80 1E 08 EC */	lwz r0, 0x8ec(r30)
/* 8073AE64  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8073AE68  90 1E 08 EC */	stw r0, 0x8ec(r30)
/* 8073AE6C  38 00 00 00 */	li r0, 0
/* 8073AE70  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_8073AE74:
/* 8073AE74  80 1E 06 78 */	lwz r0, 0x678(r30)
/* 8073AE78  2C 00 00 09 */	cmpwi r0, 9
/* 8073AE7C  40 82 00 14 */	bne lbl_8073AE90
/* 8073AE80  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8073AE84  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073AE88  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8073AE8C  4B B3 58 B5 */	bl cLib_chaseF__FPfff
lbl_8073AE90:
/* 8073AE90  88 1E 06 92 */	lbz r0, 0x692(r30)
/* 8073AE94  28 00 00 00 */	cmplwi r0, 0
/* 8073AE98  41 82 00 20 */	beq lbl_8073AEB8
/* 8073AE9C  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 8073AEA0  88 03 07 82 */	lbz r0, 0x782(r3)
/* 8073AEA4  28 00 00 00 */	cmplwi r0, 0
/* 8073AEA8  41 82 00 10 */	beq lbl_8073AEB8
/* 8073AEAC  7F C3 F3 78 */	mr r3, r30
/* 8073AEB0  4B 8D ED CD */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8073AEB4  48 00 00 A4 */	b lbl_8073AF58
lbl_8073AEB8:
/* 8073AEB8  80 1E 07 04 */	lwz r0, 0x704(r30)
/* 8073AEBC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8073AEC0  41 82 00 24 */	beq lbl_8073AEE4
/* 8073AEC4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8073AEC8  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8073AECC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8073AED0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8073AED4  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8073AED8  3C 63 00 01 */	addis r3, r3, 1
/* 8073AEDC  38 03 80 00 */	addi r0, r3, -32768
/* 8073AEE0  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8073AEE4:
/* 8073AEE4  80 1E 07 04 */	lwz r0, 0x704(r30)
/* 8073AEE8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8073AEEC  40 82 00 18 */	bne lbl_8073AF04
/* 8073AEF0  C0 3E 06 88 */	lfs f1, 0x688(r30)
/* 8073AEF4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8073AEF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073AEFC  4C 41 13 82 */	cror 2, 1, 2
/* 8073AF00  40 82 00 58 */	bne lbl_8073AF58
lbl_8073AF04:
/* 8073AF04  7F C3 F3 78 */	mr r3, r30
/* 8073AF08  4B FF FA 95 */	bl setEggBreakEffect__8daE_OT_cFv
/* 8073AF0C  C0 3E 06 88 */	lfs f1, 0x688(r30)
/* 8073AF10  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8073AF14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073AF18  4C 41 13 82 */	cror 2, 1, 2
/* 8073AF1C  40 82 00 0C */	bne lbl_8073AF28
/* 8073AF20  7F C3 F3 78 */	mr r3, r30
/* 8073AF24  4B FF F9 15 */	bl setWaterEffect__8daE_OT_cFv
lbl_8073AF28:
/* 8073AF28  38 00 00 04 */	li r0, 4
/* 8073AF2C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8073AF30  80 1E 06 78 */	lwz r0, 0x678(r30)
/* 8073AF34  2C 00 00 05 */	cmpwi r0, 5
/* 8073AF38  40 82 00 18 */	bne lbl_8073AF50
/* 8073AF3C  7F C3 F3 78 */	mr r3, r30
/* 8073AF40  38 80 00 01 */	li r4, 1
/* 8073AF44  38 A0 00 00 */	li r5, 0
/* 8073AF48  4B FF F5 B1 */	bl setActionMode__8daE_OT_cFii
/* 8073AF4C  48 00 00 0C */	b lbl_8073AF58
lbl_8073AF50:
/* 8073AF50  7F C3 F3 78 */	mr r3, r30
/* 8073AF54  4B 8D ED 29 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8073AF58:
/* 8073AF58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8073AF5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8073AF60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8073AF64  7C 08 03 A6 */	mtlr r0
/* 8073AF68  38 21 00 20 */	addi r1, r1, 0x20
/* 8073AF6C  4E 80 00 20 */	blr 
