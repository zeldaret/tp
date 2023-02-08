lbl_80C7772C:
/* 80C7772C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C77730  7C 08 02 A6 */	mflr r0
/* 80C77734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C77738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7773C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C77740  7C 7F 1B 78 */	mr r31, r3
/* 80C77744  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C77748  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C7774C  38 80 00 10 */	li r4, 0x10
/* 80C77750  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C77754  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C77758  4B 52 C0 6D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C7775C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C77760  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C77764  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C77768  80 84 00 04 */	lwz r4, 4(r4)
/* 80C7776C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C77770  4B 52 D6 31 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C77774  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C77778  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C7777C  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80C77780  80 84 00 04 */	lwz r4, 4(r4)
/* 80C77784  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C77788  4B 52 D6 19 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C7778C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C77790  80 83 00 04 */	lwz r4, 4(r3)
/* 80C77794  7F E3 FB 78 */	mr r3, r31
/* 80C77798  4B 3A 5C 95 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80C7779C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80C777A0  80 83 00 04 */	lwz r4, 4(r3)
/* 80C777A4  7F E3 FB 78 */	mr r3, r31
/* 80C777A8  4B 3A 5C 85 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80C777AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C777B0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C777B4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C777B8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C777BC  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C777C0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C777C4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C777C8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C777CC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C777D0  4B 39 64 F5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C777D4  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80C777D8  4B 39 64 ED */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C777DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C777E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C777E4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C777E8  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C777EC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C777F0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C777F4  38 60 00 01 */	li r3, 1
/* 80C777F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C777FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C77800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C77804  7C 08 03 A6 */	mtlr r0
/* 80C77808  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7780C  4E 80 00 20 */	blr 
