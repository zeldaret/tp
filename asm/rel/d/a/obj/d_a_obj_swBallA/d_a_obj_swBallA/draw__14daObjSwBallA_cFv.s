lbl_80CF406C:
/* 80CF406C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CF4070  7C 08 02 A6 */	mflr r0
/* 80CF4074  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CF4078  39 61 00 50 */	addi r11, r1, 0x50
/* 80CF407C  4B 66 E1 5C */	b _savegpr_28
/* 80CF4080  7C 7E 1B 78 */	mr r30, r3
/* 80CF4084  3C 60 80 CF */	lis r3, l_color@ha
/* 80CF4088  3B 83 43 E4 */	addi r28, r3, l_color@l
/* 80CF408C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF4090  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF4094  38 80 00 00 */	li r4, 0
/* 80CF4098  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CF409C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CF40A0  4B 4A F7 24 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CF40A4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF40A8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF40AC  80 9E 05 84 */	lwz r4, 0x584(r30)
/* 80CF40B0  80 84 00 04 */	lwz r4, 4(r4)
/* 80CF40B4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CF40B8  4B 4B 0C E8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CF40BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF40C0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CF40C4  80 04 5F 78 */	lwz r0, 0x5f78(r4)
/* 80CF40C8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CF40CC  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80CF40D0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CF40D4  80 04 5F 7C */	lwz r0, 0x5f7c(r4)
/* 80CF40D8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CF40DC  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80CF40E0  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF40E4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80CF40E8  83 A3 00 00 */	lwz r29, 0(r3)
/* 80CF40EC  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80CF40F0  38 80 00 01 */	li r4, 1
/* 80CF40F4  81 83 00 00 */	lwz r12, 0(r3)
/* 80CF40F8  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80CF40FC  7D 89 03 A6 */	mtctr r12
/* 80CF4100  4E 80 04 21 */	bctrl 
/* 80CF4104  28 03 00 00 */	cmplwi r3, 0
/* 80CF4108  41 82 00 8C */	beq lbl_80CF4194
/* 80CF410C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80CF4110  38 80 00 01 */	li r4, 1
/* 80CF4114  81 83 00 00 */	lwz r12, 0(r3)
/* 80CF4118  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80CF411C  7D 89 03 A6 */	mtctr r12
/* 80CF4120  4E 80 04 21 */	bctrl 
/* 80CF4124  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CF4128  41 82 00 6C */	beq lbl_80CF4194
/* 80CF412C  38 61 00 08 */	addi r3, r1, 8
/* 80CF4130  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80CF4134  C0 5C 00 0C */	lfs f2, 0xc(r28)
/* 80CF4138  FC 60 10 90 */	fmr f3, f2
/* 80CF413C  FC 80 08 90 */	fmr f4, f1
/* 80CF4140  C0 BC 00 20 */	lfs f5, 0x20(r28)
/* 80CF4144  FC C0 28 90 */	fmr f6, f5
/* 80CF4148  C0 FC 00 10 */	lfs f7, 0x10(r28)
/* 80CF414C  FD 00 38 90 */	fmr f8, f7
/* 80CF4150  4B 65 2B 94 */	b C_MTXLightOrtho
/* 80CF4154  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF4158  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF415C  38 80 40 00 */	li r4, 0x4000
/* 80CF4160  4B 31 81 E4 */	b mDoMtx_XrotS__FPA4_fs
/* 80CF4164  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CF4168  FC 20 00 50 */	fneg f1, f0
/* 80CF416C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CF4170  FC 40 00 50 */	fneg f2, f0
/* 80CF4174  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CF4178  FC 60 00 50 */	fneg f3, f0
/* 80CF417C  4B 31 8C 20 */	b transM__14mDoMtx_stack_cFfff
/* 80CF4180  38 61 00 08 */	addi r3, r1, 8
/* 80CF4184  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80CF4188  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80CF418C  38 BD 00 24 */	addi r5, r29, 0x24
/* 80CF4190  4B 65 23 54 */	b PSMTXConcat
lbl_80CF4194:
/* 80CF4194  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80CF4198  80 83 00 04 */	lwz r4, 4(r3)
/* 80CF419C  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 80CF41A0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CF41A4  38 84 00 58 */	addi r4, r4, 0x58
/* 80CF41A8  4B 31 95 30 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CF41AC  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80CF41B0  4B 31 9B 14 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CF41B4  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80CF41B8  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF41BC  4B 31 9C 34 */	b mDoExt_btkAnmRemove__FP12J3DModelData
/* 80CF41C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF41C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF41C8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CF41CC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CF41D0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CF41D4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CF41D8  38 60 00 01 */	li r3, 1
/* 80CF41DC  39 61 00 50 */	addi r11, r1, 0x50
/* 80CF41E0  4B 66 E0 44 */	b _restgpr_28
/* 80CF41E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CF41E8  7C 08 03 A6 */	mtlr r0
/* 80CF41EC  38 21 00 50 */	addi r1, r1, 0x50
/* 80CF41F0  4E 80 00 20 */	blr 
