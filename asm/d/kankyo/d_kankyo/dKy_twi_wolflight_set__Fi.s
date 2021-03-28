lbl_8019CFE4:
/* 8019CFE4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8019CFE8  7C 08 02 A6 */	mflr r0
/* 8019CFEC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8019CFF0  39 61 00 40 */	addi r11, r1, 0x40
/* 8019CFF4  48 1C 51 E9 */	bl _savegpr_29
/* 8019CFF8  7C 7D 1B 78 */	mr r29, r3
/* 8019CFFC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019D000  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 8019D004  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019D008  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019D00C  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 8019D010  28 1E 00 00 */	cmplwi r30, 0
/* 8019D014  41 82 01 74 */	beq lbl_8019D188
/* 8019D018  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 8019D01C  38 9E 00 D8 */	addi r4, r30, 0xd8
/* 8019D020  38 A1 00 0A */	addi r5, r1, 0xa
/* 8019D024  38 C1 00 08 */	addi r6, r1, 8
/* 8019D028  4B FF FE 35 */	bl dKy_pos2_get_angle__FP4cXyzP4cXyzPsPs
/* 8019D02C  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 8019D030  38 9E 00 D8 */	addi r4, r30, 0xd8
/* 8019D034  38 A1 00 0C */	addi r5, r1, 0xc
/* 8019D038  4B EB E7 29 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8019D03C  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8019D040  C0 42 A1 F4 */	lfs f2, lit_4358(r2)
/* 8019D044  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8019D048  EC 02 00 32 */	fmuls f0, f2, f0
/* 8019D04C  EC 01 00 2A */	fadds f0, f1, f0
/* 8019D050  1C BD 00 28 */	mulli r5, r29, 0x28
/* 8019D054  7C 9F 2A 14 */	add r4, r31, r5
/* 8019D058  D0 04 0C 18 */	stfs f0, 0xc18(r4)
/* 8019D05C  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 8019D060  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8019D064  EC 02 00 32 */	fmuls f0, f2, f0
/* 8019D068  EC 01 00 2A */	fadds f0, f1, f0
/* 8019D06C  D0 04 0C 1C */	stfs f0, 0xc1c(r4)
/* 8019D070  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 8019D074  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8019D078  EC 02 00 32 */	fmuls f0, f2, f0
/* 8019D07C  EC 01 00 2A */	fadds f0, f1, f0
/* 8019D080  D0 04 0C 20 */	stfs f0, 0xc20(r4)
/* 8019D084  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019D088  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8019D08C  88 03 13 09 */	lbz r0, 0x1309(r3)
/* 8019D090  2C 00 00 02 */	cmpwi r0, 2
/* 8019D094  38 64 0C 1C */	addi r3, r4, 0xc1c
/* 8019D098  41 82 00 4C */	beq lbl_8019D0E4
/* 8019D09C  40 80 00 14 */	bge lbl_8019D0B0
/* 8019D0A0  2C 00 00 00 */	cmpwi r0, 0
/* 8019D0A4  41 82 00 18 */	beq lbl_8019D0BC
/* 8019D0A8  40 80 00 28 */	bge lbl_8019D0D0
/* 8019D0AC  48 00 00 60 */	b lbl_8019D10C
lbl_8019D0B0:
/* 8019D0B0  2C 00 00 04 */	cmpwi r0, 4
/* 8019D0B4  40 80 00 58 */	bge lbl_8019D10C
/* 8019D0B8  48 00 00 40 */	b lbl_8019D0F8
lbl_8019D0BC:
/* 8019D0BC  C0 23 00 00 */	lfs f1, 0(r3)
/* 8019D0C0  C0 02 A1 FC */	lfs f0, lit_4360(r2)
/* 8019D0C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8019D0C8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8019D0CC  48 00 00 50 */	b lbl_8019D11C
lbl_8019D0D0:
/* 8019D0D0  C0 23 00 00 */	lfs f1, 0(r3)
/* 8019D0D4  C0 02 A1 D8 */	lfs f0, lit_4351(r2)
/* 8019D0D8  EC 01 00 2A */	fadds f0, f1, f0
/* 8019D0DC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8019D0E0  48 00 00 3C */	b lbl_8019D11C
lbl_8019D0E4:
/* 8019D0E4  C0 23 00 00 */	lfs f1, 0(r3)
/* 8019D0E8  C0 02 A1 E0 */	lfs f0, lit_4353(r2)
/* 8019D0EC  EC 01 00 2A */	fadds f0, f1, f0
/* 8019D0F0  D0 03 00 00 */	stfs f0, 0(r3)
/* 8019D0F4  48 00 00 28 */	b lbl_8019D11C
lbl_8019D0F8:
/* 8019D0F8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8019D0FC  C0 02 A1 FC */	lfs f0, lit_4360(r2)
/* 8019D100  EC 01 00 2A */	fadds f0, f1, f0
/* 8019D104  D0 03 00 00 */	stfs f0, 0(r3)
/* 8019D108  48 00 00 14 */	b lbl_8019D11C
lbl_8019D10C:
/* 8019D10C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8019D110  C0 02 A1 D8 */	lfs f0, lit_4351(r2)
/* 8019D114  EC 01 00 2A */	fadds f0, f1, f0
/* 8019D118  D0 03 00 00 */	stfs f0, 0(r3)
lbl_8019D11C:
/* 8019D11C  A8 61 00 0A */	lha r3, 0xa(r1)
/* 8019D120  38 03 17 70 */	addi r0, r3, 0x1770
/* 8019D124  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8019D128  C0 42 A2 28 */	lfs f2, lit_4441(r2)
/* 8019D12C  7C 00 07 34 */	extsh r0, r0
/* 8019D130  7C 00 00 D0 */	neg r0, r0
/* 8019D134  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 8019D138  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8019D13C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8019D140  3C 80 43 30 */	lis r4, 0x4330
/* 8019D144  90 81 00 18 */	stw r4, 0x18(r1)
/* 8019D148  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8019D14C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8019D150  EC 02 00 32 */	fmuls f0, f2, f0
/* 8019D154  7C 7F 2A 14 */	add r3, r31, r5
/* 8019D158  D0 03 0C 34 */	stfs f0, 0xc34(r3)
/* 8019D15C  A8 01 00 08 */	lha r0, 8(r1)
/* 8019D160  7C 00 00 D0 */	neg r0, r0
/* 8019D164  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8019D168  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019D16C  90 81 00 20 */	stw r4, 0x20(r1)
/* 8019D170  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8019D174  EC 00 08 28 */	fsubs f0, f0, f1
/* 8019D178  EC 22 00 32 */	fmuls f1, f2, f0
/* 8019D17C  C0 02 A2 2C */	lfs f0, lit_4442(r2)
/* 8019D180  EC 00 08 2A */	fadds f0, f0, f1
/* 8019D184  D0 03 0C 38 */	stfs f0, 0xc38(r3)
lbl_8019D188:
/* 8019D188  39 61 00 40 */	addi r11, r1, 0x40
/* 8019D18C  48 1C 50 9D */	bl _restgpr_29
/* 8019D190  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8019D194  7C 08 03 A6 */	mtlr r0
/* 8019D198  38 21 00 40 */	addi r1, r1, 0x40
/* 8019D19C  4E 80 00 20 */	blr 
