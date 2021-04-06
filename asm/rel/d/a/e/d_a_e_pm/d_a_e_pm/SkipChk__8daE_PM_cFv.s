lbl_8074AEF8:
/* 8074AEF8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8074AEFC  7C 08 02 A6 */	mflr r0
/* 8074AF00  90 01 00 94 */	stw r0, 0x94(r1)
/* 8074AF04  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8074AF08  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8074AF0C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8074AF10  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8074AF14  39 61 00 70 */	addi r11, r1, 0x70
/* 8074AF18  4B C1 72 BD */	bl _savegpr_27
/* 8074AF1C  7C 7F 1B 78 */	mr r31, r3
/* 8074AF20  3C 60 80 75 */	lis r3, lit_3910@ha /* 0x8074BF3C@ha */
/* 8074AF24  3B C3 BF 3C */	addi r30, r3, lit_3910@l /* 0x8074BF3C@l */
/* 8074AF28  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 8074AF2C  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 8074AF30  28 00 00 00 */	cmplwi r0, 0
/* 8074AF34  41 82 05 80 */	beq lbl_8074B4B4
/* 8074AF38  88 1F 06 1A */	lbz r0, 0x61a(r31)
/* 8074AF3C  28 00 00 00 */	cmplwi r0, 0
/* 8074AF40  40 82 03 4C */	bne lbl_8074B28C
/* 8074AF44  38 00 00 05 */	li r0, 5
/* 8074AF48  98 1F 05 DC */	stb r0, 0x5dc(r31)
/* 8074AF4C  88 9F 06 1B */	lbz r4, 0x61b(r31)
/* 8074AF50  28 04 00 FF */	cmplwi r4, 0xff
/* 8074AF54  41 82 00 38 */	beq lbl_8074AF8C
/* 8074AF58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074AF5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074AF60  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8074AF64  7C 05 07 74 */	extsb r5, r0
/* 8074AF68  4B 8E A3 F9 */	bl isSwitch__10dSv_info_cCFii
/* 8074AF6C  2C 03 00 00 */	cmpwi r3, 0
/* 8074AF70  40 82 00 1C */	bne lbl_8074AF8C
/* 8074AF74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074AF78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074AF7C  88 9F 06 1B */	lbz r4, 0x61b(r31)
/* 8074AF80  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8074AF84  7C 05 07 74 */	extsb r5, r0
/* 8074AF88  4B 8E A2 79 */	bl onSwitch__10dSv_info_cFii
lbl_8074AF8C:
/* 8074AF8C  3B 60 00 00 */	li r27, 0
/* 8074AF90  3B A0 00 00 */	li r29, 0
lbl_8074AF94:
/* 8074AF94  3B 9D 05 AC */	addi r28, r29, 0x5ac
/* 8074AF98  7C 7F E0 2E */	lwzx r3, r31, r28
/* 8074AF9C  38 81 00 10 */	addi r4, r1, 0x10
/* 8074AFA0  4B 8C EA 1D */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8074AFA4  2C 03 00 00 */	cmpwi r3, 0
/* 8074AFA8  40 82 00 B4 */	bne lbl_8074B05C
/* 8074AFAC  C0 7E 01 00 */	lfs f3, 0x100(r30)
/* 8074AFB0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8074AFB4  C8 3E 00 A0 */	lfd f1, 0xa0(r30)
/* 8074AFB8  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 8074AFBC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8074AFC0  3C 00 43 30 */	lis r0, 0x4330
/* 8074AFC4  90 01 00 38 */	stw r0, 0x38(r1)
/* 8074AFC8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8074AFCC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8074AFD0  EC 22 00 32 */	fmuls f1, f2, f0
/* 8074AFD4  EC 03 08 2A */	fadds f0, f3, f1
/* 8074AFD8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8074AFDC  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8074AFE0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8074AFE4  FC 00 08 50 */	fneg f0, f1
/* 8074AFE8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8074AFEC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8074AFF0  4B 8C 1D 75 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8074AFF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8074AFF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8074AFFC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8074B000  4B 8C 14 35 */	bl mDoMtx_YrotM__FPA4_fs
/* 8074B004  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8074B008  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8074B00C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8074B010  7C 85 23 78 */	mr r5, r4
/* 8074B014  4B BF BD 59 */	bl PSMTXMultVec
/* 8074B018  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8074B01C  7C 07 07 74 */	extsb r7, r0
/* 8074B020  38 00 00 00 */	li r0, 0
/* 8074B024  90 01 00 08 */	stw r0, 8(r1)
/* 8074B028  38 60 01 D8 */	li r3, 0x1d8
/* 8074B02C  28 1F 00 00 */	cmplwi r31, 0
/* 8074B030  41 82 00 0C */	beq lbl_8074B03C
/* 8074B034  80 9F 00 04 */	lwz r4, 4(r31)
/* 8074B038  48 00 00 08 */	b lbl_8074B040
lbl_8074B03C:
/* 8074B03C  38 80 FF FF */	li r4, -1
lbl_8074B040:
/* 8074B040  38 A0 00 00 */	li r5, 0
/* 8074B044  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8074B048  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8074B04C  39 20 00 00 */	li r9, 0
/* 8074B050  39 40 FF FF */	li r10, -1
/* 8074B054  4B 8C EE 9D */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8074B058  7C 7F E1 2E */	stwx r3, r31, r28
lbl_8074B05C:
/* 8074B05C  3B 7B 00 01 */	addi r27, r27, 1
/* 8074B060  2C 1B 00 02 */	cmpwi r27, 2
/* 8074B064  3B BD 00 04 */	addi r29, r29, 4
/* 8074B068  41 80 FF 2C */	blt lbl_8074AF94
/* 8074B06C  3B 60 00 02 */	li r27, 2
/* 8074B070  3B A0 00 08 */	li r29, 8
lbl_8074B074:
/* 8074B074  3B 9D 05 AC */	addi r28, r29, 0x5ac
/* 8074B078  7C 7F E0 2E */	lwzx r3, r31, r28
/* 8074B07C  38 81 00 10 */	addi r4, r1, 0x10
/* 8074B080  4B 8C E9 3D */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8074B084  2C 03 00 00 */	cmpwi r3, 0
/* 8074B088  40 82 00 B4 */	bne lbl_8074B13C
/* 8074B08C  C0 7E 01 20 */	lfs f3, 0x120(r30)
/* 8074B090  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8074B094  C8 3E 00 A0 */	lfd f1, 0xa0(r30)
/* 8074B098  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 8074B09C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8074B0A0  3C 00 43 30 */	lis r0, 0x4330
/* 8074B0A4  90 01 00 38 */	stw r0, 0x38(r1)
/* 8074B0A8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8074B0AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8074B0B0  EC 22 00 32 */	fmuls f1, f2, f0
/* 8074B0B4  EC 03 08 28 */	fsubs f0, f3, f1
/* 8074B0B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8074B0BC  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8074B0C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8074B0C4  FC 00 08 50 */	fneg f0, f1
/* 8074B0C8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8074B0CC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8074B0D0  4B 8C 1C 95 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8074B0D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8074B0D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8074B0DC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8074B0E0  4B 8C 13 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 8074B0E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8074B0E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8074B0EC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8074B0F0  7C 85 23 78 */	mr r5, r4
/* 8074B0F4  4B BF BC 79 */	bl PSMTXMultVec
/* 8074B0F8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8074B0FC  7C 07 07 74 */	extsb r7, r0
/* 8074B100  38 00 00 00 */	li r0, 0
/* 8074B104  90 01 00 08 */	stw r0, 8(r1)
/* 8074B108  38 60 01 D8 */	li r3, 0x1d8
/* 8074B10C  28 1F 00 00 */	cmplwi r31, 0
/* 8074B110  41 82 00 0C */	beq lbl_8074B11C
/* 8074B114  80 9F 00 04 */	lwz r4, 4(r31)
/* 8074B118  48 00 00 08 */	b lbl_8074B120
lbl_8074B11C:
/* 8074B11C  38 80 FF FF */	li r4, -1
lbl_8074B120:
/* 8074B120  38 A0 00 00 */	li r5, 0
/* 8074B124  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8074B128  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8074B12C  39 20 00 00 */	li r9, 0
/* 8074B130  39 40 FF FF */	li r10, -1
/* 8074B134  4B 8C ED BD */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8074B138  7C 7F E1 2E */	stwx r3, r31, r28
lbl_8074B13C:
/* 8074B13C  3B 7B 00 01 */	addi r27, r27, 1
/* 8074B140  2C 1B 00 04 */	cmpwi r27, 4
/* 8074B144  3B BD 00 04 */	addi r29, r29, 4
/* 8074B148  41 80 FF 2C */	blt lbl_8074B074
/* 8074B14C  3C 60 80 74 */	lis r3, s_pm_sub__FPvPv@ha /* 0x807423F0@ha */
/* 8074B150  38 63 23 F0 */	addi r3, r3, s_pm_sub__FPvPv@l /* 0x807423F0@l */
/* 8074B154  7F E4 FB 78 */	mr r4, r31
/* 8074B158  4B 8D 61 E1 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8074B15C  28 03 00 00 */	cmplwi r3, 0
/* 8074B160  41 82 00 24 */	beq lbl_8074B184
/* 8074B164  38 80 00 00 */	li r4, 0
/* 8074B168  38 00 00 04 */	li r0, 4
/* 8074B16C  7C 09 03 A6 */	mtctr r0
lbl_8074B170:
/* 8074B170  38 A4 05 AC */	addi r5, r4, 0x5ac
/* 8074B174  7C 1F 28 2E */	lwzx r0, r31, r5
/* 8074B178  7C 03 29 2E */	stwx r0, r3, r5
/* 8074B17C  38 84 00 04 */	addi r4, r4, 4
/* 8074B180  42 00 FF F0 */	bdnz lbl_8074B170
lbl_8074B184:
/* 8074B184  3C 60 80 75 */	lis r3, data_8074C3E4@ha /* 0x8074C3E4@ha */
/* 8074B188  38 63 C3 E4 */	addi r3, r3, data_8074C3E4@l /* 0x8074C3E4@l */
/* 8074B18C  80 63 00 00 */	lwz r3, 0(r3)
/* 8074B190  C0 03 00 00 */	lfs f0, 0(r3)
/* 8074B194  D0 1F 06 8C */	stfs f0, 0x68c(r31)
/* 8074B198  C0 03 00 04 */	lfs f0, 4(r3)
/* 8074B19C  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 8074B1A0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8074B1A4  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 8074B1A8  C0 3F 06 90 */	lfs f1, 0x690(r31)
/* 8074B1AC  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8074B1B0  EC 01 00 2A */	fadds f0, f1, f0
/* 8074B1B4  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 8074B1B8  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8074B1BC  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 8074B1C0  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 8074B1C4  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 8074B1C8  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 8074B1CC  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 8074B1D0  7F E3 FB 78 */	mr r3, r31
/* 8074B1D4  4B FF 84 2D */	bl SetReleaseCam__8daE_PM_cFv
/* 8074B1D8  88 9F 06 1B */	lbz r4, 0x61b(r31)
/* 8074B1DC  28 04 00 FF */	cmplwi r4, 0xff
/* 8074B1E0  41 82 00 38 */	beq lbl_8074B218
/* 8074B1E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074B1E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074B1EC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8074B1F0  7C 05 07 74 */	extsb r5, r0
/* 8074B1F4  4B 8E A1 6D */	bl isSwitch__10dSv_info_cCFii
/* 8074B1F8  2C 03 00 00 */	cmpwi r3, 0
/* 8074B1FC  40 82 00 1C */	bne lbl_8074B218
/* 8074B200  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074B204  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074B208  88 9F 06 1B */	lbz r4, 0x61b(r31)
/* 8074B20C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8074B210  7C 05 07 74 */	extsb r5, r0
/* 8074B214  4B 8E 9F ED */	bl onSwitch__10dSv_info_cFii
lbl_8074B218:
/* 8074B218  38 00 00 02 */	li r0, 2
/* 8074B21C  98 1F 06 10 */	stb r0, 0x610(r31)
/* 8074B220  98 1F 06 11 */	stb r0, 0x611(r31)
/* 8074B224  38 00 00 0A */	li r0, 0xa
/* 8074B228  B0 1F 06 20 */	sth r0, 0x620(r31)
/* 8074B22C  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 8074B230  38 80 00 00 */	li r4, 0
/* 8074B234  4B 90 65 7D */	bl dPath_GetPnt__FPC5dPathi
/* 8074B238  C0 03 00 04 */	lfs f0, 4(r3)
/* 8074B23C  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 8074B240  C0 03 00 08 */	lfs f0, 8(r3)
/* 8074B244  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 8074B248  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8074B24C  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 8074B250  C0 5F 05 EC */	lfs f2, 0x5ec(r31)
/* 8074B254  C0 3E 01 A4 */	lfs f1, 0x1a4(r30)
/* 8074B258  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 8074B25C  EC 21 00 2A */	fadds f1, f1, f0
/* 8074B260  C0 1F 05 E4 */	lfs f0, 0x5e4(r31)
/* 8074B264  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8074B268  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 8074B26C  D0 5F 04 D8 */	stfs f2, 0x4d8(r31)
/* 8074B270  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8074B274  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8074B278  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8074B27C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8074B280  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8074B284  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8074B288  48 00 02 2C */	b lbl_8074B4B4
lbl_8074B28C:
/* 8074B28C  28 00 00 04 */	cmplwi r0, 4
/* 8074B290  40 82 02 24 */	bne lbl_8074B4B4
/* 8074B294  3C 60 00 01 */	lis r3, 1
/* 8074B298  88 1F 06 00 */	lbz r0, 0x600(r31)
/* 8074B29C  7C 03 03 D6 */	divw r0, r3, r0
/* 8074B2A0  CB FE 00 A0 */	lfd f31, 0xa0(r30)
/* 8074B2A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8074B2A8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8074B2AC  3F A0 43 30 */	lis r29, 0x4330
/* 8074B2B0  93 A1 00 38 */	stw r29, 0x38(r1)
/* 8074B2B4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8074B2B8  EF C0 F8 28 */	fsubs f30, f0, f31
/* 8074B2BC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074B2C0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8074B2C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8074B2C8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8074B2CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8074B2D0  3B 60 00 00 */	li r27, 0
/* 8074B2D4  48 00 00 58 */	b lbl_8074B32C
lbl_8074B2D8:
/* 8074B2D8  38 61 00 20 */	addi r3, r1, 0x20
/* 8074B2DC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8074B2E0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8074B2E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8074B2E8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8074B2EC  93 A1 00 38 */	stw r29, 0x38(r1)
/* 8074B2F0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8074B2F4  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8074B2F8  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 8074B2FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8074B300  93 A1 00 40 */	stw r29, 0x40(r1)
/* 8074B304  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8074B308  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8074B30C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8074B310  EC 01 00 2A */	fadds f0, f1, f0
/* 8074B314  FC 00 00 1E */	fctiwz f0, f0
/* 8074B318  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8074B31C  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 8074B320  38 C1 00 14 */	addi r6, r1, 0x14
/* 8074B324  4B B2 5A 9D */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8074B328  3B 7B 00 01 */	addi r27, r27, 1
lbl_8074B32C:
/* 8074B32C  88 1F 06 00 */	lbz r0, 0x600(r31)
/* 8074B330  7C 1B 00 00 */	cmpw r27, r0
/* 8074B334  41 80 FF A4 */	blt lbl_8074B2D8
/* 8074B338  88 1F 06 D8 */	lbz r0, 0x6d8(r31)
/* 8074B33C  28 00 00 00 */	cmplwi r0, 0
/* 8074B340  41 82 00 74 */	beq lbl_8074B3B4
/* 8074B344  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8074B348  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 8074B34C  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8074B350  7F E3 FB 78 */	mr r3, r31
/* 8074B354  4B FF 82 AD */	bl SetReleaseCam__8daE_PM_cFv
/* 8074B358  38 00 00 01 */	li r0, 1
/* 8074B35C  98 1F 05 DC */	stb r0, 0x5dc(r31)
/* 8074B360  38 60 00 00 */	li r3, 0
/* 8074B364  98 7F 06 12 */	stb r3, 0x612(r31)
/* 8074B368  80 1F 0A B4 */	lwz r0, 0xab4(r31)
/* 8074B36C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8074B370  90 1F 0A B4 */	stw r0, 0xab4(r31)
/* 8074B374  38 00 00 03 */	li r0, 3
/* 8074B378  98 1F 06 10 */	stb r0, 0x610(r31)
/* 8074B37C  98 7F 06 11 */	stb r3, 0x611(r31)
/* 8074B380  7F E3 FB 78 */	mr r3, r31
/* 8074B384  38 80 00 10 */	li r4, 0x10
/* 8074B388  38 A0 00 02 */	li r5, 2
/* 8074B38C  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 8074B390  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074B394  4B FF 72 E1 */	bl SetAnm__8daE_PM_cFiiff
/* 8074B398  C0 1F 08 9C */	lfs f0, 0x89c(r31)
/* 8074B39C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8074B3A0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8074B3A4  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8074B3A8  38 00 00 01 */	li r0, 1
/* 8074B3AC  98 1F 06 FE */	stb r0, 0x6fe(r31)
/* 8074B3B0  48 00 01 04 */	b lbl_8074B4B4
lbl_8074B3B4:
/* 8074B3B4  3C 60 80 75 */	lis r3, data_8074C3E4@ha /* 0x8074C3E4@ha */
/* 8074B3B8  38 83 C3 E4 */	addi r4, r3, data_8074C3E4@l /* 0x8074C3E4@l */
/* 8074B3BC  80 64 00 00 */	lwz r3, 0(r4)
/* 8074B3C0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8074B3C4  D0 1F 06 8C */	stfs f0, 0x68c(r31)
/* 8074B3C8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8074B3CC  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 8074B3D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8074B3D4  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 8074B3D8  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 8074B3DC  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 8074B3E0  EC 00 08 2A */	fadds f0, f0, f1
/* 8074B3E4  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 8074B3E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8074B3EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8074B3F0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8074B3F4  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 8074B3F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8074B3FC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8074B400  80 84 00 00 */	lwz r4, 0(r4)
/* 8074B404  4B B2 58 01 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8074B408  7C 65 1B 78 */	mr r5, r3
/* 8074B40C  38 7F 06 98 */	addi r3, r31, 0x698
/* 8074B410  3C 80 80 75 */	lis r4, data_8074C3E4@ha /* 0x8074C3E4@ha */
/* 8074B414  38 84 C3 E4 */	addi r4, r4, data_8074C3E4@l /* 0x8074C3E4@l */
/* 8074B418  80 84 00 00 */	lwz r4, 0(r4)
/* 8074B41C  38 C1 00 14 */	addi r6, r1, 0x14
/* 8074B420  4B B2 59 A1 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8074B424  7F E3 FB 78 */	mr r3, r31
/* 8074B428  4B FF 81 D9 */	bl SetReleaseCam__8daE_PM_cFv
/* 8074B42C  38 00 00 01 */	li r0, 1
/* 8074B430  98 1F 05 DC */	stb r0, 0x5dc(r31)
/* 8074B434  38 60 00 00 */	li r3, 0
/* 8074B438  98 7F 06 12 */	stb r3, 0x612(r31)
/* 8074B43C  38 00 00 03 */	li r0, 3
/* 8074B440  98 1F 06 10 */	stb r0, 0x610(r31)
/* 8074B444  98 7F 06 11 */	stb r3, 0x611(r31)
/* 8074B448  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 8074B44C  38 80 00 01 */	li r4, 1
/* 8074B450  4B 90 63 61 */	bl dPath_GetPnt__FPC5dPathi
/* 8074B454  C0 03 00 04 */	lfs f0, 4(r3)
/* 8074B458  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 8074B45C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8074B460  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 8074B464  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8074B468  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 8074B46C  C0 5F 05 EC */	lfs f2, 0x5ec(r31)
/* 8074B470  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8074B474  C0 1F 05 E4 */	lfs f0, 0x5e4(r31)
/* 8074B478  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8074B47C  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 8074B480  D0 5F 04 D8 */	stfs f2, 0x4d8(r31)
/* 8074B484  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8074B488  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8074B48C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8074B490  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8074B494  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8074B498  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8074B49C  7F E3 FB 78 */	mr r3, r31
/* 8074B4A0  38 80 00 16 */	li r4, 0x16
/* 8074B4A4  38 A0 00 02 */	li r5, 2
/* 8074B4A8  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 8074B4AC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074B4B0  4B FF 71 C5 */	bl SetAnm__8daE_PM_cFiiff
lbl_8074B4B4:
/* 8074B4B4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8074B4B8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8074B4BC  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8074B4C0  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8074B4C4  39 61 00 70 */	addi r11, r1, 0x70
/* 8074B4C8  4B C1 6D 59 */	bl _restgpr_27
/* 8074B4CC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8074B4D0  7C 08 03 A6 */	mtlr r0
/* 8074B4D4  38 21 00 90 */	addi r1, r1, 0x90
/* 8074B4D8  4E 80 00 20 */	blr 
