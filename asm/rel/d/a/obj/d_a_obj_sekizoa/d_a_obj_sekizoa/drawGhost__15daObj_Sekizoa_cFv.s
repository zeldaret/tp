lbl_80CD05D0:
/* 80CD05D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD05D4  7C 08 02 A6 */	mflr r0
/* 80CD05D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD05DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD05E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD05E4  7C 7E 1B 78 */	mr r30, r3
/* 80CD05E8  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80CD05EC  83 E3 00 04 */	lwz r31, 4(r3)
/* 80CD05F0  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CD05F4  28 00 00 06 */	cmplwi r0, 6
/* 80CD05F8  40 82 00 40 */	bne lbl_80CD0638
/* 80CD05FC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CD0600  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CD0604  38 80 00 07 */	li r4, 7
/* 80CD0608  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CD060C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CD0610  4B 4D 31 B4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CD0614  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CD0618  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CD061C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80CD0620  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CD0624  4B 4D 47 7C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CD0628  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80CD062C  38 80 00 00 */	li r4, 0
/* 80CD0630  4B 33 E1 90 */	b entryDL__21mDoExt_invisibleModelFP4cXyz
/* 80CD0634  48 00 00 70 */	b lbl_80CD06A4
lbl_80CD0638:
/* 80CD0638  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CD063C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CD0640  38 80 00 10 */	li r4, 0x10
/* 80CD0644  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CD0648  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CD064C  4B 4D 31 78 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CD0650  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CD0654  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CD0658  80 9F 00 04 */	lwz r4, 4(r31)
/* 80CD065C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CD0660  4B 4D 47 40 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CD0664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD0668  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CD066C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CD0670  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CD0674  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80CD0678  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CD067C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CD0680  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CD0684  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80CD0688  4B 34 0B 38 */	b entryDL__16mDoExt_McaMorfSOFv
/* 80CD068C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD0690  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD0694  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CD0698  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CD069C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CD06A0  90 1F 00 4C */	stw r0, 0x4c(r31)
lbl_80CD06A4:
/* 80CD06A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD06A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD06AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD06B0  7C 08 03 A6 */	mtlr r0
/* 80CD06B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD06B8  4E 80 00 20 */	blr 
