lbl_80C3F43C:
/* 80C3F43C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C3F440  7C 08 02 A6 */	mflr r0
/* 80C3F444  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C3F448  39 61 00 20 */	addi r11, r1, 0x20
/* 80C3F44C  4B 72 2D 88 */	b _savegpr_27
/* 80C3F450  7C 7B 1B 78 */	mr r27, r3
/* 80C3F454  88 03 06 1C */	lbz r0, 0x61c(r3)
/* 80C3F458  28 00 00 00 */	cmplwi r0, 0
/* 80C3F45C  40 82 00 5C */	bne lbl_80C3F4B8
/* 80C3F460  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C3F464  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C3F468  38 80 00 10 */	li r4, 0x10
/* 80C3F46C  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80C3F470  38 DB 01 0C */	addi r6, r27, 0x10c
/* 80C3F474  4B 56 43 50 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C3F478  3B 80 00 00 */	li r28, 0
/* 80C3F47C  3B E0 00 00 */	li r31, 0
/* 80C3F480  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C3F484  3B C3 CA 54 */	addi r30, r3, g_env_light@l
lbl_80C3F488:
/* 80C3F488  7F C3 F3 78 */	mr r3, r30
/* 80C3F48C  3B BF 05 70 */	addi r29, r31, 0x570
/* 80C3F490  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80C3F494  80 84 00 04 */	lwz r4, 4(r4)
/* 80C3F498  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80C3F49C  4B 56 59 04 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C3F4A0  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80C3F4A4  4B 3C E7 88 */	b mDoExt_modelUpdate__FP8J3DModel
/* 80C3F4A8  3B 9C 00 01 */	addi r28, r28, 1
/* 80C3F4AC  2C 1C 00 02 */	cmpwi r28, 2
/* 80C3F4B0  3B FF 00 04 */	addi r31, r31, 4
/* 80C3F4B4  41 80 FF D4 */	blt lbl_80C3F488
lbl_80C3F4B8:
/* 80C3F4B8  38 60 00 01 */	li r3, 1
/* 80C3F4BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C3F4C0  4B 72 2D 60 */	b _restgpr_27
/* 80C3F4C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C3F4C8  7C 08 03 A6 */	mtlr r0
/* 80C3F4CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C3F4D0  4E 80 00 20 */	blr 
