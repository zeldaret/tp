lbl_80C882C8:
/* 80C882C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C882CC  7C 08 02 A6 */	mflr r0
/* 80C882D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C882D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C882D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C882DC  7C 7E 1B 78 */	mr r30, r3
/* 80C882E0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C882E4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C882E8  38 80 00 10 */	li r4, 0x10
/* 80C882EC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C882F0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C882F4  4B 51 B4 D0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C882F8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C882FC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C88300  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C88304  80 84 00 04 */	lwz r4, 4(r4)
/* 80C88308  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C8830C  4B 51 CA 94 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C88310  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C88314  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C88318  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C8831C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C88320  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C88324  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C88328  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C8832C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C88330  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C88334  4B 38 59 90 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C88338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C8833C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C88340  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C88344  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C88348  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C8834C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C88350  38 60 00 01 */	li r3, 1
/* 80C88354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C88358  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8835C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C88360  7C 08 03 A6 */	mtlr r0
/* 80C88364  38 21 00 10 */	addi r1, r1, 0x10
/* 80C88368  4E 80 00 20 */	blr 
