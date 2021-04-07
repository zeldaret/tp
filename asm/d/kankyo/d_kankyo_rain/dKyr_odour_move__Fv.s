lbl_8006B924:
/* 8006B924  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8006B928  7C 08 02 A6 */	mflr r0
/* 8006B92C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8006B930  39 61 00 90 */	addi r11, r1, 0x90
/* 8006B934  48 2F 68 A5 */	bl _savegpr_28
/* 8006B938  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006B93C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006B940  83 E3 0F 28 */	lwz r31, 0xf28(r3)
/* 8006B944  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8006B948  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8006B94C  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006B950  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8006B954  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8006B958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006B95C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006B960  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 8006B964  28 03 00 00 */	cmplwi r3, 0
/* 8006B968  41 82 04 8C */	beq lbl_8006BDF4
/* 8006B96C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006B970  38 81 00 24 */	addi r4, r1, 0x24
/* 8006B974  48 2D AC 3D */	bl PSMTXInverse
/* 8006B978  48 00 00 08 */	b lbl_8006B980
/* 8006B97C  48 00 04 78 */	b lbl_8006BDF4
lbl_8006B980:
/* 8006B980  C0 22 8A B8 */	lfs f1, lit_8213(r2)
/* 8006B984  48 1F BF D1 */	bl cM_rndF__Ff
/* 8006B988  FC 00 08 1E */	fctiwz f0, f1
/* 8006B98C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8006B990  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 8006B994  38 83 01 AE */	addi r4, r3, 0x1ae
/* 8006B998  3C 7F 00 01 */	addis r3, r31, 1
/* 8006B99C  A8 03 77 24 */	lha r0, 0x7724(r3)
/* 8006B9A0  7C 04 00 50 */	subf r0, r4, r0
/* 8006B9A4  B0 03 77 24 */	sth r0, 0x7724(r3)
/* 8006B9A8  C0 22 88 7C */	lfs f1, lit_4467(r2)
/* 8006B9AC  48 1F BF A9 */	bl cM_rndF__Ff
/* 8006B9B0  FC 00 08 1E */	fctiwz f0, f1
/* 8006B9B4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8006B9B8  80 61 00 64 */	lwz r3, 0x64(r1)
/* 8006B9BC  38 83 00 C8 */	addi r4, r3, 0xc8
/* 8006B9C0  3C 7F 00 01 */	addis r3, r31, 1
/* 8006B9C4  A8 03 77 26 */	lha r0, 0x7726(r3)
/* 8006B9C8  7C 04 00 50 */	subf r0, r4, r0
/* 8006B9CC  B0 03 77 26 */	sth r0, 0x7726(r3)
/* 8006B9D0  3B C0 00 00 */	li r30, 0
/* 8006B9D4  3B 80 00 00 */	li r28, 0
lbl_8006B9D8:
/* 8006B9D8  3B BC 00 14 */	addi r29, r28, 0x14
/* 8006B9DC  7F BF EA 14 */	add r29, r31, r29
/* 8006B9E0  88 1D 00 00 */	lbz r0, 0(r29)
/* 8006B9E4  2C 00 00 04 */	cmpwi r0, 4
/* 8006B9E8  40 80 00 14 */	bge lbl_8006B9FC
/* 8006B9EC  2C 00 00 01 */	cmpwi r0, 1
/* 8006B9F0  41 82 00 24 */	beq lbl_8006BA14
/* 8006B9F4  40 80 00 4C */	bge lbl_8006BA40
/* 8006B9F8  48 00 03 EC */	b lbl_8006BDE4
lbl_8006B9FC:
/* 8006B9FC  2C 00 00 0B */	cmpwi r0, 0xb
/* 8006BA00  41 82 00 14 */	beq lbl_8006BA14
/* 8006BA04  41 80 03 E0 */	blt lbl_8006BDE4
/* 8006BA08  2C 00 00 0E */	cmpwi r0, 0xe
/* 8006BA0C  40 80 03 D8 */	bge lbl_8006BDE4
/* 8006BA10  48 00 00 30 */	b lbl_8006BA40
lbl_8006BA14:
/* 8006BA14  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006BA18  48 1F BF 3D */	bl cM_rndF__Ff
/* 8006BA1C  C0 02 88 20 */	lfs f0, lit_4357(r2)
/* 8006BA20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006BA24  40 80 03 C0 */	bge lbl_8006BDE4
/* 8006BA28  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006BA2C  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8006BA30  88 7D 00 00 */	lbz r3, 0(r29)
/* 8006BA34  38 03 00 01 */	addi r0, r3, 1
/* 8006BA38  98 1D 00 00 */	stb r0, 0(r29)
/* 8006BA3C  48 00 03 A8 */	b lbl_8006BDE4
lbl_8006BA40:
/* 8006BA40  3C 7F 00 01 */	addis r3, r31, 1
/* 8006BA44  38 63 77 14 */	addi r3, r3, 0x7714
/* 8006BA48  38 9D 00 10 */	addi r4, r29, 0x10
/* 8006BA4C  48 2D B9 51 */	bl PSVECSquareDistance
/* 8006BA50  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006BA54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006BA58  40 81 00 58 */	ble lbl_8006BAB0
/* 8006BA5C  FC 00 08 34 */	frsqrte f0, f1
/* 8006BA60  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8006BA64  FC 44 00 32 */	fmul f2, f4, f0
/* 8006BA68  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8006BA6C  FC 00 00 32 */	fmul f0, f0, f0
/* 8006BA70  FC 01 00 32 */	fmul f0, f1, f0
/* 8006BA74  FC 03 00 28 */	fsub f0, f3, f0
/* 8006BA78  FC 02 00 32 */	fmul f0, f2, f0
/* 8006BA7C  FC 44 00 32 */	fmul f2, f4, f0
/* 8006BA80  FC 00 00 32 */	fmul f0, f0, f0
/* 8006BA84  FC 01 00 32 */	fmul f0, f1, f0
/* 8006BA88  FC 03 00 28 */	fsub f0, f3, f0
/* 8006BA8C  FC 02 00 32 */	fmul f0, f2, f0
/* 8006BA90  FC 44 00 32 */	fmul f2, f4, f0
/* 8006BA94  FC 00 00 32 */	fmul f0, f0, f0
/* 8006BA98  FC 01 00 32 */	fmul f0, f1, f0
/* 8006BA9C  FC 03 00 28 */	fsub f0, f3, f0
/* 8006BAA0  FC 02 00 32 */	fmul f0, f2, f0
/* 8006BAA4  FC 21 00 32 */	fmul f1, f1, f0
/* 8006BAA8  FC 20 08 18 */	frsp f1, f1
/* 8006BAAC  48 00 00 88 */	b lbl_8006BB34
lbl_8006BAB0:
/* 8006BAB0  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8006BAB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006BAB8  40 80 00 10 */	bge lbl_8006BAC8
/* 8006BABC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8006BAC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8006BAC4  48 00 00 70 */	b lbl_8006BB34
lbl_8006BAC8:
/* 8006BAC8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8006BACC  80 81 00 08 */	lwz r4, 8(r1)
/* 8006BAD0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8006BAD4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8006BAD8  7C 03 00 00 */	cmpw r3, r0
/* 8006BADC  41 82 00 14 */	beq lbl_8006BAF0
/* 8006BAE0  40 80 00 40 */	bge lbl_8006BB20
/* 8006BAE4  2C 03 00 00 */	cmpwi r3, 0
/* 8006BAE8  41 82 00 20 */	beq lbl_8006BB08
/* 8006BAEC  48 00 00 34 */	b lbl_8006BB20
lbl_8006BAF0:
/* 8006BAF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006BAF4  41 82 00 0C */	beq lbl_8006BB00
/* 8006BAF8  38 00 00 01 */	li r0, 1
/* 8006BAFC  48 00 00 28 */	b lbl_8006BB24
lbl_8006BB00:
/* 8006BB00  38 00 00 02 */	li r0, 2
/* 8006BB04  48 00 00 20 */	b lbl_8006BB24
lbl_8006BB08:
/* 8006BB08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8006BB0C  41 82 00 0C */	beq lbl_8006BB18
/* 8006BB10  38 00 00 05 */	li r0, 5
/* 8006BB14  48 00 00 10 */	b lbl_8006BB24
lbl_8006BB18:
/* 8006BB18  38 00 00 03 */	li r0, 3
/* 8006BB1C  48 00 00 08 */	b lbl_8006BB24
lbl_8006BB20:
/* 8006BB20  38 00 00 04 */	li r0, 4
lbl_8006BB24:
/* 8006BB24  2C 00 00 01 */	cmpwi r0, 1
/* 8006BB28  40 82 00 0C */	bne lbl_8006BB34
/* 8006BB2C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8006BB30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8006BB34:
/* 8006BB34  3C 9F 00 01 */	addis r4, r31, 1
/* 8006BB38  A8 A4 77 24 */	lha r5, 0x7724(r4)
/* 8006BB3C  FC 00 08 1E */	fctiwz f0, f1
/* 8006BB40  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8006BB44  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8006BB48  7C 00 07 34 */	extsh r0, r0
/* 8006BB4C  1C 60 00 26 */	mulli r3, r0, 0x26
/* 8006BB50  7C 65 1A 14 */	add r3, r5, r3
/* 8006BB54  54 65 04 38 */	rlwinm r5, r3, 0, 0x10, 0x1c
/* 8006BB58  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8006BB5C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8006BB60  7C A3 2A 14 */	add r5, r3, r5
/* 8006BB64  C0 05 00 04 */	lfs f0, 4(r5)
/* 8006BB68  C0 42 8A AC */	lfs f2, lit_7894(r2)
/* 8006BB6C  C0 82 88 44 */	lfs f4, lit_4366(r2)
/* 8006BB70  EC 00 01 32 */	fmuls f0, f0, f4
/* 8006BB74  EC 02 00 32 */	fmuls f0, f2, f0
/* 8006BB78  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8006BB7C  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8006BB80  88 BD 00 00 */	lbz r5, 0(r29)
/* 8006BB84  28 05 00 0A */	cmplwi r5, 0xa
/* 8006BB88  40 80 00 68 */	bge lbl_8006BBF0
/* 8006BB8C  A8 C4 77 24 */	lha r6, 0x7724(r4)
/* 8006BB90  1C A0 00 A0 */	mulli r5, r0, 0xa0
/* 8006BB94  7C A6 2A 14 */	add r5, r6, r5
/* 8006BB98  54 A5 04 38 */	rlwinm r5, r5, 0, 0x10, 0x1c
/* 8006BB9C  7C A3 2A 14 */	add r5, r3, r5
/* 8006BBA0  C0 05 00 04 */	lfs f0, 4(r5)
/* 8006BBA4  C0 22 88 50 */	lfs f1, lit_4369(r2)
/* 8006BBA8  C0 62 88 48 */	lfs f3, lit_4367(r2)
/* 8006BBAC  EC 03 00 2A */	fadds f0, f3, f0
/* 8006BBB0  EC 00 01 32 */	fmuls f0, f0, f4
/* 8006BBB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006BBB8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8006BBBC  A8 84 77 26 */	lha r4, 0x7726(r4)
/* 8006BBC0  1C 00 00 2D */	mulli r0, r0, 0x2d
/* 8006BBC4  7C 04 02 14 */	add r0, r4, r0
/* 8006BBC8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8006BBCC  7C 03 04 2E */	lfsx f0, r3, r0
/* 8006BBD0  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8006BBD4  C0 22 88 00 */	lfs f1, lit_4113(r2)
/* 8006BBD8  EC 03 00 2A */	fadds f0, f3, f0
/* 8006BBDC  EC 00 01 32 */	fmuls f0, f0, f4
/* 8006BBE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006BBE4  EC 02 00 2A */	fadds f0, f2, f0
/* 8006BBE8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8006BBEC  48 00 00 D0 */	b lbl_8006BCBC
lbl_8006BBF0:
/* 8006BBF0  C0 02 8B CC */	lfs f0, lit_10872(r2)
/* 8006BBF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006BBF8  FC 00 00 1E */	fctiwz f0, f0
/* 8006BBFC  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8006BC00  80 E1 00 64 */	lwz r7, 0x64(r1)
/* 8006BC04  A8 A4 77 24 */	lha r5, 0x7724(r4)
/* 8006BC08  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 8006BC0C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8006BC10  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 8006BC14  3C C0 43 30 */	lis r6, 0x4330
/* 8006BC18  90 C1 00 58 */	stw r6, 0x58(r1)
/* 8006BC1C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8006BC20  EC 00 08 28 */	fsubs f0, f0, f1
/* 8006BC24  FC 00 00 1E */	fctiwz f0, f0
/* 8006BC28  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8006BC2C  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 8006BC30  7C A7 2A 14 */	add r5, r7, r5
/* 8006BC34  54 A5 04 38 */	rlwinm r5, r5, 0, 0x10, 0x1c
/* 8006BC38  7C A3 2A 14 */	add r5, r3, r5
/* 8006BC3C  C0 45 00 04 */	lfs f2, 4(r5)
/* 8006BC40  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006BC44  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8006BC48  C0 02 8A B8 */	lfs f0, lit_8213(r2)
/* 8006BC4C  EC 42 01 32 */	fmuls f2, f2, f4
/* 8006BC50  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8006BC54  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8006BC58  C0 02 8A A4 */	lfs f0, lit_7892(r2)
/* 8006BC5C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8006BC60  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8006BC64  A8 84 77 26 */	lha r4, 0x7726(r4)
/* 8006BC68  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8006BC6C  90 81 00 74 */	stw r4, 0x74(r1)
/* 8006BC70  90 C1 00 70 */	stw r6, 0x70(r1)
/* 8006BC74  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8006BC78  EC 00 08 28 */	fsubs f0, f0, f1
/* 8006BC7C  FC 00 00 1E */	fctiwz f0, f0
/* 8006BC80  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8006BC84  80 81 00 7C */	lwz r4, 0x7c(r1)
/* 8006BC88  1C 00 00 2D */	mulli r0, r0, 0x2d
/* 8006BC8C  7C 04 02 14 */	add r0, r4, r0
/* 8006BC90  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8006BC94  7C 03 04 2E */	lfsx f0, r3, r0
/* 8006BC98  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8006BC9C  C0 22 89 A4 */	lfs f1, lit_6355(r2)
/* 8006BCA0  EC 00 01 32 */	fmuls f0, f0, f4
/* 8006BCA4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8006BCA8  EC 02 08 2A */	fadds f0, f2, f1
/* 8006BCAC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8006BCB0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8006BCB4  EC 00 08 2A */	fadds f0, f0, f1
/* 8006BCB8  D0 1D 00 0C */	stfs f0, 0xc(r29)
lbl_8006BCBC:
/* 8006BCBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8006BCC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8006BCC4  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8006BCC8  FC 40 08 90 */	fmr f2, f1
/* 8006BCCC  FC 60 08 90 */	fmr f3, f1
/* 8006BCD0  48 2D AC 19 */	bl PSMTXTrans
/* 8006BCD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8006BCD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8006BCDC  A8 9D 00 1C */	lha r4, 0x1c(r29)
/* 8006BCE0  A8 BD 00 1E */	lha r5, 0x1e(r29)
/* 8006BCE4  38 C0 00 00 */	li r6, 0
/* 8006BCE8  4B FA 05 B9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8006BCEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8006BCF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8006BCF4  38 81 00 18 */	addi r4, r1, 0x18
/* 8006BCF8  38 A1 00 0C */	addi r5, r1, 0xc
/* 8006BCFC  48 2D B0 71 */	bl PSMTXMultVec
/* 8006BD00  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 8006BD04  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8006BD08  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8006BD0C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006BD10  EC 02 00 2A */	fadds f0, f2, f0
/* 8006BD14  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8006BD18  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 8006BD1C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8006BD20  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8006BD24  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006BD28  EC 02 00 2A */	fadds f0, f2, f0
/* 8006BD2C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8006BD30  C0 5D 00 18 */	lfs f2, 0x18(r29)
/* 8006BD34  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8006BD38  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8006BD3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006BD40  EC 02 00 2A */	fadds f0, f2, f0
/* 8006BD44  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 8006BD48  88 1D 00 00 */	lbz r0, 0(r29)
/* 8006BD4C  28 00 00 02 */	cmplwi r0, 2
/* 8006BD50  41 82 00 0C */	beq lbl_8006BD5C
/* 8006BD54  28 00 00 0C */	cmplwi r0, 0xc
/* 8006BD58  40 82 00 40 */	bne lbl_8006BD98
lbl_8006BD5C:
/* 8006BD5C  38 7D 00 24 */	addi r3, r29, 0x24
/* 8006BD60  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006BD64  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 8006BD68  C0 62 88 40 */	lfs f3, lit_4365(r2)
/* 8006BD6C  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8006BD70  48 20 3C 0D */	bl cLib_addCalc__FPfffff
/* 8006BD74  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 8006BD78  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006BD7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006BD80  4C 41 13 82 */	cror 2, 1, 2
/* 8006BD84  40 82 00 60 */	bne lbl_8006BDE4
/* 8006BD88  88 7D 00 00 */	lbz r3, 0(r29)
/* 8006BD8C  38 03 00 01 */	addi r0, r3, 1
/* 8006BD90  98 1D 00 00 */	stb r0, 0(r29)
/* 8006BD94  48 00 00 50 */	b lbl_8006BDE4
lbl_8006BD98:
/* 8006BD98  28 00 00 03 */	cmplwi r0, 3
/* 8006BD9C  41 82 00 0C */	beq lbl_8006BDA8
/* 8006BDA0  28 00 00 0D */	cmplwi r0, 0xd
/* 8006BDA4  40 82 00 40 */	bne lbl_8006BDE4
lbl_8006BDA8:
/* 8006BDA8  38 7D 00 24 */	addi r3, r29, 0x24
/* 8006BDAC  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8006BDB0  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 8006BDB4  C0 62 8B D0 */	lfs f3, lit_10873(r2)
/* 8006BDB8  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8006BDBC  48 20 3B C1 */	bl cLib_addCalc__FPfffff
/* 8006BDC0  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 8006BDC4  C0 02 88 20 */	lfs f0, lit_4357(r2)
/* 8006BDC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006BDCC  4C 40 13 82 */	cror 2, 0, 2
/* 8006BDD0  40 82 00 14 */	bne lbl_8006BDE4
/* 8006BDD4  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006BDD8  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8006BDDC  38 00 00 00 */	li r0, 0
/* 8006BDE0  98 1D 00 00 */	stb r0, 0(r29)
lbl_8006BDE4:
/* 8006BDE4  3B DE 00 01 */	addi r30, r30, 1
/* 8006BDE8  2C 1E 07 D0 */	cmpwi r30, 0x7d0
/* 8006BDEC  3B 9C 00 30 */	addi r28, r28, 0x30
/* 8006BDF0  41 80 FB E8 */	blt lbl_8006B9D8
lbl_8006BDF4:
/* 8006BDF4  39 61 00 90 */	addi r11, r1, 0x90
/* 8006BDF8  48 2F 64 2D */	bl _restgpr_28
/* 8006BDFC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8006BE00  7C 08 03 A6 */	mtlr r0
/* 8006BE04  38 21 00 90 */	addi r1, r1, 0x90
/* 8006BE08  4E 80 00 20 */	blr 
