lbl_80B9E388:
/* 80B9E388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9E38C  7C 08 02 A6 */	mflr r0
/* 80B9E390  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9E394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9E398  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9E39C  7C 7F 1B 78 */	mr r31, r3
/* 80B9E3A0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B9E3A4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80B9E3A8  38 80 00 10 */	li r4, 0x10
/* 80B9E3AC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80B9E3B0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80B9E3B4  4B 60 54 10 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B9E3B8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B9E3BC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80B9E3C0  88 1F 09 84 */	lbz r0, 0x984(r31)
/* 80B9E3C4  54 00 10 3A */	slwi r0, r0, 2
/* 80B9E3C8  7C 9F 02 14 */	add r4, r31, r0
/* 80B9E3CC  80 84 05 C0 */	lwz r4, 0x5c0(r4)
/* 80B9E3D0  80 84 00 04 */	lwz r4, 4(r4)
/* 80B9E3D4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80B9E3D8  4B 60 69 C8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B9E3DC  88 1F 09 8C */	lbz r0, 0x98c(r31)
/* 80B9E3E0  28 00 00 00 */	cmplwi r0, 0
/* 80B9E3E4  40 82 00 20 */	bne lbl_80B9E404
/* 80B9E3E8  88 1F 09 84 */	lbz r0, 0x984(r31)
/* 80B9E3EC  54 00 10 3A */	slwi r0, r0, 2
/* 80B9E3F0  7C 7F 02 14 */	add r3, r31, r0
/* 80B9E3F4  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80B9E3F8  80 83 00 04 */	lwz r4, 4(r3)
/* 80B9E3FC  7F E3 FB 78 */	mr r3, r31
/* 80B9E400  4B 47 F0 2C */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
lbl_80B9E404:
/* 80B9E404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9E408  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80B9E40C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80B9E410  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80B9E414  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80B9E418  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80B9E41C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80B9E420  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80B9E424  88 1F 09 94 */	lbz r0, 0x994(r31)
/* 80B9E428  28 00 00 00 */	cmplwi r0, 0
/* 80B9E42C  41 82 00 18 */	beq lbl_80B9E444
/* 80B9E430  88 1F 09 84 */	lbz r0, 0x984(r31)
/* 80B9E434  54 00 10 3A */	slwi r0, r0, 2
/* 80B9E438  7C 7F 02 14 */	add r3, r31, r0
/* 80B9E43C  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80B9E440  4B 46 F8 84 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80B9E444:
/* 80B9E444  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9E448  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9E44C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80B9E450  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80B9E454  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80B9E458  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80B9E45C  38 60 00 01 */	li r3, 1
/* 80B9E460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9E464  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9E468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9E46C  7C 08 03 A6 */	mtlr r0
/* 80B9E470  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9E474  4E 80 00 20 */	blr 
