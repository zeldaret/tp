lbl_8057CBD8:
/* 8057CBD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057CBDC  7C 08 02 A6 */	mflr r0
/* 8057CBE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CBE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057CBE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8057CBEC  7C 7E 1B 78 */	mr r30, r3
/* 8057CBF0  83 E3 05 74 */	lwz r31, 0x574(r3)
/* 8057CBF4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8057CBF8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8057CBFC  38 80 00 40 */	li r4, 0x40
/* 8057CC00  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8057CC04  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8057CC08  4B C2 6B BC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8057CC0C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8057CC10  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8057CC14  80 9F 00 04 */	lwz r4, 4(r31)
/* 8057CC18  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8057CC1C  4B C2 81 84 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8057CC20  7F E3 FB 78 */	mr r3, r31
/* 8057CC24  4B A9 10 A0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8057CC28  38 60 00 01 */	li r3, 1
/* 8057CC2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057CC30  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057CC34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057CC38  7C 08 03 A6 */	mtlr r0
/* 8057CC3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057CC40  4E 80 00 20 */	blr 
