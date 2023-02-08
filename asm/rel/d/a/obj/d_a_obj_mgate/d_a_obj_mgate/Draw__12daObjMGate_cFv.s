lbl_80593C4C:
/* 80593C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593C50  7C 08 02 A6 */	mflr r0
/* 80593C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593C58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80593C5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80593C60  7C 7F 1B 78 */	mr r31, r3
/* 80593C64  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80593C68  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80593C6C  38 80 00 10 */	li r4, 0x10
/* 80593C70  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80593C74  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80593C78  4B C0 FB 4D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80593C7C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80593C80  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80593C84  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80593C88  80 84 00 04 */	lwz r4, 4(r4)
/* 80593C8C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80593C90  4B C1 11 11 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80593C94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80593C98  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80593C9C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80593CA0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80593CA4  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80593CA8  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80593CAC  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80593CB0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80593CB4  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80593CB8  4B A7 A0 0D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80593CBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80593CC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80593CC4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80593CC8  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80593CCC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80593CD0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80593CD4  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 80593CD8  28 04 00 00 */	cmplwi r4, 0
/* 80593CDC  41 82 00 20 */	beq lbl_80593CFC
/* 80593CE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80593CE4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80593CE8  80 84 00 04 */	lwz r4, 4(r4)
/* 80593CEC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80593CF0  4B C1 10 B1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80593CF4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80593CF8  4B A7 9F CD */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80593CFC:
/* 80593CFC  38 60 00 01 */	li r3, 1
/* 80593D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80593D04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80593D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593D0C  7C 08 03 A6 */	mtlr r0
/* 80593D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80593D14  4E 80 00 20 */	blr 
