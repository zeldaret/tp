lbl_8036BA90:
/* 8036BA90  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8036BA94  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8036BA98  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8036BA9C  D8 21 00 08 */	stfd f1, 8(r1)
/* 8036BAA0  3C 00 3E 30 */	lis r0, 0x3e30
/* 8036BAA4  80 E1 00 08 */	lwz r7, 8(r1)
/* 8036BAA8  54 E6 00 7E */	clrlwi r6, r7, 1
/* 8036BAAC  7C 06 00 00 */	cmpw r6, r0
/* 8036BAB0  40 80 00 54 */	bge lbl_8036BB04
/* 8036BAB4  FC 00 08 1E */	fctiwz f0, f1
/* 8036BAB8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8036BABC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036BAC0  2C 00 00 00 */	cmpwi r0, 0
/* 8036BAC4  40 82 00 40 */	bne lbl_8036BB04
/* 8036BAC8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036BACC  38 83 00 01 */	addi r4, r3, 1
/* 8036BAD0  7C C0 03 78 */	or r0, r6, r0
/* 8036BAD4  7C 80 03 79 */	or. r0, r4, r0
/* 8036BAD8  40 82 00 14 */	bne lbl_8036BAEC
/* 8036BADC  FC 20 0A 10 */	fabs f1, f1
/* 8036BAE0  C8 02 D0 80 */	lfd f0, lit_94(r2)
/* 8036BAE4  FC 20 08 24 */	fdiv f1, f0, f1
/* 8036BAE8  48 00 01 AC */	b lbl_8036BC94
lbl_8036BAEC:
/* 8036BAEC  2C 03 00 01 */	cmpwi r3, 1
/* 8036BAF0  40 82 00 08 */	bne lbl_8036BAF8
/* 8036BAF4  48 00 01 A0 */	b lbl_8036BC94
lbl_8036BAF8:
/* 8036BAF8  C8 02 D0 88 */	lfd f0, lit_95(r2)
/* 8036BAFC  FC 20 08 24 */	fdiv f1, f0, f1
/* 8036BB00  48 00 01 94 */	b lbl_8036BC94
lbl_8036BB04:
/* 8036BB04  3C 80 3F E6 */	lis r4, 0x3FE6 /* 0x3FE59428@ha */
/* 8036BB08  38 04 94 28 */	addi r0, r4, 0x9428 /* 0x3FE59428@l */
/* 8036BB0C  7C 06 00 00 */	cmpw r6, r0
/* 8036BB10  41 80 00 40 */	blt lbl_8036BB50
/* 8036BB14  2C 07 00 00 */	cmpwi r7, 0
/* 8036BB18  40 80 00 14 */	bge lbl_8036BB2C
/* 8036BB1C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8036BB20  FC 40 10 50 */	fneg f2, f2
/* 8036BB24  FC 00 00 50 */	fneg f0, f0
/* 8036BB28  D8 01 00 08 */	stfd f0, 8(r1)
lbl_8036BB2C:
/* 8036BB2C  C8 02 D0 98 */	lfd f0, lit_97(r2)
/* 8036BB30  C8 62 D0 90 */	lfd f3, lit_96(r2)
/* 8036BB34  C8 21 00 08 */	lfd f1, 8(r1)
/* 8036BB38  FC 00 10 28 */	fsub f0, f0, f2
/* 8036BB3C  C8 42 D0 A0 */	lfd f2, lit_98(r2)
/* 8036BB40  FC 23 08 28 */	fsub f1, f3, f1
/* 8036BB44  FC 01 00 2A */	fadd f0, f1, f0
/* 8036BB48  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8036BB4C  D8 01 00 08 */	stfd f0, 8(r1)
lbl_8036BB50:
/* 8036BB50  C8 01 00 08 */	lfd f0, 8(r1)
/* 8036BB54  3C 80 80 3A */	lis r4, T@ha /* 0x803A2588@ha */
/* 8036BB58  38 A4 25 88 */	addi r5, r4, T@l /* 0x803A2588@l */
/* 8036BB5C  3C 80 3F E6 */	lis r4, 0x3FE6 /* 0x3FE59428@ha */
/* 8036BB60  FD A0 00 32 */	fmul f13, f0, f0
/* 8036BB64  38 04 94 28 */	addi r0, r4, 0x9428 /* 0x3FE59428@l */
/* 8036BB68  C8 A5 00 60 */	lfd f5, 0x60(r5)
/* 8036BB6C  7C 06 00 00 */	cmpw r6, r0
/* 8036BB70  C8 85 00 50 */	lfd f4, 0x50(r5)
/* 8036BB74  C9 25 00 58 */	lfd f9, 0x58(r5)
/* 8036BB78  FF ED 03 72 */	fmul f31, f13, f13
/* 8036BB7C  C9 05 00 48 */	lfd f8, 0x48(r5)
/* 8036BB80  C8 65 00 40 */	lfd f3, 0x40(r5)
/* 8036BB84  C9 65 00 38 */	lfd f11, 0x38(r5)
/* 8036BB88  FC 2D 00 32 */	fmul f1, f13, f0
/* 8036BB8C  C8 C5 00 30 */	lfd f6, 0x30(r5)
/* 8036BB90  FC FF 21 7A */	fmadd f7, f31, f5, f4
/* 8036BB94  C9 45 00 28 */	lfd f10, 0x28(r5)
/* 8036BB98  C8 A5 00 20 */	lfd f5, 0x20(r5)
/* 8036BB9C  FD 9F 42 7A */	fmadd f12, f31, f9, f8
/* 8036BBA0  C9 25 00 18 */	lfd f9, 0x18(r5)
/* 8036BBA4  C8 85 00 10 */	lfd f4, 0x10(r5)
/* 8036BBA8  FC FF 19 FA */	fmadd f7, f31, f7, f3
/* 8036BBAC  C9 05 00 08 */	lfd f8, 8(r5)
/* 8036BBB0  C8 65 00 00 */	lfd f3, 0(r5)
/* 8036BBB4  FD 7F 5B 3A */	fmadd f11, f31, f12, f11
/* 8036BBB8  D9 A1 00 18 */	stfd f13, 0x18(r1)
/* 8036BBBC  FC DF 31 FA */	fmadd f6, f31, f7, f6
/* 8036BBC0  FC FF 52 FA */	fmadd f7, f31, f11, f10
/* 8036BBC4  FC BF 29 BA */	fmadd f5, f31, f6, f5
/* 8036BBC8  FC DF 49 FA */	fmadd f6, f31, f7, f9
/* 8036BBCC  FC 9F 21 7A */	fmadd f4, f31, f5, f4
/* 8036BBD0  FC BF 41 BA */	fmadd f5, f31, f6, f8
/* 8036BBD4  FC 8D 01 32 */	fmul f4, f13, f4
/* 8036BBD8  FC 85 20 2A */	fadd f4, f5, f4
/* 8036BBDC  FC 81 11 3A */	fmadd f4, f1, f4, f2
/* 8036BBE0  FC CD 11 3A */	fmadd f6, f13, f4, f2
/* 8036BBE4  FC C3 30 7A */	fmadd f6, f3, f1, f6
/* 8036BBE8  FC 20 30 2A */	fadd f1, f0, f6
/* 8036BBEC  41 80 00 60 */	blt lbl_8036BC4C
/* 8036BBF0  3C 80 43 30 */	lis r4, 0x4330
/* 8036BBF4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8036BBF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036BBFC  54 E0 17 BC */	rlwinm r0, r7, 2, 0x1e, 0x1e
/* 8036BC00  20 00 00 01 */	subfic r0, r0, 1
/* 8036BC04  C8 A2 D0 B0 */	lfd f5, lit_101(r2)
/* 8036BC08  90 81 00 20 */	stw r4, 0x20(r1)
/* 8036BC0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8036BC10  FC 41 00 72 */	fmul f2, f1, f1
/* 8036BC14  C8 62 D0 A8 */	lfd f3, lit_99(r2)
/* 8036BC18  C8 81 00 20 */	lfd f4, 0x20(r1)
/* 8036BC1C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8036BC20  FC E4 28 28 */	fsub f7, f4, f5
/* 8036BC24  90 81 00 28 */	stw r4, 0x28(r1)
/* 8036BC28  FC 21 38 2A */	fadd f1, f1, f7
/* 8036BC2C  C8 81 00 28 */	lfd f4, 0x28(r1)
/* 8036BC30  FC 84 28 28 */	fsub f4, f4, f5
/* 8036BC34  FC 22 08 24 */	fdiv f1, f2, f1
/* 8036BC38  FC 21 30 28 */	fsub f1, f1, f6
/* 8036BC3C  FC 00 08 28 */	fsub f0, f0, f1
/* 8036BC40  FC 03 38 3C */	fnmsub f0, f3, f0, f7
/* 8036BC44  FC 24 00 32 */	fmul f1, f4, f0
/* 8036BC48  48 00 00 4C */	b lbl_8036BC94
lbl_8036BC4C:
/* 8036BC4C  2C 03 00 01 */	cmpwi r3, 1
/* 8036BC50  40 82 00 08 */	bne lbl_8036BC58
/* 8036BC54  48 00 00 40 */	b lbl_8036BC94
lbl_8036BC58:
/* 8036BC58  C8 42 D0 88 */	lfd f2, lit_95(r2)
/* 8036BC5C  38 00 00 00 */	li r0, 0
/* 8036BC60  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8036BC64  FC 82 08 24 */	fdiv f4, f2, f1
/* 8036BC68  C8 22 D0 80 */	lfd f1, lit_94(r2)
/* 8036BC6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8036BC70  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 8036BC74  D8 81 00 10 */	stfd f4, 0x10(r1)
/* 8036BC78  FC 02 00 28 */	fsub f0, f2, f0
/* 8036BC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036BC80  FC 06 00 28 */	fsub f0, f6, f0
/* 8036BC84  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 8036BC88  FC 23 08 BA */	fmadd f1, f3, f2, f1
/* 8036BC8C  FC 03 08 3A */	fmadd f0, f3, f0, f1
/* 8036BC90  FC 24 18 3A */	fmadd f1, f4, f0, f3
lbl_8036BC94:
/* 8036BC94  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8036BC98  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8036BC9C  38 21 00 40 */	addi r1, r1, 0x40
/* 8036BCA0  4E 80 00 20 */	blr 
