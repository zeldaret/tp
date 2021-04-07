lbl_80C6C374:
/* 80C6C374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C378  7C 08 02 A6 */	mflr r0
/* 80C6C37C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6C384  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6C388  7C 7F 1B 78 */	mr r31, r3
/* 80C6C38C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C6C390  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C6C394  38 80 00 10 */	li r4, 0x10
/* 80C6C398  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C6C39C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C6C3A0  4B 53 74 25 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C6C3A4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C6C3A8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C6C3AC  88 1F 08 65 */	lbz r0, 0x865(r31)
/* 80C6C3B0  54 00 10 3A */	slwi r0, r0, 2
/* 80C6C3B4  7C 9F 02 14 */	add r4, r31, r0
/* 80C6C3B8  80 84 08 5C */	lwz r4, 0x85c(r4)
/* 80C6C3BC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C6C3C0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C6C3C4  4B 53 89 DD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C6C3C8  88 1F 08 65 */	lbz r0, 0x865(r31)
/* 80C6C3CC  54 00 10 3A */	slwi r0, r0, 2
/* 80C6C3D0  7C 7F 02 14 */	add r3, r31, r0
/* 80C6C3D4  80 63 08 5C */	lwz r3, 0x85c(r3)
/* 80C6C3D8  80 83 00 04 */	lwz r4, 4(r3)
/* 80C6C3DC  7F E3 FB 78 */	mr r3, r31
/* 80C6C3E0  4B 3B 10 4D */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80C6C3E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6C3E8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6C3EC  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C6C3F0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C6C3F4  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C6C3F8  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C6C3FC  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C6C400  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C6C404  88 1F 08 65 */	lbz r0, 0x865(r31)
/* 80C6C408  54 00 10 3A */	slwi r0, r0, 2
/* 80C6C40C  7C 7F 02 14 */	add r3, r31, r0
/* 80C6C410  80 63 08 5C */	lwz r3, 0x85c(r3)
/* 80C6C414  4B 3A 18 B1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C6C418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6C41C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6C420  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C6C424  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C6C428  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C6C42C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C6C430  38 60 00 01 */	li r3, 1
/* 80C6C434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6C438  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6C43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C440  7C 08 03 A6 */	mtlr r0
/* 80C6C444  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C448  4E 80 00 20 */	blr 
