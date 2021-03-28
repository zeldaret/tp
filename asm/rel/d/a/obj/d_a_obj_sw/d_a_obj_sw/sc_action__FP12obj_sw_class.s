lbl_80CF1970:
/* 80CF1970  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80CF1974  7C 08 02 A6 */	mflr r0
/* 80CF1978  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CF197C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80CF1980  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80CF1984  39 61 00 70 */	addi r11, r1, 0x70
/* 80CF1988  4B 67 08 44 */	b _savegpr_25
/* 80CF198C  7C 7F 1B 78 */	mr r31, r3
/* 80CF1990  3C 80 80 CF */	lis r4, lit_3850@ha
/* 80CF1994  3B C4 30 00 */	addi r30, r4, lit_3850@l
/* 80CF1998  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CF199C  54 1C 46 3E */	srwi r28, r0, 0x18
/* 80CF19A0  A8 03 05 76 */	lha r0, 0x576(r3)
/* 80CF19A4  2C 00 00 01 */	cmpwi r0, 1
/* 80CF19A8  41 82 01 84 */	beq lbl_80CF1B2C
/* 80CF19AC  40 80 00 10 */	bge lbl_80CF19BC
/* 80CF19B0  2C 00 00 00 */	cmpwi r0, 0
/* 80CF19B4  40 80 00 14 */	bge lbl_80CF19C8
/* 80CF19B8  48 00 01 80 */	b lbl_80CF1B38
lbl_80CF19BC:
/* 80CF19BC  2C 00 00 03 */	cmpwi r0, 3
/* 80CF19C0  40 80 01 78 */	bge lbl_80CF1B38
/* 80CF19C4  48 00 01 70 */	b lbl_80CF1B34
lbl_80CF19C8:
/* 80CF19C8  38 00 00 00 */	li r0, 0
/* 80CF19CC  3C 60 80 CF */	lis r3, saru_ct@ha
/* 80CF19D0  90 03 32 78 */	stw r0, saru_ct@l(r3)
/* 80CF19D4  3C 60 80 CF */	lis r3, s_ks_sub__FPvPv@ha
/* 80CF19D8  38 63 07 74 */	addi r3, r3, s_ks_sub__FPvPv@l
/* 80CF19DC  7F E4 FB 78 */	mr r4, r31
/* 80CF19E0  4B 32 F9 58 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80CF19E4  3C 60 80 CF */	lis r3, saru_ct@ha
/* 80CF19E8  80 03 32 78 */	lwz r0, saru_ct@l(r3)
/* 80CF19EC  2C 00 00 08 */	cmpwi r0, 8
/* 80CF19F0  40 82 01 48 */	bne lbl_80CF1B38
/* 80CF19F4  2C 1C 00 FF */	cmpwi r28, 0xff
/* 80CF19F8  41 82 00 24 */	beq lbl_80CF1A1C
/* 80CF19FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF1A00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF1A04  7F 84 E3 78 */	mr r4, r28
/* 80CF1A08  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF1A0C  7C 05 07 74 */	extsb r5, r0
/* 80CF1A10  4B 34 39 50 */	b isSwitch__10dSv_info_cCFii
/* 80CF1A14  2C 03 00 00 */	cmpwi r3, 0
/* 80CF1A18  40 82 00 18 */	bne lbl_80CF1A30
lbl_80CF1A1C:
/* 80CF1A1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF1A20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF1A24  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80CF1A28  28 00 00 00 */	cmplwi r0, 0
/* 80CF1A2C  40 82 01 0C */	bne lbl_80CF1B38
lbl_80CF1A30:
/* 80CF1A30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF1A34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF1A38  38 80 00 53 */	li r4, 0x53
/* 80CF1A3C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF1A40  7C 05 07 74 */	extsb r5, r0
/* 80CF1A44  4B 34 39 1C */	b isSwitch__10dSv_info_cCFii
/* 80CF1A48  2C 03 00 00 */	cmpwi r3, 0
/* 80CF1A4C  41 82 00 EC */	beq lbl_80CF1B38
/* 80CF1A50  38 00 00 00 */	li r0, 0
/* 80CF1A54  3C 60 80 CF */	lis r3, saru_ct@ha
/* 80CF1A58  90 03 32 78 */	stw r0, saru_ct@l(r3)
/* 80CF1A5C  3C 60 80 CF */	lis r3, s_ksdel_sub__FPvPv@ha
/* 80CF1A60  38 63 07 F8 */	addi r3, r3, s_ksdel_sub__FPvPv@l
/* 80CF1A64  7F E4 FB 78 */	mr r4, r31
/* 80CF1A68  4B 32 F8 D0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80CF1A6C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80CF1A70  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80CF1A74  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80CF1A78  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80CF1A7C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80CF1A80  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80CF1A84  2C 1C 00 FF */	cmpwi r28, 0xff
/* 80CF1A88  41 82 00 60 */	beq lbl_80CF1AE8
/* 80CF1A8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF1A90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF1A94  7F 84 E3 78 */	mr r4, r28
/* 80CF1A98  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF1A9C  7C 05 07 74 */	extsb r5, r0
/* 80CF1AA0  4B 34 38 C0 */	b isSwitch__10dSv_info_cCFii
/* 80CF1AA4  2C 03 00 00 */	cmpwi r3, 0
/* 80CF1AA8  41 82 00 40 */	beq lbl_80CF1AE8
/* 80CF1AAC  38 00 00 02 */	li r0, 2
/* 80CF1AB0  B0 1F 05 76 */	sth r0, 0x576(r31)
/* 80CF1AB4  38 00 00 78 */	li r0, 0x78
/* 80CF1AB8  B0 1F 05 7C */	sth r0, 0x57c(r31)
/* 80CF1ABC  38 60 00 00 */	li r3, 0
/* 80CF1AC0  38 A0 00 0A */	li r5, 0xa
/* 80CF1AC4  38 80 80 00 */	li r4, -32768
/* 80CF1AC8  38 00 00 08 */	li r0, 8
/* 80CF1ACC  7C 09 03 A6 */	mtctr r0
lbl_80CF1AD0:
/* 80CF1AD0  7C DF 1A 14 */	add r6, r31, r3
/* 80CF1AD4  98 A6 05 A8 */	stb r5, 0x5a8(r6)
/* 80CF1AD8  B0 86 05 D0 */	sth r4, 0x5d0(r6)
/* 80CF1ADC  38 63 00 64 */	addi r3, r3, 0x64
/* 80CF1AE0  42 00 FF F0 */	bdnz lbl_80CF1AD0
/* 80CF1AE4  48 00 00 54 */	b lbl_80CF1B38
lbl_80CF1AE8:
/* 80CF1AE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF1AEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF1AF0  38 80 00 79 */	li r4, 0x79
/* 80CF1AF4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF1AF8  7C 05 07 74 */	extsb r5, r0
/* 80CF1AFC  4B 34 37 04 */	b onSwitch__10dSv_info_cFii
/* 80CF1B00  38 00 00 01 */	li r0, 1
/* 80CF1B04  B0 1F 05 76 */	sth r0, 0x576(r31)
/* 80CF1B08  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80CF1B0C  3C 60 80 CF */	lis r3, sc_path@ha
/* 80CF1B10  38 63 31 00 */	addi r3, r3, sc_path@l
/* 80CF1B14  D0 03 01 04 */	stfs f0, 0x104(r3)
/* 80CF1B18  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80CF1B1C  D0 03 01 08 */	stfs f0, 0x108(r3)
/* 80CF1B20  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80CF1B24  D0 03 01 0C */	stfs f0, 0x10c(r3)
/* 80CF1B28  48 00 00 10 */	b lbl_80CF1B38
lbl_80CF1B2C:
/* 80CF1B2C  4B FF EE 7D */	bl sc_build__FP12obj_sw_class
/* 80CF1B30  48 00 00 08 */	b lbl_80CF1B38
lbl_80CF1B34:
/* 80CF1B34  4B FF F5 11 */	bl sc_move__FP12obj_sw_class
lbl_80CF1B38:
/* 80CF1B38  38 7F 05 88 */	addi r3, r31, 0x588
/* 80CF1B3C  C0 3F 05 84 */	lfs f1, 0x584(r31)
/* 80CF1B40  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80CF1B44  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80CF1B48  4B 57 DE F4 */	b cLib_addCalc2__FPffff
/* 80CF1B4C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80CF1B50  C0 1F 05 88 */	lfs f0, 0x588(r31)
/* 80CF1B54  EC 21 00 28 */	fsubs f1, f1, f0
/* 80CF1B58  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80CF1B5C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80CF1B60  D0 1F 05 8C */	stfs f0, 0x58c(r31)
/* 80CF1B64  38 7F 05 90 */	addi r3, r31, 0x590
/* 80CF1B68  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80CF1B6C  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 80CF1B70  4B 57 DF 10 */	b cLib_addCalc0__FPfff
/* 80CF1B74  38 7F 05 94 */	addi r3, r31, 0x594
/* 80CF1B78  38 80 00 00 */	li r4, 0
/* 80CF1B7C  38 A0 00 01 */	li r5, 1
/* 80CF1B80  38 C0 00 05 */	li r6, 5
/* 80CF1B84  4B 57 EA 84 */	b cLib_addCalcAngleS2__FPssss
/* 80CF1B88  3B 7F 05 A8 */	addi r27, r31, 0x5a8
/* 80CF1B8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF1B90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF1B94  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CF1B98  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CF1B9C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CF1BA0  4B 65 4D 48 */	b PSMTXTrans
/* 80CF1BA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF1BA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF1BAC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CF1BB0  3C 84 00 01 */	addis r4, r4, 1
/* 80CF1BB4  38 04 80 00 */	addi r0, r4, -32768
/* 80CF1BB8  7C 04 07 34 */	extsh r4, r0
/* 80CF1BBC  4B 31 A8 78 */	b mDoMtx_YrotM__FPA4_fs
/* 80CF1BC0  C3 FE 00 0C */	lfs f31, 0xc(r30)
/* 80CF1BC4  3B 40 00 00 */	li r26, 0
/* 80CF1BC8  3B 20 00 00 */	li r25, 0
/* 80CF1BCC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CF1BD0  3B 83 9A 20 */	addi r28, r3, sincosTable___5JMath@l
/* 80CF1BD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF1BD8  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
lbl_80CF1BDC:
/* 80CF1BDC  A8 1F 05 94 */	lha r0, 0x594(r31)
/* 80CF1BE0  7C 7A 01 D6 */	mullw r3, r26, r0
/* 80CF1BE4  A8 1F 05 80 */	lha r0, 0x580(r31)
/* 80CF1BE8  1C 00 03 20 */	mulli r0, r0, 0x320
/* 80CF1BEC  7C 03 00 50 */	subf r0, r3, r0
/* 80CF1BF0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CF1BF4  7C 1C 04 2E */	lfsx f0, r28, r0
/* 80CF1BF8  C0 3F 05 88 */	lfs f1, 0x588(r31)
/* 80CF1BFC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80CF1C00  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CF1C04  FC 00 00 1E */	fctiwz f0, f0
/* 80CF1C08  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CF1C0C  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80CF1C10  A8 1F 05 82 */	lha r0, 0x582(r31)
/* 80CF1C14  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80CF1C18  7C 19 00 50 */	subf r0, r25, r0
/* 80CF1C1C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CF1C20  7C 3C 04 2E */	lfsx f1, r28, r0
/* 80CF1C24  C0 1F 05 8C */	lfs f0, 0x58c(r31)
/* 80CF1C28  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CF1C2C  FC 00 00 1E */	fctiwz f0, f0
/* 80CF1C30  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CF1C34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CF1C38  B0 1B 00 2C */	sth r0, 0x2c(r27)
/* 80CF1C3C  2C 1A 00 07 */	cmpwi r26, 7
/* 80CF1C40  40 82 00 08 */	bne lbl_80CF1C48
/* 80CF1C44  B0 9F 05 96 */	sth r4, 0x596(r31)
lbl_80CF1C48:
/* 80CF1C48  7F A3 EB 78 */	mr r3, r29
/* 80CF1C4C  4B 31 A7 50 */	b mDoMtx_XrotM__FPA4_fs
/* 80CF1C50  7F A3 EB 78 */	mr r3, r29
/* 80CF1C54  A8 9B 00 2C */	lha r4, 0x2c(r27)
/* 80CF1C58  4B 31 A8 74 */	b mDoMtx_ZrotM__FPA4_fs
/* 80CF1C5C  88 1B 00 00 */	lbz r0, 0(r27)
/* 80CF1C60  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CF1C64  40 82 00 DC */	bne lbl_80CF1D40
/* 80CF1C68  38 7B 00 2A */	addi r3, r27, 0x2a
/* 80CF1C6C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CF1C70  3C 84 00 01 */	addis r4, r4, 1
/* 80CF1C74  38 04 80 00 */	addi r0, r4, -32768
/* 80CF1C78  7C 04 07 34 */	extsh r4, r0
/* 80CF1C7C  38 A0 00 02 */	li r5, 2
/* 80CF1C80  38 C0 10 00 */	li r6, 0x1000
/* 80CF1C84  4B 57 E9 84 */	b cLib_addCalcAngleS2__FPssss
/* 80CF1C88  38 7B 00 28 */	addi r3, r27, 0x28
/* 80CF1C8C  38 80 80 00 */	li r4, -32768
/* 80CF1C90  38 A0 00 02 */	li r5, 2
/* 80CF1C94  38 C0 10 00 */	li r6, 0x1000
/* 80CF1C98  4B 57 E9 70 */	b cLib_addCalcAngleS2__FPssss
/* 80CF1C9C  4B 31 B0 2C */	b push__14mDoMtx_stack_cFv
/* 80CF1CA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF1CA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF1CA8  A8 9B 00 28 */	lha r4, 0x28(r27)
/* 80CF1CAC  4B 31 A6 F0 */	b mDoMtx_XrotM__FPA4_fs
/* 80CF1CB0  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 80CF1CB4  80 83 00 04 */	lwz r4, 4(r3)
/* 80CF1CB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF1CBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF1CC0  38 84 00 24 */	addi r4, r4, 0x24
/* 80CF1CC4  4B 65 47 EC */	b PSMTXCopy
/* 80CF1CC8  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 80CF1CCC  38 80 00 00 */	li r4, 0
/* 80CF1CD0  38 A0 00 00 */	li r5, 0
/* 80CF1CD4  38 C0 00 00 */	li r6, 0
/* 80CF1CD8  4B 31 E8 F0 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 80CF1CDC  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 80CF1CE0  4B 31 E9 CC */	b modelCalc__14mDoExt_McaMorfFv
/* 80CF1CE4  2C 1A 00 02 */	cmpwi r26, 2
/* 80CF1CE8  40 82 00 2C */	bne lbl_80CF1D14
/* 80CF1CEC  80 9F 08 C8 */	lwz r4, 0x8c8(r31)
/* 80CF1CF0  28 04 00 00 */	cmplwi r4, 0
/* 80CF1CF4  41 82 00 20 */	beq lbl_80CF1D14
/* 80CF1CF8  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 80CF1CFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF1D00  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80CF1D04  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80CF1D08  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80CF1D0C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CF1D10  4B 65 47 A0 */	b PSMTXCopy
lbl_80CF1D14:
/* 80CF1D14  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF1D18  7C 03 07 74 */	extsb r3, r0
/* 80CF1D1C  4B 33 B3 50 */	b dComIfGp_getReverb__Fi
/* 80CF1D20  7C 65 1B 78 */	mr r5, r3
/* 80CF1D24  38 7B 00 44 */	addi r3, r27, 0x44
/* 80CF1D28  38 80 00 00 */	li r4, 0
/* 80CF1D2C  81 9B 00 54 */	lwz r12, 0x54(r27)
/* 80CF1D30  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CF1D34  7D 89 03 A6 */	mtctr r12
/* 80CF1D38  4E 80 04 21 */	bctrl 
/* 80CF1D3C  4B 31 AF D8 */	b pop__14mDoMtx_stack_cFv
lbl_80CF1D40:
/* 80CF1D40  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CF1D44  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 80CF1D48  FC 60 08 90 */	fmr f3, f1
/* 80CF1D4C  4B 31 B0 50 */	b transM__14mDoMtx_stack_cFfff
/* 80CF1D50  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 80CF1D54  EF FF 00 2A */	fadds f31, f31, f0
/* 80CF1D58  88 1B 00 00 */	lbz r0, 0(r27)
/* 80CF1D5C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CF1D60  40 82 00 50 */	bne lbl_80CF1DB0
/* 80CF1D64  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CF1D68  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CF1D6C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CF1D70  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CF1D74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF1D78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF1D7C  38 81 00 28 */	addi r4, r1, 0x28
/* 80CF1D80  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CF1D84  4B 65 4F E8 */	b PSMTXMultVec
/* 80CF1D88  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80CF1D8C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80CF1D90  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80CF1D94  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80CF1D98  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80CF1D9C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80CF1DA0  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80CF1DA4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80CF1DA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CF1DAC  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_80CF1DB0:
/* 80CF1DB0  3B 5A 00 01 */	addi r26, r26, 1
/* 80CF1DB4  2C 1A 00 08 */	cmpwi r26, 8
/* 80CF1DB8  3B 39 D8 F0 */	addi r25, r25, -10000
/* 80CF1DBC  3B 7B 00 64 */	addi r27, r27, 0x64
/* 80CF1DC0  41 80 FE 1C */	blt lbl_80CF1BDC
/* 80CF1DC4  A8 7F 05 80 */	lha r3, 0x580(r31)
/* 80CF1DC8  38 03 FF FF */	addi r0, r3, -1
/* 80CF1DCC  B0 1F 05 80 */	sth r0, 0x580(r31)
/* 80CF1DD0  A8 7F 05 82 */	lha r3, 0x582(r31)
/* 80CF1DD4  38 03 00 01 */	addi r0, r3, 1
/* 80CF1DD8  B0 1F 05 82 */	sth r0, 0x582(r31)
/* 80CF1DDC  3B 9F 05 A8 */	addi r28, r31, 0x5a8
/* 80CF1DE0  3B 40 00 00 */	li r26, 0
lbl_80CF1DE4:
/* 80CF1DE4  88 1C 00 00 */	lbz r0, 0(r28)
/* 80CF1DE8  7C 00 07 74 */	extsb r0, r0
/* 80CF1DEC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CF1DF0  40 80 03 38 */	bge lbl_80CF2128
/* 80CF1DF4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80CF1DF8  88 1C 00 35 */	lbz r0, 0x35(r28)
/* 80CF1DFC  7C 00 07 75 */	extsb. r0, r0
/* 80CF1E00  41 82 02 80 */	beq lbl_80CF2080
/* 80CF1E04  38 61 00 1C */	addi r3, r1, 0x1c
/* 80CF1E08  38 9C 00 1C */	addi r4, r28, 0x1c
/* 80CF1E0C  38 BC 00 10 */	addi r5, r28, 0x10
/* 80CF1E10  4B 57 4D 24 */	b __mi__4cXyzCFRC3Vec
/* 80CF1E14  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CF1E18  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CF1E1C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CF1E20  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CF1E24  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CF1E28  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CF1E2C  38 61 00 28 */	addi r3, r1, 0x28
/* 80CF1E30  4B 65 53 08 */	b PSVECSquareMag
/* 80CF1E34  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CF1E38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF1E3C  40 81 00 58 */	ble lbl_80CF1E94
/* 80CF1E40  FC 00 08 34 */	frsqrte f0, f1
/* 80CF1E44  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 80CF1E48  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF1E4C  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 80CF1E50  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF1E54  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF1E58  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF1E5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF1E60  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF1E64  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF1E68  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF1E6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF1E70  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF1E74  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF1E78  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF1E7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF1E80  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF1E84  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF1E88  FF E1 00 32 */	fmul f31, f1, f0
/* 80CF1E8C  FF E0 F8 18 */	frsp f31, f31
/* 80CF1E90  48 00 00 90 */	b lbl_80CF1F20
lbl_80CF1E94:
/* 80CF1E94  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 80CF1E98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF1E9C  40 80 00 10 */	bge lbl_80CF1EAC
/* 80CF1EA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CF1EA4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80CF1EA8  48 00 00 78 */	b lbl_80CF1F20
lbl_80CF1EAC:
/* 80CF1EAC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CF1EB0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80CF1EB4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CF1EB8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CF1EBC  7C 03 00 00 */	cmpw r3, r0
/* 80CF1EC0  41 82 00 14 */	beq lbl_80CF1ED4
/* 80CF1EC4  40 80 00 40 */	bge lbl_80CF1F04
/* 80CF1EC8  2C 03 00 00 */	cmpwi r3, 0
/* 80CF1ECC  41 82 00 20 */	beq lbl_80CF1EEC
/* 80CF1ED0  48 00 00 34 */	b lbl_80CF1F04
lbl_80CF1ED4:
/* 80CF1ED4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF1ED8  41 82 00 0C */	beq lbl_80CF1EE4
/* 80CF1EDC  38 00 00 01 */	li r0, 1
/* 80CF1EE0  48 00 00 28 */	b lbl_80CF1F08
lbl_80CF1EE4:
/* 80CF1EE4  38 00 00 02 */	li r0, 2
/* 80CF1EE8  48 00 00 20 */	b lbl_80CF1F08
lbl_80CF1EEC:
/* 80CF1EEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF1EF0  41 82 00 0C */	beq lbl_80CF1EFC
/* 80CF1EF4  38 00 00 05 */	li r0, 5
/* 80CF1EF8  48 00 00 10 */	b lbl_80CF1F08
lbl_80CF1EFC:
/* 80CF1EFC  38 00 00 03 */	li r0, 3
/* 80CF1F00  48 00 00 08 */	b lbl_80CF1F08
lbl_80CF1F04:
/* 80CF1F04  38 00 00 04 */	li r0, 4
lbl_80CF1F08:
/* 80CF1F08  2C 00 00 01 */	cmpwi r0, 1
/* 80CF1F0C  40 82 00 10 */	bne lbl_80CF1F1C
/* 80CF1F10  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CF1F14  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80CF1F18  48 00 00 08 */	b lbl_80CF1F20
lbl_80CF1F1C:
/* 80CF1F1C  FF E0 08 90 */	fmr f31, f1
lbl_80CF1F20:
/* 80CF1F20  38 61 00 10 */	addi r3, r1, 0x10
/* 80CF1F24  38 9C 00 1C */	addi r4, r28, 0x1c
/* 80CF1F28  38 BC 00 04 */	addi r5, r28, 4
/* 80CF1F2C  4B 57 4C 08 */	b __mi__4cXyzCFRC3Vec
/* 80CF1F30  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CF1F34  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CF1F38  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CF1F3C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CF1F40  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CF1F44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CF1F48  38 61 00 28 */	addi r3, r1, 0x28
/* 80CF1F4C  4B 65 51 EC */	b PSVECSquareMag
/* 80CF1F50  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CF1F54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF1F58  40 81 00 58 */	ble lbl_80CF1FB0
/* 80CF1F5C  FC 00 08 34 */	frsqrte f0, f1
/* 80CF1F60  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 80CF1F64  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF1F68  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 80CF1F6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF1F70  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF1F74  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF1F78  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF1F7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF1F80  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF1F84  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF1F88  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF1F8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF1F90  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF1F94  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF1F98  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF1F9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF1FA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF1FA4  FC 21 00 32 */	fmul f1, f1, f0
/* 80CF1FA8  FC 20 08 18 */	frsp f1, f1
/* 80CF1FAC  48 00 00 88 */	b lbl_80CF2034
lbl_80CF1FB0:
/* 80CF1FB0  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 80CF1FB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF1FB8  40 80 00 10 */	bge lbl_80CF1FC8
/* 80CF1FBC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CF1FC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CF1FC4  48 00 00 70 */	b lbl_80CF2034
lbl_80CF1FC8:
/* 80CF1FC8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CF1FCC  80 81 00 08 */	lwz r4, 8(r1)
/* 80CF1FD0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CF1FD4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CF1FD8  7C 03 00 00 */	cmpw r3, r0
/* 80CF1FDC  41 82 00 14 */	beq lbl_80CF1FF0
/* 80CF1FE0  40 80 00 40 */	bge lbl_80CF2020
/* 80CF1FE4  2C 03 00 00 */	cmpwi r3, 0
/* 80CF1FE8  41 82 00 20 */	beq lbl_80CF2008
/* 80CF1FEC  48 00 00 34 */	b lbl_80CF2020
lbl_80CF1FF0:
/* 80CF1FF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF1FF4  41 82 00 0C */	beq lbl_80CF2000
/* 80CF1FF8  38 00 00 01 */	li r0, 1
/* 80CF1FFC  48 00 00 28 */	b lbl_80CF2024
lbl_80CF2000:
/* 80CF2000  38 00 00 02 */	li r0, 2
/* 80CF2004  48 00 00 20 */	b lbl_80CF2024
lbl_80CF2008:
/* 80CF2008  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF200C  41 82 00 0C */	beq lbl_80CF2018
/* 80CF2010  38 00 00 05 */	li r0, 5
/* 80CF2014  48 00 00 10 */	b lbl_80CF2024
lbl_80CF2018:
/* 80CF2018  38 00 00 03 */	li r0, 3
/* 80CF201C  48 00 00 08 */	b lbl_80CF2024
lbl_80CF2020:
/* 80CF2020  38 00 00 04 */	li r0, 4
lbl_80CF2024:
/* 80CF2024  2C 00 00 01 */	cmpwi r0, 1
/* 80CF2028  40 82 00 0C */	bne lbl_80CF2034
/* 80CF202C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CF2030  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CF2034:
/* 80CF2034  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80CF2038  EC 60 07 F2 */	fmuls f3, f0, f31
/* 80CF203C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80CF2040  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80CF2044  40 81 00 08 */	ble lbl_80CF204C
/* 80CF2048  FC 60 00 90 */	fmr f3, f0
lbl_80CF204C:
/* 80CF204C  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 80CF2050  EC 01 F8 24 */	fdivs f0, f1, f31
/* 80CF2054  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CF2058  FC 00 00 1E */	fctiwz f0, f0
/* 80CF205C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CF2060  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CF2064  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CF2068  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CF206C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CF2070  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CF2074  EC 43 00 32 */	fmuls f2, f3, f0
/* 80CF2078  38 00 00 00 */	li r0, 0
/* 80CF207C  98 1C 00 35 */	stb r0, 0x35(r28)
lbl_80CF2080:
/* 80CF2080  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF2084  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF2088  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80CF208C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80CF2090  EC 40 10 2A */	fadds f2, f0, f2
/* 80CF2094  C0 7C 00 0C */	lfs f3, 0xc(r28)
/* 80CF2098  4B 65 48 50 */	b PSMTXTrans
/* 80CF209C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF20A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF20A4  A8 9C 00 2A */	lha r4, 0x2a(r28)
/* 80CF20A8  4B 31 A3 8C */	b mDoMtx_YrotM__FPA4_fs
/* 80CF20AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF20B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF20B4  A8 9C 00 28 */	lha r4, 0x28(r28)
/* 80CF20B8  4B 31 A2 E4 */	b mDoMtx_XrotM__FPA4_fs
/* 80CF20BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF20C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF20C4  A8 9C 00 2C */	lha r4, 0x2c(r28)
/* 80CF20C8  4B 31 A4 04 */	b mDoMtx_ZrotM__FPA4_fs
/* 80CF20CC  80 7C 00 40 */	lwz r3, 0x40(r28)
/* 80CF20D0  80 83 00 04 */	lwz r4, 4(r3)
/* 80CF20D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF20D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF20DC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CF20E0  4B 65 43 D0 */	b PSMTXCopy
/* 80CF20E4  80 7C 00 40 */	lwz r3, 0x40(r28)
/* 80CF20E8  38 80 00 00 */	li r4, 0
/* 80CF20EC  38 A0 00 00 */	li r5, 0
/* 80CF20F0  38 C0 00 00 */	li r6, 0
/* 80CF20F4  4B 31 E4 D4 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 80CF20F8  80 7C 00 40 */	lwz r3, 0x40(r28)
/* 80CF20FC  4B 31 E5 B0 */	b modelCalc__14mDoExt_McaMorfFv
/* 80CF2100  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF2104  7C 03 07 74 */	extsb r3, r0
/* 80CF2108  4B 33 AF 64 */	b dComIfGp_getReverb__Fi
/* 80CF210C  7C 65 1B 78 */	mr r5, r3
/* 80CF2110  38 7C 00 44 */	addi r3, r28, 0x44
/* 80CF2114  38 80 00 00 */	li r4, 0
/* 80CF2118  81 9C 00 54 */	lwz r12, 0x54(r28)
/* 80CF211C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CF2120  7D 89 03 A6 */	mtctr r12
/* 80CF2124  4E 80 04 21 */	bctrl 
lbl_80CF2128:
/* 80CF2128  3B 5A 00 01 */	addi r26, r26, 1
/* 80CF212C  2C 1A 00 08 */	cmpwi r26, 8
/* 80CF2130  3B 9C 00 64 */	addi r28, r28, 0x64
/* 80CF2134  41 80 FC B0 */	blt lbl_80CF1DE4
/* 80CF2138  7F E3 FB 78 */	mr r3, r31
/* 80CF213C  4B FF F2 49 */	bl demo_camera__FP12obj_sw_class
/* 80CF2140  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80CF2144  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80CF2148  39 61 00 70 */	addi r11, r1, 0x70
/* 80CF214C  4B 67 00 CC */	b _restgpr_25
/* 80CF2150  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80CF2154  7C 08 03 A6 */	mtlr r0
/* 80CF2158  38 21 00 80 */	addi r1, r1, 0x80
/* 80CF215C  4E 80 00 20 */	blr 
