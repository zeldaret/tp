lbl_80D3BDF0:
/* 80D3BDF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3BDF4  7C 08 02 A6 */	mflr r0
/* 80D3BDF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3BDFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3BE00  7C 7F 1B 78 */	mr r31, r3
/* 80D3BE04  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D3BE08  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D3BE0C  38 80 00 00 */	li r4, 0
/* 80D3BE10  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D3BE14  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D3BE18  4B 46 79 AC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D3BE1C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D3BE20  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D3BE24  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D3BE28  80 84 00 04 */	lwz r4, 4(r4)
/* 80D3BE2C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D3BE30  4B 46 8F 70 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D3BE34  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D3BE38  4B 2D 1E 8C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D3BE3C  38 60 00 01 */	li r3, 1
/* 80D3BE40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3BE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3BE48  7C 08 03 A6 */	mtlr r0
/* 80D3BE4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3BE50  4E 80 00 20 */	blr 
