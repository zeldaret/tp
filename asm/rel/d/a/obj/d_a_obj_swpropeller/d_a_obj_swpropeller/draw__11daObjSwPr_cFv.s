lbl_8059B148:
/* 8059B148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B14C  7C 08 02 A6 */	mflr r0
/* 8059B150  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B154  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059B158  7C 7F 1B 78 */	mr r31, r3
/* 8059B15C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8059B160  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8059B164  38 80 00 10 */	li r4, 0x10
/* 8059B168  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8059B16C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8059B170  4B C0 86 54 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8059B174  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8059B178  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8059B17C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 8059B180  80 84 00 04 */	lwz r4, 4(r4)
/* 8059B184  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8059B188  4B C0 9C 18 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8059B18C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8059B190  4B A7 2B 34 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8059B194  38 60 00 01 */	li r3, 1
/* 8059B198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059B19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B1A0  7C 08 03 A6 */	mtlr r0
/* 8059B1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B1A8  4E 80 00 20 */	blr 
