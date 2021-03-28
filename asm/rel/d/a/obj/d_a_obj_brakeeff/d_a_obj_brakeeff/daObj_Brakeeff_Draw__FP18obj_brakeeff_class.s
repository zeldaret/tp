lbl_8046DCB8:
/* 8046DCB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046DCBC  7C 08 02 A6 */	mflr r0
/* 8046DCC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046DCC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046DCC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8046DCCC  7C 7E 1B 78 */	mr r30, r3
/* 8046DCD0  83 E3 05 74 */	lwz r31, 0x574(r3)
/* 8046DCD4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046DCD8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046DCDC  38 80 00 40 */	li r4, 0x40
/* 8046DCE0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8046DCE4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8046DCE8  4B D3 5A DC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8046DCEC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046DCF0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046DCF4  80 9F 00 04 */	lwz r4, 4(r31)
/* 8046DCF8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8046DCFC  4B D3 70 A4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8046DD00  80 9F 00 04 */	lwz r4, 4(r31)
/* 8046DD04  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8046DD08  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8046DD0C  38 84 00 58 */	addi r4, r4, 0x58
/* 8046DD10  4B B9 FA 98 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 8046DD14  7F E3 FB 78 */	mr r3, r31
/* 8046DD18  4B B9 FF AC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8046DD1C  38 60 00 01 */	li r3, 1
/* 8046DD20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046DD24  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046DD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046DD2C  7C 08 03 A6 */	mtlr r0
/* 8046DD30  38 21 00 10 */	addi r1, r1, 0x10
/* 8046DD34  4E 80 00 20 */	blr 
