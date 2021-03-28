lbl_80C8FE24:
/* 80C8FE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8FE28  7C 08 02 A6 */	mflr r0
/* 80C8FE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8FE30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8FE34  7C 7F 1B 78 */	mr r31, r3
/* 80C8FE38  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C8FE3C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C8FE40  38 80 00 10 */	li r4, 0x10
/* 80C8FE44  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C8FE48  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C8FE4C  4B 51 39 78 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C8FE50  A8 1F 05 7E */	lha r0, 0x57e(r31)
/* 80C8FE54  2C 00 00 00 */	cmpwi r0, 0
/* 80C8FE58  40 82 00 40 */	bne lbl_80C8FE98
/* 80C8FE5C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C8FE60  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C8FE64  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C8FE68  80 84 00 04 */	lwz r4, 4(r4)
/* 80C8FE6C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C8FE70  4B 51 4F 30 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C8FE74  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C8FE78  80 83 00 04 */	lwz r4, 4(r3)
/* 80C8FE7C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C8FE80  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C8FE84  38 84 00 58 */	addi r4, r4, 0x58
/* 80C8FE88  4B 37 D9 20 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C8FE8C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C8FE90  4B 37 DE 34 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C8FE94  48 00 00 30 */	b lbl_80C8FEC4
lbl_80C8FE98:
/* 80C8FE98  88 1F 05 7C */	lbz r0, 0x57c(r31)
/* 80C8FE9C  28 00 00 01 */	cmplwi r0, 1
/* 80C8FEA0  41 82 00 24 */	beq lbl_80C8FEC4
/* 80C8FEA4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C8FEA8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C8FEAC  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80C8FEB0  80 84 00 04 */	lwz r4, 4(r4)
/* 80C8FEB4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C8FEB8  4B 51 4E E8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C8FEBC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80C8FEC0  4B 37 DE 04 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80C8FEC4:
/* 80C8FEC4  38 60 00 01 */	li r3, 1
/* 80C8FEC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8FECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8FED0  7C 08 03 A6 */	mtlr r0
/* 80C8FED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8FED8  4E 80 00 20 */	blr 
