lbl_8014B808:
/* 8014B808  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8014B80C  7C 08 02 A6 */	mflr r0
/* 8014B810  90 01 00 54 */	stw r0, 0x54(r1)
/* 8014B814  39 61 00 50 */	addi r11, r1, 0x50
/* 8014B818  48 21 69 C5 */	bl _savegpr_29
/* 8014B81C  7C 7F 1B 78 */	mr r31, r3
/* 8014B820  7C DD 33 78 */	mr r29, r6
/* 8014B824  7C FE 3B 78 */	mr r30, r7
/* 8014B828  2C 05 00 00 */	cmpwi r5, 0
/* 8014B82C  41 82 00 10 */	beq lbl_8014B83C
/* 8014B830  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014B834  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8014B838  48 00 02 B0 */	b lbl_8014BAE8
lbl_8014B83C:
/* 8014B83C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8014B840  48 12 53 C5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8014B844  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8014B848  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8014B84C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8014B850  7F A5 EB 78 */	mr r5, r29
/* 8014B854  7F C6 F3 78 */	mr r6, r30
/* 8014B858  48 12 4D B1 */	bl cLib_addCalcAngleS2__FPssss
/* 8014B85C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8014B860  B0 1F 0D 7A */	sth r0, 0xd7a(r31)
/* 8014B864  C0 3F 0D 40 */	lfs f1, 0xd40(r31)
/* 8014B868  C0 1F 0D 4C */	lfs f0, 0xd4c(r31)
/* 8014B86C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014B870  40 80 01 20 */	bge lbl_8014B990
/* 8014B874  38 61 00 34 */	addi r3, r1, 0x34
/* 8014B878  38 9F 0D 3C */	addi r4, r31, 0xd3c
/* 8014B87C  38 BF 0D 54 */	addi r5, r31, 0xd54
/* 8014B880  48 11 B2 B5 */	bl __mi__4cXyzCFRC3Vec
/* 8014B884  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8014B888  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8014B88C  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014B890  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8014B894  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8014B898  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8014B89C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8014B8A0  48 1F B8 99 */	bl PSVECSquareMag
/* 8014B8A4  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014B8A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014B8AC  40 81 00 58 */	ble lbl_8014B904
/* 8014B8B0  FC 00 08 34 */	frsqrte f0, f1
/* 8014B8B4  C8 82 9A 08 */	lfd f4, lit_4723(r2)
/* 8014B8B8  FC 44 00 32 */	fmul f2, f4, f0
/* 8014B8BC  C8 62 9A 10 */	lfd f3, lit_4724(r2)
/* 8014B8C0  FC 00 00 32 */	fmul f0, f0, f0
/* 8014B8C4  FC 01 00 32 */	fmul f0, f1, f0
/* 8014B8C8  FC 03 00 28 */	fsub f0, f3, f0
/* 8014B8CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8014B8D0  FC 44 00 32 */	fmul f2, f4, f0
/* 8014B8D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8014B8D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8014B8DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8014B8E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8014B8E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8014B8E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8014B8EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8014B8F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8014B8F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8014B8F8  FC 21 00 32 */	fmul f1, f1, f0
/* 8014B8FC  FC 20 08 18 */	frsp f1, f1
/* 8014B900  48 00 00 88 */	b lbl_8014B988
lbl_8014B904:
/* 8014B904  C8 02 9A 18 */	lfd f0, lit_4725(r2)
/* 8014B908  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014B90C  40 80 00 10 */	bge lbl_8014B91C
/* 8014B910  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014B914  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8014B918  48 00 00 70 */	b lbl_8014B988
lbl_8014B91C:
/* 8014B91C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8014B920  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8014B924  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8014B928  3C 00 7F 80 */	lis r0, 0x7f80
/* 8014B92C  7C 03 00 00 */	cmpw r3, r0
/* 8014B930  41 82 00 14 */	beq lbl_8014B944
/* 8014B934  40 80 00 40 */	bge lbl_8014B974
/* 8014B938  2C 03 00 00 */	cmpwi r3, 0
/* 8014B93C  41 82 00 20 */	beq lbl_8014B95C
/* 8014B940  48 00 00 34 */	b lbl_8014B974
lbl_8014B944:
/* 8014B944  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014B948  41 82 00 0C */	beq lbl_8014B954
/* 8014B94C  38 00 00 01 */	li r0, 1
/* 8014B950  48 00 00 28 */	b lbl_8014B978
lbl_8014B954:
/* 8014B954  38 00 00 02 */	li r0, 2
/* 8014B958  48 00 00 20 */	b lbl_8014B978
lbl_8014B95C:
/* 8014B95C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014B960  41 82 00 0C */	beq lbl_8014B96C
/* 8014B964  38 00 00 05 */	li r0, 5
/* 8014B968  48 00 00 10 */	b lbl_8014B978
lbl_8014B96C:
/* 8014B96C  38 00 00 03 */	li r0, 3
/* 8014B970  48 00 00 08 */	b lbl_8014B978
lbl_8014B974:
/* 8014B974  38 00 00 04 */	li r0, 4
lbl_8014B978:
/* 8014B978  2C 00 00 01 */	cmpwi r0, 1
/* 8014B97C  40 82 00 0C */	bne lbl_8014B988
/* 8014B980  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014B984  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8014B988:
/* 8014B988  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 8014B98C  48 00 01 1C */	b lbl_8014BAA8
lbl_8014B990:
/* 8014B990  38 61 00 28 */	addi r3, r1, 0x28
/* 8014B994  38 9F 0D 48 */	addi r4, r31, 0xd48
/* 8014B998  38 BF 0D 60 */	addi r5, r31, 0xd60
/* 8014B99C  48 11 B1 99 */	bl __mi__4cXyzCFRC3Vec
/* 8014B9A0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8014B9A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8014B9A8  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014B9AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8014B9B0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8014B9B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8014B9B8  38 61 00 10 */	addi r3, r1, 0x10
/* 8014B9BC  48 1F B7 7D */	bl PSVECSquareMag
/* 8014B9C0  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 8014B9C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014B9C8  40 81 00 58 */	ble lbl_8014BA20
/* 8014B9CC  FC 00 08 34 */	frsqrte f0, f1
/* 8014B9D0  C8 82 9A 08 */	lfd f4, lit_4723(r2)
/* 8014B9D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8014B9D8  C8 62 9A 10 */	lfd f3, lit_4724(r2)
/* 8014B9DC  FC 00 00 32 */	fmul f0, f0, f0
/* 8014B9E0  FC 01 00 32 */	fmul f0, f1, f0
/* 8014B9E4  FC 03 00 28 */	fsub f0, f3, f0
/* 8014B9E8  FC 02 00 32 */	fmul f0, f2, f0
/* 8014B9EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8014B9F0  FC 00 00 32 */	fmul f0, f0, f0
/* 8014B9F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8014B9F8  FC 03 00 28 */	fsub f0, f3, f0
/* 8014B9FC  FC 02 00 32 */	fmul f0, f2, f0
/* 8014BA00  FC 44 00 32 */	fmul f2, f4, f0
/* 8014BA04  FC 00 00 32 */	fmul f0, f0, f0
/* 8014BA08  FC 01 00 32 */	fmul f0, f1, f0
/* 8014BA0C  FC 03 00 28 */	fsub f0, f3, f0
/* 8014BA10  FC 02 00 32 */	fmul f0, f2, f0
/* 8014BA14  FC 21 00 32 */	fmul f1, f1, f0
/* 8014BA18  FC 20 08 18 */	frsp f1, f1
/* 8014BA1C  48 00 00 88 */	b lbl_8014BAA4
lbl_8014BA20:
/* 8014BA20  C8 02 9A 18 */	lfd f0, lit_4725(r2)
/* 8014BA24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014BA28  40 80 00 10 */	bge lbl_8014BA38
/* 8014BA2C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014BA30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8014BA34  48 00 00 70 */	b lbl_8014BAA4
lbl_8014BA38:
/* 8014BA38  D0 21 00 08 */	stfs f1, 8(r1)
/* 8014BA3C  80 81 00 08 */	lwz r4, 8(r1)
/* 8014BA40  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8014BA44  3C 00 7F 80 */	lis r0, 0x7f80
/* 8014BA48  7C 03 00 00 */	cmpw r3, r0
/* 8014BA4C  41 82 00 14 */	beq lbl_8014BA60
/* 8014BA50  40 80 00 40 */	bge lbl_8014BA90
/* 8014BA54  2C 03 00 00 */	cmpwi r3, 0
/* 8014BA58  41 82 00 20 */	beq lbl_8014BA78
/* 8014BA5C  48 00 00 34 */	b lbl_8014BA90
lbl_8014BA60:
/* 8014BA60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014BA64  41 82 00 0C */	beq lbl_8014BA70
/* 8014BA68  38 00 00 01 */	li r0, 1
/* 8014BA6C  48 00 00 28 */	b lbl_8014BA94
lbl_8014BA70:
/* 8014BA70  38 00 00 02 */	li r0, 2
/* 8014BA74  48 00 00 20 */	b lbl_8014BA94
lbl_8014BA78:
/* 8014BA78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8014BA7C  41 82 00 0C */	beq lbl_8014BA88
/* 8014BA80  38 00 00 05 */	li r0, 5
/* 8014BA84  48 00 00 10 */	b lbl_8014BA94
lbl_8014BA88:
/* 8014BA88  38 00 00 03 */	li r0, 3
/* 8014BA8C  48 00 00 08 */	b lbl_8014BA94
lbl_8014BA90:
/* 8014BA90  38 00 00 04 */	li r0, 4
lbl_8014BA94:
/* 8014BA94  2C 00 00 01 */	cmpwi r0, 1
/* 8014BA98  40 82 00 0C */	bne lbl_8014BAA4
/* 8014BA9C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8014BAA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8014BAA4:
/* 8014BAA4  D0 3F 05 2C */	stfs f1, 0x52c(r31)
lbl_8014BAA8:
/* 8014BAA8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8014BAAC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8014BAB0  A8 1F 0D CA */	lha r0, 0xdca(r31)
/* 8014BAB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8014BAB8  7C 63 02 14 */	add r3, r3, r0
/* 8014BABC  C0 23 00 04 */	lfs f1, 4(r3)
/* 8014BAC0  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 8014BAC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8014BAC8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8014BACC  A8 1F 0D CA */	lha r0, 0xdca(r31)
/* 8014BAD0  2C 00 00 00 */	cmpwi r0, 0
/* 8014BAD4  40 80 00 14 */	bge lbl_8014BAE8
/* 8014BAD8  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 8014BADC  C0 02 9A 74 */	lfs f0, lit_7222(r2)
/* 8014BAE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8014BAE4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_8014BAE8:
/* 8014BAE8  39 61 00 50 */	addi r11, r1, 0x50
/* 8014BAEC  48 21 67 3D */	bl _restgpr_29
/* 8014BAF0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8014BAF4  7C 08 03 A6 */	mtlr r0
/* 8014BAF8  38 21 00 50 */	addi r1, r1, 0x50
/* 8014BAFC  4E 80 00 20 */	blr 
