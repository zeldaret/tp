lbl_80CB0658:
/* 80CB0658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB065C  7C 08 02 A6 */	mflr r0
/* 80CB0660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB0664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB0668  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB066C  7C 7F 1B 78 */	mr r31, r3
/* 80CB0670  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CB0674  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CB0678  38 80 00 10 */	li r4, 0x10
/* 80CB067C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CB0680  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CB0684  4B 4F 31 40 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CB0688  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CB068C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CB0690  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CB0694  80 84 00 04 */	lwz r4, 4(r4)
/* 80CB0698  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CB069C  4B 4F 47 04 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CB06A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB06A4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CB06A8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CB06AC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CB06B0  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80CB06B4  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CB06B8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CB06BC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CB06C0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CB06C4  4B 35 D6 00 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CB06C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB06CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB06D0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CB06D4  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CB06D8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CB06DC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CB06E0  80 1F 07 24 */	lwz r0, 0x724(r31)
/* 80CB06E4  28 00 00 00 */	cmplwi r0, 0
/* 80CB06E8  41 82 00 3C */	beq lbl_80CB0724
/* 80CB06EC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CB06F0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CB06F4  38 80 00 00 */	li r4, 0
/* 80CB06F8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CB06FC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CB0700  4B 4F 30 C4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CB0704  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CB0708  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CB070C  80 9F 07 24 */	lwz r4, 0x724(r31)
/* 80CB0710  80 84 00 04 */	lwz r4, 4(r4)
/* 80CB0714  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CB0718  4B 4F 46 88 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CB071C  80 7F 07 24 */	lwz r3, 0x724(r31)
/* 80CB0720  4B 35 D5 A4 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80CB0724:
/* 80CB0724  38 60 00 01 */	li r3, 1
/* 80CB0728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB072C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB0730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB0734  7C 08 03 A6 */	mtlr r0
/* 80CB0738  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB073C  4E 80 00 20 */	blr 
