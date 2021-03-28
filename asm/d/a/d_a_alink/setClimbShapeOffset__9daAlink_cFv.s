lbl_800FE174:
/* 800FE174  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800FE178  7C 08 02 A6 */	mflr r0
/* 800FE17C  90 01 00 64 */	stw r0, 0x64(r1)
/* 800FE180  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800FE184  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 800FE188  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 800FE18C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 800FE190  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800FE194  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800FE198  7C 7F 1B 78 */	mr r31, r3
/* 800FE19C  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800FE1A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FE1A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800FE1A8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800FE1AC  7C A3 04 2E */	lfsx f5, r3, r0
/* 800FE1B0  7C 63 02 14 */	add r3, r3, r0
/* 800FE1B4  C0 C3 00 04 */	lfs f6, 4(r3)
/* 800FE1B8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800FE1BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FE1C0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800FE1C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800FE1C8  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800FE1CC  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800FE1D0  41 82 00 20 */	beq lbl_800FE1F0
/* 800FE1D4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800FE1D8  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800FE1DC  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 800FE1E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FE1E4  EC 02 00 2A */	fadds f0, f2, f0
/* 800FE1E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800FE1EC  48 00 00 14 */	b lbl_800FE200
lbl_800FE1F0:
/* 800FE1F0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800FE1F4  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 800FE1F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FE1FC  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_800FE200:
/* 800FE200  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 800FE204  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 800FE208  EC 01 01 72 */	fmuls f0, f1, f5
/* 800FE20C  EC 82 00 28 */	fsubs f4, f2, f0
/* 800FE210  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 800FE214  C0 E1 00 18 */	lfs f7, 0x18(r1)
/* 800FE218  D0 E1 00 30 */	stfs f7, 0x30(r1)
/* 800FE21C  C1 01 00 1C */	lfs f8, 0x1c(r1)
/* 800FE220  EC 01 01 B2 */	fmuls f0, f1, f6
/* 800FE224  EC 68 00 28 */	fsubs f3, f8, f0
/* 800FE228  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 800FE22C  C0 22 95 1C */	lfs f1, lit_20991(r2)
/* 800FE230  EC 01 01 72 */	fmuls f0, f1, f5
/* 800FE234  EC 42 00 2A */	fadds f2, f2, f0
/* 800FE238  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800FE23C  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 800FE240  EC 01 01 B2 */	fmuls f0, f1, f6
/* 800FE244  EC 28 00 2A */	fadds f1, f8, f0
/* 800FE248  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800FE24C  C0 02 93 78 */	lfs f0, lit_8676(r2)
/* 800FE250  EF E0 01 B2 */	fmuls f31, f0, f6
/* 800FE254  C0 02 95 90 */	lfs f0, lit_25059(r2)
/* 800FE258  EF C0 01 72 */	fmuls f30, f0, f5
/* 800FE25C  EC 04 F8 2A */	fadds f0, f4, f31
/* 800FE260  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800FE264  EC 03 F0 2A */	fadds f0, f3, f30
/* 800FE268  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800FE26C  EC 02 F8 2A */	fadds f0, f2, f31
/* 800FE270  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800FE274  EC 01 F0 2A */	fadds f0, f1, f30
/* 800FE278  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800FE27C  7F E3 FB 78 */	mr r3, r31
/* 800FE280  38 81 00 2C */	addi r4, r1, 0x2c
/* 800FE284  38 A1 00 20 */	addi r5, r1, 0x20
/* 800FE288  4B FA 3F 11 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FE28C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FE290  41 82 00 44 */	beq lbl_800FE2D4
/* 800FE294  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800FE298  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800FE29C  41 82 00 18 */	beq lbl_800FE2B4
/* 800FE2A0  7F E3 FB 78 */	mr r3, r31
/* 800FE2A4  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800FE2A8  4B FF FD B1 */	bl checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
/* 800FE2AC  2C 03 00 00 */	cmpwi r3, 0
/* 800FE2B0  41 82 00 24 */	beq lbl_800FE2D4
lbl_800FE2B4:
/* 800FE2B4  3B DF 1B 78 */	addi r30, r31, 0x1b78
/* 800FE2B8  C0 1F 1B 78 */	lfs f0, 0x1b78(r31)
/* 800FE2BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FE2C0  C0 1F 1B 7C */	lfs f0, 0x1b7c(r31)
/* 800FE2C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800FE2C8  C0 1F 1B 80 */	lfs f0, 0x1b80(r31)
/* 800FE2CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800FE2D0  48 00 00 10 */	b lbl_800FE2E0
lbl_800FE2D4:
/* 800FE2D4  38 00 00 00 */	li r0, 0
/* 800FE2D8  B0 1F 30 8C */	sth r0, 0x308c(r31)
/* 800FE2DC  48 00 00 C0 */	b lbl_800FE39C
lbl_800FE2E0:
/* 800FE2E0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800FE2E4  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 800FE2E8  EC 41 07 F2 */	fmuls f2, f1, f31
/* 800FE2EC  EC 00 10 28 */	fsubs f0, f0, f2
/* 800FE2F0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800FE2F4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800FE2F8  EC 21 07 B2 */	fmuls f1, f1, f30
/* 800FE2FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FE300  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800FE304  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800FE308  EC 00 10 28 */	fsubs f0, f0, f2
/* 800FE30C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800FE310  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800FE314  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FE318  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800FE31C  7F E3 FB 78 */	mr r3, r31
/* 800FE320  38 81 00 2C */	addi r4, r1, 0x2c
/* 800FE324  38 A1 00 20 */	addi r5, r1, 0x20
/* 800FE328  4B FA 3E 71 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FE32C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FE330  41 82 00 24 */	beq lbl_800FE354
/* 800FE334  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800FE338  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800FE33C  41 82 00 24 */	beq lbl_800FE360
/* 800FE340  7F E3 FB 78 */	mr r3, r31
/* 800FE344  38 9F 1B 5C */	addi r4, r31, 0x1b5c
/* 800FE348  4B FF FD 11 */	bl checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
/* 800FE34C  2C 03 00 00 */	cmpwi r3, 0
/* 800FE350  40 82 00 10 */	bne lbl_800FE360
lbl_800FE354:
/* 800FE354  38 00 00 00 */	li r0, 0
/* 800FE358  B0 1F 30 8C */	sth r0, 0x308c(r31)
/* 800FE35C  48 00 00 40 */	b lbl_800FE39C
lbl_800FE360:
/* 800FE360  38 61 00 08 */	addi r3, r1, 8
/* 800FE364  7F C4 F3 78 */	mr r4, r30
/* 800FE368  7C 65 1B 78 */	mr r5, r3
/* 800FE36C  48 24 8D 49 */	bl PSVECSubtract
/* 800FE370  38 61 00 08 */	addi r3, r1, 8
/* 800FE374  48 16 8D B5 */	bl atan2sX_Z__4cXyzCFv
/* 800FE378  38 63 C0 00 */	addi r3, r3, -16384
/* 800FE37C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800FE380  7C 00 18 50 */	subf r0, r0, r3
/* 800FE384  7C 04 07 34 */	extsh r4, r0
/* 800FE388  38 7F 30 8C */	addi r3, r31, 0x308c
/* 800FE38C  38 A0 00 05 */	li r5, 5
/* 800FE390  38 C0 07 D0 */	li r6, 0x7d0
/* 800FE394  38 E0 01 90 */	li r7, 0x190
/* 800FE398  48 17 21 A9 */	bl cLib_addCalcAngleS__FPsssss
lbl_800FE39C:
/* 800FE39C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 800FE3A0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800FE3A4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 800FE3A8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 800FE3AC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800FE3B0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800FE3B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800FE3B8  7C 08 03 A6 */	mtlr r0
/* 800FE3BC  38 21 00 60 */	addi r1, r1, 0x60
/* 800FE3C0  4E 80 00 20 */	blr 
