lbl_8077B928:
/* 8077B928  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8077B92C  7C 08 02 A6 */	mflr r0
/* 8077B930  90 01 00 64 */	stw r0, 0x64(r1)
/* 8077B934  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8077B938  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8077B93C  39 61 00 50 */	addi r11, r1, 0x50
/* 8077B940  4B BE 68 98 */	b _savegpr_28
/* 8077B944  7C 7C 1B 78 */	mr r28, r3
/* 8077B948  3C 60 80 78 */	lis r3, lit_3903@ha
/* 8077B94C  3B E3 0D C4 */	addi r31, r3, lit_3903@l
/* 8077B950  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8077B954  3B C0 00 00 */	li r30, 0
/* 8077B958  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 8077B95C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8077B960  FC 00 00 1E */	fctiwz f0, f0
/* 8077B964  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8077B968  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 8077B96C  38 61 00 14 */	addi r3, r1, 0x14
/* 8077B970  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 8077B974  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8077B978  4B AE B1 BC */	b __mi__4cXyzCFRC3Vec
/* 8077B97C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8077B980  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8077B984  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8077B988  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8077B98C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8077B990  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8077B994  EC 21 00 72 */	fmuls f1, f1, f1
/* 8077B998  EC 00 00 32 */	fmuls f0, f0, f0
/* 8077B99C  EC 21 00 2A */	fadds f1, f1, f0
/* 8077B9A0  FC 00 F8 90 */	fmr f0, f31
/* 8077B9A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077B9A8  40 81 00 0C */	ble lbl_8077B9B4
/* 8077B9AC  FC 00 08 34 */	frsqrte f0, f1
/* 8077B9B0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8077B9B4:
/* 8077B9B4  A8 1C 06 98 */	lha r0, 0x698(r28)
/* 8077B9B8  2C 00 00 02 */	cmpwi r0, 2
/* 8077B9BC  41 82 01 90 */	beq lbl_8077BB4C
/* 8077B9C0  40 80 00 14 */	bge lbl_8077B9D4
/* 8077B9C4  2C 00 00 00 */	cmpwi r0, 0
/* 8077B9C8  41 82 00 18 */	beq lbl_8077B9E0
/* 8077B9CC  40 80 01 20 */	bge lbl_8077BAEC
/* 8077B9D0  48 00 02 0C */	b lbl_8077BBDC
lbl_8077B9D4:
/* 8077B9D4  2C 00 00 04 */	cmpwi r0, 4
/* 8077B9D8  40 80 02 04 */	bge lbl_8077BBDC
/* 8077B9DC  48 00 01 90 */	b lbl_8077BB6C
lbl_8077B9E0:
/* 8077B9E0  A8 1C 06 A0 */	lha r0, 0x6a0(r28)
/* 8077B9E4  2C 00 00 00 */	cmpwi r0, 0
/* 8077B9E8  40 82 01 F4 */	bne lbl_8077BBDC
/* 8077B9EC  80 1C 05 BC */	lwz r0, 0x5bc(r28)
/* 8077B9F0  28 00 00 00 */	cmplwi r0, 0
/* 8077B9F4  41 82 00 28 */	beq lbl_8077BA1C
/* 8077B9F8  7F 83 E3 78 */	mr r3, r28
/* 8077B9FC  4B FF F5 45 */	bl path_check__FP10e_s1_class
/* 8077BA00  2C 03 00 00 */	cmpwi r3, 0
/* 8077BA04  41 82 00 18 */	beq lbl_8077BA1C
/* 8077BA08  38 00 00 07 */	li r0, 7
/* 8077BA0C  B0 1C 06 96 */	sth r0, 0x696(r28)
/* 8077BA10  38 00 00 00 */	li r0, 0
/* 8077BA14  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 8077BA18  48 00 01 C4 */	b lbl_8077BBDC
lbl_8077BA1C:
/* 8077BA1C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8077BA20  4B AE BF 6C */	b cM_rndFX__Ff
/* 8077BA24  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 8077BA28  EC 00 08 2A */	fadds f0, f0, f1
/* 8077BA2C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8077BA30  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 8077BA34  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8077BA38  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8077BA3C  4B AE BF 50 */	b cM_rndFX__Ff
/* 8077BA40  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 8077BA44  EC 00 08 2A */	fadds f0, f0, f1
/* 8077BA48  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8077BA4C  38 61 00 08 */	addi r3, r1, 8
/* 8077BA50  38 81 00 20 */	addi r4, r1, 0x20
/* 8077BA54  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8077BA58  4B AE B0 DC */	b __mi__4cXyzCFRC3Vec
/* 8077BA5C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8077BA60  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8077BA64  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8077BA68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8077BA6C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8077BA70  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8077BA74  4B AE BC 00 */	b cM_atan2s__Fff
/* 8077BA78  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8077BA7C  7C 04 18 50 */	subf r0, r4, r3
/* 8077BA80  7C 00 07 34 */	extsh r0, r0
/* 8077BA84  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8077BA88  40 81 00 0C */	ble lbl_8077BA94
/* 8077BA8C  38 00 30 00 */	li r0, 0x3000
/* 8077BA90  48 00 00 10 */	b lbl_8077BAA0
lbl_8077BA94:
/* 8077BA94  2C 00 D0 00 */	cmpwi r0, -12288
/* 8077BA98  40 80 00 08 */	bge lbl_8077BAA0
/* 8077BA9C  38 00 D0 00 */	li r0, -12288
lbl_8077BAA0:
/* 8077BAA0  7C 04 02 14 */	add r0, r4, r0
/* 8077BAA4  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
/* 8077BAA8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8077BAAC  4B AE BE A8 */	b cM_rndF__Ff
/* 8077BAB0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8077BAB4  EC 00 08 2A */	fadds f0, f0, f1
/* 8077BAB8  FC 00 00 1E */	fctiwz f0, f0
/* 8077BABC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8077BAC0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8077BAC4  B0 1C 06 A0 */	sth r0, 0x6a0(r28)
/* 8077BAC8  38 00 00 01 */	li r0, 1
/* 8077BACC  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 8077BAD0  7F 83 E3 78 */	mr r3, r28
/* 8077BAD4  38 80 00 1F */	li r4, 0x1f
/* 8077BAD8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8077BADC  38 A0 00 02 */	li r5, 2
/* 8077BAE0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077BAE4  4B FF F1 15 */	bl anm_init__FP10e_s1_classifUcf
/* 8077BAE8  48 00 00 F4 */	b lbl_8077BBDC
lbl_8077BAEC:
/* 8077BAEC  3B C0 01 00 */	li r30, 0x100
/* 8077BAF0  A8 1C 06 A0 */	lha r0, 0x6a0(r28)
/* 8077BAF4  2C 00 00 00 */	cmpwi r0, 0
/* 8077BAF8  41 82 00 10 */	beq lbl_8077BB08
/* 8077BAFC  C0 1C 30 68 */	lfs f0, 0x3068(r28)
/* 8077BB00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077BB04  40 81 00 D8 */	ble lbl_8077BBDC
lbl_8077BB08:
/* 8077BB08  38 00 00 00 */	li r0, 0
/* 8077BB0C  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 8077BB10  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8077BB14  4B AE BE 40 */	b cM_rndF__Ff
/* 8077BB18  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8077BB1C  EC 00 08 2A */	fadds f0, f0, f1
/* 8077BB20  FC 00 00 1E */	fctiwz f0, f0
/* 8077BB24  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8077BB28  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8077BB2C  B0 1C 06 A0 */	sth r0, 0x6a0(r28)
/* 8077BB30  7F 83 E3 78 */	mr r3, r28
/* 8077BB34  38 80 00 1E */	li r4, 0x1e
/* 8077BB38  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8077BB3C  38 A0 00 02 */	li r5, 2
/* 8077BB40  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077BB44  4B FF F0 B5 */	bl anm_init__FP10e_s1_classifUcf
/* 8077BB48  48 00 00 94 */	b lbl_8077BBDC
lbl_8077BB4C:
/* 8077BB4C  38 00 00 03 */	li r0, 3
/* 8077BB50  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 8077BB54  7F 83 E3 78 */	mr r3, r28
/* 8077BB58  38 80 00 1F */	li r4, 0x1f
/* 8077BB5C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8077BB60  38 A0 00 02 */	li r5, 2
/* 8077BB64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077BB68  4B FF F0 91 */	bl anm_init__FP10e_s1_classifUcf
lbl_8077BB6C:
/* 8077BB6C  3B C0 01 00 */	li r30, 0x100
/* 8077BB70  C0 3C 04 A8 */	lfs f1, 0x4a8(r28)
/* 8077BB74  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8077BB78  EC 21 00 28 */	fsubs f1, f1, f0
/* 8077BB7C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8077BB80  C0 5C 04 B0 */	lfs f2, 0x4b0(r28)
/* 8077BB84  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8077BB88  EC 42 00 28 */	fsubs f2, f2, f0
/* 8077BB8C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8077BB90  4B AE BA E4 */	b cM_atan2s__Fff
/* 8077BB94  B0 7C 05 D0 */	sth r3, 0x5d0(r28)
/* 8077BB98  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8077BB9C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8077BBA0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8077BBA4  EC 00 00 32 */	fmuls f0, f0, f0
/* 8077BBA8  EC 41 00 2A */	fadds f2, f1, f0
/* 8077BBAC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8077BBB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8077BBB4  40 81 00 0C */	ble lbl_8077BBC0
/* 8077BBB8  FC 00 10 34 */	frsqrte f0, f2
/* 8077BBBC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8077BBC0:
/* 8077BBC0  C0 3C 30 68 */	lfs f1, 0x3068(r28)
/* 8077BBC4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8077BBC8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8077BBCC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8077BBD0  40 80 00 0C */	bge lbl_8077BBDC
/* 8077BBD4  38 00 00 01 */	li r0, 1
/* 8077BBD8  B0 1C 06 98 */	sth r0, 0x698(r28)
lbl_8077BBDC:
/* 8077BBDC  80 1C 05 D8 */	lwz r0, 0x5d8(r28)
/* 8077BBE0  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8077BBE4  40 82 00 30 */	bne lbl_8077BC14
/* 8077BBE8  2C 1D 00 00 */	cmpwi r29, 0
/* 8077BBEC  41 80 00 0C */	blt lbl_8077BBF8
/* 8077BBF0  2C 1D 00 12 */	cmpwi r29, 0x12
/* 8077BBF4  40 81 00 14 */	ble lbl_8077BC08
lbl_8077BBF8:
/* 8077BBF8  2C 1D 00 1B */	cmpwi r29, 0x1b
/* 8077BBFC  41 80 00 18 */	blt lbl_8077BC14
/* 8077BC00  2C 1D 00 2D */	cmpwi r29, 0x2d
/* 8077BC04  41 81 00 10 */	bgt lbl_8077BC14
lbl_8077BC08:
/* 8077BC08  3C 60 80 78 */	lis r3, l_HIO@ha
/* 8077BC0C  38 63 13 8C */	addi r3, r3, l_HIO@l
/* 8077BC10  C3 E3 00 0C */	lfs f31, 0xc(r3)
lbl_8077BC14:
/* 8077BC14  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8077BC18  FC 20 F8 90 */	fmr f1, f31
/* 8077BC1C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077BC20  FC 60 10 90 */	fmr f3, f2
/* 8077BC24  4B AF 3E 18 */	b cLib_addCalc2__FPffff
/* 8077BC28  38 7C 04 DE */	addi r3, r28, 0x4de
/* 8077BC2C  A8 9C 05 D0 */	lha r4, 0x5d0(r28)
/* 8077BC30  38 A0 00 08 */	li r5, 8
/* 8077BC34  7F C6 F3 78 */	mr r6, r30
/* 8077BC38  4B AF 49 D0 */	b cLib_addCalcAngleS2__FPssss
/* 8077BC3C  A8 1C 06 A4 */	lha r0, 0x6a4(r28)
/* 8077BC40  2C 00 00 00 */	cmpwi r0, 0
/* 8077BC44  40 82 00 28 */	bne lbl_8077BC6C
/* 8077BC48  7F 83 E3 78 */	mr r3, r28
/* 8077BC4C  C0 3C 30 64 */	lfs f1, 0x3064(r28)
/* 8077BC50  4B FF F1 E9 */	bl pl_check__FP10e_s1_classf
/* 8077BC54  2C 03 00 00 */	cmpwi r3, 0
/* 8077BC58  41 82 00 14 */	beq lbl_8077BC6C
/* 8077BC5C  38 00 00 02 */	li r0, 2
/* 8077BC60  B0 1C 06 96 */	sth r0, 0x696(r28)
/* 8077BC64  38 00 00 00 */	li r0, 0
/* 8077BC68  B0 1C 06 98 */	sth r0, 0x698(r28)
lbl_8077BC6C:
/* 8077BC6C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8077BC70  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8077BC74  39 61 00 50 */	addi r11, r1, 0x50
/* 8077BC78  4B BE 65 AC */	b _restgpr_28
/* 8077BC7C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8077BC80  7C 08 03 A6 */	mtlr r0
/* 8077BC84  38 21 00 60 */	addi r1, r1, 0x60
/* 8077BC88  4E 80 00 20 */	blr 
