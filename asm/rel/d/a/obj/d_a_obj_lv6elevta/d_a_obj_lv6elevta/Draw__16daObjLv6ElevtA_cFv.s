lbl_80C83538:
/* 80C83538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8353C  7C 08 02 A6 */	mflr r0
/* 80C83540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C83548  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8354C  7C 7E 1B 78 */	mr r30, r3
/* 80C83550  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C83554  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C83558  38 80 00 10 */	li r4, 0x10
/* 80C8355C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C83560  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C83564  4B 52 02 61 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C83568  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C8356C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C83570  80 9E 06 18 */	lwz r4, 0x618(r30)
/* 80C83574  80 84 00 04 */	lwz r4, 4(r4)
/* 80C83578  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C8357C  4B 52 18 25 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C83580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C83584  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C83588  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C8358C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C83590  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C83594  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C83598  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C8359C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C835A0  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 80C835A4  4B 38 A7 21 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C835A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C835AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C835B0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C835B4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C835B8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C835BC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C835C0  38 60 00 01 */	li r3, 1
/* 80C835C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C835C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C835CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C835D0  7C 08 03 A6 */	mtlr r0
/* 80C835D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C835D8  4E 80 00 20 */	blr 
