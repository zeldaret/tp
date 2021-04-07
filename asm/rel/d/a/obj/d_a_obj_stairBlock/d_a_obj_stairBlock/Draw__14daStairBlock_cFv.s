lbl_80CE8B24:
/* 80CE8B24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CE8B28  7C 08 02 A6 */	mflr r0
/* 80CE8B2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CE8B30  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE8B34  4B 67 96 99 */	bl _savegpr_25
/* 80CE8B38  7C 7F 1B 78 */	mr r31, r3
/* 80CE8B3C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CE8B40  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CE8B44  38 80 00 40 */	li r4, 0x40
/* 80CE8B48  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CE8B4C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CE8B50  4B 4B AC 75 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CE8B54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE8B58  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE8B5C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CE8B60  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CE8B64  3B 63 4A C8 */	addi r27, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CE8B68  90 1B 00 48 */	stw r0, 0x48(r27)
/* 80CE8B6C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CE8B70  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 80CE8B74  3B 20 00 00 */	li r25, 0
/* 80CE8B78  3B C0 00 00 */	li r30, 0
/* 80CE8B7C  3B A0 00 00 */	li r29, 0
/* 80CE8B80  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CE8B84  3B 83 CA 54 */	addi r28, r3, g_env_light@l /* 0x8042CA54@l */
lbl_80CE8B88:
/* 80CE8B88  7F 83 E3 78 */	mr r3, r28
/* 80CE8B8C  3B 5D 05 74 */	addi r26, r29, 0x574
/* 80CE8B90  7C 9F D0 2E */	lwzx r4, r31, r26
/* 80CE8B94  80 84 00 04 */	lwz r4, 4(r4)
/* 80CE8B98  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CE8B9C  4B 4B C2 05 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CE8BA0  7C 7F D0 2E */	lwzx r3, r31, r26
/* 80CE8BA4  80 83 00 04 */	lwz r4, 4(r3)
/* 80CE8BA8  7C BF F2 14 */	add r5, r31, r30
/* 80CE8BAC  38 65 05 9C */	addi r3, r5, 0x59c
/* 80CE8BB0  C0 25 05 AC */	lfs f1, 0x5ac(r5)
/* 80CE8BB4  4B 32 4E 19 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80CE8BB8  7C 7F D0 2E */	lwzx r3, r31, r26
/* 80CE8BBC  4B 32 51 09 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CE8BC0  3B 39 00 01 */	addi r25, r25, 1
/* 80CE8BC4  2C 19 00 0A */	cmpwi r25, 0xa
/* 80CE8BC8  3B DE 00 1C */	addi r30, r30, 0x1c
/* 80CE8BCC  3B BD 00 04 */	addi r29, r29, 4
/* 80CE8BD0  41 80 FF B8 */	blt lbl_80CE8B88
/* 80CE8BD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE8BD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE8BDC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CE8BE0  90 1B 00 48 */	stw r0, 0x48(r27)
/* 80CE8BE4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CE8BE8  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 80CE8BEC  38 60 00 01 */	li r3, 1
/* 80CE8BF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80CE8BF4  4B 67 96 25 */	bl _restgpr_25
/* 80CE8BF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CE8BFC  7C 08 03 A6 */	mtlr r0
/* 80CE8C00  38 21 00 30 */	addi r1, r1, 0x30
/* 80CE8C04  4E 80 00 20 */	blr 
