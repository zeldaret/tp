lbl_805792E4:
/* 805792E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805792E8  7C 08 02 A6 */	mflr r0
/* 805792EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805792F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805792F4  93 C1 00 08 */	stw r30, 8(r1)
/* 805792F8  7C 7E 1B 78 */	mr r30, r3
/* 805792FC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80579300  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80579304  38 80 00 10 */	li r4, 0x10
/* 80579308  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8057930C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80579310  4B C2 A4 B5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80579314  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80579318  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8057931C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80579320  80 84 00 04 */	lwz r4, 4(r4)
/* 80579324  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80579328  4B C2 BA 79 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8057932C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80579330  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80579334  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80579338  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8057933C  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80579340  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80579344  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80579348  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8057934C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80579350  4B A9 49 75 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80579354  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80579358  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057935C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80579360  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80579364  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80579368  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8057936C  38 60 00 01 */	li r3, 1
/* 80579370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80579374  83 C1 00 08 */	lwz r30, 8(r1)
/* 80579378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057937C  7C 08 03 A6 */	mtlr r0
/* 80579380  38 21 00 10 */	addi r1, r1, 0x10
/* 80579384  4E 80 00 20 */	blr 
