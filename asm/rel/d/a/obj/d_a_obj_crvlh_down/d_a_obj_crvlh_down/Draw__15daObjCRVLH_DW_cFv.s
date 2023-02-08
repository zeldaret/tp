lbl_80BD4C44:
/* 80BD4C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD4C48  7C 08 02 A6 */	mflr r0
/* 80BD4C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD4C54  7C 7F 1B 78 */	mr r31, r3
/* 80BD4C58  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD4C5C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD4C60  38 80 00 10 */	li r4, 0x10
/* 80BD4C64  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BD4C68  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BD4C6C  4B 5C EB 59 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BD4C70  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD4C74  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD4C78  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80BD4C7C  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD4C80  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BD4C84  4B 5D 01 1D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BD4C88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD4C8C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD4C90  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BD4C94  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BD4C98  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BD4C9C  90 03 00 48 */	stw r0, 0x48(r3)
/* 80BD4CA0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BD4CA4  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80BD4CA8  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80BD4CAC  4B 43 90 19 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BD4CB0  38 60 00 01 */	li r3, 1
/* 80BD4CB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD4CB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4CBC  7C 08 03 A6 */	mtlr r0
/* 80BD4CC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4CC4  4E 80 00 20 */	blr 
