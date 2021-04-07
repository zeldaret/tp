lbl_80C27400:
/* 80C27400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C27404  7C 08 02 A6 */	mflr r0
/* 80C27408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2740C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C27410  93 C1 00 08 */	stw r30, 8(r1)
/* 80C27414  7C 7E 1B 78 */	mr r30, r3
/* 80C27418  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C2741C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C27420  38 80 00 10 */	li r4, 0x10
/* 80C27424  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C27428  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C2742C  4B 57 C3 99 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C27430  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C27434  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C27438  80 9E 06 20 */	lwz r4, 0x620(r30)
/* 80C2743C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C27440  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C27444  4B 57 D9 5D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C27448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2744C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C27450  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C27454  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C27458  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C2745C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C27460  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C27464  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C27468  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 80C2746C  4B 3E 68 59 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C27470  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C27474  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C27478  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C2747C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C27480  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C27484  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C27488  38 60 00 01 */	li r3, 1
/* 80C2748C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C27490  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C27494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C27498  7C 08 03 A6 */	mtlr r0
/* 80C2749C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C274A0  4E 80 00 20 */	blr 
