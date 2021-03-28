lbl_80C5B578:
/* 80C5B578  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C5B57C  7C 08 02 A6 */	mflr r0
/* 80C5B580  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C5B584  39 61 00 50 */	addi r11, r1, 0x50
/* 80C5B588  4B 70 6C 50 */	b _savegpr_28
/* 80C5B58C  7C 7D 1B 78 */	mr r29, r3
/* 80C5B590  3C 60 80 C6 */	lis r3, lit_3724@ha
/* 80C5B594  3B C3 BD 50 */	addi r30, r3, lit_3724@l
/* 80C5B598  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C5B59C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C5B5A0  38 80 00 10 */	li r4, 0x10
/* 80C5B5A4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C5B5A8  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80C5B5AC  4B 54 82 18 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C5B5B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C5B5B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C5B5B8  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80C5B5BC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C5B5C0  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80C5B5C4  4B 54 97 DC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C5B5C8  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80C5B5CC  80 83 00 04 */	lwz r4, 4(r3)
/* 80C5B5D0  80 7D 05 7C */	lwz r3, 0x57c(r29)
/* 80C5B5D4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C5B5D8  38 84 00 58 */	addi r4, r4, 0x58
/* 80C5B5DC  4B 3B 20 FC */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C5B5E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5B5E4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C5B5E8  80 04 5F A0 */	lwz r0, 0x5fa0(r4)
/* 80C5B5EC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C5B5F0  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C5B5F4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C5B5F8  80 04 5F A4 */	lwz r0, 0x5fa4(r4)
/* 80C5B5FC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C5B600  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80C5B604  80 63 00 04 */	lwz r3, 4(r3)
/* 80C5B608  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80C5B60C  83 83 00 00 */	lwz r28, 0(r3)
/* 80C5B610  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80C5B614  38 80 00 00 */	li r4, 0
/* 80C5B618  81 83 00 00 */	lwz r12, 0(r3)
/* 80C5B61C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C5B620  7D 89 03 A6 */	mtctr r12
/* 80C5B624  4E 80 04 21 */	bctrl 
/* 80C5B628  28 03 00 00 */	cmplwi r3, 0
/* 80C5B62C  41 82 00 74 */	beq lbl_80C5B6A0
/* 80C5B630  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80C5B634  38 80 00 00 */	li r4, 0
/* 80C5B638  81 83 00 00 */	lwz r12, 0(r3)
/* 80C5B63C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C5B640  7D 89 03 A6 */	mtctr r12
/* 80C5B644  4E 80 04 21 */	bctrl 
/* 80C5B648  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C5B64C  41 82 00 54 */	beq lbl_80C5B6A0
/* 80C5B650  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5B654  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5B658  80 83 61 B0 */	lwz r4, 0x61b0(r3)
/* 80C5B65C  38 61 00 08 */	addi r3, r1, 8
/* 80C5B660  C0 24 00 D0 */	lfs f1, 0xd0(r4)
/* 80C5B664  C0 44 00 D4 */	lfs f2, 0xd4(r4)
/* 80C5B668  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80C5B66C  FC 80 18 90 */	fmr f4, f3
/* 80C5B670  C0 BE 00 04 */	lfs f5, 4(r30)
/* 80C5B674  C0 DE 00 08 */	lfs f6, 8(r30)
/* 80C5B678  4B 6E B5 A0 */	b C_MTXLightPerspective
/* 80C5B67C  7F 83 E3 78 */	mr r3, r28
/* 80C5B680  38 81 00 08 */	addi r4, r1, 8
/* 80C5B684  4B 6C A1 10 */	b setEffectMtx__13J3DTexMtxInfoFPA4_f
/* 80C5B688  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80C5B68C  80 63 00 04 */	lwz r3, 4(r3)
/* 80C5B690  38 80 00 00 */	li r4, 0
/* 80C5B694  3C A0 80 3A */	lis r5, j3dDefaultMtx@ha
/* 80C5B698  38 A5 1E 5C */	addi r5, r5, j3dDefaultMtx@l
/* 80C5B69C  4B 6C A9 70 */	b simpleCalcMaterial__12J3DModelDataFUsPA4_f
lbl_80C5B6A0:
/* 80C5B6A0  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80C5B6A4  4B 3B 26 20 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C5B6A8  80 9D 05 80 */	lwz r4, 0x580(r29)
/* 80C5B6AC  28 04 00 00 */	cmplwi r4, 0
/* 80C5B6B0  41 82 00 50 */	beq lbl_80C5B700
/* 80C5B6B4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C5B6B8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C5B6BC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C5B6C0  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80C5B6C4  4B 54 96 DC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C5B6C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5B6CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5B6D0  80 03 5F 70 */	lwz r0, 0x5f70(r3)
/* 80C5B6D4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C5B6D8  80 03 5F 74 */	lwz r0, 0x5f74(r3)
/* 80C5B6DC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C5B6E0  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 80C5B6E4  4B 3B 25 E0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C5B6E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5B6EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5B6F0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C5B6F4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C5B6F8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C5B6FC  90 1F 00 4C */	stw r0, 0x4c(r31)
lbl_80C5B700:
/* 80C5B700  38 60 00 01 */	li r3, 1
/* 80C5B704  39 61 00 50 */	addi r11, r1, 0x50
/* 80C5B708  4B 70 6B 1C */	b _restgpr_28
/* 80C5B70C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C5B710  7C 08 03 A6 */	mtlr r0
/* 80C5B714  38 21 00 50 */	addi r1, r1, 0x50
/* 80C5B718  4E 80 00 20 */	blr 
