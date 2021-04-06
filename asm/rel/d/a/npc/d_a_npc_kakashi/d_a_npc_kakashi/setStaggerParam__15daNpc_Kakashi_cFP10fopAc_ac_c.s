lbl_8054CEA0:
/* 8054CEA0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8054CEA4  7C 08 02 A6 */	mflr r0
/* 8054CEA8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8054CEAC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8054CEB0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8054CEB4  39 61 00 60 */	addi r11, r1, 0x60
/* 8054CEB8  4B E1 53 25 */	bl _savegpr_29
/* 8054CEBC  7C 7D 1B 78 */	mr r29, r3
/* 8054CEC0  7C 9E 23 79 */	or. r30, r4, r4
/* 8054CEC4  3C A0 80 55 */	lis r5, m__21daNpc_Kakashi_Param_c@ha /* 0x8054EAC4@ha */
/* 8054CEC8  3B E5 EA C4 */	addi r31, r5, m__21daNpc_Kakashi_Param_c@l /* 0x8054EAC4@l */
/* 8054CECC  C3 FF 00 B8 */	lfs f31, 0xb8(r31)
/* 8054CED0  80 BF 00 E8 */	lwz r5, 0xe8(r31)
/* 8054CED4  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 8054CED8  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8054CEDC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8054CEE0  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8054CEE4  90 01 00 30 */	stw r0, 0x30(r1)
/* 8054CEE8  38 BF 00 00 */	addi r5, r31, 0
/* 8054CEEC  C0 05 00 8C */	lfs f0, 0x8c(r5)
/* 8054CEF0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8054CEF4  C0 05 00 90 */	lfs f0, 0x90(r5)
/* 8054CEF8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8054CEFC  C0 05 00 94 */	lfs f0, 0x94(r5)
/* 8054CF00  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8054CF04  38 00 00 00 */	li r0, 0
/* 8054CF08  B0 03 13 8C */	sth r0, 0x138c(r3)
/* 8054CF0C  41 82 00 1C */	beq lbl_8054CF28
/* 8054CF10  4B AC D8 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8054CF14  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 8054CF18  7C 60 18 50 */	subf r3, r0, r3
/* 8054CF1C  3C 63 00 01 */	addis r3, r3, 1
/* 8054CF20  38 03 80 00 */	addi r0, r3, -32768
/* 8054CF24  B0 1D 13 8C */	sth r0, 0x138c(r29)
lbl_8054CF28:
/* 8054CF28  38 00 00 00 */	li r0, 0
/* 8054CF2C  98 1D 13 92 */	stb r0, 0x1392(r29)
/* 8054CF30  80 1D 0D B0 */	lwz r0, 0xdb0(r29)
/* 8054CF34  2C 00 00 03 */	cmpwi r0, 3
/* 8054CF38  41 82 00 1C */	beq lbl_8054CF54
/* 8054CF3C  2C 00 00 04 */	cmpwi r0, 4
/* 8054CF40  41 82 00 14 */	beq lbl_8054CF54
/* 8054CF44  2C 00 00 06 */	cmpwi r0, 6
/* 8054CF48  41 82 00 0C */	beq lbl_8054CF54
/* 8054CF4C  2C 00 00 07 */	cmpwi r0, 7
/* 8054CF50  40 82 00 44 */	bne lbl_8054CF94
lbl_8054CF54:
/* 8054CF54  2C 00 00 03 */	cmpwi r0, 3
/* 8054CF58  40 82 00 14 */	bne lbl_8054CF6C
/* 8054CF5C  A8 7D 13 8C */	lha r3, 0x138c(r29)
/* 8054CF60  38 03 C0 00 */	addi r0, r3, -16384
/* 8054CF64  B0 1D 13 8C */	sth r0, 0x138c(r29)
/* 8054CF68  48 00 00 18 */	b lbl_8054CF80
lbl_8054CF6C:
/* 8054CF6C  2C 00 00 04 */	cmpwi r0, 4
/* 8054CF70  40 82 00 10 */	bne lbl_8054CF80
/* 8054CF74  A8 7D 13 8C */	lha r3, 0x138c(r29)
/* 8054CF78  38 03 40 00 */	addi r0, r3, 0x4000
/* 8054CF7C  B0 1D 13 8C */	sth r0, 0x138c(r29)
lbl_8054CF80:
/* 8054CF80  38 00 00 05 */	li r0, 5
/* 8054CF84  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 8054CF88  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
/* 8054CF8C  C3 FF 00 F4 */	lfs f31, 0xf4(r31)
/* 8054CF90  48 00 00 60 */	b lbl_8054CFF0
lbl_8054CF94:
/* 8054CF94  2C 00 00 08 */	cmpwi r0, 8
/* 8054CF98  41 82 00 1C */	beq lbl_8054CFB4
/* 8054CF9C  2C 00 00 16 */	cmpwi r0, 0x16
/* 8054CFA0  41 82 00 14 */	beq lbl_8054CFB4
/* 8054CFA4  2C 00 00 17 */	cmpwi r0, 0x17
/* 8054CFA8  41 82 00 0C */	beq lbl_8054CFB4
/* 8054CFAC  2C 00 00 18 */	cmpwi r0, 0x18
/* 8054CFB0  40 82 00 1C */	bne lbl_8054CFCC
lbl_8054CFB4:
/* 8054CFB4  38 00 00 08 */	li r0, 8
/* 8054CFB8  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 8054CFBC  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
/* 8054CFC0  38 00 00 01 */	li r0, 1
/* 8054CFC4  98 1D 13 92 */	stb r0, 0x1392(r29)
/* 8054CFC8  48 00 00 28 */	b lbl_8054CFF0
lbl_8054CFCC:
/* 8054CFCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054CFD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054CFD4  80 03 5D AC */	lwz r0, 0x5dac(r3)
/* 8054CFD8  7C 00 F0 40 */	cmplw r0, r30
/* 8054CFDC  40 82 00 10 */	bne lbl_8054CFEC
/* 8054CFE0  38 00 00 05 */	li r0, 5
/* 8054CFE4  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 8054CFE8  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
lbl_8054CFEC:
/* 8054CFEC  C3 FF 00 F4 */	lfs f31, 0xf4(r31)
lbl_8054CFF0:
/* 8054CFF0  39 00 00 00 */	li r8, 0
/* 8054CFF4  38 60 00 00 */	li r3, 0
/* 8054CFF8  38 80 00 00 */	li r4, 0
/* 8054CFFC  C0 5F 00 F8 */	lfs f2, 0xf8(r31)
/* 8054D000  38 E1 00 28 */	addi r7, r1, 0x28
/* 8054D004  C8 3F 01 00 */	lfd f1, 0x100(r31)
/* 8054D008  3C C0 43 30 */	lis r6, 0x4330
/* 8054D00C  38 00 00 03 */	li r0, 3
/* 8054D010  7C 09 03 A6 */	mtctr r0
lbl_8054D014:
/* 8054D014  7C 07 24 2E */	lfsx f0, r7, r4
/* 8054D018  EC 02 00 32 */	fmuls f0, f2, f0
/* 8054D01C  FC 00 00 1E */	fctiwz f0, f0
/* 8054D020  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8054D024  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8054D028  7C 00 07 34 */	extsh r0, r0
/* 8054D02C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8054D030  90 01 00 44 */	stw r0, 0x44(r1)
/* 8054D034  90 C1 00 40 */	stw r6, 0x40(r1)
/* 8054D038  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8054D03C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8054D040  38 04 13 78 */	addi r0, r4, 0x1378
/* 8054D044  7C 1D 05 2E */	stfsx f0, r29, r0
/* 8054D048  2C 08 00 02 */	cmpwi r8, 2
/* 8054D04C  41 82 00 10 */	beq lbl_8054D05C
/* 8054D050  7C 1D 04 2E */	lfsx f0, r29, r0
/* 8054D054  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8054D058  7C 1D 05 2E */	stfsx f0, r29, r0
lbl_8054D05C:
/* 8054D05C  38 A0 40 00 */	li r5, 0x4000
/* 8054D060  38 03 13 84 */	addi r0, r3, 0x1384
/* 8054D064  7C BD 03 2E */	sthx r5, r29, r0
/* 8054D068  39 08 00 01 */	addi r8, r8, 1
/* 8054D06C  38 63 00 02 */	addi r3, r3, 2
/* 8054D070  38 84 00 04 */	addi r4, r4, 4
/* 8054D074  42 00 FF A0 */	bdnz lbl_8054D014
/* 8054D078  80 1D 0D B0 */	lwz r0, 0xdb0(r29)
/* 8054D07C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8054D080  41 82 00 28 */	beq lbl_8054D0A8
/* 8054D084  2C 00 00 12 */	cmpwi r0, 0x12
/* 8054D088  41 82 00 20 */	beq lbl_8054D0A8
/* 8054D08C  2C 00 00 13 */	cmpwi r0, 0x13
/* 8054D090  41 82 00 18 */	beq lbl_8054D0A8
/* 8054D094  2C 00 00 14 */	cmpwi r0, 0x14
/* 8054D098  41 82 00 10 */	beq lbl_8054D0A8
/* 8054D09C  88 1D 13 93 */	lbz r0, 0x1393(r29)
/* 8054D0A0  28 00 00 00 */	cmplwi r0, 0
/* 8054D0A4  41 82 01 7C */	beq lbl_8054D220
lbl_8054D0A8:
/* 8054D0A8  3C 60 80 55 */	lis r3, lit_5060@ha /* 0x8054EFD0@ha */
/* 8054D0AC  38 63 EF D0 */	addi r3, r3, lit_5060@l /* 0x8054EFD0@l */
/* 8054D0B0  38 9D 13 4C */	addi r4, r29, 0x134c
/* 8054D0B4  4B E1 4F 95 */	bl __ptmf_cmpr
/* 8054D0B8  2C 03 00 00 */	cmpwi r3, 0
/* 8054D0BC  40 82 00 14 */	bne lbl_8054D0D0
/* 8054D0C0  4B AE 46 21 */	bl daNpcKakashi_getSwdTutorialStep__Fv
/* 8054D0C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8054D0C8  28 00 00 06 */	cmplwi r0, 6
/* 8054D0CC  40 82 01 54 */	bne lbl_8054D220
lbl_8054D0D0:
/* 8054D0D0  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 8054D0D4  80 63 00 04 */	lwz r3, 4(r3)
/* 8054D0D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8054D0DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8054D0E0  38 63 01 50 */	addi r3, r3, 0x150
/* 8054D0E4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054D0E8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054D0EC  4B DF 93 C5 */	bl PSMTXCopy
/* 8054D0F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8054D0F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8054D0F8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8054D0FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8054D100  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8054D104  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8054D108  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8054D10C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8054D110  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8054D114  EC 01 00 2A */	fadds f0, f1, f0
/* 8054D118  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8054D11C  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8054D120  2C 00 00 02 */	cmpwi r0, 2
/* 8054D124  41 82 00 14 */	beq lbl_8054D138
/* 8054D128  40 80 00 F0 */	bge lbl_8054D218
/* 8054D12C  2C 00 00 01 */	cmpwi r0, 1
/* 8054D130  40 80 00 DC */	bge lbl_8054D20C
/* 8054D134  48 00 00 E4 */	b lbl_8054D218
lbl_8054D138:
/* 8054D138  A8 1D 0D 78 */	lha r0, 0xd78(r29)
/* 8054D13C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8054D140  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 8054D144  B0 01 00 16 */	sth r0, 0x16(r1)
/* 8054D148  A8 1D 0D 7C */	lha r0, 0xd7c(r29)
/* 8054D14C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8054D150  7F A3 EB 78 */	mr r3, r29
/* 8054D154  38 80 00 00 */	li r4, 0
/* 8054D158  48 00 01 15 */	bl setPrtcls__15daNpc_Kakashi_cFi
/* 8054D15C  7F A3 EB 78 */	mr r3, r29
/* 8054D160  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054D164  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054D168  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8054D16C  4B AC D5 A5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8054D170  B0 61 00 16 */	sth r3, 0x16(r1)
/* 8054D174  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8054D178  7C 07 07 74 */	extsb r7, r0
/* 8054D17C  38 00 00 00 */	li r0, 0
/* 8054D180  90 01 00 08 */	stw r0, 8(r1)
/* 8054D184  38 60 02 F6 */	li r3, 0x2f6
/* 8054D188  28 1D 00 00 */	cmplwi r29, 0
/* 8054D18C  41 82 00 0C */	beq lbl_8054D198
/* 8054D190  80 9D 00 04 */	lwz r4, 4(r29)
/* 8054D194  48 00 00 08 */	b lbl_8054D19C
lbl_8054D198:
/* 8054D198  38 80 FF FF */	li r4, -1
lbl_8054D19C:
/* 8054D19C  3C A0 80 00 */	lis r5, 0x8000
/* 8054D1A0  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8054D1A4  39 01 00 14 */	addi r8, r1, 0x14
/* 8054D1A8  39 20 00 00 */	li r9, 0
/* 8054D1AC  39 40 FF FF */	li r10, -1
/* 8054D1B0  4B AC CD 41 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8054D1B4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8054D1B8  7C 07 07 74 */	extsb r7, r0
/* 8054D1BC  38 00 00 00 */	li r0, 0
/* 8054D1C0  90 01 00 08 */	stw r0, 8(r1)
/* 8054D1C4  38 60 02 F6 */	li r3, 0x2f6
/* 8054D1C8  28 1D 00 00 */	cmplwi r29, 0
/* 8054D1CC  41 82 00 0C */	beq lbl_8054D1D8
/* 8054D1D0  80 9D 00 04 */	lwz r4, 4(r29)
/* 8054D1D4  48 00 00 08 */	b lbl_8054D1DC
lbl_8054D1D8:
/* 8054D1D8  38 80 FF FF */	li r4, -1
lbl_8054D1DC:
/* 8054D1DC  3C A0 80 00 */	lis r5, 0x8000 /* 0x80000001@ha */
/* 8054D1E0  38 A5 00 01 */	addi r5, r5, 0x0001 /* 0x80000001@l */
/* 8054D1E4  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8054D1E8  39 01 00 14 */	addi r8, r1, 0x14
/* 8054D1EC  39 20 00 00 */	li r9, 0
/* 8054D1F0  39 40 FF FF */	li r10, -1
/* 8054D1F4  4B AC CC FD */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8054D1F8  88 1D 13 93 */	lbz r0, 0x1393(r29)
/* 8054D1FC  28 00 00 00 */	cmplwi r0, 0
/* 8054D200  41 82 00 18 */	beq lbl_8054D218
/* 8054D204  38 00 00 01 */	li r0, 1
/* 8054D208  B0 1D 05 62 */	sth r0, 0x562(r29)
lbl_8054D20C:
/* 8054D20C  7F A3 EB 78 */	mr r3, r29
/* 8054D210  38 80 00 01 */	li r4, 1
/* 8054D214  48 00 00 59 */	bl setPrtcls__15daNpc_Kakashi_cFi
lbl_8054D218:
/* 8054D218  38 7D 05 62 */	addi r3, r29, 0x562
/* 8054D21C  48 00 15 19 */	bl func_8054E734
lbl_8054D220:
/* 8054D220  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800BD@ha */
/* 8054D224  38 03 00 BD */	addi r0, r3, 0x00BD /* 0x000800BD@l */
/* 8054D228  90 01 00 10 */	stw r0, 0x10(r1)
/* 8054D22C  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 8054D230  38 81 00 10 */	addi r4, r1, 0x10
/* 8054D234  38 A0 00 00 */	li r5, 0
/* 8054D238  38 C0 FF FF */	li r6, -1
/* 8054D23C  81 9D 0E 54 */	lwz r12, 0xe54(r29)
/* 8054D240  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8054D244  7D 89 03 A6 */	mtctr r12
/* 8054D248  4E 80 04 21 */	bctrl 
/* 8054D24C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8054D250  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8054D254  39 61 00 60 */	addi r11, r1, 0x60
/* 8054D258  4B E1 4F D1 */	bl _restgpr_29
/* 8054D25C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8054D260  7C 08 03 A6 */	mtlr r0
/* 8054D264  38 21 00 70 */	addi r1, r1, 0x70
/* 8054D268  4E 80 00 20 */	blr 
