lbl_80D36B98:
/* 80D36B98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D36B9C  7C 08 02 A6 */	mflr r0
/* 80D36BA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D36BA4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D36BA8  4B 62 B6 28 */	b _savegpr_26
/* 80D36BAC  7C 7F 1B 78 */	mr r31, r3
/* 80D36BB0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D36BB4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D36BB8  38 80 00 00 */	li r4, 0
/* 80D36BBC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D36BC0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D36BC4  4B 46 CC 00 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D36BC8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D36BCC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D36BD0  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D36BD4  80 84 00 04 */	lwz r4, 4(r4)
/* 80D36BD8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D36BDC  4B 46 E1 C4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D36BE0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D36BE4  4B 2D 70 E0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D36BE8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D36BEC  83 A3 00 04 */	lwz r29, 4(r3)
/* 80D36BF0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D36BF4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D36BF8  80 9D 00 04 */	lwz r4, 4(r29)
/* 80D36BFC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D36C00  4B 46 E1 A0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D36C04  80 9D 00 04 */	lwz r4, 4(r29)
/* 80D36C08  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D36C0C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D36C10  38 84 00 58 */	addi r4, r4, 0x58
/* 80D36C14  4B 2D 6A C4 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D36C18  80 9D 00 04 */	lwz r4, 4(r29)
/* 80D36C1C  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D36C20  38 84 00 58 */	addi r4, r4, 0x58
/* 80D36C24  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80D36C28  FC 00 00 1E */	fctiwz f0, f0
/* 80D36C2C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D36C30  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80D36C34  4B 2D 69 B4 */	b entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 80D36C38  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D36C3C  4B 2D 9A 44 */	b entryDL__14mDoExt_McaMorfFv
/* 80D36C40  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D36C44  3B A3 CA 54 */	addi r29, r3, g_env_light@l
/* 80D36C48  3B 7F 05 80 */	addi r27, r31, 0x580
/* 80D36C4C  3B 40 00 00 */	li r26, 0
/* 80D36C50  3B C0 00 00 */	li r30, 0
lbl_80D36C54:
/* 80D36C54  7F A3 EB 78 */	mr r3, r29
/* 80D36C58  3B 9E 02 5C */	addi r28, r30, 0x25c
/* 80D36C5C  7C 9B E0 2E */	lwzx r4, r27, r28
/* 80D36C60  80 84 00 04 */	lwz r4, 4(r4)
/* 80D36C64  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D36C68  4B 46 E1 38 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D36C6C  7C 7B E0 2E */	lwzx r3, r27, r28
/* 80D36C70  4B 2D 70 54 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D36C74  3B 5A 00 01 */	addi r26, r26, 1
/* 80D36C78  2C 1A 00 13 */	cmpwi r26, 0x13
/* 80D36C7C  3B DE 00 04 */	addi r30, r30, 4
/* 80D36C80  41 80 FF D4 */	blt lbl_80D36C54
/* 80D36C84  38 60 00 01 */	li r3, 1
/* 80D36C88  39 61 00 30 */	addi r11, r1, 0x30
/* 80D36C8C  4B 62 B5 90 */	b _restgpr_26
/* 80D36C90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D36C94  7C 08 03 A6 */	mtlr r0
/* 80D36C98  38 21 00 30 */	addi r1, r1, 0x30
/* 80D36C9C  4E 80 00 20 */	blr 
