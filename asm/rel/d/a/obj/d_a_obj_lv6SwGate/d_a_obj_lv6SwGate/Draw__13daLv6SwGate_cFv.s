lbl_80C7524C:
/* 80C7524C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C75250  7C 08 02 A6 */	mflr r0
/* 80C75254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C75258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7525C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C75260  7C 7E 1B 78 */	mr r30, r3
/* 80C75264  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C75268  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C7526C  38 80 00 10 */	li r4, 0x10
/* 80C75270  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C75274  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C75278  4B 52 E5 4D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C7527C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C75280  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C75284  80 9E 14 B4 */	lwz r4, 0x14b4(r30)
/* 80C75288  80 84 00 04 */	lwz r4, 4(r4)
/* 80C7528C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C75290  4B 52 FB 11 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C75294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C75298  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C7529C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C752A0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C752A4  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C752A8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C752AC  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C752B0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C752B4  80 7E 14 B4 */	lwz r3, 0x14b4(r30)
/* 80C752B8  4B 39 8A 0D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C752BC  80 7E 14 B8 */	lwz r3, 0x14b8(r30)
/* 80C752C0  4B 39 8A 05 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C752C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C752C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C752CC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C752D0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C752D4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C752D8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C752DC  38 60 00 01 */	li r3, 1
/* 80C752E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C752E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C752E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C752EC  7C 08 03 A6 */	mtlr r0
/* 80C752F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C752F4  4E 80 00 20 */	blr 
