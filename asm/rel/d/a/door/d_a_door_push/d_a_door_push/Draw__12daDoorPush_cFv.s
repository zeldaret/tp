lbl_80678C70:
/* 80678C70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80678C74  7C 08 02 A6 */	mflr r0
/* 80678C78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80678C7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80678C80  4B CE 95 4C */	b _savegpr_25
/* 80678C84  7C 79 1B 78 */	mr r25, r3
/* 80678C88  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80678C8C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80678C90  38 80 00 10 */	li r4, 0x10
/* 80678C94  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80678C98  38 D9 01 0C */	addi r6, r25, 0x10c
/* 80678C9C  4B B2 AB 28 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80678CA0  3B 40 00 00 */	li r26, 0
/* 80678CA4  3B E0 00 00 */	li r31, 0
/* 80678CA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80678CAC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80678CB0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80678CB4  3B A3 4A C8 */	addi r29, r3, j3dSys@l
/* 80678CB8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80678CBC  3B C3 CA 54 */	addi r30, r3, g_env_light@l
lbl_80678CC0:
/* 80678CC0  7F C3 F3 78 */	mr r3, r30
/* 80678CC4  3B 7F 05 A8 */	addi r27, r31, 0x5a8
/* 80678CC8  7C 99 D8 2E */	lwzx r4, r25, r27
/* 80678CCC  80 84 00 04 */	lwz r4, 4(r4)
/* 80678CD0  38 B9 01 0C */	addi r5, r25, 0x10c
/* 80678CD4  4B B2 C0 CC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80678CD8  80 1C 5F 70 */	lwz r0, 0x5f70(r28)
/* 80678CDC  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80678CE0  80 1C 5F 74 */	lwz r0, 0x5f74(r28)
/* 80678CE4  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80678CE8  7C 79 D8 2E */	lwzx r3, r25, r27
/* 80678CEC  4B 99 4F D8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80678CF0  80 1C 5F 80 */	lwz r0, 0x5f80(r28)
/* 80678CF4  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80678CF8  80 1C 5F 84 */	lwz r0, 0x5f84(r28)
/* 80678CFC  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80678D00  3B 5A 00 01 */	addi r26, r26, 1
/* 80678D04  2C 1A 00 02 */	cmpwi r26, 2
/* 80678D08  3B FF 00 04 */	addi r31, r31, 4
/* 80678D0C  41 80 FF B4 */	blt lbl_80678CC0
/* 80678D10  38 60 00 01 */	li r3, 1
/* 80678D14  39 61 00 30 */	addi r11, r1, 0x30
/* 80678D18  4B CE 95 00 */	b _restgpr_25
/* 80678D1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80678D20  7C 08 03 A6 */	mtlr r0
/* 80678D24  38 21 00 30 */	addi r1, r1, 0x30
/* 80678D28  4E 80 00 20 */	blr 
