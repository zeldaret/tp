lbl_8059D674:
/* 8059D674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D678  7C 08 02 A6 */	mflr r0
/* 8059D67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059D684  93 C1 00 08 */	stw r30, 8(r1)
/* 8059D688  7C 7E 1B 78 */	mr r30, r3
/* 8059D68C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8059D690  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8059D694  38 80 00 10 */	li r4, 0x10
/* 8059D698  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8059D69C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8059D6A0  4B C0 61 25 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8059D6A4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8059D6A8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8059D6AC  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8059D6B0  80 84 00 04 */	lwz r4, 4(r4)
/* 8059D6B4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8059D6B8  4B C0 76 E9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8059D6BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059D6C0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059D6C4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8059D6C8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8059D6CC  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 8059D6D0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8059D6D4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8059D6D8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8059D6DC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8059D6E0  4B A7 05 E5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8059D6E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059D6E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059D6EC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8059D6F0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8059D6F4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8059D6F8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8059D6FC  38 60 00 01 */	li r3, 1
/* 8059D700  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059D704  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059D708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D70C  7C 08 03 A6 */	mtlr r0
/* 8059D710  38 21 00 10 */	addi r1, r1, 0x10
/* 8059D714  4E 80 00 20 */	blr 
