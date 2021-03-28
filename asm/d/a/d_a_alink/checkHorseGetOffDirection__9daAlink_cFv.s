lbl_800EF198:
/* 800EF198  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800EF19C  7C 08 02 A6 */	mflr r0
/* 800EF1A0  90 01 00 64 */	stw r0, 0x64(r1)
/* 800EF1A4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800EF1A8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 800EF1AC  39 61 00 50 */	addi r11, r1, 0x50
/* 800EF1B0  48 27 30 21 */	bl _savegpr_26
/* 800EF1B4  7C 7F 1B 78 */	mr r31, r3
/* 800EF1B8  80 A3 28 18 */	lwz r5, 0x2818(r3)
/* 800EF1BC  C0 45 04 D8 */	lfs f2, 0x4d8(r5)
/* 800EF1C0  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 800EF1C4  C0 05 04 D0 */	lfs f0, 0x4d0(r5)
/* 800EF1C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800EF1CC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800EF1D0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 800EF1D4  88 03 2F C0 */	lbz r0, 0x2fc0(r3)
/* 800EF1D8  28 00 00 00 */	cmplwi r0, 0
/* 800EF1DC  40 82 00 14 */	bne lbl_800EF1F0
/* 800EF1E0  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800EF1E4  38 03 40 00 */	addi r0, r3, 0x4000
/* 800EF1E8  7C 1C 07 34 */	extsh r28, r0
/* 800EF1EC  48 00 00 10 */	b lbl_800EF1FC
lbl_800EF1F0:
/* 800EF1F0  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800EF1F4  38 03 C0 00 */	addi r0, r3, -16384
/* 800EF1F8  7C 1C 07 34 */	extsh r28, r0
lbl_800EF1FC:
/* 800EF1FC  C0 25 04 D8 */	lfs f1, 0x4d8(r5)
/* 800EF200  C0 42 94 D8 */	lfs f2, lit_18997(r2)
/* 800EF204  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800EF208  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800EF20C  57 80 04 38 */	rlwinm r0, r28, 0, 0x10, 0x1c
/* 800EF210  7C 64 02 14 */	add r3, r4, r0
/* 800EF214  C0 03 00 04 */	lfs f0, 4(r3)
/* 800EF218  EC 02 00 32 */	fmuls f0, f2, f0
/* 800EF21C  EC 61 00 2A */	fadds f3, f1, f0
/* 800EF220  C0 25 04 D0 */	lfs f1, 0x4d0(r5)
/* 800EF224  7C 04 04 2E */	lfsx f0, r4, r0
/* 800EF228  EC 02 00 32 */	fmuls f0, f2, f0
/* 800EF22C  EC 01 00 2A */	fadds f0, f1, f0
/* 800EF230  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800EF234  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800EF238  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800EF23C  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 800EF240  3C 60 80 39 */	lis r3, lit_18938@ha
/* 800EF244  38 83 19 78 */	addi r4, r3, lit_18938@l
/* 800EF248  80 64 00 00 */	lwz r3, 0(r4)
/* 800EF24C  80 04 00 04 */	lwz r0, 4(r4)
/* 800EF250  90 61 00 08 */	stw r3, 8(r1)
/* 800EF254  90 01 00 0C */	stw r0, 0xc(r1)
/* 800EF258  80 04 00 08 */	lwz r0, 8(r4)
/* 800EF25C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800EF260  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800EF264  D0 01 00 08 */	stfs f0, 8(r1)
/* 800EF268  C0 45 04 D4 */	lfs f2, 0x4d4(r5)
/* 800EF26C  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800EF270  EC 00 10 28 */	fsubs f0, f0, f2
/* 800EF274  EC 01 00 32 */	fmuls f0, f1, f0
/* 800EF278  EC 02 00 2A */	fadds f0, f2, f0
/* 800EF27C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800EF280  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800EF284  EC 02 00 2A */	fadds f0, f2, f0
/* 800EF288  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800EF28C  3B 40 00 00 */	li r26, 0
/* 800EF290  3B A1 00 08 */	addi r29, r1, 8
/* 800EF294  C3 E2 93 14 */	lfs f31, lit_7307(r2)
lbl_800EF298:
/* 800EF298  3B 60 00 00 */	li r27, 0
/* 800EF29C  3B C0 00 00 */	li r30, 0
lbl_800EF2A0:
/* 800EF2A0  7C 1D F4 2E */	lfsx f0, r29, r30
/* 800EF2A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800EF2A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800EF2AC  7F E3 FB 78 */	mr r3, r31
/* 800EF2B0  38 81 00 20 */	addi r4, r1, 0x20
/* 800EF2B4  38 A1 00 14 */	addi r5, r1, 0x14
/* 800EF2B8  7F 86 E3 78 */	mr r6, r28
/* 800EF2BC  4B FF FE 2D */	bl checkHorseGetOffWallCheck__9daAlink_cFP4cXyzP4cXyzs
/* 800EF2C0  2C 03 00 00 */	cmpwi r3, 0
/* 800EF2C4  40 82 00 14 */	bne lbl_800EF2D8
/* 800EF2C8  3B 7B 00 01 */	addi r27, r27, 1
/* 800EF2CC  2C 1B 00 03 */	cmpwi r27, 3
/* 800EF2D0  3B DE 00 04 */	addi r30, r30, 4
/* 800EF2D4  41 80 FF CC */	blt lbl_800EF2A0
lbl_800EF2D8:
/* 800EF2D8  2C 1B 00 03 */	cmpwi r27, 3
/* 800EF2DC  40 82 00 20 */	bne lbl_800EF2FC
/* 800EF2E0  2C 1A 00 00 */	cmpwi r26, 0
/* 800EF2E4  40 82 00 0C */	bne lbl_800EF2F0
/* 800EF2E8  88 7F 2F C0 */	lbz r3, 0x2fc0(r31)
/* 800EF2EC  48 00 00 50 */	b lbl_800EF33C
lbl_800EF2F0:
/* 800EF2F0  88 1F 2F C0 */	lbz r0, 0x2fc0(r31)
/* 800EF2F4  68 03 00 01 */	xori r3, r0, 1
/* 800EF2F8  48 00 00 44 */	b lbl_800EF33C
lbl_800EF2FC:
/* 800EF2FC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800EF300  EC 3F 00 32 */	fmuls f1, f31, f0
/* 800EF304  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800EF308  EC 01 00 28 */	fsubs f0, f1, f0
/* 800EF30C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800EF310  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800EF314  EC 3F 00 32 */	fmuls f1, f31, f0
/* 800EF318  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800EF31C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800EF320  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800EF324  3F 9C 00 01 */	addis r28, r28, 1
/* 800EF328  3B 5A 00 01 */	addi r26, r26, 1
/* 800EF32C  2C 1A 00 02 */	cmpwi r26, 2
/* 800EF330  3B 9C 80 00 */	addi r28, r28, -32768
/* 800EF334  41 80 FF 64 */	blt lbl_800EF298
/* 800EF338  38 60 00 02 */	li r3, 2
lbl_800EF33C:
/* 800EF33C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 800EF340  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800EF344  39 61 00 50 */	addi r11, r1, 0x50
/* 800EF348  48 27 2E D5 */	bl _restgpr_26
/* 800EF34C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800EF350  7C 08 03 A6 */	mtlr r0
/* 800EF354  38 21 00 60 */	addi r1, r1, 0x60
/* 800EF358  4E 80 00 20 */	blr 
