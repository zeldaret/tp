lbl_80C696BC:
/* 80C696BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C696C0  7C 08 02 A6 */	mflr r0
/* 80C696C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C696C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C696CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C696D0  7C 7E 1B 78 */	mr r30, r3
/* 80C696D4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C696D8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C696DC  38 80 00 10 */	li r4, 0x10
/* 80C696E0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C696E4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C696E8  4B 53 A0 DC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C696EC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C696F0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C696F4  80 9E 06 08 */	lwz r4, 0x608(r30)
/* 80C696F8  80 84 00 04 */	lwz r4, 4(r4)
/* 80C696FC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C69700  4B 53 B6 A0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C69704  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C69708  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C6970C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C69710  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C69714  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C69718  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C6971C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C69720  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C69724  80 7E 06 08 */	lwz r3, 0x608(r30)
/* 80C69728  4B 3A 45 9C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C6972C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C69730  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C69734  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C69738  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C6973C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C69740  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C69744  38 60 00 01 */	li r3, 1
/* 80C69748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6974C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C69750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C69754  7C 08 03 A6 */	mtlr r0
/* 80C69758  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6975C  4E 80 00 20 */	blr 
