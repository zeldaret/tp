lbl_805A7F0C:
/* 805A7F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7F10  7C 08 02 A6 */	mflr r0
/* 805A7F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7F18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7F1C  93 C1 00 08 */	stw r30, 8(r1)
/* 805A7F20  7C 7F 1B 78 */	mr r31, r3
/* 805A7F24  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805A7F28  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805A7F2C  38 80 00 00 */	li r4, 0
/* 805A7F30  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805A7F34  38 DF 01 0C */	addi r6, r31, 0x10c
/* 805A7F38  4B BF B8 8D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805A7F3C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805A7F40  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805A7F44  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 805A7F48  80 84 00 04 */	lwz r4, 4(r4)
/* 805A7F4C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805A7F50  4B BF CE 51 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805A7F54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A7F58  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A7F5C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 805A7F60  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 805A7F64  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 805A7F68  90 1E 00 48 */	stw r0, 0x48(r30)
/* 805A7F6C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 805A7F70  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 805A7F74  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 805A7F78  80 83 00 04 */	lwz r4, 4(r3)
/* 805A7F7C  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 805A7F80  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805A7F84  38 84 00 58 */	addi r4, r4, 0x58
/* 805A7F88  4B A6 58 21 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 805A7F8C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 805A7F90  80 83 00 04 */	lwz r4, 4(r3)
/* 805A7F94  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 805A7F98  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805A7F9C  38 84 00 58 */	addi r4, r4, 0x58
/* 805A7FA0  4B A6 57 39 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 805A7FA4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 805A7FA8  4B A6 5D 1D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 805A7FAC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 805A7FB0  80 63 00 04 */	lwz r3, 4(r3)
/* 805A7FB4  4B A6 5E D9 */	bl mDoExt_brkAnmRemove__FP12J3DModelData
/* 805A7FB8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 805A7FBC  80 63 00 04 */	lwz r3, 4(r3)
/* 805A7FC0  4B A6 5E 31 */	bl mDoExt_btkAnmRemove__FP12J3DModelData
/* 805A7FC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A7FC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A7FCC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 805A7FD0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 805A7FD4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 805A7FD8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 805A7FDC  38 60 00 01 */	li r3, 1
/* 805A7FE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7FE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A7FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7FEC  7C 08 03 A6 */	mtlr r0
/* 805A7FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7FF4  4E 80 00 20 */	blr 
