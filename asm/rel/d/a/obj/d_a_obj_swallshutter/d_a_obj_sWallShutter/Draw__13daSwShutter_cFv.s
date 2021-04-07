lbl_80598D5C:
/* 80598D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80598D60  7C 08 02 A6 */	mflr r0
/* 80598D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80598D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80598D6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80598D70  7C 7E 1B 78 */	mr r30, r3
/* 80598D74  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80598D78  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80598D7C  38 80 00 10 */	li r4, 0x10
/* 80598D80  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80598D84  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80598D88  4B C0 AA 3D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80598D8C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80598D90  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80598D94  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80598D98  80 84 00 04 */	lwz r4, 4(r4)
/* 80598D9C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80598DA0  4B C0 C0 01 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80598DA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80598DA8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80598DAC  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80598DB0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80598DB4  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80598DB8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80598DBC  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80598DC0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80598DC4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80598DC8  4B A7 4E FD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80598DCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80598DD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80598DD4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80598DD8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80598DDC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80598DE0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80598DE4  38 60 00 01 */	li r3, 1
/* 80598DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80598DEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80598DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80598DF4  7C 08 03 A6 */	mtlr r0
/* 80598DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80598DFC  4E 80 00 20 */	blr 
