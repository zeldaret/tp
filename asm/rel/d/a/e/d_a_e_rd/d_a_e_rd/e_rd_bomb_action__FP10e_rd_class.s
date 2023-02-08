lbl_8050AB1C:
/* 8050AB1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8050AB20  7C 08 02 A6 */	mflr r0
/* 8050AB24  90 01 00 54 */	stw r0, 0x54(r1)
/* 8050AB28  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8050AB2C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8050AB30  39 61 00 40 */	addi r11, r1, 0x40
/* 8050AB34  4B E5 76 A5 */	bl _savegpr_28
/* 8050AB38  7C 7C 1B 78 */	mr r28, r3
/* 8050AB3C  3C 80 80 52 */	lis r4, lit_4208@ha /* 0x80518584@ha */
/* 8050AB40  3B E4 85 84 */	addi r31, r4, lit_4208@l /* 0x80518584@l */
/* 8050AB44  4B FF BC 39 */	bl bomb_check__FP10e_rd_class
/* 8050AB48  7C 7E 1B 79 */	or. r30, r3, r3
/* 8050AB4C  40 82 00 18 */	bne lbl_8050AB64
/* 8050AB50  38 00 00 03 */	li r0, 3
/* 8050AB54  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 8050AB58  38 00 00 00 */	li r0, 0
/* 8050AB5C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050AB60  48 00 03 F8 */	b lbl_8050AF58
lbl_8050AB64:
/* 8050AB64  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8050AB68  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8050AB6C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8050AB70  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8050AB74  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8050AB78  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8050AB7C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8050AB80  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8050AB84  4B D5 CA F1 */	bl cM_atan2s__Fff
/* 8050AB88  7C 7D 1B 78 */	mr r29, r3
/* 8050AB8C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8050AB90  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 8050AB94  28 00 00 06 */	cmplwi r0, 6
/* 8050AB98  41 81 03 78 */	bgt lbl_8050AF10
/* 8050AB9C  3C 60 80 52 */	lis r3, lit_6966@ha /* 0x80518B8C@ha */
/* 8050ABA0  38 63 8B 8C */	addi r3, r3, lit_6966@l /* 0x80518B8C@l */
/* 8050ABA4  54 00 10 3A */	slwi r0, r0, 2
/* 8050ABA8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8050ABAC  7C 09 03 A6 */	mtctr r0
/* 8050ABB0  4E 80 04 20 */	bctr 
lbl_8050ABB4:
/* 8050ABB4  38 00 00 01 */	li r0, 1
/* 8050ABB8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050ABBC  7F 83 E3 78 */	mr r3, r28
/* 8050ABC0  38 80 00 40 */	li r4, 0x40
/* 8050ABC4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050ABC8  38 A0 00 02 */	li r5, 2
/* 8050ABCC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050ABD0  4B FF A0 05 */	bl anm_init__FP10e_rd_classifUcf
/* 8050ABD4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050ABD8  4B D5 CD 7D */	bl cM_rndF__Ff
/* 8050ABDC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8050ABE0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050ABE4  FC 00 00 1E */	fctiwz f0, f0
/* 8050ABE8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8050ABEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050ABF0  B0 1C 09 92 */	sth r0, 0x992(r28)
lbl_8050ABF4:
/* 8050ABF4  A8 1C 09 92 */	lha r0, 0x992(r28)
/* 8050ABF8  2C 00 00 00 */	cmpwi r0, 0
/* 8050ABFC  40 82 03 14 */	bne lbl_8050AF10
/* 8050AC00  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8050AC04  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8050AC08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050AC0C  40 80 03 04 */	bge lbl_8050AF10
/* 8050AC10  38 00 00 02 */	li r0, 2
/* 8050AC14  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050AC18  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 8050AC1C  4B D5 CD 71 */	bl cM_rndFX__Ff
/* 8050AC20  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8050AC24  EC 40 08 2A */	fadds f2, f0, f1
/* 8050AC28  7F 83 E3 78 */	mr r3, r28
/* 8050AC2C  38 80 00 32 */	li r4, 0x32
/* 8050AC30  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050AC34  38 A0 00 02 */	li r5, 2
/* 8050AC38  4B FF 9F 9D */	bl anm_init__FP10e_rd_classifUcf
/* 8050AC3C  48 00 02 D4 */	b lbl_8050AF10
lbl_8050AC40:
/* 8050AC40  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8050AC44  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8050AC48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050AC4C  40 80 00 74 */	bge lbl_8050ACC0
/* 8050AC50  7F C3 F3 78 */	mr r3, r30
/* 8050AC54  4B B2 73 41 */	bl checkStateCarry__7dBomb_cFv
/* 8050AC58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8050AC5C  40 82 00 64 */	bne lbl_8050ACC0
/* 8050AC60  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8050AC64  EC 20 00 32 */	fmuls f1, f0, f0
/* 8050AC68  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8050AC6C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8050AC70  EC 21 00 2A */	fadds f1, f1, f0
/* 8050AC74  FC 00 F8 90 */	fmr f0, f31
/* 8050AC78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050AC7C  40 81 00 0C */	ble lbl_8050AC88
/* 8050AC80  FC 00 08 34 */	frsqrte f0, f1
/* 8050AC84  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8050AC88:
/* 8050AC88  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8050AC8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050AC90  40 80 00 30 */	bge lbl_8050ACC0
/* 8050AC94  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 8050AC98  A8 1C 09 7C */	lha r0, 0x97c(r28)
/* 8050AC9C  7C 03 00 50 */	subf r0, r3, r0
/* 8050ACA0  7C 00 07 34 */	extsh r0, r0
/* 8050ACA4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8050ACA8  40 80 00 18 */	bge lbl_8050ACC0
/* 8050ACAC  2C 00 C0 00 */	cmpwi r0, -16384
/* 8050ACB0  40 81 00 10 */	ble lbl_8050ACC0
/* 8050ACB4  38 00 00 05 */	li r0, 5
/* 8050ACB8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050ACBC  48 00 02 54 */	b lbl_8050AF10
lbl_8050ACC0:
/* 8050ACC0  3F BD 00 01 */	addis r29, r29, 1
/* 8050ACC4  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x80519194@ha */
/* 8050ACC8  38 63 91 94 */	addi r3, r3, l_HIO@l /* 0x80519194@l */
/* 8050ACCC  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 8050ACD0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8050ACD4  EC 20 00 32 */	fmuls f1, f0, f0
/* 8050ACD8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8050ACDC  EC 00 00 32 */	fmuls f0, f0, f0
/* 8050ACE0  EC 21 00 2A */	fadds f1, f1, f0
/* 8050ACE4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050ACE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050ACEC  3B BD 80 00 */	addi r29, r29, -32768
/* 8050ACF0  40 81 00 0C */	ble lbl_8050ACFC
/* 8050ACF4  FC 00 08 34 */	frsqrte f0, f1
/* 8050ACF8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8050ACFC:
/* 8050ACFC  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8050AD00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050AD04  40 81 02 0C */	ble lbl_8050AF10
/* 8050AD08  38 00 00 03 */	li r0, 3
/* 8050AD0C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050AD10  7F 83 E3 78 */	mr r3, r28
/* 8050AD14  38 80 00 40 */	li r4, 0x40
/* 8050AD18  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050AD1C  38 A0 00 02 */	li r5, 2
/* 8050AD20  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050AD24  4B FF 9E B1 */	bl anm_init__FP10e_rd_classifUcf
/* 8050AD28  48 00 01 E8 */	b lbl_8050AF10
lbl_8050AD2C:
/* 8050AD2C  AB BC 09 7C */	lha r29, 0x97c(r28)
/* 8050AD30  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8050AD34  EC 20 00 32 */	fmuls f1, f0, f0
/* 8050AD38  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8050AD3C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8050AD40  EC 21 00 2A */	fadds f1, f1, f0
/* 8050AD44  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8050AD48  40 81 00 0C */	ble lbl_8050AD54
/* 8050AD4C  FC 00 08 34 */	frsqrte f0, f1
/* 8050AD50  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8050AD54:
/* 8050AD54  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 8050AD58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050AD5C  40 80 01 B4 */	bge lbl_8050AF10
/* 8050AD60  38 00 00 00 */	li r0, 0
/* 8050AD64  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050AD68  48 00 01 A8 */	b lbl_8050AF10
lbl_8050AD6C:
/* 8050AD6C  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x80519194@ha */
/* 8050AD70  38 63 91 94 */	addi r3, r3, l_HIO@l /* 0x80519194@l */
/* 8050AD74  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 8050AD78  38 00 00 00 */	li r0, 0
/* 8050AD7C  98 1C 09 AD */	stb r0, 0x9ad(r28)
/* 8050AD80  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8050AD84  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8050AD88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050AD8C  40 81 00 0C */	ble lbl_8050AD98
/* 8050AD90  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050AD94  48 00 01 7C */	b lbl_8050AF10
lbl_8050AD98:
/* 8050AD98  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8050AD9C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8050ADA0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8050ADA4  EC 00 00 32 */	fmuls f0, f0, f0
/* 8050ADA8  EC 21 00 2A */	fadds f1, f1, f0
/* 8050ADAC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050ADB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050ADB4  40 81 00 0C */	ble lbl_8050ADC0
/* 8050ADB8  FC 00 08 34 */	frsqrte f0, f1
/* 8050ADBC  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8050ADC0:
/* 8050ADC0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8050ADC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050ADC8  40 80 01 48 */	bge lbl_8050AF10
/* 8050ADCC  38 00 00 14 */	li r0, 0x14
/* 8050ADD0  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 8050ADD4  38 00 00 06 */	li r0, 6
/* 8050ADD8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050ADDC  7F 83 E3 78 */	mr r3, r28
/* 8050ADE0  38 80 00 1C */	li r4, 0x1c
/* 8050ADE4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8050ADE8  38 A0 00 00 */	li r5, 0
/* 8050ADEC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050ADF0  4B FF 9D E5 */	bl anm_init__FP10e_rd_classifUcf
/* 8050ADF4  48 00 01 1C */	b lbl_8050AF10
lbl_8050ADF8:
/* 8050ADF8  38 00 00 00 */	li r0, 0
/* 8050ADFC  98 1C 09 AD */	stb r0, 0x9ad(r28)
/* 8050AE00  AB BC 09 7C */	lha r29, 0x97c(r28)
/* 8050AE04  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8050AE08  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8050AE0C  FC 00 00 1E */	fctiwz f0, f0
/* 8050AE10  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8050AE14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050AE18  2C 00 00 0A */	cmpwi r0, 0xa
/* 8050AE1C  41 81 00 A4 */	bgt lbl_8050AEC0
/* 8050AE20  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8050AE24  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8050AE28  80 63 00 00 */	lwz r3, 0(r3)
/* 8050AE2C  7F A4 EB 78 */	mr r4, r29
/* 8050AE30  4B B0 15 AD */	bl mDoMtx_YrotS__FPA4_fs
/* 8050AE34  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8050AE38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8050AE3C  FC 00 F8 90 */	fmr f0, f31
/* 8050AE40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8050AE44  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8050AE48  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050AE4C  38 61 00 14 */	addi r3, r1, 0x14
/* 8050AE50  38 81 00 08 */	addi r4, r1, 8
/* 8050AE54  4B D6 60 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8050AE58  38 61 00 08 */	addi r3, r1, 8
/* 8050AE5C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8050AE60  7C 65 1B 78 */	mr r5, r3
/* 8050AE64  4B E3 C2 2D */	bl PSVECAdd
/* 8050AE68  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8050AE6C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8050AE70  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050AE74  C0 7F 00 C0 */	lfs f3, 0xc0(r31)
/* 8050AE78  4B D6 4B C5 */	bl cLib_addCalc2__FPffff
/* 8050AE7C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8050AE80  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8050AE84  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050AE88  C0 7F 00 C0 */	lfs f3, 0xc0(r31)
/* 8050AE8C  4B D6 4B B1 */	bl cLib_addCalc2__FPffff
/* 8050AE90  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8050AE94  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8050AE98  FC 00 00 1E */	fctiwz f0, f0
/* 8050AE9C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8050AEA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050AEA4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8050AEA8  40 82 00 18 */	bne lbl_8050AEC0
/* 8050AEAC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8050AEB0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8050AEB4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8050AEB8  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8050AEBC  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8050AEC0:
/* 8050AEC0  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8050AEC4  38 80 00 01 */	li r4, 1
/* 8050AEC8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050AECC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050AED0  40 82 00 18 */	bne lbl_8050AEE8
/* 8050AED4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050AED8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050AEDC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050AEE0  41 82 00 08 */	beq lbl_8050AEE8
/* 8050AEE4  38 80 00 00 */	li r4, 0
lbl_8050AEE8:
/* 8050AEE8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050AEEC  41 82 00 24 */	beq lbl_8050AF10
/* 8050AEF0  7F 83 E3 78 */	mr r3, r28
/* 8050AEF4  38 80 00 40 */	li r4, 0x40
/* 8050AEF8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050AEFC  38 A0 00 02 */	li r5, 2
/* 8050AF00  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050AF04  4B FF 9C D1 */	bl anm_init__FP10e_rd_classifUcf
/* 8050AF08  38 00 00 03 */	li r0, 3
/* 8050AF0C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_8050AF10:
/* 8050AF10  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8050AF14  FC 20 F8 90 */	fmr f1, f31
/* 8050AF18  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050AF1C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8050AF20  4B D6 4B 1D */	bl cLib_addCalc2__FPffff
/* 8050AF24  38 7C 04 DE */	addi r3, r28, 0x4de
/* 8050AF28  7F A4 EB 78 */	mr r4, r29
/* 8050AF2C  38 A0 00 04 */	li r5, 4
/* 8050AF30  38 C0 10 00 */	li r6, 0x1000
/* 8050AF34  4B D6 56 D5 */	bl cLib_addCalcAngleS2__FPssss
/* 8050AF38  38 00 00 0B */	li r0, 0xb
/* 8050AF3C  98 1C 09 C8 */	stb r0, 0x9c8(r28)
/* 8050AF40  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8050AF44  D0 1C 09 D4 */	stfs f0, 0x9d4(r28)
/* 8050AF48  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8050AF4C  D0 1C 09 D8 */	stfs f0, 0x9d8(r28)
/* 8050AF50  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8050AF54  D0 1C 09 DC */	stfs f0, 0x9dc(r28)
lbl_8050AF58:
/* 8050AF58  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8050AF5C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8050AF60  39 61 00 40 */	addi r11, r1, 0x40
/* 8050AF64  4B E5 72 C1 */	bl _restgpr_28
/* 8050AF68  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8050AF6C  7C 08 03 A6 */	mtlr r0
/* 8050AF70  38 21 00 50 */	addi r1, r1, 0x50
/* 8050AF74  4E 80 00 20 */	blr 
