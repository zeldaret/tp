lbl_80D353C4:
/* 80D353C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D353C8  7C 08 02 A6 */	mflr r0
/* 80D353CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D353D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D353D4  7C 7F 1B 78 */	mr r31, r3
/* 80D353D8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D353DC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D353E0  38 80 00 10 */	li r4, 0x10
/* 80D353E4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D353E8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D353EC  4B 46 E3 D9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D353F0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D353F4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D353F8  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D353FC  80 84 00 04 */	lwz r4, 4(r4)
/* 80D35400  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D35404  4B 46 F9 9D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D35408  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D3540C  80 83 00 04 */	lwz r4, 4(r3)
/* 80D35410  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D35414  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D35418  38 84 00 58 */	addi r4, r4, 0x58
/* 80D3541C  4B 2D 83 8D */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D35420  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D35424  4B 2D 88 A1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D35428  38 60 00 01 */	li r3, 1
/* 80D3542C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D35430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D35434  7C 08 03 A6 */	mtlr r0
/* 80D35438  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3543C  4E 80 00 20 */	blr 
