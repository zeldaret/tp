lbl_80CDFBC4:
/* 80CDFBC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDFBC8  7C 08 02 A6 */	mflr r0
/* 80CDFBCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDFBD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDFBD4  7C 7F 1B 78 */	mr r31, r3
/* 80CDFBD8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CDFBDC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CDFBE0  38 80 00 00 */	li r4, 0
/* 80CDFBE4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CDFBE8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CDFBEC  4B 4C 3B D8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CDFBF0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CDFBF4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CDFBF8  88 1F 05 C0 */	lbz r0, 0x5c0(r31)
/* 80CDFBFC  54 00 10 3A */	slwi r0, r0, 2
/* 80CDFC00  7C 9F 02 14 */	add r4, r31, r0
/* 80CDFC04  80 84 05 B4 */	lwz r4, 0x5b4(r4)
/* 80CDFC08  80 84 00 04 */	lwz r4, 4(r4)
/* 80CDFC0C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CDFC10  4B 4C 51 90 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CDFC14  88 1F 05 C0 */	lbz r0, 0x5c0(r31)
/* 80CDFC18  54 00 10 3A */	slwi r0, r0, 2
/* 80CDFC1C  7C 7F 02 14 */	add r3, r31, r0
/* 80CDFC20  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 80CDFC24  4B 32 E0 08 */	b mDoExt_modelUpdate__FP8J3DModel
/* 80CDFC28  38 60 00 01 */	li r3, 1
/* 80CDFC2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDFC30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDFC34  7C 08 03 A6 */	mtlr r0
/* 80CDFC38  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDFC3C  4E 80 00 20 */	blr 
