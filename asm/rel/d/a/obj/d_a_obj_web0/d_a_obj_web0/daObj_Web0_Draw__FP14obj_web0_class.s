lbl_80D34544:
/* 80D34544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D34548  7C 08 02 A6 */	mflr r0
/* 80D3454C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D34550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D34554  7C 7F 1B 78 */	mr r31, r3
/* 80D34558  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D3455C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D34560  38 80 00 10 */	li r4, 0x10
/* 80D34564  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D34568  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D3456C  4B 46 F2 59 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D34570  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D34574  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D34578  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80D3457C  80 84 00 04 */	lwz r4, 4(r4)
/* 80D34580  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D34584  4B 47 08 1D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D34588  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D3458C  80 83 00 04 */	lwz r4, 4(r3)
/* 80D34590  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D34594  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D34598  38 84 00 58 */	addi r4, r4, 0x58
/* 80D3459C  4B 2D 92 0D */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D345A0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D345A4  4B 2D 97 21 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D345A8  38 60 00 01 */	li r3, 1
/* 80D345AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D345B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D345B4  7C 08 03 A6 */	mtlr r0
/* 80D345B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D345BC  4E 80 00 20 */	blr 
