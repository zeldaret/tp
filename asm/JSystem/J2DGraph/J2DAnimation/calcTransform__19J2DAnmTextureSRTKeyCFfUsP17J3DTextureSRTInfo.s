lbl_8030B9F0:
/* 8030B9F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8030B9F4  7C 08 02 A6 */	mflr r0
/* 8030B9F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8030B9FC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8030BA00  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8030BA04  39 61 00 30 */	addi r11, r1, 0x30
/* 8030BA08  48 05 67 CD */	bl _savegpr_27
/* 8030BA0C  7C 7B 1B 78 */	mr r27, r3
/* 8030BA10  FF E0 08 90 */	fmr f31, f1
/* 8030BA14  7C BC 2B 78 */	mr r28, r5
/* 8030BA18  1C 04 00 03 */	mulli r0, r4, 3
/* 8030BA1C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8030BA20  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8030BA24  1C 04 00 12 */	mulli r0, r4, 0x12
/* 8030BA28  7F E3 02 14 */	add r31, r3, r0
/* 8030BA2C  38 04 00 01 */	addi r0, r4, 1
/* 8030BA30  1C 00 00 12 */	mulli r0, r0, 0x12
/* 8030BA34  7F C3 02 14 */	add r30, r3, r0
/* 8030BA38  38 04 00 02 */	addi r0, r4, 2
/* 8030BA3C  1C 00 00 12 */	mulli r0, r0, 0x12
/* 8030BA40  7F A3 02 14 */	add r29, r3, r0
/* 8030BA44  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8030BA48  2C 00 00 01 */	cmpwi r0, 1
/* 8030BA4C  41 82 00 20 */	beq lbl_8030BA6C
/* 8030BA50  40 80 00 34 */	bge lbl_8030BA84
/* 8030BA54  2C 00 00 00 */	cmpwi r0, 0
/* 8030BA58  40 80 00 08 */	bge lbl_8030BA60
/* 8030BA5C  48 00 00 28 */	b lbl_8030BA84
lbl_8030BA60:
/* 8030BA60  C0 02 C9 10 */	lfs f0, lit_1619(r2)
/* 8030BA64  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8030BA68  48 00 00 3C */	b lbl_8030BAA4
lbl_8030BA6C:
/* 8030BA6C  80 7B 00 20 */	lwz r3, 0x20(r27)
/* 8030BA70  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8030BA74  54 00 10 3A */	slwi r0, r0, 2
/* 8030BA78  7C 03 04 2E */	lfsx f0, r3, r0
/* 8030BA7C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8030BA80  48 00 00 24 */	b lbl_8030BAA4
lbl_8030BA84:
/* 8030BA84  FC 20 F8 90 */	fmr f1, f31
/* 8030BA88  7F E3 FB 78 */	mr r3, r31
/* 8030BA8C  80 9B 00 20 */	lwz r4, 0x20(r27)
/* 8030BA90  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8030BA94  54 00 10 3A */	slwi r0, r0, 2
/* 8030BA98  7C 84 02 14 */	add r4, r4, r0
/* 8030BA9C  48 00 0F 15 */	bl func_8030C9B0
/* 8030BAA0  D0 3C 00 00 */	stfs f1, 0(r28)
lbl_8030BAA4:
/* 8030BAA4  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8030BAA8  2C 00 00 01 */	cmpwi r0, 1
/* 8030BAAC  41 82 00 20 */	beq lbl_8030BACC
/* 8030BAB0  40 80 00 34 */	bge lbl_8030BAE4
/* 8030BAB4  2C 00 00 00 */	cmpwi r0, 0
/* 8030BAB8  40 80 00 08 */	bge lbl_8030BAC0
/* 8030BABC  48 00 00 28 */	b lbl_8030BAE4
lbl_8030BAC0:
/* 8030BAC0  C0 02 C9 10 */	lfs f0, lit_1619(r2)
/* 8030BAC4  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8030BAC8  48 00 00 3C */	b lbl_8030BB04
lbl_8030BACC:
/* 8030BACC  80 7B 00 20 */	lwz r3, 0x20(r27)
/* 8030BAD0  A0 1E 00 02 */	lhz r0, 2(r30)
/* 8030BAD4  54 00 10 3A */	slwi r0, r0, 2
/* 8030BAD8  7C 03 04 2E */	lfsx f0, r3, r0
/* 8030BADC  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8030BAE0  48 00 00 24 */	b lbl_8030BB04
lbl_8030BAE4:
/* 8030BAE4  FC 20 F8 90 */	fmr f1, f31
/* 8030BAE8  7F C3 F3 78 */	mr r3, r30
/* 8030BAEC  80 9B 00 20 */	lwz r4, 0x20(r27)
/* 8030BAF0  A0 1E 00 02 */	lhz r0, 2(r30)
/* 8030BAF4  54 00 10 3A */	slwi r0, r0, 2
/* 8030BAF8  7C 84 02 14 */	add r4, r4, r0
/* 8030BAFC  48 00 0E B5 */	bl func_8030C9B0
/* 8030BB00  D0 3C 00 04 */	stfs f1, 4(r28)
lbl_8030BB04:
/* 8030BB04  A0 1D 00 06 */	lhz r0, 6(r29)
/* 8030BB08  2C 00 00 01 */	cmpwi r0, 1
/* 8030BB0C  41 82 00 20 */	beq lbl_8030BB2C
/* 8030BB10  40 80 00 3C */	bge lbl_8030BB4C
/* 8030BB14  2C 00 00 00 */	cmpwi r0, 0
/* 8030BB18  40 80 00 08 */	bge lbl_8030BB20
/* 8030BB1C  48 00 00 30 */	b lbl_8030BB4C
lbl_8030BB20:
/* 8030BB20  38 00 00 00 */	li r0, 0
/* 8030BB24  B0 1C 00 08 */	sth r0, 8(r28)
/* 8030BB28  48 00 00 58 */	b lbl_8030BB80
lbl_8030BB2C:
/* 8030BB2C  80 7B 00 24 */	lwz r3, 0x24(r27)
/* 8030BB30  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8030BB34  54 00 08 3C */	slwi r0, r0, 1
/* 8030BB38  7C 63 02 AE */	lhax r3, r3, r0
/* 8030BB3C  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8030BB40  7C 60 00 30 */	slw r0, r3, r0
/* 8030BB44  B0 1C 00 08 */	sth r0, 8(r28)
/* 8030BB48  48 00 00 38 */	b lbl_8030BB80
lbl_8030BB4C:
/* 8030BB4C  FC 20 F8 90 */	fmr f1, f31
/* 8030BB50  38 7D 00 06 */	addi r3, r29, 6
/* 8030BB54  80 9B 00 24 */	lwz r4, 0x24(r27)
/* 8030BB58  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8030BB5C  54 00 08 3C */	slwi r0, r0, 1
/* 8030BB60  7C 84 02 14 */	add r4, r4, r0
/* 8030BB64  48 00 0C 19 */	bl func_8030C77C
/* 8030BB68  FC 00 08 1E */	fctiwz f0, f1
/* 8030BB6C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8030BB70  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8030BB74  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8030BB78  7C 60 00 30 */	slw r0, r3, r0
/* 8030BB7C  B0 1C 00 08 */	sth r0, 8(r28)
lbl_8030BB80:
/* 8030BB80  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 8030BB84  2C 00 00 01 */	cmpwi r0, 1
/* 8030BB88  41 82 00 20 */	beq lbl_8030BBA8
/* 8030BB8C  40 80 00 34 */	bge lbl_8030BBC0
/* 8030BB90  2C 00 00 00 */	cmpwi r0, 0
/* 8030BB94  40 80 00 08 */	bge lbl_8030BB9C
/* 8030BB98  48 00 00 28 */	b lbl_8030BBC0
lbl_8030BB9C:
/* 8030BB9C  C0 02 C9 00 */	lfs f0, lit_1573(r2)
/* 8030BBA0  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 8030BBA4  48 00 00 3C */	b lbl_8030BBE0
lbl_8030BBA8:
/* 8030BBA8  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 8030BBAC  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8030BBB0  54 00 10 3A */	slwi r0, r0, 2
/* 8030BBB4  7C 03 04 2E */	lfsx f0, r3, r0
/* 8030BBB8  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 8030BBBC  48 00 00 24 */	b lbl_8030BBE0
lbl_8030BBC0:
/* 8030BBC0  FC 20 F8 90 */	fmr f1, f31
/* 8030BBC4  38 7F 00 0C */	addi r3, r31, 0xc
/* 8030BBC8  80 9B 00 28 */	lwz r4, 0x28(r27)
/* 8030BBCC  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8030BBD0  54 00 10 3A */	slwi r0, r0, 2
/* 8030BBD4  7C 84 02 14 */	add r4, r4, r0
/* 8030BBD8  48 00 0D D9 */	bl func_8030C9B0
/* 8030BBDC  D0 3C 00 0C */	stfs f1, 0xc(r28)
lbl_8030BBE0:
/* 8030BBE0  A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 8030BBE4  2C 00 00 01 */	cmpwi r0, 1
/* 8030BBE8  41 82 00 20 */	beq lbl_8030BC08
/* 8030BBEC  40 80 00 34 */	bge lbl_8030BC20
/* 8030BBF0  2C 00 00 00 */	cmpwi r0, 0
/* 8030BBF4  40 80 00 08 */	bge lbl_8030BBFC
/* 8030BBF8  48 00 00 28 */	b lbl_8030BC20
lbl_8030BBFC:
/* 8030BBFC  C0 02 C9 00 */	lfs f0, lit_1573(r2)
/* 8030BC00  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 8030BC04  48 00 00 3C */	b lbl_8030BC40
lbl_8030BC08:
/* 8030BC08  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 8030BC0C  A0 1E 00 0E */	lhz r0, 0xe(r30)
/* 8030BC10  54 00 10 3A */	slwi r0, r0, 2
/* 8030BC14  7C 03 04 2E */	lfsx f0, r3, r0
/* 8030BC18  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 8030BC1C  48 00 00 24 */	b lbl_8030BC40
lbl_8030BC20:
/* 8030BC20  FC 20 F8 90 */	fmr f1, f31
/* 8030BC24  38 7E 00 0C */	addi r3, r30, 0xc
/* 8030BC28  80 9B 00 28 */	lwz r4, 0x28(r27)
/* 8030BC2C  A0 1E 00 0E */	lhz r0, 0xe(r30)
/* 8030BC30  54 00 10 3A */	slwi r0, r0, 2
/* 8030BC34  7C 84 02 14 */	add r4, r4, r0
/* 8030BC38  48 00 0D 79 */	bl func_8030C9B0
/* 8030BC3C  D0 3C 00 10 */	stfs f1, 0x10(r28)
lbl_8030BC40:
/* 8030BC40  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8030BC44  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8030BC48  39 61 00 30 */	addi r11, r1, 0x30
/* 8030BC4C  48 05 65 D5 */	bl _restgpr_27
/* 8030BC50  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8030BC54  7C 08 03 A6 */	mtlr r0
/* 8030BC58  38 21 00 40 */	addi r1, r1, 0x40
/* 8030BC5C  4E 80 00 20 */	blr 
