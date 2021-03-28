lbl_80CF6A74:
/* 80CF6A74  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CF6A78  7C 08 02 A6 */	mflr r0
/* 80CF6A7C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CF6A80  39 61 00 50 */	addi r11, r1, 0x50
/* 80CF6A84  4B 66 B7 54 */	b _savegpr_28
/* 80CF6A88  7C 7E 1B 78 */	mr r30, r3
/* 80CF6A8C  3C 60 80 CF */	lis r3, l_color@ha
/* 80CF6A90  3B 83 6C D4 */	addi r28, r3, l_color@l
/* 80CF6A94  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF6A98  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF6A9C  38 80 00 00 */	li r4, 0
/* 80CF6AA0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CF6AA4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CF6AA8  4B 4A CD 1C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CF6AAC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF6AB0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF6AB4  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80CF6AB8  80 84 00 04 */	lwz r4, 4(r4)
/* 80CF6ABC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CF6AC0  4B 4A E2 E0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CF6AC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF6AC8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CF6ACC  80 04 5F 78 */	lwz r0, 0x5f78(r4)
/* 80CF6AD0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CF6AD4  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80CF6AD8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CF6ADC  80 04 5F 7C */	lwz r0, 0x5f7c(r4)
/* 80CF6AE0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CF6AE4  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80CF6AE8  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF6AEC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80CF6AF0  83 A3 00 00 */	lwz r29, 0(r3)
/* 80CF6AF4  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80CF6AF8  38 80 00 01 */	li r4, 1
/* 80CF6AFC  81 83 00 00 */	lwz r12, 0(r3)
/* 80CF6B00  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80CF6B04  7D 89 03 A6 */	mtctr r12
/* 80CF6B08  4E 80 04 21 */	bctrl 
/* 80CF6B0C  28 03 00 00 */	cmplwi r3, 0
/* 80CF6B10  41 82 00 8C */	beq lbl_80CF6B9C
/* 80CF6B14  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80CF6B18  38 80 00 01 */	li r4, 1
/* 80CF6B1C  81 83 00 00 */	lwz r12, 0(r3)
/* 80CF6B20  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80CF6B24  7D 89 03 A6 */	mtctr r12
/* 80CF6B28  4E 80 04 21 */	bctrl 
/* 80CF6B2C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CF6B30  41 82 00 6C */	beq lbl_80CF6B9C
/* 80CF6B34  38 61 00 08 */	addi r3, r1, 8
/* 80CF6B38  C0 3C 00 2C */	lfs f1, 0x2c(r28)
/* 80CF6B3C  C0 5C 00 30 */	lfs f2, 0x30(r28)
/* 80CF6B40  FC 60 10 90 */	fmr f3, f2
/* 80CF6B44  FC 80 08 90 */	fmr f4, f1
/* 80CF6B48  C0 BC 00 08 */	lfs f5, 8(r28)
/* 80CF6B4C  FC C0 28 90 */	fmr f6, f5
/* 80CF6B50  C0 FC 00 18 */	lfs f7, 0x18(r28)
/* 80CF6B54  FD 00 38 90 */	fmr f8, f7
/* 80CF6B58  4B 65 01 8C */	b C_MTXLightOrtho
/* 80CF6B5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF6B60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF6B64  38 80 40 00 */	li r4, 0x4000
/* 80CF6B68  4B 31 57 DC */	b mDoMtx_XrotS__FPA4_fs
/* 80CF6B6C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CF6B70  FC 20 00 50 */	fneg f1, f0
/* 80CF6B74  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CF6B78  FC 40 00 50 */	fneg f2, f0
/* 80CF6B7C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CF6B80  FC 60 00 50 */	fneg f3, f0
/* 80CF6B84  4B 31 62 18 */	b transM__14mDoMtx_stack_cFfff
/* 80CF6B88  38 61 00 08 */	addi r3, r1, 8
/* 80CF6B8C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80CF6B90  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80CF6B94  38 BD 00 24 */	addi r5, r29, 0x24
/* 80CF6B98  4B 64 F9 4C */	b PSMTXConcat
lbl_80CF6B9C:
/* 80CF6B9C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80CF6BA0  80 83 00 04 */	lwz r4, 4(r3)
/* 80CF6BA4  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CF6BA8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CF6BAC  38 84 00 58 */	addi r4, r4, 0x58
/* 80CF6BB0  4B 31 6B 28 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CF6BB4  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80CF6BB8  4B 31 71 0C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CF6BBC  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80CF6BC0  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF6BC4  4B 31 72 2C */	b mDoExt_btkAnmRemove__FP12J3DModelData
/* 80CF6BC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF6BCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF6BD0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CF6BD4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CF6BD8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CF6BDC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CF6BE0  38 60 00 01 */	li r3, 1
/* 80CF6BE4  39 61 00 50 */	addi r11, r1, 0x50
/* 80CF6BE8  4B 66 B6 3C */	b _restgpr_28
/* 80CF6BEC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CF6BF0  7C 08 03 A6 */	mtlr r0
/* 80CF6BF4  38 21 00 50 */	addi r1, r1, 0x50
/* 80CF6BF8  4E 80 00 20 */	blr 
