lbl_8066B7C0:
/* 8066B7C0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8066B7C4  7C 08 02 A6 */	mflr r0
/* 8066B7C8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8066B7CC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8066B7D0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8066B7D4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8066B7D8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8066B7DC  7C 7E 1B 78 */	mr r30, r3
/* 8066B7E0  3C 80 80 67 */	lis r4, lit_3662@ha /* 0x8066EDE8@ha */
/* 8066B7E4  3B E4 ED E8 */	addi r31, r4, lit_3662@l /* 0x8066EDE8@l */
/* 8066B7E8  C3 FF 00 14 */	lfs f31, 0x14(r31)
/* 8066B7EC  38 00 00 01 */	li r0, 1
/* 8066B7F0  98 03 06 16 */	stb r0, 0x616(r3)
/* 8066B7F4  A8 03 05 F6 */	lha r0, 0x5f6(r3)
/* 8066B7F8  2C 00 00 02 */	cmpwi r0, 2
/* 8066B7FC  41 82 00 9C */	beq lbl_8066B898
/* 8066B800  40 80 00 14 */	bge lbl_8066B814
/* 8066B804  2C 00 00 00 */	cmpwi r0, 0
/* 8066B808  41 82 00 18 */	beq lbl_8066B820
/* 8066B80C  40 80 00 38 */	bge lbl_8066B844
/* 8066B810  48 00 04 54 */	b lbl_8066BC64
lbl_8066B814:
/* 8066B814  2C 00 00 04 */	cmpwi r0, 4
/* 8066B818  40 80 04 4C */	bge lbl_8066BC64
/* 8066B81C  48 00 00 CC */	b lbl_8066B8E8
lbl_8066B820:
/* 8066B820  38 80 00 16 */	li r4, 0x16
/* 8066B824  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8066B828  38 A0 00 02 */	li r5, 2
/* 8066B82C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8066B830  4B FF C5 79 */	bl anm_init__FP8do_classifUcf
/* 8066B834  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 8066B838  38 03 00 01 */	addi r0, r3, 1
/* 8066B83C  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066B840  48 00 04 24 */	b lbl_8066BC64
lbl_8066B844:
/* 8066B844  C3 FF 00 44 */	lfs f31, 0x44(r31)
/* 8066B848  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8066B84C  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 8066B850  38 A0 00 02 */	li r5, 2
/* 8066B854  38 C0 08 00 */	li r6, 0x800
/* 8066B858  4B C0 4D B1 */	bl cLib_addCalcAngleS2__FPssss
/* 8066B85C  7F C3 F3 78 */	mr r3, r30
/* 8066B860  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8066B864  4B FF D1 CD */	bl dansa_check2__FP8do_classf
/* 8066B868  2C 03 00 00 */	cmpwi r3, 0
/* 8066B86C  41 82 03 F8 */	beq lbl_8066BC64
/* 8066B870  7F C3 F3 78 */	mr r3, r30
/* 8066B874  38 80 00 15 */	li r4, 0x15
/* 8066B878  FC 20 F8 90 */	fmr f1, f31
/* 8066B87C  38 A0 00 02 */	li r5, 2
/* 8066B880  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066B884  4B FF C5 25 */	bl anm_init__FP8do_classifUcf
/* 8066B888  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 8066B88C  38 03 00 01 */	addi r0, r3, 1
/* 8066B890  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066B894  48 00 03 D0 */	b lbl_8066BC64
lbl_8066B898:
/* 8066B898  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 8066B89C  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8066B8A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B8A4  40 80 00 0C */	bge lbl_8066B8B0
/* 8066B8A8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8066B8AC  D0 1E 06 48 */	stfs f0, 0x648(r30)
lbl_8066B8B0:
/* 8066B8B0  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 8066B8B4  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 8066B8B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B8BC  40 80 03 A8 */	bge lbl_8066BC64
/* 8066B8C0  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 8066B8C4  38 03 00 01 */	addi r0, r3, 1
/* 8066B8C8  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066B8CC  7F C3 F3 78 */	mr r3, r30
/* 8066B8D0  38 80 00 0D */	li r4, 0xd
/* 8066B8D4  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8066B8D8  38 A0 00 02 */	li r5, 2
/* 8066B8DC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066B8E0  4B FF C4 C9 */	bl anm_init__FP8do_classifUcf
/* 8066B8E4  48 00 03 80 */	b lbl_8066BC64
lbl_8066B8E8:
/* 8066B8E8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8066B8EC  D0 1E 06 48 */	stfs f0, 0x648(r30)
/* 8066B8F0  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 8066B8F4  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 8066B8F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066B8FC  40 81 00 20 */	ble lbl_8066B91C
/* 8066B900  38 80 00 15 */	li r4, 0x15
/* 8066B904  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8066B908  38 A0 00 02 */	li r5, 2
/* 8066B90C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066B910  4B FF C4 99 */	bl anm_init__FP8do_classifUcf
/* 8066B914  38 00 00 02 */	li r0, 2
/* 8066B918  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_8066B91C:
/* 8066B91C  A8 1E 06 00 */	lha r0, 0x600(r30)
/* 8066B920  2C 00 00 00 */	cmpwi r0, 0
/* 8066B924  40 82 03 2C */	bne lbl_8066BC50
/* 8066B928  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066B92C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066B930  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8066B934  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8066B938  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8066B93C  7D 89 03 A6 */	mtctr r12
/* 8066B940  4E 80 04 21 */	bctrl 
/* 8066B944  28 03 00 00 */	cmplwi r3, 0
/* 8066B948  41 82 03 08 */	beq lbl_8066BC50
/* 8066B94C  3C 60 80 67 */	lis r3, s_c_sub__FPvPv@ha /* 0x8066B774@ha */
/* 8066B950  38 63 B7 74 */	addi r3, r3, s_c_sub__FPvPv@l /* 0x8066B774@l */
/* 8066B954  7F C4 F3 78 */	mr r4, r30
/* 8066B958  4B 9B 59 E1 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8066B95C  28 03 00 00 */	cmplwi r3, 0
/* 8066B960  41 82 02 E0 */	beq lbl_8066BC40
/* 8066B964  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8066B968  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8066B96C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 8066B970  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8066B974  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 8066B978  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8066B97C  80 63 05 70 */	lwz r3, 0x570(r3)
/* 8066B980  38 63 00 24 */	addi r3, r3, 0x24
/* 8066B984  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8066B988  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8066B98C  80 84 00 00 */	lwz r4, 0(r4)
/* 8066B990  4B CD AB 21 */	bl PSMTXCopy
/* 8066B994  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066B998  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8066B99C  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 8066B9A0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8066B9A4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8066B9A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8066B9AC  38 61 00 44 */	addi r3, r1, 0x44
/* 8066B9B0  38 9E 06 8C */	addi r4, r30, 0x68c
/* 8066B9B4  4B C0 55 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8066B9B8  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8066B9BC  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 8066B9C0  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 8066B9C4  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 8066B9C8  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 8066B9CC  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 8066B9D0  38 00 00 14 */	li r0, 0x14
/* 8066B9D4  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8066B9D8  38 61 00 20 */	addi r3, r1, 0x20
/* 8066B9DC  38 9E 06 8C */	addi r4, r30, 0x68c
/* 8066B9E0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8066B9E4  4B BF B1 51 */	bl __mi__4cXyzCFRC3Vec
/* 8066B9E8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8066B9EC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8066B9F0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8066B9F4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8066B9F8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8066B9FC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8066BA00  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066BA04  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8066BA08  38 61 00 14 */	addi r3, r1, 0x14
/* 8066BA0C  38 9E 06 8C */	addi r4, r30, 0x68c
/* 8066BA10  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8066BA14  4B BF B1 21 */	bl __mi__4cXyzCFRC3Vec
/* 8066BA18  38 61 00 14 */	addi r3, r1, 0x14
/* 8066BA1C  4B CD B7 1D */	bl PSVECSquareMag
/* 8066BA20  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066BA24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066BA28  40 81 00 58 */	ble lbl_8066BA80
/* 8066BA2C  FC 00 08 34 */	frsqrte f0, f1
/* 8066BA30  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 8066BA34  FC 44 00 32 */	fmul f2, f4, f0
/* 8066BA38  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 8066BA3C  FC 00 00 32 */	fmul f0, f0, f0
/* 8066BA40  FC 01 00 32 */	fmul f0, f1, f0
/* 8066BA44  FC 03 00 28 */	fsub f0, f3, f0
/* 8066BA48  FC 02 00 32 */	fmul f0, f2, f0
/* 8066BA4C  FC 44 00 32 */	fmul f2, f4, f0
/* 8066BA50  FC 00 00 32 */	fmul f0, f0, f0
/* 8066BA54  FC 01 00 32 */	fmul f0, f1, f0
/* 8066BA58  FC 03 00 28 */	fsub f0, f3, f0
/* 8066BA5C  FC 02 00 32 */	fmul f0, f2, f0
/* 8066BA60  FC 44 00 32 */	fmul f2, f4, f0
/* 8066BA64  FC 00 00 32 */	fmul f0, f0, f0
/* 8066BA68  FC 01 00 32 */	fmul f0, f1, f0
/* 8066BA6C  FC 03 00 28 */	fsub f0, f3, f0
/* 8066BA70  FC 02 00 32 */	fmul f0, f2, f0
/* 8066BA74  FC 21 00 32 */	fmul f1, f1, f0
/* 8066BA78  FC 20 08 18 */	frsp f1, f1
/* 8066BA7C  48 00 00 88 */	b lbl_8066BB04
lbl_8066BA80:
/* 8066BA80  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 8066BA84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066BA88  40 80 00 10 */	bge lbl_8066BA98
/* 8066BA8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8066BA90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8066BA94  48 00 00 70 */	b lbl_8066BB04
lbl_8066BA98:
/* 8066BA98  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8066BA9C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8066BAA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8066BAA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8066BAA8  7C 03 00 00 */	cmpw r3, r0
/* 8066BAAC  41 82 00 14 */	beq lbl_8066BAC0
/* 8066BAB0  40 80 00 40 */	bge lbl_8066BAF0
/* 8066BAB4  2C 03 00 00 */	cmpwi r3, 0
/* 8066BAB8  41 82 00 20 */	beq lbl_8066BAD8
/* 8066BABC  48 00 00 34 */	b lbl_8066BAF0
lbl_8066BAC0:
/* 8066BAC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066BAC4  41 82 00 0C */	beq lbl_8066BAD0
/* 8066BAC8  38 00 00 01 */	li r0, 1
/* 8066BACC  48 00 00 28 */	b lbl_8066BAF4
lbl_8066BAD0:
/* 8066BAD0  38 00 00 02 */	li r0, 2
/* 8066BAD4  48 00 00 20 */	b lbl_8066BAF4
lbl_8066BAD8:
/* 8066BAD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066BADC  41 82 00 0C */	beq lbl_8066BAE8
/* 8066BAE0  38 00 00 05 */	li r0, 5
/* 8066BAE4  48 00 00 10 */	b lbl_8066BAF4
lbl_8066BAE8:
/* 8066BAE8  38 00 00 03 */	li r0, 3
/* 8066BAEC  48 00 00 08 */	b lbl_8066BAF4
lbl_8066BAF0:
/* 8066BAF0  38 00 00 04 */	li r0, 4
lbl_8066BAF4:
/* 8066BAF4  2C 00 00 01 */	cmpwi r0, 1
/* 8066BAF8  40 82 00 0C */	bne lbl_8066BB04
/* 8066BAFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8066BB00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8066BB04:
/* 8066BB04  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8066BB08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066BB0C  4C 40 13 82 */	cror 2, 0, 2
/* 8066BB10  40 82 01 30 */	bne lbl_8066BC40
/* 8066BB14  38 61 00 38 */	addi r3, r1, 0x38
/* 8066BB18  4B CD B6 21 */	bl PSVECSquareMag
/* 8066BB1C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066BB20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066BB24  40 81 00 58 */	ble lbl_8066BB7C
/* 8066BB28  FC 00 08 34 */	frsqrte f0, f1
/* 8066BB2C  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 8066BB30  FC 44 00 32 */	fmul f2, f4, f0
/* 8066BB34  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 8066BB38  FC 00 00 32 */	fmul f0, f0, f0
/* 8066BB3C  FC 01 00 32 */	fmul f0, f1, f0
/* 8066BB40  FC 03 00 28 */	fsub f0, f3, f0
/* 8066BB44  FC 02 00 32 */	fmul f0, f2, f0
/* 8066BB48  FC 44 00 32 */	fmul f2, f4, f0
/* 8066BB4C  FC 00 00 32 */	fmul f0, f0, f0
/* 8066BB50  FC 01 00 32 */	fmul f0, f1, f0
/* 8066BB54  FC 03 00 28 */	fsub f0, f3, f0
/* 8066BB58  FC 02 00 32 */	fmul f0, f2, f0
/* 8066BB5C  FC 44 00 32 */	fmul f2, f4, f0
/* 8066BB60  FC 00 00 32 */	fmul f0, f0, f0
/* 8066BB64  FC 01 00 32 */	fmul f0, f1, f0
/* 8066BB68  FC 03 00 28 */	fsub f0, f3, f0
/* 8066BB6C  FC 02 00 32 */	fmul f0, f2, f0
/* 8066BB70  FC 21 00 32 */	fmul f1, f1, f0
/* 8066BB74  FC 20 08 18 */	frsp f1, f1
/* 8066BB78  48 00 00 88 */	b lbl_8066BC00
lbl_8066BB7C:
/* 8066BB7C  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 8066BB80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066BB84  40 80 00 10 */	bge lbl_8066BB94
/* 8066BB88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8066BB8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8066BB90  48 00 00 70 */	b lbl_8066BC00
lbl_8066BB94:
/* 8066BB94  D0 21 00 08 */	stfs f1, 8(r1)
/* 8066BB98  80 81 00 08 */	lwz r4, 8(r1)
/* 8066BB9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8066BBA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8066BBA4  7C 03 00 00 */	cmpw r3, r0
/* 8066BBA8  41 82 00 14 */	beq lbl_8066BBBC
/* 8066BBAC  40 80 00 40 */	bge lbl_8066BBEC
/* 8066BBB0  2C 03 00 00 */	cmpwi r3, 0
/* 8066BBB4  41 82 00 20 */	beq lbl_8066BBD4
/* 8066BBB8  48 00 00 34 */	b lbl_8066BBEC
lbl_8066BBBC:
/* 8066BBBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066BBC0  41 82 00 0C */	beq lbl_8066BBCC
/* 8066BBC4  38 00 00 01 */	li r0, 1
/* 8066BBC8  48 00 00 28 */	b lbl_8066BBF0
lbl_8066BBCC:
/* 8066BBCC  38 00 00 02 */	li r0, 2
/* 8066BBD0  48 00 00 20 */	b lbl_8066BBF0
lbl_8066BBD4:
/* 8066BBD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8066BBD8  41 82 00 0C */	beq lbl_8066BBE4
/* 8066BBDC  38 00 00 05 */	li r0, 5
/* 8066BBE0  48 00 00 10 */	b lbl_8066BBF0
lbl_8066BBE4:
/* 8066BBE4  38 00 00 03 */	li r0, 3
/* 8066BBE8  48 00 00 08 */	b lbl_8066BBF0
lbl_8066BBEC:
/* 8066BBEC  38 00 00 04 */	li r0, 4
lbl_8066BBF0:
/* 8066BBF0  2C 00 00 01 */	cmpwi r0, 1
/* 8066BBF4  40 82 00 0C */	bne lbl_8066BC00
/* 8066BBF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8066BBFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8066BC00:
/* 8066BC00  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 8066BC04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066BC08  40 80 00 38 */	bge lbl_8066BC40
/* 8066BC0C  38 60 00 00 */	li r3, 0
/* 8066BC10  98 7E 05 B4 */	stb r3, 0x5b4(r30)
/* 8066BC14  38 00 00 16 */	li r0, 0x16
/* 8066BC18  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 8066BC1C  B0 7E 05 F6 */	sth r3, 0x5f6(r30)
/* 8066BC20  7F C3 F3 78 */	mr r3, r30
/* 8066BC24  38 80 00 0A */	li r4, 0xa
/* 8066BC28  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8066BC2C  38 A0 00 00 */	li r5, 0
/* 8066BC30  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066BC34  4B FF C1 75 */	bl anm_init__FP8do_classifUcf
/* 8066BC38  38 00 00 14 */	li r0, 0x14
/* 8066BC3C  B0 1E 05 FC */	sth r0, 0x5fc(r30)
lbl_8066BC40:
/* 8066BC40  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8066BC44  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8066BC48  4B BF BA 2D */	bl cM_atan2s__Fff
/* 8066BC4C  B0 7E 05 CC */	sth r3, 0x5cc(r30)
lbl_8066BC50:
/* 8066BC50  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8066BC54  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 8066BC58  38 A0 00 04 */	li r5, 4
/* 8066BC5C  38 C0 04 00 */	li r6, 0x400
/* 8066BC60  4B C0 49 A9 */	bl cLib_addCalcAngleS2__FPssss
lbl_8066BC64:
/* 8066BC64  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8066BC68  FC 20 F8 90 */	fmr f1, f31
/* 8066BC6C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8066BC70  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8066BC74  4B C0 3D C9 */	bl cLib_addCalc2__FPffff
/* 8066BC78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066BC7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066BC80  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8066BC84  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8066BC88  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8066BC8C  7D 89 03 A6 */	mtctr r12
/* 8066BC90  4E 80 04 21 */	bctrl 
/* 8066BC94  28 03 00 00 */	cmplwi r3, 0
/* 8066BC98  40 82 00 24 */	bne lbl_8066BCBC
/* 8066BC9C  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 8066BCA0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8066BCA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066BCA8  40 80 00 14 */	bge lbl_8066BCBC
/* 8066BCAC  38 00 00 06 */	li r0, 6
/* 8066BCB0  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 8066BCB4  38 00 00 00 */	li r0, 0
/* 8066BCB8  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_8066BCBC:
/* 8066BCBC  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 8066BCC0  28 00 00 02 */	cmplwi r0, 2
/* 8066BCC4  40 82 00 58 */	bne lbl_8066BD1C
/* 8066BCC8  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 8066BCCC  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 8066BCD0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8066BCD4  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 8066BCD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066BCDC  40 81 00 08 */	ble lbl_8066BCE4
/* 8066BCE0  FC 20 00 90 */	fmr f1, f0
lbl_8066BCE4:
/* 8066BCE4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050023@ha */
/* 8066BCE8  38 03 00 23 */	addi r0, r3, 0x0023 /* 0x00050023@l */
/* 8066BCEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8066BCF0  38 7E 0B E4 */	addi r3, r30, 0xbe4
/* 8066BCF4  38 81 00 10 */	addi r4, r1, 0x10
/* 8066BCF8  FC 00 08 1E */	fctiwz f0, f1
/* 8066BCFC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8066BD00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8066BD04  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8066BD08  38 C0 FF FF */	li r6, -1
/* 8066BD0C  81 9E 0B F4 */	lwz r12, 0xbf4(r30)
/* 8066BD10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8066BD14  7D 89 03 A6 */	mtctr r12
/* 8066BD18  4E 80 04 21 */	bctrl 
lbl_8066BD1C:
/* 8066BD1C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8066BD20  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8066BD24  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8066BD28  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8066BD2C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8066BD30  7C 08 03 A6 */	mtlr r0
/* 8066BD34  38 21 00 70 */	addi r1, r1, 0x70
/* 8066BD38  4E 80 00 20 */	blr 
