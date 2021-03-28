lbl_80CEECFC:
/* 80CEECFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEED00  7C 08 02 A6 */	mflr r0
/* 80CEED04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEED08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEED0C  7C 7F 1B 78 */	mr r31, r3
/* 80CEED10  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CEED14  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CEED18  38 80 00 10 */	li r4, 0x10
/* 80CEED1C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CEED20  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CEED24  4B 4B 4A A0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CEED28  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CEED2C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CEED30  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CEED34  80 84 00 04 */	lwz r4, 4(r4)
/* 80CEED38  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CEED3C  4B 4B 60 64 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CEED40  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CEED44  4B 31 EF 80 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CEED48  38 60 00 01 */	li r3, 1
/* 80CEED4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEED50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEED54  7C 08 03 A6 */	mtlr r0
/* 80CEED58  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEED5C  4E 80 00 20 */	blr 
