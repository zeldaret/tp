lbl_80C49A74:
/* 80C49A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C49A78  7C 08 02 A6 */	mflr r0
/* 80C49A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C49A80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C49A84  93 C1 00 08 */	stw r30, 8(r1)
/* 80C49A88  7C 7E 1B 78 */	mr r30, r3
/* 80C49A8C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C49A90  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C49A94  38 80 00 10 */	li r4, 0x10
/* 80C49A98  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C49A9C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C49AA0  4B 55 9D 25 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C49AA4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C49AA8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C49AAC  80 9E 05 B0 */	lwz r4, 0x5b0(r30)
/* 80C49AB0  80 84 00 04 */	lwz r4, 4(r4)
/* 80C49AB4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C49AB8  4B 55 B2 E9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C49ABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C49AC0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C49AC4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C49AC8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C49ACC  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C49AD0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C49AD4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C49AD8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C49ADC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C49AE0  28 03 00 00 */	cmplwi r3, 0
/* 80C49AE4  41 82 00 14 */	beq lbl_80C49AF8
/* 80C49AE8  80 9E 05 B0 */	lwz r4, 0x5b0(r30)
/* 80C49AEC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C49AF0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C49AF4  4B 3C 3E D9 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80C49AF8:
/* 80C49AF8  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80C49AFC  4B 3C 41 C9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C49B00  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80C49B04  80 63 00 04 */	lwz r3, 4(r3)
/* 80C49B08  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C49B0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C49B10  38 00 00 00 */	li r0, 0
/* 80C49B14  90 03 00 54 */	stw r0, 0x54(r3)
/* 80C49B18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C49B1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C49B20  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C49B24  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C49B28  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C49B2C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C49B30  38 60 00 01 */	li r3, 1
/* 80C49B34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C49B38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C49B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C49B40  7C 08 03 A6 */	mtlr r0
/* 80C49B44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C49B48  4E 80 00 20 */	blr 
