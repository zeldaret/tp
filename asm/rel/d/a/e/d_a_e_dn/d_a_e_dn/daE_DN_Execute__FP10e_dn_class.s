lbl_804ECB50:
/* 804ECB50  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 804ECB54  7C 08 02 A6 */	mflr r0
/* 804ECB58  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804ECB5C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 804ECB60  4B E7 56 6C */	b _savegpr_25
/* 804ECB64  7C 7F 1B 78 */	mr r31, r3
/* 804ECB68  3C 60 80 4F */	lis r3, lit_3789@ha
/* 804ECB6C  3B C3 E8 AC */	addi r30, r3, lit_3789@l
/* 804ECB70  88 1F 10 D8 */	lbz r0, 0x10d8(r31)
/* 804ECB74  28 00 00 00 */	cmplwi r0, 0
/* 804ECB78  41 82 00 0C */	beq lbl_804ECB84
/* 804ECB7C  38 60 00 01 */	li r3, 1
/* 804ECB80  48 00 0C A4 */	b lbl_804ED824
lbl_804ECB84:
/* 804ECB84  3C 60 80 4F */	lis r3, c_start@ha
/* 804ECB88  80 03 EF 94 */	lwz r0, c_start@l(r3)
/* 804ECB8C  2C 00 00 00 */	cmpwi r0, 0
/* 804ECB90  40 82 00 50 */	bne lbl_804ECBE0
/* 804ECB94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804ECB98  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 804ECB9C  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 804ECBA0  28 00 00 00 */	cmplwi r0, 0
/* 804ECBA4  41 82 00 3C */	beq lbl_804ECBE0
/* 804ECBA8  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 804ECBAC  83 23 10 18 */	lwz r25, m_midnaActor__9daPy_py_c@l(r3)
/* 804ECBB0  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 804ECBB4  4B B2 EF 60 */	b fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 804ECBB8  7C 03 C8 40 */	cmplw r3, r25
/* 804ECBBC  41 82 00 1C */	beq lbl_804ECBD8
/* 804ECBC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804ECBC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804ECBC8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804ECBCC  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 804ECBD0  28 00 00 03 */	cmplwi r0, 3
/* 804ECBD4  40 82 00 0C */	bne lbl_804ECBE0
lbl_804ECBD8:
/* 804ECBD8  38 60 00 01 */	li r3, 1
/* 804ECBDC  48 00 0C 48 */	b lbl_804ED824
lbl_804ECBE0:
/* 804ECBE0  A8 7F 06 CC */	lha r3, 0x6cc(r31)
/* 804ECBE4  38 03 00 01 */	addi r0, r3, 1
/* 804ECBE8  B0 1F 06 CC */	sth r0, 0x6cc(r31)
/* 804ECBEC  38 60 00 00 */	li r3, 0
/* 804ECBF0  38 00 00 04 */	li r0, 4
/* 804ECBF4  7C 09 03 A6 */	mtctr r0
lbl_804ECBF8:
/* 804ECBF8  38 A3 06 E0 */	addi r5, r3, 0x6e0
/* 804ECBFC  7C 9F 2A AE */	lhax r4, r31, r5
/* 804ECC00  2C 04 00 00 */	cmpwi r4, 0
/* 804ECC04  41 82 00 0C */	beq lbl_804ECC10
/* 804ECC08  38 04 FF FF */	addi r0, r4, -1
/* 804ECC0C  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_804ECC10:
/* 804ECC10  38 63 00 02 */	addi r3, r3, 2
/* 804ECC14  42 00 FF E4 */	bdnz lbl_804ECBF8
/* 804ECC18  A8 7F 06 E8 */	lha r3, 0x6e8(r31)
/* 804ECC1C  2C 03 00 00 */	cmpwi r3, 0
/* 804ECC20  41 82 00 0C */	beq lbl_804ECC2C
/* 804ECC24  38 03 FF FF */	addi r0, r3, -1
/* 804ECC28  B0 1F 06 E8 */	sth r0, 0x6e8(r31)
lbl_804ECC2C:
/* 804ECC2C  A8 7F 06 EC */	lha r3, 0x6ec(r31)
/* 804ECC30  2C 03 00 00 */	cmpwi r3, 0
/* 804ECC34  41 82 00 0C */	beq lbl_804ECC40
/* 804ECC38  38 03 FF FF */	addi r0, r3, -1
/* 804ECC3C  B0 1F 06 EC */	sth r0, 0x6ec(r31)
lbl_804ECC40:
/* 804ECC40  A8 7F 08 40 */	lha r3, 0x840(r31)
/* 804ECC44  2C 03 00 00 */	cmpwi r3, 0
/* 804ECC48  41 82 00 0C */	beq lbl_804ECC54
/* 804ECC4C  38 03 FF FF */	addi r0, r3, -1
/* 804ECC50  B0 1F 08 40 */	sth r0, 0x840(r31)
lbl_804ECC54:
/* 804ECC54  A8 7F 06 EA */	lha r3, 0x6ea(r31)
/* 804ECC58  2C 03 00 00 */	cmpwi r3, 0
/* 804ECC5C  41 82 00 0C */	beq lbl_804ECC68
/* 804ECC60  38 03 FF FF */	addi r0, r3, -1
/* 804ECC64  B0 1F 06 EA */	sth r0, 0x6ea(r31)
lbl_804ECC68:
/* 804ECC68  38 00 00 01 */	li r0, 1
/* 804ECC6C  98 1F 06 F2 */	stb r0, 0x6f2(r31)
/* 804ECC70  7F E3 FB 78 */	mr r3, r31
/* 804ECC74  4B FF E6 D1 */	bl action__FP10e_dn_class
/* 804ECC78  A8 1F 08 40 */	lha r0, 0x840(r31)
/* 804ECC7C  2C 00 00 00 */	cmpwi r0, 0
/* 804ECC80  40 82 01 98 */	bne lbl_804ECE18
/* 804ECC84  88 1F 05 D8 */	lbz r0, 0x5d8(r31)
/* 804ECC88  7C 00 07 75 */	extsb. r0, r0
/* 804ECC8C  40 82 01 8C */	bne lbl_804ECE18
/* 804ECC90  C0 3F 07 04 */	lfs f1, 0x704(r31)
/* 804ECC94  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ECC98  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804ECC9C  41 82 00 78 */	beq lbl_804ECD14
/* 804ECCA0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804ECCA4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804ECCA8  80 63 00 00 */	lwz r3, 0(r3)
/* 804ECCAC  A8 9F 07 26 */	lha r4, 0x726(r31)
/* 804ECCB0  4B B1 F7 2C */	b mDoMtx_YrotS__FPA4_fs
/* 804ECCB4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ECCB8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804ECCBC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804ECCC0  C0 1F 08 3C */	lfs f0, 0x83c(r31)
/* 804ECCC4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804ECCC8  38 61 00 9C */	addi r3, r1, 0x9c
/* 804ECCCC  38 81 00 90 */	addi r4, r1, 0x90
/* 804ECCD0  4B D8 42 1C */	b MtxPosition__FP4cXyzP4cXyz
/* 804ECCD4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804ECCD8  38 81 00 90 */	addi r4, r1, 0x90
/* 804ECCDC  7C 65 1B 78 */	mr r5, r3
/* 804ECCE0  4B E5 A3 B0 */	b PSVECAdd
/* 804ECCE4  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 804ECCE8  38 81 00 90 */	addi r4, r1, 0x90
/* 804ECCEC  7C 65 1B 78 */	mr r5, r3
/* 804ECCF0  4B E5 A3 A0 */	b PSVECAdd
/* 804ECCF4  38 7F 08 3C */	addi r3, r31, 0x83c
/* 804ECCF8  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 804ECCFC  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 804ECD00  EC 21 00 32 */	fmuls f1, f1, f0
/* 804ECD04  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804ECD08  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 804ECD0C  4B D8 2D 30 */	b cLib_addCalc2__FPffff
/* 804ECD10  48 00 00 14 */	b lbl_804ECD24
lbl_804ECD14:
/* 804ECD14  38 7F 08 3C */	addi r3, r31, 0x83c
/* 804ECD18  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804ECD1C  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 804ECD20  4B D8 2D 60 */	b cLib_addCalc0__FPfff
lbl_804ECD24:
/* 804ECD24  38 7F 08 84 */	addi r3, r31, 0x884
/* 804ECD28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804ECD2C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804ECD30  38 84 0F 38 */	addi r4, r4, 0xf38
/* 804ECD34  4B B8 9D 78 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 804ECD38  C0 3F 07 04 */	lfs f1, 0x704(r31)
/* 804ECD3C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ECD40  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804ECD44  41 82 00 24 */	beq lbl_804ECD68
/* 804ECD48  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804ECD4C  38 81 00 90 */	addi r4, r1, 0x90
/* 804ECD50  7C 65 1B 78 */	mr r5, r3
/* 804ECD54  4B E5 A3 60 */	b PSVECSubtract
/* 804ECD58  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 804ECD5C  38 81 00 90 */	addi r4, r1, 0x90
/* 804ECD60  7C 65 1B 78 */	mr r5, r3
/* 804ECD64  4B E5 A3 50 */	b PSVECSubtract
lbl_804ECD68:
/* 804ECD68  80 1F 08 B0 */	lwz r0, 0x8b0(r31)
/* 804ECD6C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804ECD70  40 82 00 58 */	bne lbl_804ECDC8
/* 804ECD74  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 804ECD78  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 804ECD7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ECD80  40 80 00 98 */	bge lbl_804ECE18
/* 804ECD84  A8 7F 08 42 */	lha r3, 0x842(r31)
/* 804ECD88  38 03 00 01 */	addi r0, r3, 1
/* 804ECD8C  B0 1F 08 42 */	sth r0, 0x842(r31)
/* 804ECD90  A8 1F 08 42 */	lha r0, 0x842(r31)
/* 804ECD94  2C 00 00 0D */	cmpwi r0, 0xd
/* 804ECD98  40 82 00 80 */	bne lbl_804ECE18
/* 804ECD9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070022@ha */
/* 804ECDA0  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00070022@l */
/* 804ECDA4  90 01 00 08 */	stw r0, 8(r1)
/* 804ECDA8  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804ECDAC  38 81 00 08 */	addi r4, r1, 8
/* 804ECDB0  38 A0 FF FF */	li r5, -1
/* 804ECDB4  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804ECDB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804ECDBC  7D 89 03 A6 */	mtctr r12
/* 804ECDC0  4E 80 04 21 */	bctrl 
/* 804ECDC4  48 00 00 54 */	b lbl_804ECE18
lbl_804ECDC8:
/* 804ECDC8  A8 1F 08 42 */	lha r0, 0x842(r31)
/* 804ECDCC  2C 00 00 0D */	cmpwi r0, 0xd
/* 804ECDD0  41 80 00 40 */	blt lbl_804ECE10
/* 804ECDD4  38 00 00 15 */	li r0, 0x15
/* 804ECDD8  B0 1F 06 CE */	sth r0, 0x6ce(r31)
/* 804ECDDC  38 60 00 00 */	li r3, 0
/* 804ECDE0  B0 7F 05 B4 */	sth r3, 0x5b4(r31)
/* 804ECDE4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ECDE8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804ECDEC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804ECDF0  D0 1F 07 04 */	stfs f0, 0x704(r31)
/* 804ECDF4  38 00 D0 00 */	li r0, -12288
/* 804ECDF8  B0 1F 07 24 */	sth r0, 0x724(r31)
/* 804ECDFC  38 00 00 32 */	li r0, 0x32
/* 804ECE00  B0 1F 08 28 */	sth r0, 0x828(r31)
/* 804ECE04  38 00 03 E8 */	li r0, 0x3e8
/* 804ECE08  B0 1F 06 E8 */	sth r0, 0x6e8(r31)
/* 804ECE0C  B0 7F 05 62 */	sth r3, 0x562(r31)
lbl_804ECE10:
/* 804ECE10  38 00 00 00 */	li r0, 0
/* 804ECE14  B0 1F 08 42 */	sth r0, 0x842(r31)
lbl_804ECE18:
/* 804ECE18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ECE1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ECE20  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804ECE24  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 804ECE28  C0 1F 07 20 */	lfs f0, 0x720(r31)
/* 804ECE2C  EC 42 00 2A */	fadds f2, f2, f0
/* 804ECE30  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 804ECE34  4B E5 9A B4 */	b PSMTXTrans
/* 804ECE38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ECE3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ECE40  A8 9F 07 2A */	lha r4, 0x72a(r31)
/* 804ECE44  4B B1 F5 58 */	b mDoMtx_XrotM__FPA4_fs
/* 804ECE48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ECE4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ECE50  A8 9F 07 2E */	lha r4, 0x72e(r31)
/* 804ECE54  4B B1 F6 78 */	b mDoMtx_ZrotM__FPA4_fs
/* 804ECE58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ECE5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ECE60  A8 9F 07 26 */	lha r4, 0x726(r31)
/* 804ECE64  4B B1 F5 D0 */	b mDoMtx_YrotM__FPA4_fs
/* 804ECE68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ECE6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ECE70  A8 9F 07 24 */	lha r4, 0x724(r31)
/* 804ECE74  4B B1 F5 28 */	b mDoMtx_XrotM__FPA4_fs
/* 804ECE78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ECE7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ECE80  A8 1F 07 26 */	lha r0, 0x726(r31)
/* 804ECE84  7C 00 00 D0 */	neg r0, r0
/* 804ECE88  7C 04 07 34 */	extsh r4, r0
/* 804ECE8C  4B B1 F5 A8 */	b mDoMtx_YrotM__FPA4_fs
/* 804ECE90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ECE94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ECE98  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 804ECE9C  4B B1 F5 98 */	b mDoMtx_YrotM__FPA4_fs
/* 804ECEA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ECEA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ECEA8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 804ECEAC  4B B1 F4 F0 */	b mDoMtx_XrotM__FPA4_fs
/* 804ECEB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ECEB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ECEB8  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 804ECEBC  4B B1 F6 10 */	b mDoMtx_ZrotM__FPA4_fs
/* 804ECEC0  3C 60 80 4F */	lis r3, l_HIO@ha
/* 804ECEC4  3B A3 EF 3C */	addi r29, r3, l_HIO@l
/* 804ECEC8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804ECECC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 804ECED0  EC 21 00 32 */	fmuls f1, f1, f0
/* 804ECED4  FC 40 08 90 */	fmr f2, f1
/* 804ECED8  FC 60 08 90 */	fmr f3, f1
/* 804ECEDC  4B B1 FF 5C */	b scaleM__14mDoMtx_stack_cFfff
/* 804ECEE0  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804ECEE4  83 83 00 04 */	lwz r28, 4(r3)
/* 804ECEE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ECEEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ECEF0  38 9C 00 24 */	addi r4, r28, 0x24
/* 804ECEF4  4B E5 95 BC */	b PSMTXCopy
/* 804ECEF8  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804ECEFC  38 80 00 00 */	li r4, 0
/* 804ECF00  38 A0 00 00 */	li r5, 0
/* 804ECF04  4B B2 41 AC */	b play__16mDoExt_McaMorfSOFUlSc
/* 804ECF08  7F E3 FB 78 */	mr r3, r31
/* 804ECF0C  4B FF F9 49 */	bl anm_se_set__FP10e_dn_class
/* 804ECF10  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804ECF14  4B B2 42 D8 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 804ECF18  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 804ECF1C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804ECF20  38 63 00 60 */	addi r3, r3, 0x60
/* 804ECF24  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804ECF28  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804ECF2C  80 84 00 00 */	lwz r4, 0(r4)
/* 804ECF30  4B E5 95 80 */	b PSMTXCopy
/* 804ECF34  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ECF38  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804ECF3C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804ECF40  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804ECF44  38 61 00 9C */	addi r3, r1, 0x9c
/* 804ECF48  38 81 00 90 */	addi r4, r1, 0x90
/* 804ECF4C  4B D8 3F A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 804ECF50  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ECF54  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804ECF58  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804ECF5C  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 804ECF60  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804ECF64  38 61 00 9C */	addi r3, r1, 0x9c
/* 804ECF68  38 81 00 84 */	addi r4, r1, 0x84
/* 804ECF6C  4B D8 3F 80 */	b MtxPosition__FP4cXyzP4cXyz
/* 804ECF70  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 804ECF74  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 804ECF78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ECF7C  40 80 00 10 */	bge lbl_804ECF8C
/* 804ECF80  38 00 00 00 */	li r0, 0
/* 804ECF84  98 1F 07 37 */	stb r0, 0x737(r31)
/* 804ECF88  48 00 00 0C */	b lbl_804ECF94
lbl_804ECF8C:
/* 804ECF8C  38 00 00 01 */	li r0, 1
/* 804ECF90  98 1F 07 37 */	stb r0, 0x737(r31)
lbl_804ECF94:
/* 804ECF94  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ECF98  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804ECF9C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804ECFA0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804ECFA4  A8 1F 06 E8 */	lha r0, 0x6e8(r31)
/* 804ECFA8  2C 00 00 00 */	cmpwi r0, 0
/* 804ECFAC  41 82 00 1C */	beq lbl_804ECFC8
/* 804ECFB0  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 804ECFB4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804ECFB8  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 804ECFBC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804ECFC0  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 804ECFC4  D0 01 00 80 */	stfs f0, 0x80(r1)
lbl_804ECFC8:
/* 804ECFC8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 804ECFCC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804ECFD0  38 63 01 20 */	addi r3, r3, 0x120
/* 804ECFD4  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804ECFD8  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804ECFDC  80 84 00 00 */	lwz r4, 0(r4)
/* 804ECFE0  4B E5 94 D0 */	b PSMTXCopy
/* 804ECFE4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 804ECFE8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804ECFEC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804ECFF0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ECFF4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804ECFF8  38 61 00 9C */	addi r3, r1, 0x9c
/* 804ECFFC  38 9F 05 38 */	addi r4, r31, 0x538
/* 804ED000  4B D8 3E EC */	b MtxPosition__FP4cXyzP4cXyz
/* 804ED004  38 61 00 48 */	addi r3, r1, 0x48
/* 804ED008  38 9F 05 38 */	addi r4, r31, 0x538
/* 804ED00C  38 A1 00 78 */	addi r5, r1, 0x78
/* 804ED010  4B D7 9A D4 */	b __pl__4cXyzCFRC3Vec
/* 804ED014  38 7F 0B C0 */	addi r3, r31, 0xbc0
/* 804ED018  38 81 00 48 */	addi r4, r1, 0x48
/* 804ED01C  4B D8 26 2C */	b SetC__8cM3dGSphFRC4cXyz
/* 804ED020  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804ED024  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 804ED028  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804ED02C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804ED030  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 804ED034  7D 89 03 A6 */	mtctr r12
/* 804ED038  4E 80 04 21 */	bctrl 
/* 804ED03C  28 03 00 00 */	cmplwi r3, 0
/* 804ED040  41 82 00 14 */	beq lbl_804ED054
/* 804ED044  38 7F 0B C0 */	addi r3, r31, 0xbc0
/* 804ED048  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 804ED04C  4B D8 26 BC */	b SetR__8cM3dGSphFf
/* 804ED050  48 00 00 10 */	b lbl_804ED060
lbl_804ED054:
/* 804ED054  38 7F 0B C0 */	addi r3, r31, 0xbc0
/* 804ED058  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 804ED05C  4B D8 26 AC */	b SetR__8cM3dGSphFf
lbl_804ED060:
/* 804ED060  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 804ED064  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 804ED068  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 804ED06C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 804ED070  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 804ED074  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 804ED078  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 804ED07C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 804ED080  EC 01 00 2A */	fadds f0, f1, f0
/* 804ED084  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 804ED088  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 804ED08C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804ED090  38 63 00 30 */	addi r3, r3, 0x30
/* 804ED094  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804ED098  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804ED09C  80 84 00 00 */	lwz r4, 0(r4)
/* 804ED0A0  4B E5 94 10 */	b PSMTXCopy
/* 804ED0A4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 804ED0A8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804ED0AC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ED0B0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804ED0B4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804ED0B8  38 61 00 9C */	addi r3, r1, 0x9c
/* 804ED0BC  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED0C0  4B D8 3E 2C */	b MtxPosition__FP4cXyzP4cXyz
/* 804ED0C4  38 61 00 3C */	addi r3, r1, 0x3c
/* 804ED0C8  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED0CC  38 A1 00 78 */	addi r5, r1, 0x78
/* 804ED0D0  4B D7 9A 14 */	b __pl__4cXyzCFRC3Vec
/* 804ED0D4  38 7F 0C F8 */	addi r3, r31, 0xcf8
/* 804ED0D8  38 81 00 3C */	addi r4, r1, 0x3c
/* 804ED0DC  4B D8 25 6C */	b SetC__8cM3dGSphFRC4cXyz
/* 804ED0E0  38 7F 0C F8 */	addi r3, r31, 0xcf8
/* 804ED0E4  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 804ED0E8  4B D8 26 20 */	b SetR__8cM3dGSphFf
/* 804ED0EC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 804ED0F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804ED0F4  38 63 00 60 */	addi r3, r3, 0x60
/* 804ED0F8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804ED0FC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804ED100  80 84 00 00 */	lwz r4, 0(r4)
/* 804ED104  4B E5 93 AC */	b PSMTXCopy
/* 804ED108  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 804ED10C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804ED110  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ED114  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804ED118  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804ED11C  38 61 00 9C */	addi r3, r1, 0x9c
/* 804ED120  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED124  4B D8 3D C8 */	b MtxPosition__FP4cXyzP4cXyz
/* 804ED128  38 61 00 30 */	addi r3, r1, 0x30
/* 804ED12C  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED130  38 A1 00 78 */	addi r5, r1, 0x78
/* 804ED134  4B D7 99 B0 */	b __pl__4cXyzCFRC3Vec
/* 804ED138  38 7F 0E 30 */	addi r3, r31, 0xe30
/* 804ED13C  38 81 00 30 */	addi r4, r1, 0x30
/* 804ED140  4B D8 25 08 */	b SetC__8cM3dGSphFRC4cXyz
/* 804ED144  38 7F 0E 30 */	addi r3, r31, 0xe30
/* 804ED148  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 804ED14C  4B D8 25 BC */	b SetR__8cM3dGSphFf
/* 804ED150  3B 40 00 00 */	li r26, 0
/* 804ED154  3B 20 00 00 */	li r25, 0
/* 804ED158  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804ED15C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804ED160  3B 83 23 3C */	addi r28, r3, 0x233c
lbl_804ED164:
/* 804ED164  88 1F 06 F2 */	lbz r0, 0x6f2(r31)
/* 804ED168  7C 00 07 75 */	extsb. r0, r0
/* 804ED16C  41 82 00 18 */	beq lbl_804ED184
/* 804ED170  38 79 0A C8 */	addi r3, r25, 0xac8
/* 804ED174  7C 1F 18 2E */	lwzx r0, r31, r3
/* 804ED178  60 00 00 01 */	ori r0, r0, 1
/* 804ED17C  7C 1F 19 2E */	stwx r0, r31, r3
/* 804ED180  48 00 00 14 */	b lbl_804ED194
lbl_804ED184:
/* 804ED184  38 79 0A C8 */	addi r3, r25, 0xac8
/* 804ED188  7C 1F 18 2E */	lwzx r0, r31, r3
/* 804ED18C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804ED190  7C 1F 19 2E */	stwx r0, r31, r3
lbl_804ED194:
/* 804ED194  7F 83 E3 78 */	mr r3, r28
/* 804ED198  38 99 0A 9C */	addi r4, r25, 0xa9c
/* 804ED19C  7C 9F 22 14 */	add r4, r31, r4
/* 804ED1A0  4B D7 7A 08 */	b Set__4cCcSFP8cCcD_Obj
/* 804ED1A4  3B 5A 00 01 */	addi r26, r26, 1
/* 804ED1A8  2C 1A 00 02 */	cmpwi r26, 2
/* 804ED1AC  3B 39 01 38 */	addi r25, r25, 0x138
/* 804ED1B0  40 81 FF B4 */	ble lbl_804ED164
/* 804ED1B4  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804ED1B8  80 63 00 04 */	lwz r3, 4(r3)
/* 804ED1BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804ED1C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804ED1C4  38 63 03 90 */	addi r3, r3, 0x390
/* 804ED1C8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804ED1CC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804ED1D0  80 84 00 00 */	lwz r4, 0(r4)
/* 804ED1D4  4B E5 92 DC */	b PSMTXCopy
/* 804ED1D8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804ED1DC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804ED1E0  80 63 00 00 */	lwz r3, 0(r3)
/* 804ED1E4  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 804ED1E8  38 84 00 24 */	addi r4, r4, 0x24
/* 804ED1EC  4B E5 92 C4 */	b PSMTXCopy
/* 804ED1F0  88 1F 06 EF */	lbz r0, 0x6ef(r31)
/* 804ED1F4  7C 00 07 75 */	extsb. r0, r0
/* 804ED1F8  41 82 00 A4 */	beq lbl_804ED29C
/* 804ED1FC  88 1F 06 EE */	lbz r0, 0x6ee(r31)
/* 804ED200  7C 00 07 74 */	extsb r0, r0
/* 804ED204  2C 00 00 01 */	cmpwi r0, 1
/* 804ED208  41 81 00 94 */	bgt lbl_804ED29C
/* 804ED20C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804ED210  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 804ED214  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 804ED218  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804ED21C  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 804ED220  38 61 00 9C */	addi r3, r1, 0x9c
/* 804ED224  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED228  4B D8 3C C4 */	b MtxPosition__FP4cXyzP4cXyz
/* 804ED22C  88 1F 06 F0 */	lbz r0, 0x6f0(r31)
/* 804ED230  7C 00 07 75 */	extsb. r0, r0
/* 804ED234  40 82 00 1C */	bne lbl_804ED250
/* 804ED238  38 00 00 01 */	li r0, 1
/* 804ED23C  98 1F 06 F0 */	stb r0, 0x6f0(r31)
/* 804ED240  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 804ED244  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED248  4B B9 78 30 */	b StartCAt__8dCcD_SphFR4cXyz
/* 804ED24C  48 00 00 10 */	b lbl_804ED25C
lbl_804ED250:
/* 804ED250  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 804ED254  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED258  4B B9 78 6C */	b MoveCAt__8dCcD_SphFR4cXyz
lbl_804ED25C:
/* 804ED25C  88 1F 06 EE */	lbz r0, 0x6ee(r31)
/* 804ED260  2C 00 00 01 */	cmpwi r0, 1
/* 804ED264  40 82 00 1C */	bne lbl_804ED280
/* 804ED268  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 804ED26C  C0 3E 01 60 */	lfs f1, 0x160(r30)
/* 804ED270  C0 1D 00 08 */	lfs f0, 8(r29)
/* 804ED274  EC 21 00 32 */	fmuls f1, f1, f0
/* 804ED278  4B D8 24 90 */	b SetR__8cM3dGSphFf
/* 804ED27C  48 00 00 18 */	b lbl_804ED294
lbl_804ED280:
/* 804ED280  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 804ED284  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 804ED288  C0 1D 00 08 */	lfs f0, 8(r29)
/* 804ED28C  EC 21 00 32 */	fmuls f1, f1, f0
/* 804ED290  4B D8 24 78 */	b SetR__8cM3dGSphFf
lbl_804ED294:
/* 804ED294  38 00 00 01 */	li r0, 1
/* 804ED298  98 1F 0E 58 */	stb r0, 0xe58(r31)
lbl_804ED29C:
/* 804ED29C  80 1F 06 90 */	lwz r0, 0x690(r31)
/* 804ED2A0  28 00 00 00 */	cmplwi r0, 0
/* 804ED2A4  41 82 00 DC */	beq lbl_804ED380
/* 804ED2A8  88 1F 06 94 */	lbz r0, 0x694(r31)
/* 804ED2AC  7C 00 07 75 */	extsb. r0, r0
/* 804ED2B0  40 82 00 48 */	bne lbl_804ED2F8
/* 804ED2B4  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804ED2B8  80 63 00 04 */	lwz r3, 4(r3)
/* 804ED2BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804ED2C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804ED2C4  38 63 01 20 */	addi r3, r3, 0x120
/* 804ED2C8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 804ED2CC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 804ED2D0  4B E5 91 E0 */	b PSMTXCopy
/* 804ED2D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ED2D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ED2DC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804ED2E0  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 804ED2E4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804ED2E8  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 804ED2EC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804ED2F0  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 804ED2F4  48 00 00 78 */	b lbl_804ED36C
lbl_804ED2F8:
/* 804ED2F8  38 7F 06 98 */	addi r3, r31, 0x698
/* 804ED2FC  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 804ED300  7C 65 1B 78 */	mr r5, r3
/* 804ED304  4B E5 9D 8C */	b PSVECAdd
/* 804ED308  C0 3F 06 A8 */	lfs f1, 0x6a8(r31)
/* 804ED30C  C0 1F 09 1C */	lfs f0, 0x91c(r31)
/* 804ED310  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ED314  4C 40 13 82 */	cror 2, 0, 2
/* 804ED318  40 82 00 0C */	bne lbl_804ED324
/* 804ED31C  38 00 00 00 */	li r0, 0
/* 804ED320  90 1F 06 90 */	stw r0, 0x690(r31)
lbl_804ED324:
/* 804ED324  C0 3F 06 A8 */	lfs f1, 0x6a8(r31)
/* 804ED328  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 804ED32C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804ED330  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 804ED334  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ED338  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ED33C  C0 3F 06 98 */	lfs f1, 0x698(r31)
/* 804ED340  C0 5F 06 9C */	lfs f2, 0x69c(r31)
/* 804ED344  C0 7F 06 A0 */	lfs f3, 0x6a0(r31)
/* 804ED348  4B E5 95 A0 */	b PSMTXTrans
/* 804ED34C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ED350  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ED354  A8 9F 06 B0 */	lha r4, 0x6b0(r31)
/* 804ED358  4B B1 F0 DC */	b mDoMtx_YrotM__FPA4_fs
/* 804ED35C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ED360  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ED364  A8 9F 06 B2 */	lha r4, 0x6b2(r31)
/* 804ED368  4B B1 F0 34 */	b mDoMtx_XrotM__FPA4_fs
lbl_804ED36C:
/* 804ED36C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ED370  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ED374  80 9F 06 90 */	lwz r4, 0x690(r31)
/* 804ED378  38 84 00 24 */	addi r4, r4, 0x24
/* 804ED37C  4B E5 91 34 */	b PSMTXCopy
lbl_804ED380:
/* 804ED380  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804ED384  80 63 00 04 */	lwz r3, 4(r3)
/* 804ED388  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804ED38C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804ED390  38 63 02 40 */	addi r3, r3, 0x240
/* 804ED394  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804ED398  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804ED39C  80 84 00 00 */	lwz r4, 0(r4)
/* 804ED3A0  4B E5 91 10 */	b PSMTXCopy
/* 804ED3A4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804ED3A8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804ED3AC  80 63 00 00 */	lwz r3, 0(r3)
/* 804ED3B0  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 804ED3B4  38 84 00 24 */	addi r4, r4, 0x24
/* 804ED3B8  4B E5 90 F8 */	b PSMTXCopy
/* 804ED3BC  88 1F 06 EF */	lbz r0, 0x6ef(r31)
/* 804ED3C0  7C 00 07 75 */	extsb. r0, r0
/* 804ED3C4  41 82 00 9C */	beq lbl_804ED460
/* 804ED3C8  88 1F 06 EE */	lbz r0, 0x6ee(r31)
/* 804ED3CC  2C 00 00 02 */	cmpwi r0, 2
/* 804ED3D0  40 82 00 90 */	bne lbl_804ED460
/* 804ED3D4  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804ED3D8  80 63 00 04 */	lwz r3, 4(r3)
/* 804ED3DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804ED3E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804ED3E4  38 63 06 60 */	addi r3, r3, 0x660
/* 804ED3E8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804ED3EC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804ED3F0  80 84 00 00 */	lwz r4, 0(r4)
/* 804ED3F4  4B E5 90 BC */	b PSMTXCopy
/* 804ED3F8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ED3FC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804ED400  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804ED404  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804ED408  38 61 00 9C */	addi r3, r1, 0x9c
/* 804ED40C  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED410  4B D8 3A DC */	b MtxPosition__FP4cXyzP4cXyz
/* 804ED414  88 1F 06 F0 */	lbz r0, 0x6f0(r31)
/* 804ED418  7C 00 07 75 */	extsb. r0, r0
/* 804ED41C  40 82 00 1C */	bne lbl_804ED438
/* 804ED420  38 00 00 01 */	li r0, 1
/* 804ED424  98 1F 06 F0 */	stb r0, 0x6f0(r31)
/* 804ED428  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 804ED42C  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED430  4B B9 76 48 */	b StartCAt__8dCcD_SphFR4cXyz
/* 804ED434  48 00 00 10 */	b lbl_804ED444
lbl_804ED438:
/* 804ED438  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 804ED43C  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED440  4B B9 76 84 */	b MoveCAt__8dCcD_SphFR4cXyz
lbl_804ED444:
/* 804ED444  38 00 00 02 */	li r0, 2
/* 804ED448  98 1F 0E 58 */	stb r0, 0xe58(r31)
/* 804ED44C  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 804ED450  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 804ED454  C0 1D 00 08 */	lfs f0, 8(r29)
/* 804ED458  EC 21 00 32 */	fmuls f1, f1, f0
/* 804ED45C  4B D8 22 AC */	b SetR__8cM3dGSphFf
lbl_804ED460:
/* 804ED460  88 1F 06 EF */	lbz r0, 0x6ef(r31)
/* 804ED464  7C 00 07 75 */	extsb. r0, r0
/* 804ED468  40 82 00 44 */	bne lbl_804ED4AC
/* 804ED46C  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 804ED470  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804ED474  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 804ED478  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 804ED47C  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 804ED480  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 804ED484  38 61 00 24 */	addi r3, r1, 0x24
/* 804ED488  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804ED48C  38 A1 00 6C */	addi r5, r1, 0x6c
/* 804ED490  4B D7 96 54 */	b __pl__4cXyzCFRC3Vec
/* 804ED494  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 804ED498  38 81 00 24 */	addi r4, r1, 0x24
/* 804ED49C  4B D8 21 AC */	b SetC__8cM3dGSphFRC4cXyz
/* 804ED4A0  38 00 00 00 */	li r0, 0
/* 804ED4A4  98 1F 06 F0 */	stb r0, 0x6f0(r31)
/* 804ED4A8  48 00 00 0C */	b lbl_804ED4B4
lbl_804ED4AC:
/* 804ED4AC  38 00 00 00 */	li r0, 0
/* 804ED4B0  98 1F 06 EF */	stb r0, 0x6ef(r31)
lbl_804ED4B4:
/* 804ED4B4  7F 83 E3 78 */	mr r3, r28
/* 804ED4B8  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 804ED4BC  4B D7 76 EC */	b Set__4cCcSFP8cCcD_Obj
/* 804ED4C0  88 1F 06 F1 */	lbz r0, 0x6f1(r31)
/* 804ED4C4  7C 00 07 75 */	extsb. r0, r0
/* 804ED4C8  41 82 01 34 */	beq lbl_804ED5FC
/* 804ED4CC  A8 1F 06 EC */	lha r0, 0x6ec(r31)
/* 804ED4D0  2C 00 00 00 */	cmpwi r0, 0
/* 804ED4D4  40 82 01 28 */	bne lbl_804ED5FC
/* 804ED4D8  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804ED4DC  80 63 00 04 */	lwz r3, 4(r3)
/* 804ED4E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804ED4E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804ED4E8  38 63 02 40 */	addi r3, r3, 0x240
/* 804ED4EC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804ED4F0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804ED4F4  80 84 00 00 */	lwz r4, 0(r4)
/* 804ED4F8  4B E5 8F B8 */	b PSMTXCopy
/* 804ED4FC  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804ED500  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804ED504  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ED508  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804ED50C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 804ED510  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804ED514  38 61 00 9C */	addi r3, r1, 0x9c
/* 804ED518  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED51C  4B D8 39 D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 804ED520  38 7F 10 A0 */	addi r3, r31, 0x10a0
/* 804ED524  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED528  4B D8 21 20 */	b SetC__8cM3dGSphFRC4cXyz
/* 804ED52C  38 7F 10 A0 */	addi r3, r31, 0x10a0
/* 804ED530  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 804ED534  C0 1D 00 08 */	lfs f0, 8(r29)
/* 804ED538  EC 21 00 32 */	fmuls f1, f1, f0
/* 804ED53C  4B D8 21 CC */	b SetR__8cM3dGSphFf
/* 804ED540  38 7F 0F 7C */	addi r3, r31, 0xf7c
/* 804ED544  4B B9 6F 1C */	b ChkTgHit__12dCcD_GObjInfFv
/* 804ED548  28 03 00 00 */	cmplwi r3, 0
/* 804ED54C  41 82 00 E4 */	beq lbl_804ED630
/* 804ED550  38 7F 0F 7C */	addi r3, r31, 0xf7c
/* 804ED554  4B B9 6F A4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 804ED558  7C 64 1B 78 */	mr r4, r3
/* 804ED55C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804ED560  38 A0 00 28 */	li r5, 0x28
/* 804ED564  38 C0 00 00 */	li r6, 0
/* 804ED568  4B B9 9F AC */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 804ED56C  3C 60 80 4F */	lis r3, l_HIO@ha
/* 804ED570  38 63 EF 3C */	addi r3, r3, l_HIO@l
/* 804ED574  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 804ED578  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 804ED57C  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)
/* 804ED580  38 00 00 0A */	li r0, 0xa
/* 804ED584  B0 1F 06 EC */	sth r0, 0x6ec(r31)
/* 804ED588  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804ED58C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804ED590  80 63 00 00 */	lwz r3, 0(r3)
/* 804ED594  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 804ED598  4B B1 EE 44 */	b mDoMtx_YrotS__FPA4_fs
/* 804ED59C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ED5A0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804ED5A4  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 804ED5A8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804ED5AC  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804ED5B0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804ED5B4  38 61 00 9C */	addi r3, r1, 0x9c
/* 804ED5B8  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED5BC  4B D8 39 30 */	b MtxPosition__FP4cXyzP4cXyz
/* 804ED5C0  38 61 00 90 */	addi r3, r1, 0x90
/* 804ED5C4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804ED5C8  7C 65 1B 78 */	mr r5, r3
/* 804ED5CC  4B E5 9A C4 */	b PSVECAdd
/* 804ED5D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804ED5D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804ED5D8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804ED5DC  38 80 00 02 */	li r4, 2
/* 804ED5E0  38 A0 00 00 */	li r5, 0
/* 804ED5E4  38 C1 00 90 */	addi r6, r1, 0x90
/* 804ED5E8  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 804ED5EC  39 00 00 00 */	li r8, 0
/* 804ED5F0  39 20 00 00 */	li r9, 0
/* 804ED5F4  4B B5 EC 24 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 804ED5F8  48 00 00 38 */	b lbl_804ED630
lbl_804ED5FC:
/* 804ED5FC  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 804ED600  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804ED604  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 804ED608  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804ED60C  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 804ED610  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804ED614  38 61 00 18 */	addi r3, r1, 0x18
/* 804ED618  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804ED61C  38 A1 00 60 */	addi r5, r1, 0x60
/* 804ED620  4B D7 94 C4 */	b __pl__4cXyzCFRC3Vec
/* 804ED624  38 7F 10 A0 */	addi r3, r31, 0x10a0
/* 804ED628  38 81 00 18 */	addi r4, r1, 0x18
/* 804ED62C  4B D8 20 1C */	b SetC__8cM3dGSphFRC4cXyz
lbl_804ED630:
/* 804ED630  38 00 00 00 */	li r0, 0
/* 804ED634  98 1F 06 F1 */	stb r0, 0x6f1(r31)
/* 804ED638  7F 83 E3 78 */	mr r3, r28
/* 804ED63C  38 9F 0F 7C */	addi r4, r31, 0xf7c
/* 804ED640  4B D7 75 68 */	b Set__4cCcSFP8cCcD_Obj
/* 804ED644  88 1F 06 C4 */	lbz r0, 0x6c4(r31)
/* 804ED648  7C 00 07 75 */	extsb. r0, r0
/* 804ED64C  41 82 00 18 */	beq lbl_804ED664
/* 804ED650  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 804ED654  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 804ED658  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804ED65C  C0 7E 01 70 */	lfs f3, 0x170(r30)
/* 804ED660  4B D8 23 DC */	b cLib_addCalc2__FPffff
lbl_804ED664:
/* 804ED664  83 3B 5D AC */	lwz r25, 0x5dac(r27)
/* 804ED668  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804ED66C  80 63 00 04 */	lwz r3, 4(r3)
/* 804ED670  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804ED674  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804ED678  38 63 00 60 */	addi r3, r3, 0x60
/* 804ED67C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 804ED680  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 804ED684  4B E5 8E 2C */	b PSMTXCopy
/* 804ED688  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804ED68C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804ED690  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804ED694  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804ED698  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804ED69C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804ED6A0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804ED6A4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804ED6A8  38 61 00 0C */	addi r3, r1, 0xc
/* 804ED6AC  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 804ED6B0  38 A1 00 90 */	addi r5, r1, 0x90
/* 804ED6B4  4B D7 94 80 */	b __mi__4cXyzCFRC3Vec
/* 804ED6B8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804ED6BC  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 804ED6C0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804ED6C4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804ED6C8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 804ED6CC  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 804ED6D0  4B D7 9F A4 */	b cM_atan2s__Fff
/* 804ED6D4  7C 64 1B 78 */	mr r4, r3
/* 804ED6D8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804ED6DC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804ED6E0  80 63 00 00 */	lwz r3, 0(r3)
/* 804ED6E4  4B B1 EC F8 */	b mDoMtx_YrotS__FPA4_fs
/* 804ED6E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ED6EC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804ED6F0  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 804ED6F4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804ED6F8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 804ED6FC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804ED700  38 61 00 9C */	addi r3, r1, 0x9c
/* 804ED704  38 81 00 84 */	addi r4, r1, 0x84
/* 804ED708  4B D8 37 E4 */	b MtxPosition__FP4cXyzP4cXyz
/* 804ED70C  38 61 00 84 */	addi r3, r1, 0x84
/* 804ED710  38 81 00 90 */	addi r4, r1, 0x90
/* 804ED714  7C 65 1B 78 */	mr r5, r3
/* 804ED718  4B E5 99 78 */	b PSVECAdd
/* 804ED71C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 804ED720  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 804ED724  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 804ED728  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 804ED72C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 804ED730  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 804ED734  C0 7F 05 38 */	lfs f3, 0x538(r31)
/* 804ED738  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 804ED73C  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 804ED740  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 804ED744  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 804ED748  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 804ED74C  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 804ED750  EC 02 00 2A */	fadds f0, f2, f0
/* 804ED754  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804ED758  D0 7F 05 74 */	stfs f3, 0x574(r31)
/* 804ED75C  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 804ED760  D0 3F 05 7C */	stfs f1, 0x57c(r31)
/* 804ED764  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 804ED768  64 00 00 20 */	oris r0, r0, 0x20
/* 804ED76C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 804ED770  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804ED774  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 804ED778  EC 21 00 28 */	fsubs f1, f1, f0
/* 804ED77C  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 804ED780  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ED784  40 80 00 30 */	bge lbl_804ED7B4
/* 804ED788  7F E3 FB 78 */	mr r3, r31
/* 804ED78C  4B B2 C4 F0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 804ED790  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804ED794  54 04 46 3E */	srwi r4, r0, 0x18
/* 804ED798  2C 04 00 FF */	cmpwi r4, 0xff
/* 804ED79C  41 82 00 18 */	beq lbl_804ED7B4
/* 804ED7A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804ED7A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804ED7A8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804ED7AC  7C 05 07 74 */	extsb r5, r0
/* 804ED7B0  4B B4 7A 50 */	b onSwitch__10dSv_info_cFii
lbl_804ED7B4:
/* 804ED7B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804ED7B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804ED7BC  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 804ED7C0  3C 80 80 4F */	lis r4, stringBase0@ha
/* 804ED7C4  38 84 EA 34 */	addi r4, r4, stringBase0@l
/* 804ED7C8  38 84 00 05 */	addi r4, r4, 5
/* 804ED7CC  4B E7 B1 C8 */	b strcmp
/* 804ED7D0  2C 03 00 00 */	cmpwi r3, 0
/* 804ED7D4  40 82 00 4C */	bne lbl_804ED820
/* 804ED7D8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804ED7DC  2C 00 00 08 */	cmpwi r0, 8
/* 804ED7E0  40 82 00 40 */	bne lbl_804ED820
/* 804ED7E4  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 804ED7E8  2C 00 00 00 */	cmpwi r0, 0
/* 804ED7EC  41 82 00 34 */	beq lbl_804ED820
/* 804ED7F0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804ED7F4  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 804ED7F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ED7FC  4C 40 13 82 */	cror 2, 0, 2
/* 804ED800  40 82 00 20 */	bne lbl_804ED820
/* 804ED804  38 00 00 15 */	li r0, 0x15
/* 804ED808  B0 1F 06 CE */	sth r0, 0x6ce(r31)
/* 804ED80C  38 00 00 00 */	li r0, 0
/* 804ED810  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 804ED814  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804ED818  D0 1F 07 04 */	stfs f0, 0x704(r31)
/* 804ED81C  B0 1F 05 62 */	sth r0, 0x562(r31)
lbl_804ED820:
/* 804ED820  38 60 00 01 */	li r3, 1
lbl_804ED824:
/* 804ED824  39 61 00 D0 */	addi r11, r1, 0xd0
/* 804ED828  4B E7 49 F0 */	b _restgpr_25
/* 804ED82C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 804ED830  7C 08 03 A6 */	mtlr r0
/* 804ED834  38 21 00 D0 */	addi r1, r1, 0xd0
/* 804ED838  4E 80 00 20 */	blr 
