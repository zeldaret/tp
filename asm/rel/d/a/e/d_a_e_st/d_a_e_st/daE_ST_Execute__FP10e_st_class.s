lbl_807A4A40:
/* 807A4A40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807A4A44  7C 08 02 A6 */	mflr r0
/* 807A4A48  90 01 00 64 */	stw r0, 0x64(r1)
/* 807A4A4C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807A4A50  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807A4A54  39 61 00 50 */	addi r11, r1, 0x50
/* 807A4A58  4B BB D7 80 */	b _savegpr_28
/* 807A4A5C  7C 7F 1B 78 */	mr r31, r3
/* 807A4A60  3C 80 80 7A */	lis r4, lit_3903@ha
/* 807A4A64  3B C4 68 24 */	addi r30, r4, lit_3903@l
/* 807A4A68  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807A4A6C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807A4A70  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807A4A74  4B 87 5D 6C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A4A78  D0 3F 07 F8 */	stfs f1, 0x7f8(r31)
/* 807A4A7C  3C 60 80 7A */	lis r3, l_HIO@ha
/* 807A4A80  38 63 6D F4 */	addi r3, r3, l_HIO@l
/* 807A4A84  C3 E3 00 08 */	lfs f31, 8(r3)
/* 807A4A88  3C 60 80 7A */	lis r3, small@ha
/* 807A4A8C  80 03 6D E0 */	lwz r0, small@l(r3)
/* 807A4A90  2C 00 00 00 */	cmpwi r0, 0
/* 807A4A94  41 82 00 08 */	beq lbl_807A4A9C
/* 807A4A98  C3 FE 00 08 */	lfs f31, 8(r30)
lbl_807A4A9C:
/* 807A4A9C  A8 7F 06 7C */	lha r3, 0x67c(r31)
/* 807A4AA0  38 03 00 01 */	addi r0, r3, 1
/* 807A4AA4  B0 1F 06 7C */	sth r0, 0x67c(r31)
/* 807A4AA8  38 60 00 00 */	li r3, 0
/* 807A4AAC  38 00 00 04 */	li r0, 4
/* 807A4AB0  7C 09 03 A6 */	mtctr r0
lbl_807A4AB4:
/* 807A4AB4  38 A3 06 82 */	addi r5, r3, 0x682
/* 807A4AB8  7C 9F 2A AE */	lhax r4, r31, r5
/* 807A4ABC  2C 04 00 00 */	cmpwi r4, 0
/* 807A4AC0  41 82 00 0C */	beq lbl_807A4ACC
/* 807A4AC4  38 04 FF FF */	addi r0, r4, -1
/* 807A4AC8  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_807A4ACC:
/* 807A4ACC  38 63 00 02 */	addi r3, r3, 2
/* 807A4AD0  42 00 FF E4 */	bdnz lbl_807A4AB4
/* 807A4AD4  A8 7F 06 8A */	lha r3, 0x68a(r31)
/* 807A4AD8  2C 03 00 00 */	cmpwi r3, 0
/* 807A4ADC  41 82 00 0C */	beq lbl_807A4AE8
/* 807A4AE0  38 03 FF FF */	addi r0, r3, -1
/* 807A4AE4  B0 1F 06 8A */	sth r0, 0x68a(r31)
lbl_807A4AE8:
/* 807A4AE8  A8 7F 06 8C */	lha r3, 0x68c(r31)
/* 807A4AEC  2C 03 00 00 */	cmpwi r3, 0
/* 807A4AF0  41 82 00 0C */	beq lbl_807A4AFC
/* 807A4AF4  38 03 FF FF */	addi r0, r3, -1
/* 807A4AF8  B0 1F 06 8C */	sth r0, 0x68c(r31)
lbl_807A4AFC:
/* 807A4AFC  38 00 00 01 */	li r0, 1
/* 807A4B00  98 1F 0A 58 */	stb r0, 0xa58(r31)
/* 807A4B04  38 00 00 00 */	li r0, 0
/* 807A4B08  98 1F 0B 94 */	stb r0, 0xb94(r31)
/* 807A4B0C  7F E3 FB 78 */	mr r3, r31
/* 807A4B10  4B FF F7 0D */	bl action__FP10e_st_class
/* 807A4B14  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4B18  83 A3 00 04 */	lwz r29, 4(r3)
/* 807A4B1C  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 807A4B20  28 00 00 02 */	cmplwi r0, 2
/* 807A4B24  40 82 00 A8 */	bne lbl_807A4BCC
/* 807A4B28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4B2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4B30  C0 3F 06 B0 */	lfs f1, 0x6b0(r31)
/* 807A4B34  C0 5F 06 B4 */	lfs f2, 0x6b4(r31)
/* 807A4B38  C0 7F 06 B8 */	lfs f3, 0x6b8(r31)
/* 807A4B3C  4B BA 1D AC */	b PSMTXTrans
/* 807A4B40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4B44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4B48  A8 1F 06 A4 */	lha r0, 0x6a4(r31)
/* 807A4B4C  7C 00 0E 70 */	srawi r0, r0, 1
/* 807A4B50  7C 00 01 94 */	addze r0, r0
/* 807A4B54  7C 04 07 34 */	extsh r4, r0
/* 807A4B58  4B 86 78 44 */	b mDoMtx_XrotM__FPA4_fs
/* 807A4B5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4B60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4B64  A8 1F 06 A2 */	lha r0, 0x6a2(r31)
/* 807A4B68  7C 00 0E 70 */	srawi r0, r0, 1
/* 807A4B6C  7C 00 01 94 */	addze r0, r0
/* 807A4B70  7C 04 07 34 */	extsh r4, r0
/* 807A4B74  4B 86 79 58 */	b mDoMtx_ZrotM__FPA4_fs
/* 807A4B78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4B7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4B80  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 807A4B84  4B 86 78 B0 */	b mDoMtx_YrotM__FPA4_fs
/* 807A4B88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4B8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4B90  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 807A4B94  4B 86 78 08 */	b mDoMtx_XrotM__FPA4_fs
/* 807A4B98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4B9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4BA0  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 807A4BA4  4B 86 79 28 */	b mDoMtx_ZrotM__FPA4_fs
/* 807A4BA8  FC 20 F8 90 */	fmr f1, f31
/* 807A4BAC  FC 40 F8 90 */	fmr f2, f31
/* 807A4BB0  FC 60 F8 90 */	fmr f3, f31
/* 807A4BB4  4B 86 82 84 */	b scaleM__14mDoMtx_stack_cFfff
/* 807A4BB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4BBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4BC0  38 9D 00 24 */	addi r4, r29, 0x24
/* 807A4BC4  4B BA 18 EC */	b PSMTXCopy
/* 807A4BC8  48 00 02 A0 */	b lbl_807A4E68
lbl_807A4BCC:
/* 807A4BCC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807A4BD0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807A4BD4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807A4BD8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807A4BDC  3B 80 00 00 */	li r28, 0
/* 807A4BE0  C0 1F 07 EC */	lfs f0, 0x7ec(r31)
/* 807A4BE4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807A4BE8  40 81 00 8C */	ble lbl_807A4C74
/* 807A4BEC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807A4BF0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807A4BF4  80 63 00 00 */	lwz r3, 0(r3)
/* 807A4BF8  A8 9F 07 F2 */	lha r4, 0x7f2(r31)
/* 807A4BFC  4B 86 77 E0 */	b mDoMtx_YrotS__FPA4_fs
/* 807A4C00  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A4C04  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A4C08  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A4C0C  A8 1F 07 F0 */	lha r0, 0x7f0(r31)
/* 807A4C10  1C 00 03 84 */	mulli r0, r0, 0x384
/* 807A4C14  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807A4C18  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807A4C1C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807A4C20  7C 03 04 2E */	lfsx f0, r3, r0
/* 807A4C24  C0 3F 07 EC */	lfs f1, 0x7ec(r31)
/* 807A4C28  FC 00 00 50 */	fneg f0, f0
/* 807A4C2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 807A4C30  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A4C34  38 61 00 24 */	addi r3, r1, 0x24
/* 807A4C38  38 81 00 0C */	addi r4, r1, 0xc
/* 807A4C3C  4B AC C2 B0 */	b MtxPosition__FP4cXyzP4cXyz
/* 807A4C40  A8 7F 07 F0 */	lha r3, 0x7f0(r31)
/* 807A4C44  38 03 00 01 */	addi r0, r3, 1
/* 807A4C48  B0 1F 07 F0 */	sth r0, 0x7f0(r31)
/* 807A4C4C  38 7F 07 EC */	addi r3, r31, 0x7ec
/* 807A4C50  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807A4C54  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 807A4C58  4B AC AE 28 */	b cLib_addCalc0__FPfff
/* 807A4C5C  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 807A4C60  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807A4C64  EC 01 00 32 */	fmuls f0, f1, f0
/* 807A4C68  FC 00 00 1E */	fctiwz f0, f0
/* 807A4C6C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807A4C70  83 81 00 34 */	lwz r28, 0x34(r1)
lbl_807A4C74:
/* 807A4C74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4C78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4C7C  C0 3F 06 B0 */	lfs f1, 0x6b0(r31)
/* 807A4C80  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807A4C84  EC 21 00 2A */	fadds f1, f1, f0
/* 807A4C88  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 807A4C8C  C0 5F 06 B4 */	lfs f2, 0x6b4(r31)
/* 807A4C90  C0 1F 07 1C */	lfs f0, 0x71c(r31)
/* 807A4C94  EC 02 00 2A */	fadds f0, f2, f0
/* 807A4C98  EC 43 00 2A */	fadds f2, f3, f0
/* 807A4C9C  C0 7F 06 B8 */	lfs f3, 0x6b8(r31)
/* 807A4CA0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807A4CA4  EC 63 00 2A */	fadds f3, f3, f0
/* 807A4CA8  4B BA 1C 40 */	b PSMTXTrans
/* 807A4CAC  7F 80 07 35 */	extsh. r0, r28
/* 807A4CB0  41 82 00 3C */	beq lbl_807A4CEC
/* 807A4CB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4CB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4CBC  A8 9F 07 F2 */	lha r4, 0x7f2(r31)
/* 807A4CC0  4B 86 77 74 */	b mDoMtx_YrotM__FPA4_fs
/* 807A4CC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4CC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4CCC  7F 84 E3 78 */	mr r4, r28
/* 807A4CD0  4B 86 76 CC */	b mDoMtx_XrotM__FPA4_fs
/* 807A4CD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4CD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4CDC  A8 1F 07 F2 */	lha r0, 0x7f2(r31)
/* 807A4CE0  7C 00 00 D0 */	neg r0, r0
/* 807A4CE4  7C 04 07 34 */	extsh r4, r0
/* 807A4CE8  4B 86 77 4C */	b mDoMtx_YrotM__FPA4_fs
lbl_807A4CEC:
/* 807A4CEC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A4CF0  D0 1F 07 1C */	stfs f0, 0x71c(r31)
/* 807A4CF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4CF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4CFC  A8 9F 06 9E */	lha r4, 0x69e(r31)
/* 807A4D00  4B 86 77 34 */	b mDoMtx_YrotM__FPA4_fs
/* 807A4D04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4D08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4D0C  A8 9F 06 9C */	lha r4, 0x69c(r31)
/* 807A4D10  4B 86 76 8C */	b mDoMtx_XrotM__FPA4_fs
/* 807A4D14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4D18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4D1C  A8 9F 06 A4 */	lha r4, 0x6a4(r31)
/* 807A4D20  4B 86 76 7C */	b mDoMtx_XrotM__FPA4_fs
/* 807A4D24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4D28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4D2C  A8 9F 06 A2 */	lha r4, 0x6a2(r31)
/* 807A4D30  4B 86 77 9C */	b mDoMtx_ZrotM__FPA4_fs
/* 807A4D34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4D38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4D3C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 807A4D40  4B 86 76 F4 */	b mDoMtx_YrotM__FPA4_fs
/* 807A4D44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4D48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4D4C  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 807A4D50  4B 86 76 4C */	b mDoMtx_XrotM__FPA4_fs
/* 807A4D54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4D58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4D5C  A8 9F 04 E0 */	lha r4, 0x4e0(r31)
/* 807A4D60  4B 86 77 6C */	b mDoMtx_ZrotM__FPA4_fs
/* 807A4D64  FC 20 F8 90 */	fmr f1, f31
/* 807A4D68  FC 40 F8 90 */	fmr f2, f31
/* 807A4D6C  FC 60 F8 90 */	fmr f3, f31
/* 807A4D70  4B 86 80 C8 */	b scaleM__14mDoMtx_stack_cFfff
/* 807A4D74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4D78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4D7C  38 9D 00 24 */	addi r4, r29, 0x24
/* 807A4D80  4B BA 17 30 */	b PSMTXCopy
/* 807A4D84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A4D88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A4D8C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807A4D90  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807A4D94  80 84 00 00 */	lwz r4, 0(r4)
/* 807A4D98  4B BA 17 18 */	b PSMTXCopy
/* 807A4D9C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807A4DA0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807A4DA4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807A4DA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A4DAC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807A4DB0  38 61 00 24 */	addi r3, r1, 0x24
/* 807A4DB4  38 9F 06 BC */	addi r4, r31, 0x6bc
/* 807A4DB8  4B AC C1 34 */	b MtxPosition__FP4cXyzP4cXyz
/* 807A4DBC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A4DC0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A4DC4  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 807A4DC8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A4DCC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807A4DD0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A4DD4  38 61 00 24 */	addi r3, r1, 0x24
/* 807A4DD8  38 9F 06 C8 */	addi r4, r31, 0x6c8
/* 807A4DDC  4B AC C1 10 */	b MtxPosition__FP4cXyzP4cXyz
/* 807A4DE0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A4DE4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A4DE8  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 807A4DEC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A4DF0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807A4DF4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A4DF8  38 61 00 24 */	addi r3, r1, 0x24
/* 807A4DFC  38 9F 06 D4 */	addi r4, r31, 0x6d4
/* 807A4E00  4B AC C0 EC */	b MtxPosition__FP4cXyzP4cXyz
/* 807A4E04  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 807A4E08  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A4E0C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807A4E10  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A4E14  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A4E18  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A4E1C  38 61 00 24 */	addi r3, r1, 0x24
/* 807A4E20  38 9F 06 E0 */	addi r4, r31, 0x6e0
/* 807A4E24  4B AC C0 C8 */	b MtxPosition__FP4cXyzP4cXyz
/* 807A4E28  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 807A4E2C  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 807A4E30  EC 01 00 32 */	fmuls f0, f1, f0
/* 807A4E34  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A4E38  38 61 00 24 */	addi r3, r1, 0x24
/* 807A4E3C  38 9F 06 EC */	addi r4, r31, 0x6ec
/* 807A4E40  4B AC C0 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 807A4E44  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A4E48  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A4E4C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807A4E50  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A4E54  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 807A4E58  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A4E5C  38 61 00 24 */	addi r3, r1, 0x24
/* 807A4E60  38 9F 06 F8 */	addi r4, r31, 0x6f8
/* 807A4E64  4B AC C0 88 */	b MtxPosition__FP4cXyzP4cXyz
lbl_807A4E68:
/* 807A4E68  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807A4E6C  7C 03 07 74 */	extsb r3, r0
/* 807A4E70  4B 88 81 FC */	b dComIfGp_getReverb__Fi
/* 807A4E74  7C 65 1B 78 */	mr r5, r3
/* 807A4E78  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4E7C  38 80 00 00 */	li r4, 0
/* 807A4E80  4B 86 C2 30 */	b play__16mDoExt_McaMorfSOFUlSc
/* 807A4E84  80 1F 06 74 */	lwz r0, 0x674(r31)
/* 807A4E88  2C 00 00 1F */	cmpwi r0, 0x1f
/* 807A4E8C  41 82 00 0C */	beq lbl_807A4E98
/* 807A4E90  2C 00 00 21 */	cmpwi r0, 0x21
/* 807A4E94  40 82 01 20 */	bne lbl_807A4FB4
lbl_807A4E98:
/* 807A4E98  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4E9C  38 63 00 0C */	addi r3, r3, 0xc
/* 807A4EA0  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 807A4EA4  4B B8 35 88 */	b checkPass__12J3DFrameCtrlFf
/* 807A4EA8  2C 03 00 00 */	cmpwi r3, 0
/* 807A4EAC  40 82 00 DC */	bne lbl_807A4F88
/* 807A4EB0  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4EB4  38 63 00 0C */	addi r3, r3, 0xc
/* 807A4EB8  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 807A4EBC  4B B8 35 70 */	b checkPass__12J3DFrameCtrlFf
/* 807A4EC0  2C 03 00 00 */	cmpwi r3, 0
/* 807A4EC4  40 82 00 C4 */	bne lbl_807A4F88
/* 807A4EC8  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4ECC  38 63 00 0C */	addi r3, r3, 0xc
/* 807A4ED0  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 807A4ED4  4B B8 35 58 */	b checkPass__12J3DFrameCtrlFf
/* 807A4ED8  2C 03 00 00 */	cmpwi r3, 0
/* 807A4EDC  40 82 00 AC */	bne lbl_807A4F88
/* 807A4EE0  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4EE4  38 63 00 0C */	addi r3, r3, 0xc
/* 807A4EE8  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 807A4EEC  4B B8 35 40 */	b checkPass__12J3DFrameCtrlFf
/* 807A4EF0  2C 03 00 00 */	cmpwi r3, 0
/* 807A4EF4  40 82 00 94 */	bne lbl_807A4F88
/* 807A4EF8  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4EFC  38 63 00 0C */	addi r3, r3, 0xc
/* 807A4F00  C0 3E 01 7C */	lfs f1, 0x17c(r30)
/* 807A4F04  4B B8 35 28 */	b checkPass__12J3DFrameCtrlFf
/* 807A4F08  2C 03 00 00 */	cmpwi r3, 0
/* 807A4F0C  40 82 00 7C */	bne lbl_807A4F88
/* 807A4F10  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4F14  38 63 00 0C */	addi r3, r3, 0xc
/* 807A4F18  C0 3E 01 80 */	lfs f1, 0x180(r30)
/* 807A4F1C  4B B8 35 10 */	b checkPass__12J3DFrameCtrlFf
/* 807A4F20  2C 03 00 00 */	cmpwi r3, 0
/* 807A4F24  40 82 00 64 */	bne lbl_807A4F88
/* 807A4F28  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4F2C  38 63 00 0C */	addi r3, r3, 0xc
/* 807A4F30  C0 3E 01 84 */	lfs f1, 0x184(r30)
/* 807A4F34  4B B8 34 F8 */	b checkPass__12J3DFrameCtrlFf
/* 807A4F38  2C 03 00 00 */	cmpwi r3, 0
/* 807A4F3C  40 82 00 4C */	bne lbl_807A4F88
/* 807A4F40  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4F44  38 63 00 0C */	addi r3, r3, 0xc
/* 807A4F48  C0 3E 01 88 */	lfs f1, 0x188(r30)
/* 807A4F4C  4B B8 34 E0 */	b checkPass__12J3DFrameCtrlFf
/* 807A4F50  2C 03 00 00 */	cmpwi r3, 0
/* 807A4F54  40 82 00 34 */	bne lbl_807A4F88
/* 807A4F58  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4F5C  38 63 00 0C */	addi r3, r3, 0xc
/* 807A4F60  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 807A4F64  4B B8 34 C8 */	b checkPass__12J3DFrameCtrlFf
/* 807A4F68  2C 03 00 00 */	cmpwi r3, 0
/* 807A4F6C  40 82 00 1C */	bne lbl_807A4F88
/* 807A4F70  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4F74  38 63 00 0C */	addi r3, r3, 0xc
/* 807A4F78  C0 3E 01 8C */	lfs f1, 0x18c(r30)
/* 807A4F7C  4B B8 34 B0 */	b checkPass__12J3DFrameCtrlFf
/* 807A4F80  2C 03 00 00 */	cmpwi r3, 0
/* 807A4F84  41 82 00 30 */	beq lbl_807A4FB4
lbl_807A4F88:
/* 807A4F88  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B6@ha */
/* 807A4F8C  38 03 00 B6 */	addi r0, r3, 0x00B6 /* 0x000700B6@l */
/* 807A4F90  90 01 00 08 */	stw r0, 8(r1)
/* 807A4F94  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 807A4F98  38 81 00 08 */	addi r4, r1, 8
/* 807A4F9C  38 A0 00 00 */	li r5, 0
/* 807A4FA0  38 C0 FF FF */	li r6, -1
/* 807A4FA4  81 9F 05 D0 */	lwz r12, 0x5d0(r31)
/* 807A4FA8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A4FAC  7D 89 03 A6 */	mtctr r12
/* 807A4FB0  4E 80 04 21 */	bctrl 
lbl_807A4FB4:
/* 807A4FB4  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A4FB8  4B 86 C2 34 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 807A4FBC  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 807A4FC0  28 00 00 02 */	cmplwi r0, 2
/* 807A4FC4  40 82 00 3C */	bne lbl_807A5000
/* 807A4FC8  88 7F 0F 85 */	lbz r3, 0xf85(r31)
/* 807A4FCC  7C 60 07 74 */	extsb r0, r3
/* 807A4FD0  2C 00 00 0A */	cmpwi r0, 0xa
/* 807A4FD4  40 81 00 24 */	ble lbl_807A4FF8
/* 807A4FD8  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 807A4FDC  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 807A4FE0  80 03 00 70 */	lwz r0, 0x70(r3)
/* 807A4FE4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807A4FE8  40 82 00 18 */	bne lbl_807A5000
/* 807A4FEC  7F E3 FB 78 */	mr r3, r31
/* 807A4FF0  4B FF F1 59 */	bl foot_control_main__FP10e_st_class
/* 807A4FF4  48 00 00 0C */	b lbl_807A5000
lbl_807A4FF8:
/* 807A4FF8  38 03 00 01 */	addi r0, r3, 1
/* 807A4FFC  98 1F 0F 85 */	stb r0, 0xf85(r31)
lbl_807A5000:
/* 807A5000  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807A5004  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807A5008  38 63 00 30 */	addi r3, r3, 0x30
/* 807A500C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807A5010  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807A5014  80 84 00 00 */	lwz r4, 0(r4)
/* 807A5018  4B BA 14 98 */	b PSMTXCopy
/* 807A501C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A5020  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A5024  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A5028  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A502C  38 61 00 24 */	addi r3, r1, 0x24
/* 807A5030  38 9F 05 38 */	addi r4, r31, 0x538
/* 807A5034  4B AC BE B8 */	b MtxPosition__FP4cXyzP4cXyz
/* 807A5038  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 807A503C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 807A5040  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807A5044  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807A5048  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 807A504C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 807A5050  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 807A5054  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 807A5058  EC 01 00 2A */	fadds f0, f1, f0
/* 807A505C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807A5060  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 807A5064  28 00 00 02 */	cmplwi r0, 2
/* 807A5068  40 82 00 1C */	bne lbl_807A5084
/* 807A506C  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 807A5070  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A5074  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A5078  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A507C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A5080  48 00 00 18 */	b lbl_807A5098
lbl_807A5084:
/* 807A5084  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 807A5088  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A508C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A5090  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A5094  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_807A5098:
/* 807A5098  38 61 00 24 */	addi r3, r1, 0x24
/* 807A509C  38 9F 07 04 */	addi r4, r31, 0x704
/* 807A50A0  4B AC BE 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 807A50A4  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807A50A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807A50AC  38 63 06 00 */	addi r3, r3, 0x600
/* 807A50B0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807A50B4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807A50B8  80 84 00 00 */	lwz r4, 0(r4)
/* 807A50BC  4B BA 13 F4 */	b PSMTXCopy
/* 807A50C0  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 807A50C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A50C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A50CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A50D0  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 807A50D4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A50D8  38 61 00 24 */	addi r3, r1, 0x24
/* 807A50DC  38 81 00 18 */	addi r4, r1, 0x18
/* 807A50E0  4B AC BE 0C */	b MtxPosition__FP4cXyzP4cXyz
/* 807A50E4  A8 1F 06 8A */	lha r0, 0x68a(r31)
/* 807A50E8  2C 00 00 00 */	cmpwi r0, 0
/* 807A50EC  40 82 00 10 */	bne lbl_807A50FC
/* 807A50F0  88 1F 0C F4 */	lbz r0, 0xcf4(r31)
/* 807A50F4  7C 00 07 75 */	extsb. r0, r0
/* 807A50F8  41 82 00 14 */	beq lbl_807A510C
lbl_807A50FC:
/* 807A50FC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 807A5100  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 807A5104  EC 01 00 2A */	fadds f0, f1, f0
/* 807A5108  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_807A510C:
/* 807A510C  38 7F 0B 80 */	addi r3, r31, 0xb80
/* 807A5110  38 81 00 18 */	addi r4, r1, 0x18
/* 807A5114  4B AC A5 34 */	b SetC__8cM3dGSphFRC4cXyz
/* 807A5118  38 7F 0B 80 */	addi r3, r31, 0xb80
/* 807A511C  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 807A5120  EC 20 07 F2 */	fmuls f1, f0, f31
/* 807A5124  4B AC A5 E4 */	b SetR__8cM3dGSphFf
/* 807A5128  88 1F 0A 58 */	lbz r0, 0xa58(r31)
/* 807A512C  7C 00 07 75 */	extsb. r0, r0
/* 807A5130  41 82 00 14 */	beq lbl_807A5144
/* 807A5134  80 1F 0A 88 */	lwz r0, 0xa88(r31)
/* 807A5138  60 00 00 01 */	ori r0, r0, 1
/* 807A513C  90 1F 0A 88 */	stw r0, 0xa88(r31)
/* 807A5140  48 00 00 10 */	b lbl_807A5150
lbl_807A5144:
/* 807A5144  80 1F 0A 88 */	lwz r0, 0xa88(r31)
/* 807A5148  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807A514C  90 1F 0A 88 */	stw r0, 0xa88(r31)
lbl_807A5150:
/* 807A5150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A5154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A5158  3B A3 23 3C */	addi r29, r3, 0x233c
/* 807A515C  7F A3 EB 78 */	mr r3, r29
/* 807A5160  38 9F 0A 5C */	addi r4, r31, 0xa5c
/* 807A5164  4B AB FA 44 */	b Set__4cCcSFP8cCcD_Obj
/* 807A5168  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 807A516C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807A5170  C0 1F 07 08 */	lfs f0, 0x708(r31)
/* 807A5174  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807A5178  C0 1F 07 0C */	lfs f0, 0x70c(r31)
/* 807A517C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807A5180  88 1F 0B 94 */	lbz r0, 0xb94(r31)
/* 807A5184  7C 00 07 75 */	extsb. r0, r0
/* 807A5188  41 82 00 1C */	beq lbl_807A51A4
/* 807A518C  A8 1F 06 8A */	lha r0, 0x68a(r31)
/* 807A5190  2C 00 00 00 */	cmpwi r0, 0
/* 807A5194  40 82 00 10 */	bne lbl_807A51A4
/* 807A5198  88 1F 0C F4 */	lbz r0, 0xcf4(r31)
/* 807A519C  7C 00 07 75 */	extsb. r0, r0
/* 807A51A0  41 82 00 14 */	beq lbl_807A51B4
lbl_807A51A4:
/* 807A51A4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 807A51A8  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 807A51AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A51B0  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_807A51B4:
/* 807A51B4  38 7F 0C BC */	addi r3, r31, 0xcbc
/* 807A51B8  38 81 00 18 */	addi r4, r1, 0x18
/* 807A51BC  4B AC A4 8C */	b SetC__8cM3dGSphFRC4cXyz
/* 807A51C0  38 7F 0C BC */	addi r3, r31, 0xcbc
/* 807A51C4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807A51C8  EC 20 07 F2 */	fmuls f1, f0, f31
/* 807A51CC  4B AC A5 3C */	b SetR__8cM3dGSphFf
/* 807A51D0  7F A3 EB 78 */	mr r3, r29
/* 807A51D4  38 9F 0B 98 */	addi r4, r31, 0xb98
/* 807A51D8  4B AB F9 D0 */	b Set__4cCcSFP8cCcD_Obj
/* 807A51DC  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 807A51E0  28 00 00 02 */	cmplwi r0, 2
/* 807A51E4  40 82 00 48 */	bne lbl_807A522C
/* 807A51E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A51EC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A51F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A51F4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A51F8  38 61 00 24 */	addi r3, r1, 0x24
/* 807A51FC  38 9F 0F 88 */	addi r4, r31, 0xf88
/* 807A5200  4B AC BC EC */	b MtxPosition__FP4cXyzP4cXyz
/* 807A5204  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 807A5208  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A520C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A5210  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A5214  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 807A5218  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A521C  38 61 00 24 */	addi r3, r1, 0x24
/* 807A5220  38 9F 07 10 */	addi r4, r31, 0x710
/* 807A5224  4B AC BC C8 */	b MtxPosition__FP4cXyzP4cXyz
/* 807A5228  48 00 00 28 */	b lbl_807A5250
lbl_807A522C:
/* 807A522C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 807A5230  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A5234  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A5238  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A523C  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 807A5240  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A5244  38 61 00 24 */	addi r3, r1, 0x24
/* 807A5248  38 9F 07 10 */	addi r4, r31, 0x710
/* 807A524C  4B AC BC A0 */	b MtxPosition__FP4cXyzP4cXyz
lbl_807A5250:
/* 807A5250  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A5254  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A5258  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A525C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807A5260  38 61 00 24 */	addi r3, r1, 0x24
/* 807A5264  38 81 00 18 */	addi r4, r1, 0x18
/* 807A5268  4B AC BC 84 */	b MtxPosition__FP4cXyzP4cXyz
/* 807A526C  88 1F 0C F4 */	lbz r0, 0xcf4(r31)
/* 807A5270  7C 00 07 75 */	extsb. r0, r0
/* 807A5274  40 82 00 14 */	bne lbl_807A5288
/* 807A5278  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 807A527C  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 807A5280  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A5284  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_807A5288:
/* 807A5288  38 7F 0E 1C */	addi r3, r31, 0xe1c
/* 807A528C  38 81 00 18 */	addi r4, r1, 0x18
/* 807A5290  4B AC A3 B8 */	b SetC__8cM3dGSphFRC4cXyz
/* 807A5294  38 7F 0E 1C */	addi r3, r31, 0xe1c
/* 807A5298  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 807A529C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 807A52A0  4B AC A4 68 */	b SetR__8cM3dGSphFf
/* 807A52A4  7F A3 EB 78 */	mr r3, r29
/* 807A52A8  38 9F 0C F8 */	addi r4, r31, 0xcf8
/* 807A52AC  4B AB F8 FC */	b Set__4cCcSFP8cCcD_Obj
/* 807A52B0  38 00 00 00 */	li r0, 0
/* 807A52B4  98 1F 0C F4 */	stb r0, 0xcf4(r31)
/* 807A52B8  88 1F 07 20 */	lbz r0, 0x720(r31)
/* 807A52BC  7C 00 07 74 */	extsb r0, r0
/* 807A52C0  2C 00 00 01 */	cmpwi r0, 1
/* 807A52C4  40 82 00 10 */	bne lbl_807A52D4
/* 807A52C8  7F E3 FB 78 */	mr r3, r31
/* 807A52CC  4B FF B5 F1 */	bl roof_line_calc__FP10e_st_class
/* 807A52D0  48 00 00 14 */	b lbl_807A52E4
lbl_807A52D4:
/* 807A52D4  2C 00 00 02 */	cmpwi r0, 2
/* 807A52D8  40 82 00 0C */	bne lbl_807A52E4
/* 807A52DC  7F E3 FB 78 */	mr r3, r31
/* 807A52E0  4B FF B8 65 */	bl roof_line_calc2__FP10e_st_class
lbl_807A52E4:
/* 807A52E4  88 1F 07 60 */	lbz r0, 0x760(r31)
/* 807A52E8  7C 00 07 75 */	extsb. r0, r0
/* 807A52EC  41 82 00 34 */	beq lbl_807A5320
/* 807A52F0  7F E3 FB 78 */	mr r3, r31
/* 807A52F4  4B FF BA 2D */	bl tail_line_calc__FP10e_st_class
/* 807A52F8  38 7F 07 64 */	addi r3, r31, 0x764
/* 807A52FC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807A5300  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807A5304  4B AC A7 7C */	b cLib_addCalc0__FPfff
/* 807A5308  C0 3F 07 64 */	lfs f1, 0x764(r31)
/* 807A530C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807A5310  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A5314  40 80 00 0C */	bge lbl_807A5320
/* 807A5318  38 00 00 00 */	li r0, 0
/* 807A531C  98 1F 07 60 */	stb r0, 0x760(r31)
lbl_807A5320:
/* 807A5320  88 1F 07 E4 */	lbz r0, 0x7e4(r31)
/* 807A5324  7C 00 07 75 */	extsb. r0, r0
/* 807A5328  41 82 00 18 */	beq lbl_807A5340
/* 807A532C  38 7F 07 E8 */	addi r3, r31, 0x7e8
/* 807A5330  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 807A5334  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A5338  C0 7E 01 A0 */	lfs f3, 0x1a0(r30)
/* 807A533C  4B AC A7 00 */	b cLib_addCalc2__FPffff
lbl_807A5340:
/* 807A5340  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 807A5344  28 00 00 02 */	cmplwi r0, 2
/* 807A5348  40 82 00 44 */	bne lbl_807A538C
/* 807A534C  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 807A5350  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807A5354  EC 21 00 28 */	fsubs f1, f1, f0
/* 807A5358  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807A535C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A5360  40 81 00 2C */	ble lbl_807A538C
/* 807A5364  7F E3 FB 78 */	mr r3, r31
/* 807A5368  4B 87 49 14 */	b fopAcM_delete__FP10fopAc_ac_c
/* 807A536C  88 9F 05 B8 */	lbz r4, 0x5b8(r31)
/* 807A5370  28 04 00 FF */	cmplwi r4, 0xff
/* 807A5374  41 82 00 18 */	beq lbl_807A538C
/* 807A5378  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A537C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A5380  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807A5384  7C 05 07 74 */	extsb r5, r0
/* 807A5388  4B 88 FE 78 */	b onSwitch__10dSv_info_cFii
lbl_807A538C:
/* 807A538C  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 807A5390  64 00 00 20 */	oris r0, r0, 0x20
/* 807A5394  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 807A5398  38 60 00 01 */	li r3, 1
/* 807A539C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807A53A0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807A53A4  39 61 00 50 */	addi r11, r1, 0x50
/* 807A53A8  4B BB CE 7C */	b _restgpr_28
/* 807A53AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807A53B0  7C 08 03 A6 */	mtlr r0
/* 807A53B4  38 21 00 60 */	addi r1, r1, 0x60
/* 807A53B8  4E 80 00 20 */	blr 
