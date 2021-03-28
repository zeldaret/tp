lbl_80C4538C:
/* 80C4538C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C45390  7C 08 02 A6 */	mflr r0
/* 80C45394  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C45398  39 61 00 20 */	addi r11, r1, 0x20
/* 80C4539C  4B 71 CE 38 */	b _savegpr_27
/* 80C453A0  7C 7B 1B 78 */	mr r27, r3
/* 80C453A4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C453A8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C453AC  38 80 00 10 */	li r4, 0x10
/* 80C453B0  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80C453B4  38 DB 01 0C */	addi r6, r27, 0x10c
/* 80C453B8  4B 55 E4 0C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C453BC  3B 80 00 00 */	li r28, 0
/* 80C453C0  3B E0 00 00 */	li r31, 0
/* 80C453C4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C453C8  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 80C453CC  48 00 00 2C */	b lbl_80C453F8
lbl_80C453D0:
/* 80C453D0  7F C3 F3 78 */	mr r3, r30
/* 80C453D4  3B BF 05 94 */	addi r29, r31, 0x594
/* 80C453D8  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80C453DC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C453E0  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80C453E4  4B 55 F9 BC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C453E8  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80C453EC  4B 3C 88 D8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C453F0  3B 9C 00 01 */	addi r28, r28, 1
/* 80C453F4  3B FF 00 60 */	addi r31, r31, 0x60
lbl_80C453F8:
/* 80C453F8  80 7B 05 7C */	lwz r3, 0x57c(r27)
/* 80C453FC  38 03 FF FF */	addi r0, r3, -1
/* 80C45400  7C 1C 00 00 */	cmpw r28, r0
/* 80C45404  41 80 FF CC */	blt lbl_80C453D0
/* 80C45408  38 60 00 01 */	li r3, 1
/* 80C4540C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C45410  4B 71 CE 10 */	b _restgpr_27
/* 80C45414  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C45418  7C 08 03 A6 */	mtlr r0
/* 80C4541C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C45420  4E 80 00 20 */	blr 
