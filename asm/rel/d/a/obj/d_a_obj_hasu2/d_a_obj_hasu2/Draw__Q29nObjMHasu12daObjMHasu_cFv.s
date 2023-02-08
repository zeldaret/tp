lbl_80C18600:
/* 80C18600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18604  7C 08 02 A6 */	mflr r0
/* 80C18608  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1860C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C18610  93 C1 00 08 */	stw r30, 8(r1)
/* 80C18614  7C 7E 1B 78 */	mr r30, r3
/* 80C18618  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C1861C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C18620  38 80 00 10 */	li r4, 0x10
/* 80C18624  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C18628  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C1862C  4B 58 B1 99 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C18630  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C18634  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C18638  80 9E 06 08 */	lwz r4, 0x608(r30)
/* 80C1863C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C18640  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C18644  4B 58 C7 5D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C18648  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1864C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C18650  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C18654  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C18658  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C1865C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C18660  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C18664  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C18668  80 7E 06 08 */	lwz r3, 0x608(r30)
/* 80C1866C  4B 3F 56 59 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C18670  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C18674  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C18678  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C1867C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C18680  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C18684  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C18688  38 60 00 01 */	li r3, 1
/* 80C1868C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C18690  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C18694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18698  7C 08 03 A6 */	mtlr r0
/* 80C1869C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C186A0  4E 80 00 20 */	blr 
