lbl_80CB2388:
/* 80CB2388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB238C  7C 08 02 A6 */	mflr r0
/* 80CB2390  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB2398  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB239C  7C 7E 1B 78 */	mr r30, r3
/* 80CB23A0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CB23A4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CB23A8  38 80 00 10 */	li r4, 0x10
/* 80CB23AC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CB23B0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CB23B4  4B 4F 14 11 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CB23B8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CB23BC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CB23C0  80 9E 05 C0 */	lwz r4, 0x5c0(r30)
/* 80CB23C4  80 84 00 04 */	lwz r4, 4(r4)
/* 80CB23C8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CB23CC  4B 4F 29 D5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CB23D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB23D4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB23D8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CB23DC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CB23E0  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CB23E4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CB23E8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CB23EC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CB23F0  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80CB23F4  4B 35 B8 D1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CB23F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB23FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB2400  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CB2404  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CB2408  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CB240C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CB2410  38 60 00 01 */	li r3, 1
/* 80CB2414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB2418  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB241C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2420  7C 08 03 A6 */	mtlr r0
/* 80CB2424  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB2428  4E 80 00 20 */	blr 
