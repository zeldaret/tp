lbl_80D583B8:
/* 80D583B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D583BC  7C 08 02 A6 */	mflr r0
/* 80D583C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D583C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D583C8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D583CC  7C 7F 1B 78 */	mr r31, r3
/* 80D583D0  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80D583D4  80 83 00 04 */	lwz r4, 4(r3)
/* 80D583D8  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D583DC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D583E0  38 84 00 58 */	addi r4, r4, 0x58
/* 80D583E4  4B 2B 53 C5 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D583E8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D583EC  28 03 00 00 */	cmplwi r3, 0
/* 80D583F0  41 82 00 18 */	beq lbl_80D58408
/* 80D583F4  80 83 00 04 */	lwz r4, 4(r3)
/* 80D583F8  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80D583FC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D58400  38 84 00 58 */	addi r4, r4, 0x58
/* 80D58404  4B 2B 53 A5 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80D58408:
/* 80D58408  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D5840C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D58410  38 80 00 10 */	li r4, 0x10
/* 80D58414  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D58418  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D5841C  4B 44 B3 A9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D58420  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D58424  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D58428  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D5842C  80 84 00 04 */	lwz r4, 4(r4)
/* 80D58430  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D58434  4B 44 C9 6D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D58438  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80D5843C  28 04 00 00 */	cmplwi r4, 0
/* 80D58440  41 82 00 18 */	beq lbl_80D58458
/* 80D58444  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D58448  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D5844C  80 84 00 04 */	lwz r4, 4(r4)
/* 80D58450  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D58454  4B 44 C9 4D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_80D58458:
/* 80D58458  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D5845C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D58460  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D58464  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D58468  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D5846C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D58470  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D58474  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D58478  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D5847C  4B 2B 58 49 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D58480  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D58484  28 03 00 00 */	cmplwi r3, 0
/* 80D58488  41 82 00 08 */	beq lbl_80D58490
/* 80D5848C  4B 2B 58 39 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80D58490:
/* 80D58490  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D58494  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D58498  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D5849C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D584A0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D584A4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D584A8  38 60 00 01 */	li r3, 1
/* 80D584AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D584B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D584B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D584B8  7C 08 03 A6 */	mtlr r0
/* 80D584BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D584C0  4E 80 00 20 */	blr 
