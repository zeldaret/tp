lbl_80C46C1C:
/* 80C46C1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46C20  7C 08 02 A6 */	mflr r0
/* 80C46C24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46C28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C46C2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C46C30  7C 7E 1B 78 */	mr r30, r3
/* 80C46C34  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C46C38  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C46C3C  38 80 00 10 */	li r4, 0x10
/* 80C46C40  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C46C44  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C46C48  4B 55 CB 7D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C46C4C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C46C50  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C46C54  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C46C58  80 84 00 04 */	lwz r4, 4(r4)
/* 80C46C5C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C46C60  4B 55 E1 41 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C46C64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C46C68  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C46C6C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C46C70  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C46C74  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C46C78  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C46C7C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C46C80  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C46C84  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C46C88  4B 3C 70 3D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C46C8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C46C90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C46C94  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C46C98  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C46C9C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C46CA0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C46CA4  38 60 00 01 */	li r3, 1
/* 80C46CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C46CAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C46CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46CB4  7C 08 03 A6 */	mtlr r0
/* 80C46CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46CBC  4E 80 00 20 */	blr 
