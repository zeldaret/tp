lbl_80C290AC:
/* 80C290AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C290B0  7C 08 02 A6 */	mflr r0
/* 80C290B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C290B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C290BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C290C0  7C 7E 1B 78 */	mr r30, r3
/* 80C290C4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C290C8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C290CC  38 80 00 10 */	li r4, 0x10
/* 80C290D0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C290D4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C290D8  4B 57 A6 EC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C290DC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C290E0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C290E4  80 9E 06 24 */	lwz r4, 0x624(r30)
/* 80C290E8  80 84 00 04 */	lwz r4, 4(r4)
/* 80C290EC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C290F0  4B 57 BC B0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C290F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C290F8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C290FC  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C29100  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C29104  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C29108  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C2910C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C29110  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C29114  80 7E 06 24 */	lwz r3, 0x624(r30)
/* 80C29118  4B 3E 4B AC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C2911C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C29120  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C29124  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C29128  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C2912C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C29130  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C29134  38 60 00 01 */	li r3, 1
/* 80C29138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2913C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C29140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C29144  7C 08 03 A6 */	mtlr r0
/* 80C29148  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2914C  4E 80 00 20 */	blr 
