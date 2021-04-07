lbl_80CA7F1C:
/* 80CA7F1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA7F20  7C 08 02 A6 */	mflr r0
/* 80CA7F24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7F28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA7F2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA7F30  7C 7E 1B 78 */	mr r30, r3
/* 80CA7F34  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CA7F38  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CA7F3C  38 80 00 10 */	li r4, 0x10
/* 80CA7F40  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CA7F44  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CA7F48  4B 4F B8 7D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CA7F4C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CA7F50  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CA7F54  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80CA7F58  80 84 00 04 */	lwz r4, 4(r4)
/* 80CA7F5C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CA7F60  4B 4F CE 41 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CA7F64  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CA7F68  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CA7F6C  80 9E 05 AC */	lwz r4, 0x5ac(r30)
/* 80CA7F70  80 84 00 04 */	lwz r4, 4(r4)
/* 80CA7F74  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CA7F78  4B 4F CE 29 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CA7F7C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CA7F80  4B 50 4D A5 */	bl dKy_bg_MAxx_proc__FPv
/* 80CA7F84  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CA7F88  4B 36 5D 3D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CA7F8C  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80CA7F90  80 83 00 04 */	lwz r4, 4(r3)
/* 80CA7F94  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80CA7F98  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CA7F9C  38 84 00 58 */	addi r4, r4, 0x58
/* 80CA7FA0  4B 36 57 39 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CA7FA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA7FA8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA7FAC  80 04 5F A0 */	lwz r0, 0x5fa0(r4)
/* 80CA7FB0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CA7FB4  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CA7FB8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CA7FBC  80 04 5F A4 */	lwz r0, 0x5fa4(r4)
/* 80CA7FC0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CA7FC4  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80CA7FC8  4B 50 4D 5D */	bl dKy_bg_MAxx_proc__FPv
/* 80CA7FCC  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80CA7FD0  4B 36 5C F5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CA7FD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA7FD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA7FDC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CA7FE0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CA7FE4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CA7FE8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CA7FEC  38 60 00 01 */	li r3, 1
/* 80CA7FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA7FF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA7FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA7FFC  7C 08 03 A6 */	mtlr r0
/* 80CA8000  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8004  4E 80 00 20 */	blr 
