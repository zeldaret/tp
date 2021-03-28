lbl_80C567EC:
/* 80C567EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C567F0  7C 08 02 A6 */	mflr r0
/* 80C567F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C567F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C567FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C56800  7C 7E 1B 78 */	mr r30, r3
/* 80C56804  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C56808  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C5680C  38 80 00 40 */	li r4, 0x40
/* 80C56810  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C56814  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C56818  4B 54 CF AC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C5681C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C56820  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C56824  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80C56828  80 84 00 04 */	lwz r4, 4(r4)
/* 80C5682C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C56830  4B 54 E5 70 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C56834  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C56838  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C5683C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C56840  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C56844  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C56848  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C5684C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C56850  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C56854  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C56858  4B 3B 74 6C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C5685C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C56860  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C56864  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C56868  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C5686C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C56870  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C56874  38 60 00 01 */	li r3, 1
/* 80C56878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5687C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C56880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C56884  7C 08 03 A6 */	mtlr r0
/* 80C56888  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5688C  4E 80 00 20 */	blr 
