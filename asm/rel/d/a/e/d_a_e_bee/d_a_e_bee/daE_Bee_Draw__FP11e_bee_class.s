lbl_8068289C:
/* 8068289C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806828A0  7C 08 02 A6 */	mflr r0
/* 806828A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806828A8  39 61 00 20 */	addi r11, r1, 0x20
/* 806828AC  4B CD F9 29 */	bl _savegpr_27
/* 806828B0  7C 7F 1B 78 */	mr r31, r3
/* 806828B4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806828B8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806828BC  38 80 00 00 */	li r4, 0
/* 806828C0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806828C4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 806828C8  4B B2 0E FD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806828CC  3B BF 05 A0 */	addi r29, r31, 0x5a0
/* 806828D0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806828D4  7C 00 07 74 */	extsb r0, r0
/* 806828D8  7C 1C 03 78 */	mr r28, r0
/* 806828DC  3B 60 00 00 */	li r27, 0
/* 806828E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806828E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806828E8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 806828EC  48 00 00 94 */	b lbl_80682980
lbl_806828F0:
/* 806828F0  88 1D 00 4C */	lbz r0, 0x4c(r29)
/* 806828F4  7C 00 07 75 */	extsb. r0, r0
/* 806828F8  41 82 00 80 */	beq lbl_80682978
/* 806828FC  88 1D 00 50 */	lbz r0, 0x50(r29)
/* 80682900  28 00 00 00 */	cmplwi r0, 0
/* 80682904  40 82 00 74 */	bne lbl_80682978
/* 80682908  88 1D 00 4E */	lbz r0, 0x4e(r29)
/* 8068290C  7C 00 07 75 */	extsb. r0, r0
/* 80682910  40 82 00 38 */	bne lbl_80682948
/* 80682914  A8 1D 00 48 */	lha r0, 0x48(r29)
/* 80682918  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8068291C  41 82 00 18 */	beq lbl_80682934
/* 80682920  7F C3 F3 78 */	mr r3, r30
/* 80682924  80 9D 00 08 */	lwz r4, 8(r29)
/* 80682928  7F 85 E3 78 */	mr r5, r28
/* 8068292C  4B 9A A2 3D */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 80682930  48 00 00 48 */	b lbl_80682978
lbl_80682934:
/* 80682934  7F C3 F3 78 */	mr r3, r30
/* 80682938  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8068293C  7F 85 E3 78 */	mr r5, r28
/* 80682940  4B 9A A2 29 */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 80682944  48 00 00 34 */	b lbl_80682978
lbl_80682948:
/* 80682948  A8 1D 00 48 */	lha r0, 0x48(r29)
/* 8068294C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80682950  41 82 00 18 */	beq lbl_80682968
/* 80682954  7F C3 F3 78 */	mr r3, r30
/* 80682958  80 9D 00 00 */	lwz r4, 0(r29)
/* 8068295C  7F 85 E3 78 */	mr r5, r28
/* 80682960  4B 9A A2 09 */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 80682964  48 00 00 14 */	b lbl_80682978
lbl_80682968:
/* 80682968  7F C3 F3 78 */	mr r3, r30
/* 8068296C  80 9D 00 04 */	lwz r4, 4(r29)
/* 80682970  7F 85 E3 78 */	mr r5, r28
/* 80682974  4B 9A A1 F5 */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
lbl_80682978:
/* 80682978  3B 7B 00 01 */	addi r27, r27, 1
/* 8068297C  3B BD 00 74 */	addi r29, r29, 0x74
lbl_80682980:
/* 80682980  80 1F 22 A0 */	lwz r0, 0x22a0(r31)
/* 80682984  7C 1B 00 00 */	cmpw r27, r0
/* 80682988  41 80 FF 68 */	blt lbl_806828F0
/* 8068298C  38 60 00 01 */	li r3, 1
/* 80682990  39 61 00 20 */	addi r11, r1, 0x20
/* 80682994  4B CD F8 8D */	bl _restgpr_27
/* 80682998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8068299C  7C 08 03 A6 */	mtlr r0
/* 806829A0  38 21 00 20 */	addi r1, r1, 0x20
/* 806829A4  4E 80 00 20 */	blr 
