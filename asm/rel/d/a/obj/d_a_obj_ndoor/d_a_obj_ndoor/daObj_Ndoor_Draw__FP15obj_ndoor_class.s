lbl_80CA3538:
/* 80CA3538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA353C  7C 08 02 A6 */	mflr r0
/* 80CA3540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA3544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA3548  7C 7F 1B 78 */	mr r31, r3
/* 80CA354C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CA3550  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CA3554  38 80 00 10 */	li r4, 0x10
/* 80CA3558  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CA355C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CA3560  4B 50 02 64 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CA3564  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CA3568  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CA356C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80CA3570  80 84 00 04 */	lwz r4, 4(r4)
/* 80CA3574  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CA3578  4B 50 18 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CA357C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CA3580  4B 36 A7 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CA3584  38 60 00 01 */	li r3, 1
/* 80CA3588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA358C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA3590  7C 08 03 A6 */	mtlr r0
/* 80CA3594  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3598  4E 80 00 20 */	blr 
