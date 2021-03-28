lbl_80C6249C:
/* 80C6249C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C624A0  7C 08 02 A6 */	mflr r0
/* 80C624A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C624A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C624AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C624B0  7C 7E 1B 78 */	mr r30, r3
/* 80C624B4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C624B8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C624BC  38 80 00 10 */	li r4, 0x10
/* 80C624C0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C624C4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C624C8  4B 54 12 FC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C624CC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C624D0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C624D4  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C624D8  80 84 00 04 */	lwz r4, 4(r4)
/* 80C624DC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C624E0  4B 54 28 C0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C624E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C624E8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C624EC  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C624F0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C624F4  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C624F8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C624FC  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C62500  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C62504  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C62508  4B 3A B7 BC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C6250C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C62510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C62514  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C62518  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C6251C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C62520  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C62524  38 60 00 01 */	li r3, 1
/* 80C62528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6252C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C62530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C62534  7C 08 03 A6 */	mtlr r0
/* 80C62538  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6253C  4E 80 00 20 */	blr 
