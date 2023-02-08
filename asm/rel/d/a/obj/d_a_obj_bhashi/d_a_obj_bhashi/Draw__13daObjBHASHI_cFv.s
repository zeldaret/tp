lbl_805788EC:
/* 805788EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805788F0  7C 08 02 A6 */	mflr r0
/* 805788F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805788F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805788FC  4B DE 98 D5 */	bl _savegpr_26
/* 80578900  7C 7F 1B 78 */	mr r31, r3
/* 80578904  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80578908  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8057890C  38 80 00 08 */	li r4, 8
/* 80578910  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80578914  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80578918  4B C2 AE AD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8057891C  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80578920  2C 00 00 00 */	cmpwi r0, 0
/* 80578924  40 82 00 1C */	bne lbl_80578940
/* 80578928  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8057892C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80578930  80 9F 11 EC */	lwz r4, 0x11ec(r31)
/* 80578934  80 84 00 04 */	lwz r4, 4(r4)
/* 80578938  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8057893C  4B C2 C4 65 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_80578940:
/* 80578940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80578944  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80578948  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8057894C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80578950  3B A3 4A C8 */	addi r29, r3, j3dSys@l /* 0x80434AC8@l */
/* 80578954  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80578958  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8057895C  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80578960  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80578964  2C 00 00 00 */	cmpwi r0, 0
/* 80578968  40 82 00 10 */	bne lbl_80578978
/* 8057896C  80 7F 11 EC */	lwz r3, 0x11ec(r31)
/* 80578970  4B A9 53 55 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80578974  48 00 00 40 */	b lbl_805789B4
lbl_80578978:
/* 80578978  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8057897C  7C 00 07 74 */	extsb r0, r0
/* 80578980  7C 1B 03 78 */	mr r27, r0
/* 80578984  3B 40 00 00 */	li r26, 0
/* 80578988  3B C0 00 00 */	li r30, 0
/* 8057898C  3B 84 0F 38 */	addi r28, r4, 0xf38
lbl_80578990:
/* 80578990  7F 83 E3 78 */	mr r3, r28
/* 80578994  38 1E 11 F0 */	addi r0, r30, 0x11f0
/* 80578998  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8057899C  7F 65 DB 78 */	mr r5, r27
/* 805789A0  4B AB 41 C9 */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 805789A4  3B 5A 00 01 */	addi r26, r26, 1
/* 805789A8  2C 1A 00 3C */	cmpwi r26, 0x3c
/* 805789AC  3B DE 00 04 */	addi r30, r30, 4
/* 805789B0  41 80 FF E0 */	blt lbl_80578990
lbl_805789B4:
/* 805789B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805789B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805789BC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 805789C0  90 1D 00 48 */	stw r0, 0x48(r29)
/* 805789C4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 805789C8  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 805789CC  38 60 00 01 */	li r3, 1
/* 805789D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805789D4  4B DE 98 49 */	bl _restgpr_26
/* 805789D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805789DC  7C 08 03 A6 */	mtlr r0
/* 805789E0  38 21 00 20 */	addi r1, r1, 0x20
/* 805789E4  4E 80 00 20 */	blr 
