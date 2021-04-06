lbl_80D049E4:
/* 80D049E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D049E8  7C 08 02 A6 */	mflr r0
/* 80D049EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D049F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D049F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D049F8  7C 7E 1B 78 */	mr r30, r3
/* 80D049FC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D04A00  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D04A04  38 80 00 10 */	li r4, 0x10
/* 80D04A08  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D04A0C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D04A10  4B 49 ED B5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D04A14  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D04A18  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D04A1C  80 9E 06 08 */	lwz r4, 0x608(r30)
/* 80D04A20  80 84 00 04 */	lwz r4, 4(r4)
/* 80D04A24  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D04A28  4B 4A 03 79 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D04A2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D04A30  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D04A34  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D04A38  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D04A3C  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D04A40  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D04A44  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D04A48  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D04A4C  80 7E 06 08 */	lwz r3, 0x608(r30)
/* 80D04A50  4B 30 92 75 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D04A54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D04A58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D04A5C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D04A60  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D04A64  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D04A68  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D04A6C  38 60 00 01 */	li r3, 1
/* 80D04A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D04A74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D04A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04A7C  7C 08 03 A6 */	mtlr r0
/* 80D04A80  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04A84  4E 80 00 20 */	blr 
