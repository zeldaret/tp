lbl_805488B8:
/* 805488B8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805488BC  7C 08 02 A6 */	mflr r0
/* 805488C0  90 01 00 74 */	stw r0, 0x74(r1)
/* 805488C4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805488C8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805488CC  39 61 00 60 */	addi r11, r1, 0x60
/* 805488D0  4B E1 99 04 */	b _savegpr_27
/* 805488D4  7C 7F 1B 78 */	mr r31, r3
/* 805488D8  3C 80 80 55 */	lis r4, lit_1109@ha
/* 805488DC  3B 84 AF 80 */	addi r28, r4, lit_1109@l
/* 805488E0  3C 80 80 55 */	lis r4, lit_3905@ha
/* 805488E4  3B C4 A9 64 */	addi r30, r4, lit_3905@l
/* 805488E8  4B FF FD A5 */	bl env_control__FP15npc_henna_class
/* 805488EC  88 7F 07 0A */	lbz r3, 0x70a(r31)
/* 805488F0  28 03 00 00 */	cmplwi r3, 0
/* 805488F4  41 82 00 84 */	beq lbl_80548978
/* 805488F8  38 03 FF FF */	addi r0, r3, -1
/* 805488FC  98 1F 07 0A */	stb r0, 0x70a(r31)
/* 80548900  88 1F 07 0B */	lbz r0, 0x70b(r31)
/* 80548904  28 00 00 00 */	cmplwi r0, 0
/* 80548908  40 82 00 48 */	bne lbl_80548950
/* 8054890C  38 00 00 01 */	li r0, 1
/* 80548910  98 1F 06 94 */	stb r0, 0x694(r31)
/* 80548914  38 00 00 00 */	li r0, 0
/* 80548918  98 1F 06 93 */	stb r0, 0x693(r31)
/* 8054891C  C0 3E 02 0C */	lfs f1, 0x20c(r30)
/* 80548920  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 80548924  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 80548928  4B AB F6 B0 */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 8054892C  88 1F 07 0A */	lbz r0, 0x70a(r31)
/* 80548930  28 00 00 00 */	cmplwi r0, 0
/* 80548934  40 82 00 14 */	bne lbl_80548948
/* 80548938  C0 3E 02 10 */	lfs f1, 0x210(r30)
/* 8054893C  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 80548940  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 80548944  4B AB F6 94 */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_80548948:
/* 80548948  38 60 00 01 */	li r3, 1
/* 8054894C  48 00 09 38 */	b lbl_80549284
lbl_80548950:
/* 80548950  88 1F 07 0A */	lbz r0, 0x70a(r31)
/* 80548954  28 00 00 00 */	cmplwi r0, 0
/* 80548958  41 82 00 0C */	beq lbl_80548964
/* 8054895C  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 80548960  48 00 00 08 */	b lbl_80548968
lbl_80548964:
/* 80548964  C0 1E 02 18 */	lfs f0, 0x218(r30)
lbl_80548968:
/* 80548968  FC 20 00 50 */	fneg f1, f0
/* 8054896C  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 80548970  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 80548974  4B AB F6 64 */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_80548978:
/* 80548978  88 1F 07 34 */	lbz r0, 0x734(r31)
/* 8054897C  28 00 00 00 */	cmplwi r0, 0
/* 80548980  41 82 00 0C */	beq lbl_8054898C
/* 80548984  38 60 00 01 */	li r3, 1
/* 80548988  48 00 08 FC */	b lbl_80549284
lbl_8054898C:
/* 8054898C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80548990  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80548994  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80548998  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8054899C  41 82 00 0C */	beq lbl_805489A8
/* 805489A0  38 00 00 64 */	li r0, 0x64
/* 805489A4  98 1F 07 D4 */	stb r0, 0x7d4(r31)
lbl_805489A8:
/* 805489A8  88 7F 07 D4 */	lbz r3, 0x7d4(r31)
/* 805489AC  28 03 00 00 */	cmplwi r3, 0
/* 805489B0  41 82 00 0C */	beq lbl_805489BC
/* 805489B4  38 03 FF FF */	addi r0, r3, -1
/* 805489B8  98 1F 07 D4 */	stb r0, 0x7d4(r31)
lbl_805489BC:
/* 805489BC  38 00 00 00 */	li r0, 0
/* 805489C0  98 1F 06 92 */	stb r0, 0x692(r31)
/* 805489C4  80 7F 07 E4 */	lwz r3, 0x7e4(r31)
/* 805489C8  3C 03 00 01 */	addis r0, r3, 1
/* 805489CC  28 00 FF FF */	cmplwi r0, 0xffff
/* 805489D0  40 82 00 2C */	bne lbl_805489FC
/* 805489D4  3C 60 80 55 */	lis r3, s_boat_sub__FPvPv@ha
/* 805489D8  38 63 86 40 */	addi r3, r3, s_boat_sub__FPvPv@l
/* 805489DC  7F E4 FB 78 */	mr r4, r31
/* 805489E0  4B AD 89 58 */	b fpcEx_Search__FPFPvPv_PvPv
/* 805489E4  28 03 00 00 */	cmplwi r3, 0
/* 805489E8  41 82 00 0C */	beq lbl_805489F4
/* 805489EC  80 03 00 04 */	lwz r0, 4(r3)
/* 805489F0  48 00 00 08 */	b lbl_805489F8
lbl_805489F4:
/* 805489F4  38 00 FF FF */	li r0, -1
lbl_805489F8:
/* 805489F8  90 1F 07 E4 */	stw r0, 0x7e4(r31)
lbl_805489FC:
/* 805489FC  3C 60 80 54 */	lis r3, s_rod_sub__FPvPv@ha
/* 80548A00  38 63 3E 68 */	addi r3, r3, s_rod_sub__FPvPv@l
/* 80548A04  7F E4 FB 78 */	mr r4, r31
/* 80548A08  4B AD 89 30 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80548A0C  90 7C 00 84 */	stw r3, 0x84(r28)
/* 80548A10  A8 7F 06 A0 */	lha r3, 0x6a0(r31)
/* 80548A14  38 03 00 01 */	addi r0, r3, 1
/* 80548A18  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
/* 80548A1C  38 60 00 00 */	li r3, 0
/* 80548A20  38 00 00 0A */	li r0, 0xa
/* 80548A24  7C 09 03 A6 */	mtctr r0
lbl_80548A28:
/* 80548A28  38 A3 07 3C */	addi r5, r3, 0x73c
/* 80548A2C  7C 9F 2A AE */	lhax r4, r31, r5
/* 80548A30  2C 04 00 00 */	cmpwi r4, 0
/* 80548A34  41 82 00 0C */	beq lbl_80548A40
/* 80548A38  38 04 FF FF */	addi r0, r4, -1
/* 80548A3C  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80548A40:
/* 80548A40  38 63 00 02 */	addi r3, r3, 2
/* 80548A44  42 00 FF E4 */	bdnz lbl_80548A28
/* 80548A48  7F E3 FB 78 */	mr r3, r31
/* 80548A4C  4B FF C0 01 */	bl action__FP15npc_henna_class
/* 80548A50  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80548A54  83 A3 00 04 */	lwz r29, 4(r3)
/* 80548A58  88 1F 07 E1 */	lbz r0, 0x7e1(r31)
/* 80548A5C  7C 00 07 75 */	extsb. r0, r0
/* 80548A60  41 82 00 90 */	beq lbl_80548AF0
/* 80548A64  80 1F 07 E4 */	lwz r0, 0x7e4(r31)
/* 80548A68  90 01 00 10 */	stw r0, 0x10(r1)
/* 80548A6C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80548A70  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80548A74  38 81 00 10 */	addi r4, r1, 0x10
/* 80548A78  4B AD 0D 80 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80548A7C  7C 7B 1B 79 */	or. r27, r3, r3
/* 80548A80  41 82 00 54 */	beq lbl_80548AD4
/* 80548A84  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80548A88  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80548A8C  38 63 00 60 */	addi r3, r3, 0x60
/* 80548A90  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80548A94  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80548A98  4B DF DA 18 */	b PSMTXCopy
/* 80548A9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548AA0  38 83 D4 70 */	addi r4, r3, now__14mDoMtx_stack_c@l
/* 80548AA4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80548AA8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80548AAC  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80548AB0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80548AB4  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 80548AB8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80548ABC  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80548AC0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80548AC4  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 80548AC8  38 63 00 24 */	addi r3, r3, 0x24
/* 80548ACC  4B DF D9 E4 */	b PSMTXCopy
/* 80548AD0  48 00 00 60 */	b lbl_80548B30
lbl_80548AD4:
/* 80548AD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548AD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548ADC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80548AE0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80548AE4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80548AE8  4B DF DE 00 */	b PSMTXTrans
/* 80548AEC  48 00 00 44 */	b lbl_80548B30
lbl_80548AF0:
/* 80548AF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548AF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548AF8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80548AFC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80548B00  C0 1F 07 2C */	lfs f0, 0x72c(r31)
/* 80548B04  EC 42 00 2A */	fadds f2, f2, f0
/* 80548B08  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80548B0C  4B DF DD DC */	b PSMTXTrans
/* 80548B10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548B14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548B18  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80548B1C  4B AC 39 18 */	b mDoMtx_YrotM__FPA4_fs
/* 80548B20  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80548B24  C0 5F 07 2C */	lfs f2, 0x72c(r31)
/* 80548B28  C0 7F 07 30 */	lfs f3, 0x730(r31)
/* 80548B2C  4B AC 42 70 */	b transM__14mDoMtx_stack_cFfff
lbl_80548B30:
/* 80548B30  38 7C 00 4C */	addi r3, r28, 0x4c
/* 80548B34  C0 23 00 08 */	lfs f1, 8(r3)
/* 80548B38  FC 40 08 90 */	fmr f2, f1
/* 80548B3C  FC 60 08 90 */	fmr f3, f1
/* 80548B40  4B AC 42 F8 */	b scaleM__14mDoMtx_stack_cFfff
/* 80548B44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548B48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548B4C  38 9D 00 24 */	addi r4, r29, 0x24
/* 80548B50  4B DF D9 60 */	b PSMTXCopy
/* 80548B54  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80548B58  38 9F 05 38 */	addi r4, r31, 0x538
/* 80548B5C  38 A0 00 00 */	li r5, 0
/* 80548B60  38 C0 00 00 */	li r6, 0
/* 80548B64  4B AC 7A 64 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 80548B68  80 1F 06 5C */	lwz r0, 0x65c(r31)
/* 80548B6C  2C 00 00 09 */	cmpwi r0, 9
/* 80548B70  41 82 00 0C */	beq lbl_80548B7C
/* 80548B74  2C 00 00 0A */	cmpwi r0, 0xa
/* 80548B78  40 82 00 98 */	bne lbl_80548C10
lbl_80548B7C:
/* 80548B7C  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80548B80  38 63 00 0C */	addi r3, r3, 0xc
/* 80548B84  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80548B88  4B DD F8 A4 */	b checkPass__12J3DFrameCtrlFf
/* 80548B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80548B90  40 82 00 34 */	bne lbl_80548BC4
/* 80548B94  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80548B98  38 63 00 0C */	addi r3, r3, 0xc
/* 80548B9C  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 80548BA0  4B DD F8 8C */	b checkPass__12J3DFrameCtrlFf
/* 80548BA4  2C 03 00 00 */	cmpwi r3, 0
/* 80548BA8  40 82 00 1C */	bne lbl_80548BC4
/* 80548BAC  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80548BB0  38 63 00 0C */	addi r3, r3, 0xc
/* 80548BB4  C0 3E 02 20 */	lfs f1, 0x220(r30)
/* 80548BB8  4B DD F8 74 */	b checkPass__12J3DFrameCtrlFf
/* 80548BBC  2C 03 00 00 */	cmpwi r3, 0
/* 80548BC0  41 82 00 50 */	beq lbl_80548C10
lbl_80548BC4:
/* 80548BC4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80548BC8  7C 03 07 74 */	extsb r3, r0
/* 80548BCC  4B AE 44 A0 */	b dComIfGp_getReverb__Fi
/* 80548BD0  7C 67 1B 78 */	mr r7, r3
/* 80548BD4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006005C@ha */
/* 80548BD8  38 03 00 5C */	addi r0, r3, 0x005C /* 0x0006005C@l */
/* 80548BDC  90 01 00 08 */	stw r0, 8(r1)
/* 80548BE0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80548BE4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80548BE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80548BEC  38 81 00 08 */	addi r4, r1, 8
/* 80548BF0  38 BF 05 38 */	addi r5, r31, 0x538
/* 80548BF4  38 C0 00 00 */	li r6, 0
/* 80548BF8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80548BFC  FC 40 08 90 */	fmr f2, f1
/* 80548C00  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 80548C04  FC 80 18 90 */	fmr f4, f3
/* 80548C08  39 00 00 00 */	li r8, 0
/* 80548C0C  4B D6 2D 78 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80548C10:
/* 80548C10  A8 7F 06 BA */	lha r3, 0x6ba(r31)
/* 80548C14  2C 03 00 00 */	cmpwi r3, 0
/* 80548C18  41 82 00 28 */	beq lbl_80548C40
/* 80548C1C  38 03 FF FF */	addi r0, r3, -1
/* 80548C20  B0 1F 06 BA */	sth r0, 0x6ba(r31)
/* 80548C24  38 00 00 01 */	li r0, 1
/* 80548C28  90 1F 06 88 */	stw r0, 0x688(r31)
/* 80548C2C  A8 1F 06 BA */	lha r0, 0x6ba(r31)
/* 80548C30  2C 00 00 00 */	cmpwi r0, 0
/* 80548C34  40 82 00 0C */	bne lbl_80548C40
/* 80548C38  38 00 00 00 */	li r0, 0
/* 80548C3C  90 1F 06 88 */	stw r0, 0x688(r31)
lbl_80548C40:
/* 80548C40  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 80548C44  2C 00 00 00 */	cmpwi r0, 0
/* 80548C48  41 82 00 7C */	beq lbl_80548CC4
/* 80548C4C  C0 3F 06 98 */	lfs f1, 0x698(r31)
/* 80548C50  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80548C54  EC 01 00 2A */	fadds f0, f1, f0
/* 80548C58  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 80548C5C  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 80548C60  54 00 10 3A */	slwi r0, r0, 2
/* 80548C64  7C 7F 02 14 */	add r3, r31, r0
/* 80548C68  80 63 06 28 */	lwz r3, 0x628(r3)
/* 80548C6C  A8 83 00 08 */	lha r4, 8(r3)
/* 80548C70  C8 7E 00 20 */	lfd f3, 0x20(r30)
/* 80548C74  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80548C78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80548C7C  3C 60 43 30 */	lis r3, 0x4330
/* 80548C80  90 61 00 30 */	stw r3, 0x30(r1)
/* 80548C84  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80548C88  EC 00 18 28 */	fsubs f0, f0, f3
/* 80548C8C  C0 5F 06 98 */	lfs f2, 0x698(r31)
/* 80548C90  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80548C94  EC 00 08 28 */	fsubs f0, f0, f1
/* 80548C98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80548C9C  40 81 00 30 */	ble lbl_80548CCC
/* 80548CA0  7C 80 07 34 */	extsh r0, r4
/* 80548CA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80548CA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80548CAC  90 61 00 30 */	stw r3, 0x30(r1)
/* 80548CB0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80548CB4  EC 00 18 28 */	fsubs f0, f0, f3
/* 80548CB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80548CBC  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 80548CC0  48 00 00 0C */	b lbl_80548CCC
lbl_80548CC4:
/* 80548CC4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80548CC8  D0 1F 06 98 */	stfs f0, 0x698(r31)
lbl_80548CCC:
/* 80548CCC  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 80548CD0  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 80548CD4  54 00 10 3A */	slwi r0, r0, 2
/* 80548CD8  7C 7F 02 14 */	add r3, r31, r0
/* 80548CDC  80 63 06 28 */	lwz r3, 0x628(r3)
/* 80548CE0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80548CE4  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 80548CE8  2C 00 00 00 */	cmpwi r0, 0
/* 80548CEC  41 82 00 0C */	beq lbl_80548CF8
/* 80548CF0  90 1F 06 58 */	stw r0, 0x658(r31)
/* 80548CF4  48 00 00 0C */	b lbl_80548D00
lbl_80548CF8:
/* 80548CF8  38 00 00 00 */	li r0, 0
/* 80548CFC  90 1F 06 58 */	stw r0, 0x658(r31)
lbl_80548D00:
/* 80548D00  80 1F 06 58 */	lwz r0, 0x658(r31)
/* 80548D04  2C 00 00 00 */	cmpwi r0, 0
/* 80548D08  40 82 00 14 */	bne lbl_80548D1C
/* 80548D0C  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 80548D10  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80548D14  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80548D18  48 00 00 18 */	b lbl_80548D30
lbl_80548D1C:
/* 80548D1C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80548D20  54 00 10 3A */	slwi r0, r0, 2
/* 80548D24  7C 7F 02 14 */	add r3, r31, r0
/* 80548D28  80 63 06 34 */	lwz r3, 0x634(r3)
/* 80548D2C  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_80548D30:
/* 80548D30  80 9D 00 04 */	lwz r4, 4(r29)
/* 80548D34  3B 60 00 00 */	li r27, 0
/* 80548D38  A8 7F 06 A6 */	lha r3, 0x6a6(r31)
/* 80548D3C  2C 03 00 00 */	cmpwi r3, 0
/* 80548D40  41 82 00 10 */	beq lbl_80548D50
/* 80548D44  38 03 FF FF */	addi r0, r3, -1
/* 80548D48  B0 1F 06 A6 */	sth r0, 0x6a6(r31)
/* 80548D4C  3B 60 00 04 */	li r27, 4
lbl_80548D50:
/* 80548D50  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 80548D54  7C 00 DA 14 */	add r0, r0, r27
/* 80548D58  54 00 10 3A */	slwi r0, r0, 2
/* 80548D5C  7C 7F 02 14 */	add r3, r31, r0
/* 80548D60  80 63 06 68 */	lwz r3, 0x668(r3)
/* 80548D64  38 A0 00 04 */	li r5, 4
/* 80548D68  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80548D6C  4B AC 4C 7C */	b entryJoint__13mDoExt_bckAnmFP12J3DModelDataUsf
/* 80548D70  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 80548D74  7C 00 DA 14 */	add r0, r0, r27
/* 80548D78  54 00 10 3A */	slwi r0, r0, 2
/* 80548D7C  7C 7F 02 14 */	add r3, r31, r0
/* 80548D80  80 63 06 68 */	lwz r3, 0x668(r3)
/* 80548D84  4B AC 46 A4 */	b play__14mDoExt_baseAnmFv
/* 80548D88  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 80548D8C  2C 00 00 03 */	cmpwi r0, 3
/* 80548D90  40 82 00 68 */	bne lbl_80548DF8
/* 80548D94  7C 00 DA 14 */	add r0, r0, r27
/* 80548D98  54 00 10 3A */	slwi r0, r0, 2
/* 80548D9C  7C 7F 02 14 */	add r3, r31, r0
/* 80548DA0  80 A3 06 68 */	lwz r5, 0x668(r3)
/* 80548DA4  A8 85 00 08 */	lha r4, 8(r5)
/* 80548DA8  C8 5E 00 20 */	lfd f2, 0x20(r30)
/* 80548DAC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80548DB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80548DB4  3C 60 43 30 */	lis r3, 0x4330
/* 80548DB8  90 61 00 30 */	stw r3, 0x30(r1)
/* 80548DBC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80548DC0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80548DC4  C0 65 00 10 */	lfs f3, 0x10(r5)
/* 80548DC8  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80548DCC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80548DD0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80548DD4  40 81 00 24 */	ble lbl_80548DF8
/* 80548DD8  7C 80 07 34 */	extsh r0, r4
/* 80548DDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80548DE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80548DE4  90 61 00 30 */	stw r3, 0x30(r1)
/* 80548DE8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80548DEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80548DF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80548DF4  D0 05 00 10 */	stfs f0, 0x10(r5)
lbl_80548DF8:
/* 80548DF8  80 7F 06 24 */	lwz r3, 0x624(r31)
/* 80548DFC  4B AC 78 B0 */	b modelCalc__14mDoExt_McaMorfFv
/* 80548E00  38 00 00 01 */	li r0, 1
/* 80548E04  98 1F 06 93 */	stb r0, 0x693(r31)
/* 80548E08  88 1F 06 92 */	lbz r0, 0x692(r31)
/* 80548E0C  7C 00 07 75 */	extsb. r0, r0
/* 80548E10  41 82 00 60 */	beq lbl_80548E70
/* 80548E14  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80548E18  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80548E1C  38 63 03 30 */	addi r3, r3, 0x330
/* 80548E20  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80548E24  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80548E28  4B DF D6 88 */	b PSMTXCopy
/* 80548E2C  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80548E30  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 80548E34  C0 7E 02 24 */	lfs f3, 0x224(r30)
/* 80548E38  4B AC 3F 64 */	b transM__14mDoMtx_stack_cFfff
/* 80548E3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548E40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548E44  38 80 CF 2C */	li r4, -12500
/* 80548E48  4B AC 35 EC */	b mDoMtx_YrotM__FPA4_fs
/* 80548E4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548E50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548E54  38 80 B1 E0 */	li r4, -20000
/* 80548E58  4B AC 35 44 */	b mDoMtx_XrotM__FPA4_fs
/* 80548E5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548E60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548E64  A8 9F 06 90 */	lha r4, 0x690(r31)
/* 80548E68  4B AC 36 64 */	b mDoMtx_ZrotM__FPA4_fs
/* 80548E6C  48 00 01 98 */	b lbl_80549004
lbl_80548E70:
/* 80548E70  80 1F 07 E4 */	lwz r0, 0x7e4(r31)
/* 80548E74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80548E78  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80548E7C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80548E80  38 81 00 0C */	addi r4, r1, 0xc
/* 80548E84  4B AD 09 74 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80548E88  28 03 00 00 */	cmplwi r3, 0
/* 80548E8C  41 82 00 5C */	beq lbl_80548EE8
/* 80548E90  80 63 05 70 */	lwz r3, 0x570(r3)
/* 80548E94  38 63 00 24 */	addi r3, r3, 0x24
/* 80548E98  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80548E9C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80548EA0  4B DF D6 10 */	b PSMTXCopy
/* 80548EA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548EA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548EAC  38 80 BC 5E */	li r4, -17314
/* 80548EB0  4B AC 35 84 */	b mDoMtx_YrotM__FPA4_fs
/* 80548EB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548EB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548EBC  38 80 00 00 */	li r4, 0
/* 80548EC0  4B AC 34 DC */	b mDoMtx_XrotM__FPA4_fs
/* 80548EC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548EC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548ECC  38 80 00 00 */	li r4, 0
/* 80548ED0  4B AC 35 FC */	b mDoMtx_ZrotM__FPA4_fs
/* 80548ED4  C0 3E 02 28 */	lfs f1, 0x228(r30)
/* 80548ED8  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 80548EDC  C0 7E 01 34 */	lfs f3, 0x134(r30)
/* 80548EE0  4B AC 3E BC */	b transM__14mDoMtx_stack_cFfff
/* 80548EE4  48 00 01 20 */	b lbl_80549004
lbl_80548EE8:
/* 80548EE8  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80548EEC  28 00 00 01 */	cmplwi r0, 1
/* 80548EF0  40 82 00 F4 */	bne lbl_80548FE4
/* 80548EF4  3C 60 80 54 */	lis r3, s_shop_sub__FPvPv@ha
/* 80548EF8  38 63 37 8C */	addi r3, r3, s_shop_sub__FPvPv@l
/* 80548EFC  7F E4 FB 78 */	mr r4, r31
/* 80548F00  4B AD 84 38 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80548F04  28 03 00 00 */	cmplwi r3, 0
/* 80548F08  41 82 00 A0 */	beq lbl_80548FA8
/* 80548F0C  A8 83 6B 34 */	lha r4, 0x6b34(r3)
/* 80548F10  1C 04 19 64 */	mulli r0, r4, 0x1964
/* 80548F14  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80548F18  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80548F1C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80548F20  7C 63 04 2E */	lfsx f3, r3, r0
/* 80548F24  C0 5E 02 2C */	lfs f2, 0x22c(r30)
/* 80548F28  C8 3E 00 20 */	lfd f1, 0x20(r30)
/* 80548F2C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80548F30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80548F34  3C 00 43 30 */	lis r0, 0x4330
/* 80548F38  90 01 00 30 */	stw r0, 0x30(r1)
/* 80548F3C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80548F40  EC 00 08 28 */	fsubs f0, f0, f1
/* 80548F44  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80548F48  EC 02 00 32 */	fmuls f0, f2, f0
/* 80548F4C  FC 00 00 1E */	fctiwz f0, f0
/* 80548F50  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80548F54  83 61 00 3C */	lwz r27, 0x3c(r1)
/* 80548F58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548F5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548F60  C0 3E 02 30 */	lfs f1, 0x230(r30)
/* 80548F64  C0 5E 02 34 */	lfs f2, 0x234(r30)
/* 80548F68  C0 7E 02 38 */	lfs f3, 0x238(r30)
/* 80548F6C  4B DF D9 7C */	b PSMTXTrans
/* 80548F70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548F74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548F78  38 80 BA BF */	li r4, -17729
/* 80548F7C  4B AC 34 B8 */	b mDoMtx_YrotM__FPA4_fs
/* 80548F80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548F84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548F88  38 80 7E F9 */	li r4, 0x7ef9
/* 80548F8C  4B AC 34 10 */	b mDoMtx_XrotM__FPA4_fs
/* 80548F90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548F94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548F98  38 1B 07 D0 */	addi r0, r27, 0x7d0
/* 80548F9C  7C 04 07 34 */	extsh r4, r0
/* 80548FA0  4B AC 35 2C */	b mDoMtx_ZrotM__FPA4_fs
/* 80548FA4  48 00 00 60 */	b lbl_80549004
lbl_80548FA8:
/* 80548FA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548FAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548FB0  C0 3E 02 3C */	lfs f1, 0x23c(r30)
/* 80548FB4  C0 5E 01 48 */	lfs f2, 0x148(r30)
/* 80548FB8  C0 7E 02 40 */	lfs f3, 0x240(r30)
/* 80548FBC  4B DF D9 2C */	b PSMTXTrans
/* 80548FC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548FC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548FC8  38 80 DC D8 */	li r4, -9000
/* 80548FCC  4B AC 34 68 */	b mDoMtx_YrotM__FPA4_fs
/* 80548FD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80548FD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80548FD8  38 80 C9 50 */	li r4, -14000
/* 80548FDC  4B AC 33 C0 */	b mDoMtx_XrotM__FPA4_fs
/* 80548FE0  48 00 00 24 */	b lbl_80549004
lbl_80548FE4:
/* 80548FE4  38 00 00 00 */	li r0, 0
/* 80548FE8  98 1F 06 93 */	stb r0, 0x693(r31)
/* 80548FEC  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80548FF0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80548FF4  38 63 03 30 */	addi r3, r3, 0x330
/* 80548FF8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80548FFC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80549000  4B DF D4 B0 */	b PSMTXCopy
lbl_80549004:
/* 80549004  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80549008  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8054900C  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 80549010  38 84 00 24 */	addi r4, r4, 0x24
/* 80549014  4B DF D4 9C */	b PSMTXCopy
/* 80549018  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8054901C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80549020  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80549024  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80549028  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8054902C  4B DF D4 84 */	b PSMTXCopy
/* 80549030  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80549034  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80549038  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8054903C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80549040  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80549044  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80549048  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8054904C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80549050  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80549054  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80549058  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8054905C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80549060  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80549064  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80549068  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8054906C  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80549070  EC 01 00 2A */	fadds f0, f1, f0
/* 80549074  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80549078  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8054907C  28 00 00 01 */	cmplwi r0, 1
/* 80549080  40 82 00 18 */	bne lbl_80549098
/* 80549084  7F E3 FB 78 */	mr r3, r31
/* 80549088  4B FF A7 BD */	bl message_shop__FP15npc_henna_class
/* 8054908C  7F E3 FB 78 */	mr r3, r31
/* 80549090  4B FF C5 A9 */	bl demo_camera_shop__FP15npc_henna_class
/* 80549094  48 00 00 14 */	b lbl_805490A8
lbl_80549098:
/* 80549098  7F E3 FB 78 */	mr r3, r31
/* 8054909C  4B FF F3 59 */	bl message_guide__FP15npc_henna_class
/* 805490A0  7F E3 FB 78 */	mr r3, r31
/* 805490A4  4B FF C0 E9 */	bl demo_camera__FP15npc_henna_class
lbl_805490A8:
/* 805490A8  38 00 00 00 */	li r0, 0
/* 805490AC  98 1F 06 94 */	stb r0, 0x694(r31)
/* 805490B0  88 1F 07 E1 */	lbz r0, 0x7e1(r31)
/* 805490B4  7C 00 07 75 */	extsb. r0, r0
/* 805490B8  40 82 00 BC */	bne lbl_80549174
/* 805490BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805490C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805490C4  83 63 5D 74 */	lwz r27, 0x5d74(r3)
/* 805490C8  C0 3B 00 E4 */	lfs f1, 0xe4(r27)
/* 805490CC  C0 1B 00 D8 */	lfs f0, 0xd8(r27)
/* 805490D0  EC 21 00 28 */	fsubs f1, f1, f0
/* 805490D4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805490D8  C0 5B 00 EC */	lfs f2, 0xec(r27)
/* 805490DC  C0 1B 00 E0 */	lfs f0, 0xe0(r27)
/* 805490E0  EC 42 00 28 */	fsubs f2, f2, f0
/* 805490E4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 805490E8  4B D1 E5 8C */	b cM_atan2s__Fff
/* 805490EC  7C 7D 1B 78 */	mr r29, r3
/* 805490F0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805490F4  C0 1B 00 D8 */	lfs f0, 0xd8(r27)
/* 805490F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 805490FC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80549100  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80549104  C0 1B 00 E0 */	lfs f0, 0xe0(r27)
/* 80549108  EC 42 00 28 */	fsubs f2, f2, f0
/* 8054910C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80549110  4B D1 E5 64 */	b cM_atan2s__Fff
/* 80549114  7C 1D 18 50 */	subf r0, r29, r3
/* 80549118  7C 03 07 34 */	extsh r3, r0
/* 8054911C  A8 1F 07 52 */	lha r0, 0x752(r31)
/* 80549120  2C 00 00 00 */	cmpwi r0, 0
/* 80549124  40 82 00 50 */	bne lbl_80549174
/* 80549128  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8054912C  41 81 00 0C */	bgt lbl_80549138
/* 80549130  2C 03 C0 00 */	cmpwi r3, -16384
/* 80549134  40 80 00 40 */	bge lbl_80549174
lbl_80549138:
/* 80549138  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8054913C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80549140  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80549144  EC 00 00 32 */	fmuls f0, f0, f0
/* 80549148  EC 21 00 2A */	fadds f1, f1, f0
/* 8054914C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80549150  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80549154  40 81 00 0C */	ble lbl_80549160
/* 80549158  FC 00 08 34 */	frsqrte f0, f1
/* 8054915C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80549160:
/* 80549160  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80549164  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80549168  40 81 00 0C */	ble lbl_80549174
/* 8054916C  38 00 00 01 */	li r0, 1
/* 80549170  98 1F 06 94 */	stb r0, 0x694(r31)
lbl_80549174:
/* 80549174  88 1C 00 88 */	lbz r0, 0x88(r28)
/* 80549178  28 00 00 00 */	cmplwi r0, 0
/* 8054917C  41 82 01 04 */	beq lbl_80549280
/* 80549180  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80549184  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80549188  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 8054918C  28 00 00 02 */	cmplwi r0, 2
/* 80549190  40 82 00 2C */	bne lbl_805491BC
/* 80549194  38 7C 00 4C */	addi r3, r28, 0x4c
/* 80549198  A8 03 00 14 */	lha r0, 0x14(r3)
/* 8054919C  98 01 00 14 */	stb r0, 0x14(r1)
/* 805491A0  A8 03 00 16 */	lha r0, 0x16(r3)
/* 805491A4  98 01 00 15 */	stb r0, 0x15(r1)
/* 805491A8  A8 03 00 18 */	lha r0, 0x18(r3)
/* 805491AC  98 01 00 16 */	stb r0, 0x16(r1)
/* 805491B0  C3 E3 00 28 */	lfs f31, 0x28(r3)
/* 805491B4  A8 A3 00 2C */	lha r5, 0x2c(r3)
/* 805491B8  48 00 00 58 */	b lbl_80549210
lbl_805491BC:
/* 805491BC  28 00 00 03 */	cmplwi r0, 3
/* 805491C0  40 82 00 2C */	bne lbl_805491EC
/* 805491C4  38 7C 00 4C */	addi r3, r28, 0x4c
/* 805491C8  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 805491CC  98 01 00 14 */	stb r0, 0x14(r1)
/* 805491D0  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 805491D4  98 01 00 15 */	stb r0, 0x15(r1)
/* 805491D8  A8 03 00 1E */	lha r0, 0x1e(r3)
/* 805491DC  98 01 00 16 */	stb r0, 0x16(r1)
/* 805491E0  C3 E3 00 30 */	lfs f31, 0x30(r3)
/* 805491E4  A8 A3 00 34 */	lha r5, 0x34(r3)
/* 805491E8  48 00 00 28 */	b lbl_80549210
lbl_805491EC:
/* 805491EC  38 7C 00 4C */	addi r3, r28, 0x4c
/* 805491F0  A8 03 00 0E */	lha r0, 0xe(r3)
/* 805491F4  98 01 00 14 */	stb r0, 0x14(r1)
/* 805491F8  A8 03 00 10 */	lha r0, 0x10(r3)
/* 805491FC  98 01 00 15 */	stb r0, 0x15(r1)
/* 80549200  A8 03 00 12 */	lha r0, 0x12(r3)
/* 80549204  98 01 00 16 */	stb r0, 0x16(r1)
/* 80549208  C3 E3 00 20 */	lfs f31, 0x20(r3)
/* 8054920C  A8 A3 00 24 */	lha r5, 0x24(r3)
lbl_80549210:
/* 80549210  38 00 00 FF */	li r0, 0xff
/* 80549214  98 01 00 17 */	stb r0, 0x17(r1)
/* 80549218  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8054921C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80549220  80 63 00 00 */	lwz r3, 0(r3)
/* 80549224  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80549228  1C 05 00 B6 */	mulli r0, r5, 0xb6
/* 8054922C  7C 04 02 14 */	add r0, r4, r0
/* 80549230  7C 04 07 34 */	extsh r4, r0
/* 80549234  4B AC 31 A8 */	b mDoMtx_YrotS__FPA4_fs
/* 80549238  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8054923C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80549240  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80549244  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80549248  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 8054924C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80549250  38 61 00 24 */	addi r3, r1, 0x24
/* 80549254  38 81 00 18 */	addi r4, r1, 0x18
/* 80549258  4B D2 7C 94 */	b MtxPosition__FP4cXyzP4cXyz
/* 8054925C  38 61 00 18 */	addi r3, r1, 0x18
/* 80549260  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80549264  7C 65 1B 78 */	mr r5, r3
/* 80549268  4B DF DE 28 */	b PSVECAdd
/* 8054926C  38 61 00 18 */	addi r3, r1, 0x18
/* 80549270  38 81 00 14 */	addi r4, r1, 0x14
/* 80549274  FC 20 F8 90 */	fmr f1, f31
/* 80549278  38 A0 00 00 */	li r5, 0
/* 8054927C  4B C6 0A E4 */	b dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_80549280:
/* 80549280  38 60 00 01 */	li r3, 1
lbl_80549284:
/* 80549284  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80549288  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8054928C  39 61 00 60 */	addi r11, r1, 0x60
/* 80549290  4B E1 8F 90 */	b _restgpr_27
/* 80549294  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80549298  7C 08 03 A6 */	mtlr r0
/* 8054929C  38 21 00 70 */	addi r1, r1, 0x70
/* 805492A0  4E 80 00 20 */	blr 
