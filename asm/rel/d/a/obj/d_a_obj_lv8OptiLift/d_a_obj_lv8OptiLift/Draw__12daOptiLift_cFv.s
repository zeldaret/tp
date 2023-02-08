lbl_80C8B66C:
/* 80C8B66C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C8B670  7C 08 02 A6 */	mflr r0
/* 80C8B674  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C8B678  39 61 00 50 */	addi r11, r1, 0x50
/* 80C8B67C  4B 6D 6B 55 */	bl _savegpr_26
/* 80C8B680  7C 7E 1B 78 */	mr r30, r3
/* 80C8B684  3C 60 80 C9 */	lis r3, lit_3661@ha /* 0x80C8B9AC@ha */
/* 80C8B688  3B 63 B9 AC */	addi r27, r3, lit_3661@l /* 0x80C8B9AC@l */
/* 80C8B68C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C8B690  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C8B694  38 80 00 10 */	li r4, 0x10
/* 80C8B698  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C8B69C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C8B6A0  4B 51 81 25 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C8B6A4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C8B6A8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C8B6AC  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C8B6B0  80 84 00 04 */	lwz r4, 4(r4)
/* 80C8B6B4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C8B6B8  4B 51 96 E9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C8B6BC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8B6C0  83 43 00 04 */	lwz r26, 4(r3)
/* 80C8B6C4  80 7A 00 60 */	lwz r3, 0x60(r26)
/* 80C8B6C8  83 E3 00 00 */	lwz r31, 0(r3)
/* 80C8B6CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8B6D0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8B6D4  80 04 5F 78 */	lwz r0, 0x5f78(r4)
/* 80C8B6D8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C8B6DC  3B 83 4A C8 */	addi r28, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C8B6E0  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80C8B6E4  80 04 5F 7C */	lwz r0, 0x5f7c(r4)
/* 80C8B6E8  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80C8B6EC  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80C8B6F0  38 80 00 01 */	li r4, 1
/* 80C8B6F4  81 83 00 00 */	lwz r12, 0(r3)
/* 80C8B6F8  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C8B6FC  7D 89 03 A6 */	mtctr r12
/* 80C8B700  4E 80 04 21 */	bctrl 
/* 80C8B704  28 03 00 00 */	cmplwi r3, 0
/* 80C8B708  41 82 00 8C */	beq lbl_80C8B794
/* 80C8B70C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80C8B710  38 80 00 01 */	li r4, 1
/* 80C8B714  81 83 00 00 */	lwz r12, 0(r3)
/* 80C8B718  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C8B71C  7D 89 03 A6 */	mtctr r12
/* 80C8B720  4E 80 04 21 */	bctrl 
/* 80C8B724  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C8B728  41 82 00 6C */	beq lbl_80C8B794
/* 80C8B72C  38 61 00 08 */	addi r3, r1, 8
/* 80C8B730  C0 3B 00 88 */	lfs f1, 0x88(r27)
/* 80C8B734  C0 5B 00 8C */	lfs f2, 0x8c(r27)
/* 80C8B738  FC 60 10 90 */	fmr f3, f2
/* 80C8B73C  FC 80 08 90 */	fmr f4, f1
/* 80C8B740  C0 BB 00 44 */	lfs f5, 0x44(r27)
/* 80C8B744  FC C0 28 90 */	fmr f6, f5
/* 80C8B748  C0 FB 00 48 */	lfs f7, 0x48(r27)
/* 80C8B74C  FD 00 38 90 */	fmr f8, f7
/* 80C8B750  4B 6B B5 95 */	bl C_MTXLightOrtho
/* 80C8B754  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8B758  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8B75C  38 80 40 00 */	li r4, 0x4000
/* 80C8B760  4B 38 0B E5 */	bl mDoMtx_XrotS__FPA4_fs
/* 80C8B764  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C8B768  FC 20 00 50 */	fneg f1, f0
/* 80C8B76C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C8B770  FC 40 00 50 */	fneg f2, f0
/* 80C8B774  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C8B778  FC 60 00 50 */	fneg f3, f0
/* 80C8B77C  4B 38 16 21 */	bl transM__14mDoMtx_stack_cFfff
/* 80C8B780  38 61 00 08 */	addi r3, r1, 8
/* 80C8B784  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8B788  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8B78C  38 BD 00 24 */	addi r5, r29, 0x24
/* 80C8B790  4B 6B AD 55 */	bl PSMTXConcat
lbl_80C8B794:
/* 80C8B794  C0 3E 05 BC */	lfs f1, 0x5bc(r30)
/* 80C8B798  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80C8B79C  38 9A 00 58 */	addi r4, r26, 0x58
/* 80C8B7A0  4B 38 1F 39 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C8B7A4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8B7A8  4B 38 25 1D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C8B7AC  38 7A 00 58 */	addi r3, r26, 0x58
/* 80C8B7B0  80 9E 05 C0 */	lwz r4, 0x5c0(r30)
/* 80C8B7B4  4B 6A 40 01 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80C8B7B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8B7BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8B7C0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C8B7C4  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80C8B7C8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C8B7CC  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80C8B7D0  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80C8B7D4  38 80 00 01 */	li r4, 1
/* 80C8B7D8  81 83 00 00 */	lwz r12, 0(r3)
/* 80C8B7DC  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80C8B7E0  7D 89 03 A6 */	mtctr r12
/* 80C8B7E4  4E 80 04 21 */	bctrl 
/* 80C8B7E8  3C 80 80 C9 */	lis r4, l_HIO@ha /* 0x80C8BBEC@ha */
/* 80C8B7EC  38 84 BB EC */	addi r4, r4, l_HIO@l /* 0x80C8BBEC@l */
/* 80C8B7F0  88 04 00 07 */	lbz r0, 7(r4)
/* 80C8B7F4  98 03 00 00 */	stb r0, 0(r3)
/* 80C8B7F8  88 04 00 08 */	lbz r0, 8(r4)
/* 80C8B7FC  98 03 00 01 */	stb r0, 1(r3)
/* 80C8B800  88 04 00 09 */	lbz r0, 9(r4)
/* 80C8B804  98 03 00 02 */	stb r0, 2(r3)
/* 80C8B808  38 60 00 01 */	li r3, 1
/* 80C8B80C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C8B810  4B 6D 6A 0D */	bl _restgpr_26
/* 80C8B814  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C8B818  7C 08 03 A6 */	mtlr r0
/* 80C8B81C  38 21 00 50 */	addi r1, r1, 0x50
/* 80C8B820  4E 80 00 20 */	blr 
