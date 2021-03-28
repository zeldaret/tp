lbl_80C92584:
/* 80C92584  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C92588  7C 08 02 A6 */	mflr r0
/* 80C9258C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C92590  39 61 00 20 */	addi r11, r1, 0x20
/* 80C92594  4B 6C FC 3C */	b _savegpr_26
/* 80C92598  7C 7A 1B 78 */	mr r26, r3
/* 80C9259C  3B A0 00 00 */	li r29, 0
/* 80C925A0  7F BF EB 78 */	mr r31, r29
/* 80C925A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C925A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C925AC  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80C925B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C925B4  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 80C925B8  48 00 00 4C */	b lbl_80C92604
lbl_80C925BC:
/* 80C925BC  7F C3 F3 78 */	mr r3, r30
/* 80C925C0  38 80 00 00 */	li r4, 0
/* 80C925C4  7F 7A FA 14 */	add r27, r26, r31
/* 80C925C8  38 BB 06 F0 */	addi r5, r27, 0x6f0
/* 80C925CC  38 DA 01 0C */	addi r6, r26, 0x10c
/* 80C925D0  4B 51 11 F4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C925D4  7F C3 F3 78 */	mr r3, r30
/* 80C925D8  80 9B 05 74 */	lwz r4, 0x574(r27)
/* 80C925DC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C925E0  38 BA 01 0C */	addi r5, r26, 0x10c
/* 80C925E4  4B 51 27 BC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C925E8  7F 83 E3 78 */	mr r3, r28
/* 80C925EC  80 9B 05 74 */	lwz r4, 0x574(r27)
/* 80C925F0  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80C925F4  7C 05 07 74 */	extsb r5, r0
/* 80C925F8  4B 39 A5 70 */	b entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 80C925FC  3B BD 00 01 */	addi r29, r29, 1
/* 80C92600  3B FF 01 C0 */	addi r31, r31, 0x1c0
lbl_80C92604:
/* 80C92604  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 80C92608  A0 03 00 00 */	lhz r0, 0(r3)
/* 80C9260C  7C 1D 00 00 */	cmpw r29, r0
/* 80C92610  41 80 FF AC */	blt lbl_80C925BC
/* 80C92614  38 60 00 01 */	li r3, 1
/* 80C92618  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9261C  4B 6C FC 00 */	b _restgpr_26
/* 80C92620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C92624  7C 08 03 A6 */	mtlr r0
/* 80C92628  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9262C  4E 80 00 20 */	blr 
