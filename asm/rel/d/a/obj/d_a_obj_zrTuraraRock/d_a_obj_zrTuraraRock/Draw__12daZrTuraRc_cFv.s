lbl_80D42160:
/* 80D42160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D42164  7C 08 02 A6 */	mflr r0
/* 80D42168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4216C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D42170  7C 7F 1B 78 */	mr r31, r3
/* 80D42174  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D42178  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D4217C  38 80 00 10 */	li r4, 0x10
/* 80D42180  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D42184  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D42188  4B 46 16 3C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D4218C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D42190  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D42194  80 9F 06 E4 */	lwz r4, 0x6e4(r31)
/* 80D42198  80 84 00 04 */	lwz r4, 4(r4)
/* 80D4219C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D421A0  4B 46 2C 00 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D421A4  80 7F 06 E4 */	lwz r3, 0x6e4(r31)
/* 80D421A8  4B 2C BB 1C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D421AC  38 60 00 01 */	li r3, 1
/* 80D421B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D421B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D421B8  7C 08 03 A6 */	mtlr r0
/* 80D421BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D421C0  4E 80 00 20 */	blr 
