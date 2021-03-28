lbl_80AF0A84:
/* 80AF0A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF0A88  7C 08 02 A6 */	mflr r0
/* 80AF0A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF0A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF0A94  7C 7F 1B 78 */	mr r31, r3
/* 80AF0A98  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80AF0A9C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80AF0AA0  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80AF0AA4  80 84 00 04 */	lwz r4, 4(r4)
/* 80AF0AA8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80AF0AAC  4B 6B 42 F4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80AF0AB0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80AF0AB4  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF0AB8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AF0ABC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AF0AC0  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 80AF0AC4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AF0AC8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AF0ACC  4B 85 59 E4 */	b PSMTXCopy
/* 80AF0AD0  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80AF0AD4  4B 51 C3 9C */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80AF0AD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AF0ADC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AF0AE0  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80AF0AE4  38 84 00 24 */	addi r4, r4, 0x24
/* 80AF0AE8  4B 85 59 C8 */	b PSMTXCopy
/* 80AF0AEC  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AF0AF0  80 83 00 04 */	lwz r4, 4(r3)
/* 80AF0AF4  7F E3 FB 78 */	mr r3, r31
/* 80AF0AF8  4B 52 C9 34 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80AF0AFC  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AF0B00  4B 51 D1 C4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80AF0B04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF0B08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF0B0C  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80AF0B10  80 9F 09 A0 */	lwz r4, 0x9a0(r31)
/* 80AF0B14  80 BF 0B D8 */	lwz r5, 0xbd8(r31)
/* 80AF0B18  4B 56 54 04 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 80AF0B1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF0B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF0B24  7C 08 03 A6 */	mtlr r0
/* 80AF0B28  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF0B2C  4E 80 00 20 */	blr 
