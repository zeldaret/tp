lbl_8084B96C:
/* 8084B96C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8084B970  7C 08 02 A6 */	mflr r0
/* 8084B974  90 01 00 44 */	stw r0, 0x44(r1)
/* 8084B978  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8084B97C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8084B980  39 61 00 30 */	addi r11, r1, 0x30
/* 8084B984  4B B1 68 4C */	b _savegpr_26
/* 8084B988  7C 7B 1B 78 */	mr r27, r3
/* 8084B98C  7C 9C 23 78 */	mr r28, r4
/* 8084B990  7C BD 2B 79 */	or. r29, r5, r5
/* 8084B994  3C 60 80 85 */	lis r3, lit_3929@ha
/* 8084B998  3B E3 4B 04 */	addi r31, r3, lit_3929@l
/* 8084B99C  40 82 00 0C */	bne lbl_8084B9A8
/* 8084B9A0  38 00 20 00 */	li r0, 0x2000
/* 8084B9A4  48 00 00 20 */	b lbl_8084B9C4
lbl_8084B9A8:
/* 8084B9A8  2C 1D 00 01 */	cmpwi r29, 1
/* 8084B9AC  40 82 00 0C */	bne lbl_8084B9B8
/* 8084B9B0  38 00 10 00 */	li r0, 0x1000
/* 8084B9B4  48 00 00 10 */	b lbl_8084B9C4
lbl_8084B9B8:
/* 8084B9B8  2C 1D 00 02 */	cmpwi r29, 2
/* 8084B9BC  40 82 00 08 */	bne lbl_8084B9C4
/* 8084B9C0  38 00 2A AA */	li r0, 0x2aaa
lbl_8084B9C4:
/* 8084B9C4  7F 63 DB 78 */	mr r3, r27
/* 8084B9C8  7C 00 07 34 */	extsh r0, r0
/* 8084B9CC  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 8084B9D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8084B9D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084B9D8  3C 00 43 30 */	lis r0, 0x4330
/* 8084B9DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8084B9E0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8084B9E4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8084B9E8  4B FF FB F5 */	bl getValueY__8daKago_cFf
/* 8084B9EC  7C 7E 1B 78 */	mr r30, r3
/* 8084B9F0  80 9B 06 18 */	lwz r4, 0x618(r27)
/* 8084B9F4  28 04 00 00 */	cmplwi r4, 0
/* 8084B9F8  41 82 00 18 */	beq lbl_8084BA10
/* 8084B9FC  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8084BA00  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8084BA04  4B A2 52 70 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8084BA08  7C 03 00 D0 */	neg r0, r3
/* 8084BA0C  7C 1E 07 34 */	extsh r30, r0
lbl_8084BA10:
/* 8084BA10  7F C0 07 35 */	extsh. r0, r30
/* 8084BA14  41 82 01 10 */	beq lbl_8084BB24
/* 8084BA18  7F 63 DB 78 */	mr r3, r27
/* 8084BA1C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8084BA20  4B FF FB BD */	bl getValueY__8daKago_cFf
/* 8084BA24  A8 1B 07 10 */	lha r0, 0x710(r27)
/* 8084BA28  7C 00 1A 14 */	add r0, r0, r3
/* 8084BA2C  B0 1B 07 10 */	sth r0, 0x710(r27)
/* 8084BA30  38 80 02 00 */	li r4, 0x200
/* 8084BA34  2C 1D 00 02 */	cmpwi r29, 2
/* 8084BA38  40 82 00 08 */	bne lbl_8084BA40
/* 8084BA3C  38 80 04 00 */	li r4, 0x400
lbl_8084BA40:
/* 8084BA40  A8 7B 07 10 */	lha r3, 0x710(r27)
/* 8084BA44  7C 80 07 34 */	extsh r0, r4
/* 8084BA48  7C 03 00 00 */	cmpw r3, r0
/* 8084BA4C  40 81 00 08 */	ble lbl_8084BA54
/* 8084BA50  B0 9B 07 10 */	sth r4, 0x710(r27)
lbl_8084BA54:
/* 8084BA54  A8 7B 07 10 */	lha r3, 0x710(r27)
/* 8084BA58  7C 80 07 34 */	extsh r0, r4
/* 8084BA5C  7C 00 00 D0 */	neg r0, r0
/* 8084BA60  7C 03 00 00 */	cmpw r3, r0
/* 8084BA64  40 80 00 08 */	bge lbl_8084BA6C
/* 8084BA68  B0 1B 07 10 */	sth r0, 0x710(r27)
lbl_8084BA6C:
/* 8084BA6C  C0 3B 06 F4 */	lfs f1, 0x6f4(r27)
/* 8084BA70  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8084BA74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084BA78  40 81 00 58 */	ble lbl_8084BAD0
/* 8084BA7C  A8 7B 04 DC */	lha r3, 0x4dc(r27)
/* 8084BA80  7F C0 07 34 */	extsh r0, r30
/* 8084BA84  7C 03 00 00 */	cmpw r3, r0
/* 8084BA88  40 80 00 14 */	bge lbl_8084BA9C
/* 8084BA8C  A8 1B 07 10 */	lha r0, 0x710(r27)
/* 8084BA90  7C 03 02 14 */	add r0, r3, r0
/* 8084BA94  B0 1B 04 DC */	sth r0, 0x4dc(r27)
/* 8084BA98  48 00 01 20 */	b lbl_8084BBB8
lbl_8084BA9C:
/* 8084BA9C  38 7B 07 10 */	addi r3, r27, 0x710
/* 8084BAA0  38 80 00 00 */	li r4, 0
/* 8084BAA4  38 A0 00 08 */	li r5, 8
/* 8084BAA8  38 C0 00 20 */	li r6, 0x20
/* 8084BAAC  38 E0 00 10 */	li r7, 0x10
/* 8084BAB0  4B A2 4A 90 */	b cLib_addCalcAngleS__FPsssss
/* 8084BAB4  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 8084BAB8  7F C4 F3 78 */	mr r4, r30
/* 8084BABC  38 A0 00 08 */	li r5, 8
/* 8084BAC0  38 C0 01 00 */	li r6, 0x100
/* 8084BAC4  38 E0 00 40 */	li r7, 0x40
/* 8084BAC8  4B A2 4A 78 */	b cLib_addCalcAngleS__FPsssss
/* 8084BACC  48 00 00 EC */	b lbl_8084BBB8
lbl_8084BAD0:
/* 8084BAD0  A8 7B 04 DC */	lha r3, 0x4dc(r27)
/* 8084BAD4  7F C0 07 34 */	extsh r0, r30
/* 8084BAD8  7C 03 00 00 */	cmpw r3, r0
/* 8084BADC  40 81 00 14 */	ble lbl_8084BAF0
/* 8084BAE0  A8 1B 07 10 */	lha r0, 0x710(r27)
/* 8084BAE4  7C 03 02 14 */	add r0, r3, r0
/* 8084BAE8  B0 1B 04 DC */	sth r0, 0x4dc(r27)
/* 8084BAEC  48 00 00 CC */	b lbl_8084BBB8
lbl_8084BAF0:
/* 8084BAF0  38 7B 07 10 */	addi r3, r27, 0x710
/* 8084BAF4  38 80 00 00 */	li r4, 0
/* 8084BAF8  38 A0 00 08 */	li r5, 8
/* 8084BAFC  38 C0 00 20 */	li r6, 0x20
/* 8084BB00  38 E0 00 10 */	li r7, 0x10
/* 8084BB04  4B A2 4A 3C */	b cLib_addCalcAngleS__FPsssss
/* 8084BB08  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 8084BB0C  7F C4 F3 78 */	mr r4, r30
/* 8084BB10  38 A0 00 08 */	li r5, 8
/* 8084BB14  38 C0 01 00 */	li r6, 0x100
/* 8084BB18  38 E0 00 40 */	li r7, 0x40
/* 8084BB1C  4B A2 4A 24 */	b cLib_addCalcAngleS__FPsssss
/* 8084BB20  48 00 00 98 */	b lbl_8084BBB8
lbl_8084BB24:
/* 8084BB24  38 00 00 00 */	li r0, 0
/* 8084BB28  B0 1B 07 10 */	sth r0, 0x710(r27)
/* 8084BB2C  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 8084BB30  C0 1B 07 04 */	lfs f0, 0x704(r27)
/* 8084BB34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084BB38  40 80 00 14 */	bge lbl_8084BB4C
/* 8084BB3C  7F 63 DB 78 */	mr r3, r27
/* 8084BB40  38 80 00 00 */	li r4, 0
/* 8084BB44  4B FF EB 99 */	bl getBeforeGroundHeight__8daKago_cFUc
/* 8084BB48  7C 7E 1B 78 */	mr r30, r3
lbl_8084BB4C:
/* 8084BB4C  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 8084BB50  C0 1B 07 08 */	lfs f0, 0x708(r27)
/* 8084BB54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084BB58  40 81 00 14 */	ble lbl_8084BB6C
/* 8084BB5C  7F 63 DB 78 */	mr r3, r27
/* 8084BB60  38 80 00 01 */	li r4, 1
/* 8084BB64  4B FF EB 79 */	bl getBeforeGroundHeight__8daKago_cFUc
/* 8084BB68  7C 7E 1B 78 */	mr r30, r3
lbl_8084BB6C:
/* 8084BB6C  7F C0 07 35 */	extsh. r0, r30
/* 8084BB70  41 82 00 20 */	beq lbl_8084BB90
/* 8084BB74  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 8084BB78  7F C4 F3 78 */	mr r4, r30
/* 8084BB7C  38 A0 00 08 */	li r5, 8
/* 8084BB80  38 C0 01 00 */	li r6, 0x100
/* 8084BB84  38 E0 00 10 */	li r7, 0x10
/* 8084BB88  4B A2 49 B8 */	b cLib_addCalcAngleS__FPsssss
/* 8084BB8C  48 00 00 1C */	b lbl_8084BBA8
lbl_8084BB90:
/* 8084BB90  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 8084BB94  7F C4 F3 78 */	mr r4, r30
/* 8084BB98  38 A0 00 08 */	li r5, 8
/* 8084BB9C  38 C0 01 00 */	li r6, 0x100
/* 8084BBA0  38 E0 00 10 */	li r7, 0x10
/* 8084BBA4  4B A2 49 9C */	b cLib_addCalcAngleS__FPsssss
lbl_8084BBA8:
/* 8084BBA8  A8 7B 04 DC */	lha r3, 0x4dc(r27)
/* 8084BBAC  A8 1B 07 10 */	lha r0, 0x710(r27)
/* 8084BBB0  7C 03 02 14 */	add r0, r3, r0
/* 8084BBB4  B0 1B 04 DC */	sth r0, 0x4dc(r27)
lbl_8084BBB8:
/* 8084BBB8  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 8084BBBC  2C 00 2A AA */	cmpwi r0, 0x2aaa
/* 8084BBC0  40 81 00 0C */	ble lbl_8084BBCC
/* 8084BBC4  38 00 2A AA */	li r0, 0x2aaa
/* 8084BBC8  B0 1B 04 DC */	sth r0, 0x4dc(r27)
lbl_8084BBCC:
/* 8084BBCC  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 8084BBD0  2C 00 D5 56 */	cmpwi r0, -10922
/* 8084BBD4  40 80 00 0C */	bge lbl_8084BBE0
/* 8084BBD8  38 00 D5 56 */	li r0, -10922
/* 8084BBDC  B0 1B 04 DC */	sth r0, 0x4dc(r27)
lbl_8084BBE0:
/* 8084BBE0  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 8084BBE4  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 8084BBE8  3B 40 20 00 */	li r26, 0x2000
/* 8084BBEC  2C 1D 00 01 */	cmpwi r29, 1
/* 8084BBF0  40 82 00 0C */	bne lbl_8084BBFC
/* 8084BBF4  3B 40 10 00 */	li r26, 0x1000
/* 8084BBF8  48 00 00 10 */	b lbl_8084BC08
lbl_8084BBFC:
/* 8084BBFC  2C 1D 00 02 */	cmpwi r29, 2
/* 8084BC00  40 82 00 08 */	bne lbl_8084BC08
/* 8084BC04  3B 40 2A AA */	li r26, 0x2aaa
lbl_8084BC08:
/* 8084BC08  C3 FF 00 DC */	lfs f31, 0xdc(r31)
/* 8084BC0C  3B C0 01 00 */	li r30, 0x100
/* 8084BC10  2C 1D 00 02 */	cmpwi r29, 2
/* 8084BC14  40 82 00 0C */	bne lbl_8084BC20
/* 8084BC18  C3 FF 00 74 */	lfs f31, 0x74(r31)
/* 8084BC1C  3B C0 02 00 */	li r30, 0x200
lbl_8084BC20:
/* 8084BC20  7F 63 DB 78 */	mr r3, r27
/* 8084BC24  7F 40 07 34 */	extsh r0, r26
/* 8084BC28  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 8084BC2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8084BC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084BC34  3C 00 43 30 */	lis r0, 0x4330
/* 8084BC38  90 01 00 10 */	stw r0, 0x10(r1)
/* 8084BC3C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8084BC40  EC 20 08 28 */	fsubs f1, f0, f1
/* 8084BC44  4B FF FA B1 */	bl getValueX__8daKago_cFf
/* 8084BC48  7F 9C 07 34 */	extsh r28, r28
/* 8084BC4C  7C 1C 1A 14 */	add r0, r28, r3
/* 8084BC50  7C 1D 07 34 */	extsh r29, r0
/* 8084BC54  80 9B 06 18 */	lwz r4, 0x618(r27)
/* 8084BC58  28 04 00 00 */	cmplwi r4, 0
/* 8084BC5C  41 82 00 14 */	beq lbl_8084BC70
/* 8084BC60  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8084BC64  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8084BC68  4B A2 4F 9C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8084BC6C  7C 7D 1B 78 */	mr r29, r3
lbl_8084BC70:
/* 8084BC70  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8084BC74  7C 1C 00 50 */	subf r0, r28, r0
/* 8084BC78  7C 03 07 34 */	extsh r3, r0
/* 8084BC7C  4B B1 94 54 */	b abs
/* 8084BC80  7F 44 07 34 */	extsh r4, r26
/* 8084BC84  7C 03 20 00 */	cmpw r3, r4
/* 8084BC88  40 80 01 2C */	bge lbl_8084BDB4
/* 8084BC8C  C0 3B 06 F0 */	lfs f1, 0x6f0(r27)
/* 8084BC90  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8084BC94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8084BC98  41 82 00 F0 */	beq lbl_8084BD88
/* 8084BC9C  7F 63 DB 78 */	mr r3, r27
/* 8084BCA0  FC 20 F8 90 */	fmr f1, f31
/* 8084BCA4  4B FF FA 51 */	bl getValueX__8daKago_cFf
/* 8084BCA8  A8 1B 07 12 */	lha r0, 0x712(r27)
/* 8084BCAC  7C 00 1A 14 */	add r0, r0, r3
/* 8084BCB0  B0 1B 07 12 */	sth r0, 0x712(r27)
/* 8084BCB4  7F 63 DB 78 */	mr r3, r27
/* 8084BCB8  7F C0 07 34 */	extsh r0, r30
/* 8084BCBC  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 8084BCC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8084BCC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084BCC8  3C 00 43 30 */	lis r0, 0x4330
/* 8084BCCC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8084BCD0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8084BCD4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8084BCD8  4B FF FA 41 */	bl getValueAbsX__8daKago_cFf
/* 8084BCDC  7C 63 07 34 */	extsh r3, r3
/* 8084BCE0  A8 1B 07 12 */	lha r0, 0x712(r27)
/* 8084BCE4  7C 00 18 00 */	cmpw r0, r3
/* 8084BCE8  40 81 00 30 */	ble lbl_8084BD18
/* 8084BCEC  7F 63 DB 78 */	mr r3, r27
/* 8084BCF0  7F C0 07 34 */	extsh r0, r30
/* 8084BCF4  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 8084BCF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8084BCFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084BD00  3C 00 43 30 */	lis r0, 0x4330
/* 8084BD04  90 01 00 10 */	stw r0, 0x10(r1)
/* 8084BD08  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8084BD0C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8084BD10  4B FF FA 09 */	bl getValueAbsX__8daKago_cFf
/* 8084BD14  B0 7B 07 12 */	sth r3, 0x712(r27)
lbl_8084BD18:
/* 8084BD18  7F 63 DB 78 */	mr r3, r27
/* 8084BD1C  7F C0 07 34 */	extsh r0, r30
/* 8084BD20  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 8084BD24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8084BD28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084BD2C  3C 00 43 30 */	lis r0, 0x4330
/* 8084BD30  90 01 00 10 */	stw r0, 0x10(r1)
/* 8084BD34  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8084BD38  EC 20 08 28 */	fsubs f1, f0, f1
/* 8084BD3C  4B FF F9 DD */	bl getValueAbsX__8daKago_cFf
/* 8084BD40  7C 60 07 34 */	extsh r0, r3
/* 8084BD44  7C 60 00 D0 */	neg r3, r0
/* 8084BD48  A8 1B 07 12 */	lha r0, 0x712(r27)
/* 8084BD4C  7C 00 18 00 */	cmpw r0, r3
/* 8084BD50  40 80 00 50 */	bge lbl_8084BDA0
/* 8084BD54  7F 63 DB 78 */	mr r3, r27
/* 8084BD58  7F C0 07 34 */	extsh r0, r30
/* 8084BD5C  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 8084BD60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8084BD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084BD68  3C 00 43 30 */	lis r0, 0x4330
/* 8084BD6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8084BD70  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8084BD74  EC 20 08 28 */	fsubs f1, f0, f1
/* 8084BD78  4B FF F9 A1 */	bl getValueAbsX__8daKago_cFf
/* 8084BD7C  7C 03 00 D0 */	neg r0, r3
/* 8084BD80  B0 1B 07 12 */	sth r0, 0x712(r27)
/* 8084BD84  48 00 00 1C */	b lbl_8084BDA0
lbl_8084BD88:
/* 8084BD88  38 7B 07 12 */	addi r3, r27, 0x712
/* 8084BD8C  38 80 00 00 */	li r4, 0
/* 8084BD90  38 A0 00 08 */	li r5, 8
/* 8084BD94  38 C0 00 20 */	li r6, 0x20
/* 8084BD98  38 E0 00 10 */	li r7, 0x10
/* 8084BD9C  4B A2 47 A4 */	b cLib_addCalcAngleS__FPsssss
lbl_8084BDA0:
/* 8084BDA0  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 8084BDA4  A8 1B 07 12 */	lha r0, 0x712(r27)
/* 8084BDA8  7C 03 02 14 */	add r0, r3, r0
/* 8084BDAC  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8084BDB0  48 00 01 84 */	b lbl_8084BF34
lbl_8084BDB4:
/* 8084BDB4  38 60 00 00 */	li r3, 0
/* 8084BDB8  C0 3B 06 F0 */	lfs f1, 0x6f0(r27)
/* 8084BDBC  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8084BDC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084BDC4  40 80 00 20 */	bge lbl_8084BDE4
/* 8084BDC8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8084BDCC  7C 1C 00 50 */	subf r0, r28, r0
/* 8084BDD0  7C 00 07 34 */	extsh r0, r0
/* 8084BDD4  7C 00 20 00 */	cmpw r0, r4
/* 8084BDD8  40 80 00 28 */	bge lbl_8084BE00
/* 8084BDDC  38 60 00 01 */	li r3, 1
/* 8084BDE0  48 00 00 20 */	b lbl_8084BE00
lbl_8084BDE4:
/* 8084BDE4  40 81 00 1C */	ble lbl_8084BE00
/* 8084BDE8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8084BDEC  7C 1C 00 50 */	subf r0, r28, r0
/* 8084BDF0  7C 00 07 34 */	extsh r0, r0
/* 8084BDF4  7C 00 20 00 */	cmpw r0, r4
/* 8084BDF8  40 81 00 08 */	ble lbl_8084BE00
/* 8084BDFC  38 60 00 01 */	li r3, 1
lbl_8084BE00:
/* 8084BE00  2C 03 00 00 */	cmpwi r3, 0
/* 8084BE04  41 82 01 00 */	beq lbl_8084BF04
/* 8084BE08  7F 63 DB 78 */	mr r3, r27
/* 8084BE0C  FC 20 F8 90 */	fmr f1, f31
/* 8084BE10  4B FF F8 E5 */	bl getValueX__8daKago_cFf
/* 8084BE14  A8 1B 07 12 */	lha r0, 0x712(r27)
/* 8084BE18  7C 00 1A 14 */	add r0, r0, r3
/* 8084BE1C  B0 1B 07 12 */	sth r0, 0x712(r27)
/* 8084BE20  7F 63 DB 78 */	mr r3, r27
/* 8084BE24  7F C0 07 34 */	extsh r0, r30
/* 8084BE28  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 8084BE2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8084BE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084BE34  3C 00 43 30 */	lis r0, 0x4330
/* 8084BE38  90 01 00 10 */	stw r0, 0x10(r1)
/* 8084BE3C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8084BE40  EC 20 08 28 */	fsubs f1, f0, f1
/* 8084BE44  4B FF F8 D5 */	bl getValueAbsX__8daKago_cFf
/* 8084BE48  7C 63 07 34 */	extsh r3, r3
/* 8084BE4C  A8 1B 07 12 */	lha r0, 0x712(r27)
/* 8084BE50  7C 00 18 00 */	cmpw r0, r3
/* 8084BE54  40 81 00 30 */	ble lbl_8084BE84
/* 8084BE58  7F 63 DB 78 */	mr r3, r27
/* 8084BE5C  7F C0 07 34 */	extsh r0, r30
/* 8084BE60  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 8084BE64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8084BE68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084BE6C  3C 00 43 30 */	lis r0, 0x4330
/* 8084BE70  90 01 00 10 */	stw r0, 0x10(r1)
/* 8084BE74  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8084BE78  EC 20 08 28 */	fsubs f1, f0, f1
/* 8084BE7C  4B FF F8 9D */	bl getValueAbsX__8daKago_cFf
/* 8084BE80  B0 7B 07 12 */	sth r3, 0x712(r27)
lbl_8084BE84:
/* 8084BE84  7F 63 DB 78 */	mr r3, r27
/* 8084BE88  7F C0 07 34 */	extsh r0, r30
/* 8084BE8C  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 8084BE90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8084BE94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084BE98  3C 00 43 30 */	lis r0, 0x4330
/* 8084BE9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8084BEA0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8084BEA4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8084BEA8  4B FF F8 71 */	bl getValueAbsX__8daKago_cFf
/* 8084BEAC  7C 60 07 34 */	extsh r0, r3
/* 8084BEB0  7C 60 00 D0 */	neg r3, r0
/* 8084BEB4  A8 1B 07 12 */	lha r0, 0x712(r27)
/* 8084BEB8  7C 00 18 00 */	cmpw r0, r3
/* 8084BEBC  40 80 00 34 */	bge lbl_8084BEF0
/* 8084BEC0  7F 63 DB 78 */	mr r3, r27
/* 8084BEC4  7F C0 07 34 */	extsh r0, r30
/* 8084BEC8  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 8084BECC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8084BED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084BED4  3C 00 43 30 */	lis r0, 0x4330
/* 8084BED8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8084BEDC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8084BEE0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8084BEE4  4B FF F8 35 */	bl getValueAbsX__8daKago_cFf
/* 8084BEE8  7C 03 00 D0 */	neg r0, r3
/* 8084BEEC  B0 1B 07 12 */	sth r0, 0x712(r27)
lbl_8084BEF0:
/* 8084BEF0  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 8084BEF4  A8 1B 07 12 */	lha r0, 0x712(r27)
/* 8084BEF8  7C 03 02 14 */	add r0, r3, r0
/* 8084BEFC  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8084BF00  48 00 00 34 */	b lbl_8084BF34
lbl_8084BF04:
/* 8084BF04  38 7B 07 12 */	addi r3, r27, 0x712
/* 8084BF08  38 80 00 00 */	li r4, 0
/* 8084BF0C  38 A0 00 08 */	li r5, 8
/* 8084BF10  38 C0 00 20 */	li r6, 0x20
/* 8084BF14  38 E0 00 10 */	li r7, 0x10
/* 8084BF18  4B A2 46 28 */	b cLib_addCalcAngleS__FPsssss
/* 8084BF1C  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8084BF20  7F A4 EB 78 */	mr r4, r29
/* 8084BF24  38 A0 00 08 */	li r5, 8
/* 8084BF28  38 C0 00 40 */	li r6, 0x40
/* 8084BF2C  38 E0 00 10 */	li r7, 0x10
/* 8084BF30  4B A2 46 10 */	b cLib_addCalcAngleS__FPsssss
lbl_8084BF34:
/* 8084BF34  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8084BF38  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8084BF3C  38 7B 04 E8 */	addi r3, r27, 0x4e8
/* 8084BF40  A8 1B 07 12 */	lha r0, 0x712(r27)
/* 8084BF44  7C 00 00 D0 */	neg r0, r0
/* 8084BF48  54 00 28 34 */	slwi r0, r0, 5
/* 8084BF4C  7C 04 07 34 */	extsh r4, r0
/* 8084BF50  38 A0 00 08 */	li r5, 8
/* 8084BF54  38 C0 04 00 */	li r6, 0x400
/* 8084BF58  38 E0 00 10 */	li r7, 0x10
/* 8084BF5C  4B A2 45 E4 */	b cLib_addCalcAngleS__FPsssss
/* 8084BF60  A8 1B 04 E8 */	lha r0, 0x4e8(r27)
/* 8084BF64  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8084BF68  40 81 00 0C */	ble lbl_8084BF74
/* 8084BF6C  38 00 30 00 */	li r0, 0x3000
/* 8084BF70  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
lbl_8084BF74:
/* 8084BF74  A8 1B 04 E8 */	lha r0, 0x4e8(r27)
/* 8084BF78  2C 00 D0 00 */	cmpwi r0, -12288
/* 8084BF7C  40 80 00 0C */	bge lbl_8084BF88
/* 8084BF80  38 00 D0 00 */	li r0, -12288
/* 8084BF84  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
lbl_8084BF88:
/* 8084BF88  88 1B 06 E3 */	lbz r0, 0x6e3(r27)
/* 8084BF8C  28 00 00 01 */	cmplwi r0, 1
/* 8084BF90  40 82 00 6C */	bne lbl_8084BFFC
/* 8084BF94  38 00 00 02 */	li r0, 2
/* 8084BF98  98 1B 06 E3 */	stb r0, 0x6e3(r27)
/* 8084BF9C  88 1B 06 E7 */	lbz r0, 0x6e7(r27)
/* 8084BFA0  28 00 00 01 */	cmplwi r0, 1
/* 8084BFA4  40 82 00 30 */	bne lbl_8084BFD4
/* 8084BFA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B9@ha */
/* 8084BFAC  38 03 05 B9 */	addi r0, r3, 0x05B9 /* 0x000705B9@l */
/* 8084BFB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8084BFB4  38 7B 05 74 */	addi r3, r27, 0x574
/* 8084BFB8  38 81 00 0C */	addi r4, r1, 0xc
/* 8084BFBC  38 A0 FF FF */	li r5, -1
/* 8084BFC0  81 9B 05 74 */	lwz r12, 0x574(r27)
/* 8084BFC4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8084BFC8  7D 89 03 A6 */	mtctr r12
/* 8084BFCC  4E 80 04 21 */	bctrl 
/* 8084BFD0  48 00 00 2C */	b lbl_8084BFFC
lbl_8084BFD4:
/* 8084BFD4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B8@ha */
/* 8084BFD8  38 03 05 B8 */	addi r0, r3, 0x05B8 /* 0x000705B8@l */
/* 8084BFDC  90 01 00 08 */	stw r0, 8(r1)
/* 8084BFE0  38 7B 05 74 */	addi r3, r27, 0x574
/* 8084BFE4  38 81 00 08 */	addi r4, r1, 8
/* 8084BFE8  38 A0 FF FF */	li r5, -1
/* 8084BFEC  81 9B 05 74 */	lwz r12, 0x574(r27)
/* 8084BFF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8084BFF4  7D 89 03 A6 */	mtctr r12
/* 8084BFF8  4E 80 04 21 */	bctrl 
lbl_8084BFFC:
/* 8084BFFC  88 1B 06 E6 */	lbz r0, 0x6e6(r27)
/* 8084C000  28 00 00 01 */	cmplwi r0, 1
/* 8084C004  40 82 00 54 */	bne lbl_8084C058
/* 8084C008  38 00 00 02 */	li r0, 2
/* 8084C00C  98 1B 06 E6 */	stb r0, 0x6e6(r27)
/* 8084C010  80 1B 07 40 */	lwz r0, 0x740(r27)
/* 8084C014  2C 00 00 05 */	cmpwi r0, 5
/* 8084C018  40 82 00 24 */	bne lbl_8084C03C
/* 8084C01C  3C 60 80 85 */	lis r3, l_HIO@ha
/* 8084C020  38 63 4F 78 */	addi r3, r3, l_HIO@l
/* 8084C024  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 8084C028  FC 00 00 1E */	fctiwz f0, f0
/* 8084C02C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8084C030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084C034  90 1B 07 1C */	stw r0, 0x71c(r27)
/* 8084C038  48 00 00 20 */	b lbl_8084C058
lbl_8084C03C:
/* 8084C03C  3C 60 80 85 */	lis r3, l_HIO@ha
/* 8084C040  38 63 4F 78 */	addi r3, r3, l_HIO@l
/* 8084C044  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 8084C048  FC 00 00 1E */	fctiwz f0, f0
/* 8084C04C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8084C050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084C054  90 1B 07 1C */	stw r0, 0x71c(r27)
lbl_8084C058:
/* 8084C058  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8084C05C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8084C060  39 61 00 30 */	addi r11, r1, 0x30
/* 8084C064  4B B1 61 B8 */	b _restgpr_26
/* 8084C068  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8084C06C  7C 08 03 A6 */	mtlr r0
/* 8084C070  38 21 00 40 */	addi r1, r1, 0x40
/* 8084C074  4E 80 00 20 */	blr 
