lbl_80C9EBDC:
/* 80C9EBDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9EBE0  7C 08 02 A6 */	mflr r0
/* 80C9EBE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9EBE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9EBEC  7C 7F 1B 78 */	mr r31, r3
/* 80C9EBF0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C9EBF4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C9EBF8  38 80 00 10 */	li r4, 0x10
/* 80C9EBFC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C9EC00  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C9EC04  4B 50 4B C0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C9EC08  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C9EC0C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C9EC10  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C9EC14  80 84 00 04 */	lwz r4, 4(r4)
/* 80C9EC18  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C9EC1C  4B 50 61 84 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C9EC20  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C9EC24  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9EC28  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80C9EC2C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C9EC30  38 84 00 58 */	addi r4, r4, 0x58
/* 80C9EC34  4B 36 EB 74 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C9EC38  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C9EC3C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9EC40  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C9EC44  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C9EC48  38 84 00 58 */	addi r4, r4, 0x58
/* 80C9EC4C  4B 36 EA 8C */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C9EC50  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C9EC54  4B 36 F0 70 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C9EC58  38 60 00 01 */	li r3, 1
/* 80C9EC5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9EC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9EC64  7C 08 03 A6 */	mtlr r0
/* 80C9EC68  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9EC6C  4E 80 00 20 */	blr 
