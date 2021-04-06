lbl_8069BA80:
/* 8069BA80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8069BA84  7C 08 02 A6 */	mflr r0
/* 8069BA88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8069BA8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8069BA90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8069BA94  7C 7E 1B 78 */	mr r30, r3
/* 8069BA98  3C 80 80 6A */	lis r4, lit_3902@ha /* 0x806A190C@ha */
/* 8069BA9C  3B E4 19 0C */	addi r31, r4, lit_3902@l /* 0x806A190C@l */
/* 8069BAA0  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 8069BAA4  2C 00 00 01 */	cmpwi r0, 1
/* 8069BAA8  41 82 00 64 */	beq lbl_8069BB0C
/* 8069BAAC  40 80 01 3C */	bge lbl_8069BBE8
/* 8069BAB0  2C 00 00 00 */	cmpwi r0, 0
/* 8069BAB4  40 80 00 08 */	bge lbl_8069BABC
/* 8069BAB8  48 00 01 30 */	b lbl_8069BBE8
lbl_8069BABC:
/* 8069BABC  38 80 00 05 */	li r4, 5
/* 8069BAC0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8069BAC4  38 A0 00 00 */	li r5, 0
/* 8069BAC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069BACC  4B FF F0 69 */	bl anm_init__FP10e_db_classifUcf
/* 8069BAD0  7F C3 F3 78 */	mr r3, r30
/* 8069BAD4  38 80 00 13 */	li r4, 0x13
/* 8069BAD8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8069BADC  38 A0 00 02 */	li r5, 2
/* 8069BAE0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069BAE4  4B FF F0 FD */	bl leaf_anm_init__FP10e_db_classifUcf
/* 8069BAE8  38 00 00 01 */	li r0, 1
/* 8069BAEC  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069BAF0  38 00 00 1E */	li r0, 0x1e
/* 8069BAF4  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 8069BAF8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069BAFC  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 8069BB00  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8069BB04  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8069BB08  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_8069BB0C:
/* 8069BB0C  A8 9E 06 68 */	lha r4, 0x668(r30)
/* 8069BB10  1C 04 04 B0 */	mulli r0, r4, 0x4b0
/* 8069BB14  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069BB18  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8069BB1C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8069BB20  7C 23 04 2E */	lfsx f1, r3, r0
/* 8069BB24  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8069BB28  EC 20 00 72 */	fmuls f1, f0, f1
/* 8069BB2C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8069BB30  1C 04 05 DC */	mulli r0, r4, 0x5dc
/* 8069BB34  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069BB38  7C 63 02 14 */	add r3, r3, r0
/* 8069BB3C  C0 43 00 04 */	lfs f2, 4(r3)
/* 8069BB40  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8069BB44  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8069BB48  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8069BB4C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8069BB50  EC 20 08 2A */	fadds f1, f0, f1
/* 8069BB54  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069BB58  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8069BB5C  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069BB60  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069BB64  4B BD 3E D9 */	bl cLib_addCalc2__FPffff
/* 8069BB68  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8069BB6C  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 8069BB70  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8069BB74  EC 21 00 2A */	fadds f1, f1, f0
/* 8069BB78  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069BB7C  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8069BB80  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069BB84  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069BB88  4B BD 3E B5 */	bl cLib_addCalc2__FPffff
/* 8069BB8C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8069BB90  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 8069BB94  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8069BB98  EC 21 00 28 */	fsubs f1, f1, f0
/* 8069BB9C  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8069BBA0  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8069BBA4  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069BBA8  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069BBAC  4B BD 3E 91 */	bl cLib_addCalc2__FPffff
/* 8069BBB0  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8069BBB4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069BBB8  FC 40 08 90 */	fmr f2, f1
/* 8069BBBC  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 8069BBC0  4B BD 3E 7D */	bl cLib_addCalc2__FPffff
/* 8069BBC4  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 8069BBC8  2C 00 00 00 */	cmpwi r0, 0
/* 8069BBCC  40 82 00 1C */	bne lbl_8069BBE8
/* 8069BBD0  38 00 00 03 */	li r0, 3
/* 8069BBD4  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069BBD8  38 00 00 00 */	li r0, 0
/* 8069BBDC  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069BBE0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069BBE4  D0 1E 08 48 */	stfs f0, 0x848(r30)
lbl_8069BBE8:
/* 8069BBE8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8069BBEC  38 80 40 00 */	li r4, 0x4000
/* 8069BBF0  38 A0 00 04 */	li r5, 4
/* 8069BBF4  38 C0 04 00 */	li r6, 0x400
/* 8069BBF8  4B BD 4A 11 */	bl cLib_addCalcAngleS2__FPssss
/* 8069BBFC  38 7E 08 44 */	addi r3, r30, 0x844
/* 8069BC00  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8069BC04  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069BC08  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8069BC0C  4B BD 3E 31 */	bl cLib_addCalc2__FPffff
/* 8069BC10  38 7E 06 90 */	addi r3, r30, 0x690
/* 8069BC14  3C 80 80 6A */	lis r4, l_HIO@ha /* 0x806A1DA8@ha */
/* 8069BC18  38 84 1D A8 */	addi r4, r4, l_HIO@l /* 0x806A1DA8@l */
/* 8069BC1C  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8069BC20  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069BC24  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 8069BC28  4B BD 3E 15 */	bl cLib_addCalc2__FPffff
/* 8069BC2C  38 00 00 01 */	li r0, 1
/* 8069BC30  98 1E 0B 14 */	stb r0, 0xb14(r30)
/* 8069BC34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8069BC38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8069BC3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8069BC40  7C 08 03 A6 */	mtlr r0
/* 8069BC44  38 21 00 20 */	addi r1, r1, 0x20
/* 8069BC48  4E 80 00 20 */	blr 
