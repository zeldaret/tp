lbl_8027CFA8:
/* 8027CFA8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8027CFAC  7C 08 02 A6 */	mflr r0
/* 8027CFB0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8027CFB4  39 61 00 60 */	addi r11, r1, 0x60
/* 8027CFB8  48 0E 52 25 */	bl _savegpr_29
/* 8027CFBC  7C 7D 1B 78 */	mr r29, r3
/* 8027CFC0  7C BE 2B 78 */	mr r30, r5
/* 8027CFC4  7C DF 33 78 */	mr r31, r6
/* 8027CFC8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8027CFCC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8027CFD0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8027CFD4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8027CFD8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8027CFDC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8027CFE0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8027CFE4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8027CFE8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8027CFEC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8027CFF0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8027CFF4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8027CFF8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8027CFFC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8027D000  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8027D004  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8027D008  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8027D00C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8027D010  C0 02 B9 3C */	lfs f0, lit_2354(r2)
/* 8027D014  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8027D018  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8027D01C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8027D020  38 61 00 14 */	addi r3, r1, 0x14
/* 8027D024  38 9F 00 0C */	addi r4, r31, 0xc
/* 8027D028  38 A1 00 08 */	addi r5, r1, 8
/* 8027D02C  48 0C 9E 21 */	bl PSMTXMultVecSR
/* 8027D030  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8027D034  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8027D038  EC 61 00 28 */	fsubs f3, f1, f0
/* 8027D03C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8027D040  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8027D044  EC 41 00 28 */	fsubs f2, f1, f0
/* 8027D048  C0 21 00 08 */	lfs f1, 8(r1)
/* 8027D04C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8027D050  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027D054  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8027D058  D0 5D 00 08 */	stfs f2, 8(r29)
/* 8027D05C  D0 7D 00 0C */	stfs f3, 0xc(r29)
/* 8027D060  7F A3 EB 78 */	mr r3, r29
/* 8027D064  7F C4 F3 78 */	mr r4, r30
/* 8027D068  7F E5 FB 78 */	mr r5, r31
/* 8027D06C  4B FF ED 81 */	bl calcAffect__12JPAFieldBaseFP13JPAFieldBlockP15JPABaseParticle
/* 8027D070  39 61 00 60 */	addi r11, r1, 0x60
/* 8027D074  48 0E 51 B5 */	bl _restgpr_29
/* 8027D078  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8027D07C  7C 08 03 A6 */	mtlr r0
/* 8027D080  38 21 00 60 */	addi r1, r1, 0x60
/* 8027D084  4E 80 00 20 */	blr 
