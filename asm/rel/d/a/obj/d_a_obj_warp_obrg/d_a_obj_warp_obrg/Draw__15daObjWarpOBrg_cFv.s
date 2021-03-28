lbl_80D2B5C8:
/* 80D2B5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2B5CC  7C 08 02 A6 */	mflr r0
/* 80D2B5D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2B5D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2B5D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2B5DC  7C 7F 1B 78 */	mr r31, r3
/* 80D2B5E0  88 03 04 99 */	lbz r0, 0x499(r3)
/* 80D2B5E4  28 00 00 01 */	cmplwi r0, 1
/* 80D2B5E8  40 82 00 20 */	bne lbl_80D2B608
/* 80D2B5EC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D2B5F0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D2B5F4  38 80 00 20 */	li r4, 0x20
/* 80D2B5F8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D2B5FC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D2B600  4B 47 81 C4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D2B604  48 00 00 1C */	b lbl_80D2B620
lbl_80D2B608:
/* 80D2B608  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D2B60C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D2B610  38 80 00 10 */	li r4, 0x10
/* 80D2B614  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D2B618  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D2B61C  4B 47 81 A8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_80D2B620:
/* 80D2B620  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D2B624  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D2B628  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D2B62C  80 84 00 04 */	lwz r4, 4(r4)
/* 80D2B630  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D2B634  4B 47 97 6C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D2B638  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2B63C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D2B640  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D2B644  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D2B648  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80D2B64C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D2B650  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D2B654  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D2B658  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D2B65C  80 83 00 04 */	lwz r4, 4(r3)
/* 80D2B660  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2B664  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D2B668  4B 2E 23 64 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80D2B66C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D2B670  80 83 00 04 */	lwz r4, 4(r3)
/* 80D2B674  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D2B678  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D2B67C  38 84 00 58 */	addi r4, r4, 0x58
/* 80D2B680  4B 2E 20 58 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D2B684  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D2B688  4B 2E 26 3C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D2B68C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2B690  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D2B694  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D2B698  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D2B69C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D2B6A0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D2B6A4  38 60 00 01 */	li r3, 1
/* 80D2B6A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2B6AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2B6B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2B6B4  7C 08 03 A6 */	mtlr r0
/* 80D2B6B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2B6BC  4E 80 00 20 */	blr 
