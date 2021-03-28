lbl_80BDD214:
/* 80BDD214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD218  7C 08 02 A6 */	mflr r0
/* 80BDD21C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDD224  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDD228  7C 7E 1B 78 */	mr r30, r3
/* 80BDD22C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BDD230  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BDD234  38 80 00 10 */	li r4, 0x10
/* 80BDD238  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BDD23C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BDD240  4B 5C 65 84 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BDD244  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BDD248  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BDD24C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80BDD250  80 84 00 04 */	lwz r4, 4(r4)
/* 80BDD254  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BDD258  4B 5C 7B 48 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BDD25C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDD260  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BDD264  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BDD268  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BDD26C  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BDD270  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BDD274  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BDD278  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BDD27C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BDD280  4B 43 0A 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BDD284  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDD288  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDD28C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BDD290  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BDD294  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BDD298  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BDD29C  38 60 00 01 */	li r3, 1
/* 80BDD2A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDD2A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDD2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD2AC  7C 08 03 A6 */	mtlr r0
/* 80BDD2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD2B4  4E 80 00 20 */	blr 
