lbl_80BD9848:
/* 80BD9848  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD984C  7C 08 02 A6 */	mflr r0
/* 80BD9850  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD9854  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD9858  4B 78 89 81 */	bl _savegpr_28
/* 80BD985C  7C 7F 1B 78 */	mr r31, r3
/* 80BD9860  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD9864  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD9868  38 80 00 10 */	li r4, 0x10
/* 80BD986C  38 BF 0F 38 */	addi r5, r31, 0xf38
/* 80BD9870  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BD9874  4B 5C 9F 51 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BD9878  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD987C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD9880  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BD9884  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD9888  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BD988C  4B 5C B5 15 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BD9890  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD9894  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD9898  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BD989C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BD98A0  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BD98A4  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80BD98A8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BD98AC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80BD98B0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BD98B4  4B 43 44 11 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BD98B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD98BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD98C0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BD98C4  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80BD98C8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BD98CC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80BD98D0  83 BF 0E 8C */	lwz r29, 0xe8c(r31)
/* 80BD98D4  3B 80 00 00 */	li r28, 0
/* 80BD98D8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD98DC  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
lbl_80BD98E0:
/* 80BD98E0  7F C3 F3 78 */	mr r3, r30
/* 80BD98E4  80 9D 00 00 */	lwz r4, 0(r29)
/* 80BD98E8  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD98EC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BD98F0  4B 5C B4 B1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BD98F4  80 7D 00 00 */	lwz r3, 0(r29)
/* 80BD98F8  4B 43 43 CD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BD98FC  3B 9C 00 01 */	addi r28, r28, 1
/* 80BD9900  2C 1C 00 05 */	cmpwi r28, 5
/* 80BD9904  3B BD 00 10 */	addi r29, r29, 0x10
/* 80BD9908  41 80 FF D8 */	blt lbl_80BD98E0
/* 80BD990C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD9910  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD9914  80 9F 0E 88 */	lwz r4, 0xe88(r31)
/* 80BD9918  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD991C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BD9920  4B 5C B4 81 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BD9924  80 7F 0E 88 */	lwz r3, 0xe88(r31)
/* 80BD9928  4B 43 43 9D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BD992C  38 60 00 01 */	li r3, 1
/* 80BD9930  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD9934  4B 78 88 F1 */	bl _restgpr_28
/* 80BD9938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD993C  7C 08 03 A6 */	mtlr r0
/* 80BD9940  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD9944  4E 80 00 20 */	blr 
