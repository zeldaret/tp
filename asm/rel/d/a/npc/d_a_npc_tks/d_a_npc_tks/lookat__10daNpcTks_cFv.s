lbl_80B1CFD0:
/* 80B1CFD0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B1CFD4  7C 08 02 A6 */	mflr r0
/* 80B1CFD8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B1CFDC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B1CFE0  4B 84 51 F9 */	bl _savegpr_28
/* 80B1CFE4  7C 7C 1B 78 */	mr r28, r3
/* 80B1CFE8  3C 60 80 B2 */	lis r3, m__16daNpcTks_Param_c@ha /* 0x80B1DD58@ha */
/* 80B1CFEC  38 83 DD 58 */	addi r4, r3, m__16daNpcTks_Param_c@l /* 0x80B1DD58@l */
/* 80B1CFF0  38 A0 00 00 */	li r5, 0
/* 80B1CFF4  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B1CFF8  83 E3 00 04 */	lwz r31, 4(r3)
/* 80B1CFFC  3B C0 00 00 */	li r30, 0
/* 80B1D000  38 64 00 00 */	addi r3, r4, 0
/* 80B1D004  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80B1D008  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80B1D00C  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80B1D010  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80B1D014  88 1C 13 8A */	lbz r0, 0x138a(r28)
/* 80B1D018  28 00 00 00 */	cmplwi r0, 0
/* 80B1D01C  41 82 00 0C */	beq lbl_80B1D028
/* 80B1D020  C0 C4 00 C4 */	lfs f6, 0xc4(r4)
/* 80B1D024  48 00 00 08 */	b lbl_80B1D02C
lbl_80B1D028:
/* 80B1D028  C0 C3 00 34 */	lfs f6, 0x34(r3)
lbl_80B1D02C:
/* 80B1D02C  28 00 00 00 */	cmplwi r0, 0
/* 80B1D030  41 82 00 0C */	beq lbl_80B1D03C
/* 80B1D034  C0 E4 00 C4 */	lfs f7, 0xc4(r4)
/* 80B1D038  48 00 00 0C */	b lbl_80B1D044
lbl_80B1D03C:
/* 80B1D03C  38 64 00 00 */	addi r3, r4, 0
/* 80B1D040  C0 E3 00 30 */	lfs f7, 0x30(r3)
lbl_80B1D044:
/* 80B1D044  38 64 00 00 */	addi r3, r4, 0
/* 80B1D048  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 80B1D04C  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 80B1D050  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 80B1D054  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80B1D058  7C 03 00 50 */	subf r0, r3, r0
/* 80B1D05C  7C 1D 07 34 */	extsh r29, r0
/* 80B1D060  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 80B1D064  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B1D068  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 80B1D06C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B1D070  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 80B1D074  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B1D078  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 80B1D07C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B1D080  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 80B1D084  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B1D088  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 80B1D08C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B1D090  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 80B1D094  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B1D098  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 80B1D09C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B1D0A0  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 80B1D0A4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B1D0A8  80 64 01 B8 */	lwz r3, 0x1b8(r4)
/* 80B1D0AC  80 04 01 BC */	lwz r0, 0x1bc(r4)
/* 80B1D0B0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B1D0B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B1D0B8  80 04 01 C0 */	lwz r0, 0x1c0(r4)
/* 80B1D0BC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B1D0C0  38 1C 09 1A */	addi r0, r28, 0x91a
/* 80B1D0C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B1D0C8  38 1C 09 20 */	addi r0, r28, 0x920
/* 80B1D0CC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B1D0D0  38 1C 09 26 */	addi r0, r28, 0x926
/* 80B1D0D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B1D0D8  A8 1C 13 86 */	lha r0, 0x1386(r28)
/* 80B1D0DC  2C 00 00 04 */	cmpwi r0, 4
/* 80B1D0E0  41 82 00 44 */	beq lbl_80B1D124
/* 80B1D0E4  40 80 00 44 */	bge lbl_80B1D128
/* 80B1D0E8  2C 00 00 01 */	cmpwi r0, 1
/* 80B1D0EC  41 82 00 10 */	beq lbl_80B1D0FC
/* 80B1D0F0  40 80 00 14 */	bge lbl_80B1D104
/* 80B1D0F4  48 00 00 34 */	b lbl_80B1D128
/* 80B1D0F8  48 00 00 30 */	b lbl_80B1D128
lbl_80B1D0FC:
/* 80B1D0FC  3B C0 00 01 */	li r30, 1
/* 80B1D100  48 00 00 28 */	b lbl_80B1D128
lbl_80B1D104:
/* 80B1D104  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1D108  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1D10C  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80B1D110  2C 00 00 03 */	cmpwi r0, 3
/* 80B1D114  40 82 00 14 */	bne lbl_80B1D128
/* 80B1D118  C1 04 00 98 */	lfs f8, 0x98(r4)
/* 80B1D11C  C1 24 00 A0 */	lfs f9, 0xa0(r4)
/* 80B1D120  48 00 00 08 */	b lbl_80B1D128
lbl_80B1D124:
/* 80B1D124  80 BC 12 08 */	lwz r5, 0x1208(r28)
lbl_80B1D128:
/* 80B1D128  28 05 00 00 */	cmplwi r5, 0
/* 80B1D12C  41 82 00 4C */	beq lbl_80B1D178
/* 80B1D130  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80B1D134  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 80B1D138  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80B1D13C  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 80B1D140  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80B1D144  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 80B1D148  A8 1C 13 86 */	lha r0, 0x1386(r28)
/* 80B1D14C  2C 00 00 02 */	cmpwi r0, 2
/* 80B1D150  41 82 00 1C */	beq lbl_80B1D16C
/* 80B1D154  2C 00 00 03 */	cmpwi r0, 3
/* 80B1D158  41 82 00 14 */	beq lbl_80B1D16C
/* 80B1D15C  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 80B1D160  C0 04 02 EC */	lfs f0, 0x2ec(r4)
/* 80B1D164  EC 05 00 28 */	fsubs f0, f5, f0
/* 80B1D168  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_80B1D16C:
/* 80B1D16C  38 1C 08 78 */	addi r0, r28, 0x878
/* 80B1D170  90 1C 11 94 */	stw r0, 0x1194(r28)
/* 80B1D174  48 00 00 20 */	b lbl_80B1D194
lbl_80B1D178:
/* 80B1D178  2C 00 00 05 */	cmpwi r0, 5
/* 80B1D17C  40 82 00 10 */	bne lbl_80B1D18C
/* 80B1D180  38 1C 08 78 */	addi r0, r28, 0x878
/* 80B1D184  90 1C 11 94 */	stw r0, 0x1194(r28)
/* 80B1D188  48 00 00 0C */	b lbl_80B1D194
lbl_80B1D18C:
/* 80B1D18C  38 00 00 00 */	li r0, 0
/* 80B1D190  90 1C 11 94 */	stw r0, 0x1194(r28)
lbl_80B1D194:
/* 80B1D194  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80B1D198  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80B1D19C  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80B1D1A0  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 80B1D1A4  38 7C 11 64 */	addi r3, r28, 0x1164
/* 80B1D1A8  C0 A4 00 C4 */	lfs f5, 0xc4(r4)
/* 80B1D1AC  FC C0 28 90 */	fmr f6, f5
/* 80B1D1B0  FC E0 28 90 */	fmr f7, f5
/* 80B1D1B4  FD 00 28 90 */	fmr f8, f5
/* 80B1D1B8  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B1D1BC  38 A1 00 24 */	addi r5, r1, 0x24
/* 80B1D1C0  4B 63 3E F9 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80B1D1C4  38 7C 11 64 */	addi r3, r28, 0x1164
/* 80B1D1C8  7F 84 E3 78 */	mr r4, r28
/* 80B1D1CC  38 BF 00 24 */	addi r5, r31, 0x24
/* 80B1D1D0  38 C1 00 18 */	addi r6, r1, 0x18
/* 80B1D1D4  7F C7 F3 78 */	mr r7, r30
/* 80B1D1D8  7F A8 EB 78 */	mr r8, r29
/* 80B1D1DC  39 20 00 00 */	li r9, 0
/* 80B1D1E0  4B 63 41 71 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80B1D1E4  39 61 00 60 */	addi r11, r1, 0x60
/* 80B1D1E8  4B 84 50 3D */	bl _restgpr_28
/* 80B1D1EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B1D1F0  7C 08 03 A6 */	mtlr r0
/* 80B1D1F4  38 21 00 60 */	addi r1, r1, 0x60
/* 80B1D1F8  4E 80 00 20 */	blr 
