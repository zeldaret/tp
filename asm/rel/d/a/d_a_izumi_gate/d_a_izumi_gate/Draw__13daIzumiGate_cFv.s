lbl_80849328:
/* 80849328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084932C  7C 08 02 A6 */	mflr r0
/* 80849330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80849334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80849338  93 C1 00 08 */	stw r30, 8(r1)
/* 8084933C  7C 7E 1B 78 */	mr r30, r3
/* 80849340  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80849344  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80849348  38 80 00 10 */	li r4, 0x10
/* 8084934C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80849350  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80849354  4B 95 A4 71 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80849358  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8084935C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80849360  80 9E 05 A0 */	lwz r4, 0x5a0(r30)
/* 80849364  80 84 00 04 */	lwz r4, 4(r4)
/* 80849368  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8084936C  4B 95 BA 35 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80849370  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80849374  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80849378  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8084937C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80849380  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80849384  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80849388  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8084938C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80849390  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80849394  4B 7C 49 31 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80849398  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084939C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808493A0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 808493A4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 808493A8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 808493AC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 808493B0  38 60 00 01 */	li r3, 1
/* 808493B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808493B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 808493BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808493C0  7C 08 03 A6 */	mtlr r0
/* 808493C4  38 21 00 10 */	addi r1, r1, 0x10
/* 808493C8  4E 80 00 20 */	blr 
