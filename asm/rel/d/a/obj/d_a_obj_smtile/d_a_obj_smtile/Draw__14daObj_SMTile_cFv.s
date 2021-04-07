lbl_80CDDA98:
/* 80CDDA98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDDA9C  7C 08 02 A6 */	mflr r0
/* 80CDDAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDDAA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDDAA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDDAAC  7C 7E 1B 78 */	mr r30, r3
/* 80CDDAB0  80 63 05 8C */	lwz r3, 0x58c(r3)
/* 80CDDAB4  83 E3 00 04 */	lwz r31, 4(r3)
/* 80CDDAB8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CDDABC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CDDAC0  38 80 00 00 */	li r4, 0
/* 80CDDAC4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CDDAC8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CDDACC  4B 4C 5C F9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CDDAD0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CDDAD4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CDDAD8  80 9E 05 8C */	lwz r4, 0x58c(r30)
/* 80CDDADC  80 84 00 04 */	lwz r4, 4(r4)
/* 80CDDAE0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CDDAE4  4B 4C 72 BD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CDDAE8  C0 3E 05 78 */	lfs f1, 0x578(r30)
/* 80CDDAEC  38 7E 05 68 */	addi r3, r30, 0x568
/* 80CDDAF0  38 9F 00 58 */	addi r4, r31, 0x58
/* 80CDDAF4  4B 32 FC B5 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80CDDAF8  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80CDDAFC  4B 33 01 C9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CDDB00  38 7F 00 58 */	addi r3, r31, 0x58
/* 80CDDB04  80 9E 05 7C */	lwz r4, 0x57c(r30)
/* 80CDDB08  4B 65 1D 79 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80CDDB0C  38 60 00 01 */	li r3, 1
/* 80CDDB10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDDB14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDDB18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDDB1C  7C 08 03 A6 */	mtlr r0
/* 80CDDB20  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDDB24  4E 80 00 20 */	blr 
