lbl_8046BA10:
/* 8046BA10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8046BA14  7C 08 02 A6 */	mflr r0
/* 8046BA18  90 01 00 54 */	stw r0, 0x54(r1)
/* 8046BA1C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8046BA20  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8046BA24  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8046BA28  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8046BA2C  7C 7E 1B 78 */	mr r30, r3
/* 8046BA30  3C 60 80 47 */	lis r3, lit_3798@ha /* 0x8046C980@ha */
/* 8046BA34  3B E3 C9 80 */	addi r31, r3, lit_3798@l /* 0x8046C980@l */
/* 8046BA38  38 61 00 0C */	addi r3, r1, 0xc
/* 8046BA3C  7F C4 F3 78 */	mr r4, r30
/* 8046BA40  4B FF FC D9 */	bl get_check_pos__FP13kytag00_class
/* 8046BA44  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 8046BA48  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8046BA4C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8046BA50  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8046BA54  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8046BA58  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8046BA5C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8046BA60  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 8046BA64  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 8046BA68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046BA6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046BA70  3C 00 43 30 */	lis r0, 0x4330
/* 8046BA74  90 01 00 30 */	stw r0, 0x30(r1)
/* 8046BA78  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8046BA7C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046BA80  EF E2 00 32 */	fmuls f31, f2, f0
/* 8046BA84  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 8046BA88  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8046BA8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8046BA90  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8046BA94  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8046BA98  38 81 00 24 */	addi r4, r1, 0x24
/* 8046BA9C  4B ED B9 01 */	bl PSVECSquareDistance
/* 8046BAA0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8046BAA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046BAA8  40 81 00 58 */	ble lbl_8046BB00
/* 8046BAAC  FC 00 08 34 */	frsqrte f0, f1
/* 8046BAB0  C8 9F 00 08 */	lfd f4, 8(r31)
/* 8046BAB4  FC 44 00 32 */	fmul f2, f4, f0
/* 8046BAB8  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 8046BABC  FC 00 00 32 */	fmul f0, f0, f0
/* 8046BAC0  FC 01 00 32 */	fmul f0, f1, f0
/* 8046BAC4  FC 03 00 28 */	fsub f0, f3, f0
/* 8046BAC8  FC 02 00 32 */	fmul f0, f2, f0
/* 8046BACC  FC 44 00 32 */	fmul f2, f4, f0
/* 8046BAD0  FC 00 00 32 */	fmul f0, f0, f0
/* 8046BAD4  FC 01 00 32 */	fmul f0, f1, f0
/* 8046BAD8  FC 03 00 28 */	fsub f0, f3, f0
/* 8046BADC  FC 02 00 32 */	fmul f0, f2, f0
/* 8046BAE0  FC 44 00 32 */	fmul f2, f4, f0
/* 8046BAE4  FC 00 00 32 */	fmul f0, f0, f0
/* 8046BAE8  FC 01 00 32 */	fmul f0, f1, f0
/* 8046BAEC  FC 03 00 28 */	fsub f0, f3, f0
/* 8046BAF0  FC 02 00 32 */	fmul f0, f2, f0
/* 8046BAF4  FC 21 00 32 */	fmul f1, f1, f0
/* 8046BAF8  FC 20 08 18 */	frsp f1, f1
/* 8046BAFC  48 00 00 88 */	b lbl_8046BB84
lbl_8046BB00:
/* 8046BB00  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 8046BB04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046BB08  40 80 00 10 */	bge lbl_8046BB18
/* 8046BB0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8046BB10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8046BB14  48 00 00 70 */	b lbl_8046BB84
lbl_8046BB18:
/* 8046BB18  D0 21 00 08 */	stfs f1, 8(r1)
/* 8046BB1C  80 81 00 08 */	lwz r4, 8(r1)
/* 8046BB20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8046BB24  3C 00 7F 80 */	lis r0, 0x7f80
/* 8046BB28  7C 03 00 00 */	cmpw r3, r0
/* 8046BB2C  41 82 00 14 */	beq lbl_8046BB40
/* 8046BB30  40 80 00 40 */	bge lbl_8046BB70
/* 8046BB34  2C 03 00 00 */	cmpwi r3, 0
/* 8046BB38  41 82 00 20 */	beq lbl_8046BB58
/* 8046BB3C  48 00 00 34 */	b lbl_8046BB70
lbl_8046BB40:
/* 8046BB40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8046BB44  41 82 00 0C */	beq lbl_8046BB50
/* 8046BB48  38 00 00 01 */	li r0, 1
/* 8046BB4C  48 00 00 28 */	b lbl_8046BB74
lbl_8046BB50:
/* 8046BB50  38 00 00 02 */	li r0, 2
/* 8046BB54  48 00 00 20 */	b lbl_8046BB74
lbl_8046BB58:
/* 8046BB58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8046BB5C  41 82 00 0C */	beq lbl_8046BB68
/* 8046BB60  38 00 00 05 */	li r0, 5
/* 8046BB64  48 00 00 10 */	b lbl_8046BB74
lbl_8046BB68:
/* 8046BB68  38 00 00 03 */	li r0, 3
/* 8046BB6C  48 00 00 08 */	b lbl_8046BB74
lbl_8046BB70:
/* 8046BB70  38 00 00 04 */	li r0, 4
lbl_8046BB74:
/* 8046BB74  2C 00 00 01 */	cmpwi r0, 1
/* 8046BB78  40 82 00 0C */	bne lbl_8046BB84
/* 8046BB7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8046BB80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8046BB84:
/* 8046BB84  C0 BE 05 84 */	lfs f5, 0x584(r30)
/* 8046BB88  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 8046BB8C  40 80 01 A0 */	bge lbl_8046BD2C
/* 8046BB90  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 8046BB94  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 8046BB98  EC 03 F8 28 */	fsubs f0, f3, f31
/* 8046BB9C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8046BBA0  4C 41 13 82 */	cror 2, 1, 2
/* 8046BBA4  40 82 01 88 */	bne lbl_8046BD2C
/* 8046BBA8  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8046BBAC  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8046BBB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8046BBB4  EC C3 00 2A */	fadds f6, f3, f0
/* 8046BBB8  EC 1F 30 2A */	fadds f0, f31, f6
/* 8046BBBC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8046BBC0  40 80 01 6C */	bge lbl_8046BD2C
/* 8046BBC4  C0 FE 05 88 */	lfs f7, 0x588(r30)
/* 8046BBC8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8046BBCC  FC 07 10 40 */	fcmpo cr0, f7, f2
/* 8046BBD0  40 81 01 5C */	ble lbl_8046BD2C
/* 8046BBD4  C1 3F 00 28 */	lfs f9, 0x28(r31)
/* 8046BBD8  FD 00 48 90 */	fmr f8, f9
/* 8046BBDC  C0 1E 05 80 */	lfs f0, 0x580(r30)
/* 8046BBE0  ED 45 00 28 */	fsubs f10, f5, f0
/* 8046BBE4  FC 02 50 00 */	fcmpu cr0, f2, f10
/* 8046BBE8  41 82 00 18 */	beq lbl_8046BC00
/* 8046BBEC  EC 05 08 28 */	fsubs f0, f5, f1
/* 8046BBF0  ED 20 50 24 */	fdivs f9, f0, f10
/* 8046BBF4  FC 09 40 40 */	fcmpo cr0, f9, f8
/* 8046BBF8  40 81 00 08 */	ble lbl_8046BC00
/* 8046BBFC  FD 20 40 90 */	fmr f9, f8
lbl_8046BC00:
/* 8046BC00  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 8046BC04  4C 40 13 82 */	cror 2, 0, 2
/* 8046BC08  40 82 00 30 */	bne lbl_8046BC38
/* 8046BC0C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8046BC10  FC 01 F8 00 */	fcmpu cr0, f1, f31
/* 8046BC14  41 82 00 4C */	beq lbl_8046BC60
/* 8046BC18  EC 03 20 28 */	fsubs f0, f3, f4
/* 8046BC1C  EC 40 F8 24 */	fdivs f2, f0, f31
/* 8046BC20  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8046BC24  40 80 00 08 */	bge lbl_8046BC2C
/* 8046BC28  FC 40 08 90 */	fmr f2, f1
lbl_8046BC2C:
/* 8046BC2C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8046BC30  ED 00 10 28 */	fsubs f8, f0, f2
/* 8046BC34  48 00 00 2C */	b lbl_8046BC60
lbl_8046BC38:
/* 8046BC38  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8046BC3C  FC 01 F8 00 */	fcmpu cr0, f1, f31
/* 8046BC40  41 82 00 20 */	beq lbl_8046BC60
/* 8046BC44  EC 04 30 28 */	fsubs f0, f4, f6
/* 8046BC48  EC 40 F8 24 */	fdivs f2, f0, f31
/* 8046BC4C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8046BC50  40 80 00 08 */	bge lbl_8046BC58
/* 8046BC54  FC 40 08 90 */	fmr f2, f1
lbl_8046BC58:
/* 8046BC58  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8046BC5C  ED 00 10 28 */	fsubs f8, f0, f2
lbl_8046BC60:
/* 8046BC60  EC 08 01 F2 */	fmuls f0, f8, f7
/* 8046BC64  ED 29 00 32 */	fmuls f9, f9, f0
/* 8046BC68  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8046BC6C  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 8046BC70  88 64 12 C6 */	lbz r3, 0x12c6(r4)
/* 8046BC74  88 04 12 C7 */	lbz r0, 0x12c7(r4)
/* 8046BC78  7C 03 00 40 */	cmplw r3, r0
/* 8046BC7C  40 82 00 C4 */	bne lbl_8046BD40
/* 8046BC80  38 60 00 01 */	li r3, 1
/* 8046BC84  98 7E 05 6D */	stb r3, 0x56d(r30)
/* 8046BC88  88 BE 05 6F */	lbz r5, 0x56f(r30)
/* 8046BC8C  2C 05 00 00 */	cmpwi r5, 0
/* 8046BC90  41 82 00 14 */	beq lbl_8046BCA4
/* 8046BC94  41 80 00 8C */	blt lbl_8046BD20
/* 8046BC98  2C 05 00 10 */	cmpwi r5, 0x10
/* 8046BC9C  40 80 00 84 */	bge lbl_8046BD20
/* 8046BCA0  48 00 00 20 */	b lbl_8046BCC0
lbl_8046BCA4:
/* 8046BCA4  88 04 12 C8 */	lbz r0, 0x12c8(r4)
/* 8046BCA8  98 04 12 C4 */	stb r0, 0x12c4(r4)
/* 8046BCAC  38 00 00 00 */	li r0, 0
/* 8046BCB0  98 04 12 C5 */	stb r0, 0x12c5(r4)
/* 8046BCB4  D1 24 11 E0 */	stfs f9, 0x11e0(r4)
/* 8046BCB8  98 64 12 CE */	stb r3, 0x12ce(r4)
/* 8046BCBC  48 00 00 84 */	b lbl_8046BD40
lbl_8046BCC0:
/* 8046BCC0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8046BCC4  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 8046BCC8  40 81 00 2C */	ble lbl_8046BCF4
/* 8046BCCC  88 04 12 C8 */	lbz r0, 0x12c8(r4)
/* 8046BCD0  98 04 12 C4 */	stb r0, 0x12c4(r4)
/* 8046BCD4  98 A4 12 C5 */	stb r5, 0x12c5(r4)
/* 8046BCD8  D1 24 11 E0 */	stfs f9, 0x11e0(r4)
/* 8046BCDC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8046BCE0  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 8046BCE4  4C 41 13 82 */	cror 2, 1, 2
/* 8046BCE8  40 82 00 24 */	bne lbl_8046BD0C
/* 8046BCEC  98 A4 12 C4 */	stb r5, 0x12c4(r4)
/* 8046BCF0  48 00 00 1C */	b lbl_8046BD0C
lbl_8046BCF4:
/* 8046BCF4  98 A4 12 C4 */	stb r5, 0x12c4(r4)
/* 8046BCF8  88 04 12 C8 */	lbz r0, 0x12c8(r4)
/* 8046BCFC  98 04 12 C5 */	stb r0, 0x12c5(r4)
/* 8046BD00  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8046BD04  EC 00 48 28 */	fsubs f0, f0, f9
/* 8046BD08  D0 04 11 E0 */	stfs f0, 0x11e0(r4)
lbl_8046BD0C:
/* 8046BD0C  38 00 00 01 */	li r0, 1
/* 8046BD10  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8046BD14  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8046BD18  98 03 12 CE */	stb r0, 0x12ce(r3)
/* 8046BD1C  48 00 00 24 */	b lbl_8046BD40
lbl_8046BD20:
/* 8046BD20  38 00 00 00 */	li r0, 0
/* 8046BD24  98 1E 05 6D */	stb r0, 0x56d(r30)
/* 8046BD28  48 00 00 18 */	b lbl_8046BD40
lbl_8046BD2C:
/* 8046BD2C  88 1E 05 6D */	lbz r0, 0x56d(r30)
/* 8046BD30  28 00 00 00 */	cmplwi r0, 0
/* 8046BD34  41 82 00 0C */	beq lbl_8046BD40
/* 8046BD38  7F C3 F3 78 */	mr r3, r30
/* 8046BD3C  4B FF FC A1 */	bl wether_tag_reset__FP13kytag00_class
lbl_8046BD40:
/* 8046BD40  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8046BD44  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8046BD48  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8046BD4C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8046BD50  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8046BD54  7C 08 03 A6 */	mtlr r0
/* 8046BD58  38 21 00 50 */	addi r1, r1, 0x50
/* 8046BD5C  4E 80 00 20 */	blr 
