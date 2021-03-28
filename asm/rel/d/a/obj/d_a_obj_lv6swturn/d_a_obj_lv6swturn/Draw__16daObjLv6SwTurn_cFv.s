lbl_80C844F8:
/* 80C844F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C844FC  7C 08 02 A6 */	mflr r0
/* 80C84500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C84504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C84508  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8450C  7C 7E 1B 78 */	mr r30, r3
/* 80C84510  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C84514  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C84518  38 80 00 10 */	li r4, 0x10
/* 80C8451C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C84520  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C84524  4B 51 F2 A0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C84528  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C8452C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C84530  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C84534  80 84 00 04 */	lwz r4, 4(r4)
/* 80C84538  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C8453C  4B 52 08 64 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C84540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C84544  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C84548  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C8454C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C84550  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C84554  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C84558  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C8455C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C84560  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C84564  4B 38 97 60 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C84568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C8456C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C84570  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C84574  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C84578  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C8457C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C84580  38 60 00 01 */	li r3, 1
/* 80C84584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C84588  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8458C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C84590  7C 08 03 A6 */	mtlr r0
/* 80C84594  38 21 00 10 */	addi r1, r1, 0x10
/* 80C84598  4E 80 00 20 */	blr 
