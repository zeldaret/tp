lbl_80CACF14:
/* 80CACF14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CACF18  7C 08 02 A6 */	mflr r0
/* 80CACF1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CACF20  39 61 00 20 */	addi r11, r1, 0x20
/* 80CACF24  4B 6B 52 AC */	b _savegpr_26
/* 80CACF28  7C 7A 1B 78 */	mr r26, r3
/* 80CACF2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CACF30  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CACF34  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CACF38  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CACF3C  3B A3 4A C8 */	addi r29, r3, j3dSys@l
/* 80CACF40  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80CACF44  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CACF48  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80CACF4C  3B 60 00 00 */	li r27, 0
/* 80CACF50  3B E0 00 00 */	li r31, 0
/* 80CACF54  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CACF58  3B C3 CA 54 */	addi r30, r3, g_env_light@l
lbl_80CACF5C:
/* 80CACF5C  7F C3 F3 78 */	mr r3, r30
/* 80CACF60  38 80 00 10 */	li r4, 0x10
/* 80CACF64  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80CACF68  38 DA 01 0C */	addi r6, r26, 0x10c
/* 80CACF6C  4B 4F 68 58 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CACF70  7F C3 F3 78 */	mr r3, r30
/* 80CACF74  3B 9F 05 D8 */	addi r28, r31, 0x5d8
/* 80CACF78  7C 9A E0 2E */	lwzx r4, r26, r28
/* 80CACF7C  80 84 00 04 */	lwz r4, 4(r4)
/* 80CACF80  38 BA 01 0C */	addi r5, r26, 0x10c
/* 80CACF84  4B 4F 7E 1C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CACF88  7C 7A E0 2E */	lwzx r3, r26, r28
/* 80CACF8C  4B 36 0D 38 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CACF90  3B 7B 00 01 */	addi r27, r27, 1
/* 80CACF94  2C 1B 00 0A */	cmpwi r27, 0xa
/* 80CACF98  3B FF 00 04 */	addi r31, r31, 4
/* 80CACF9C  41 80 FF C0 */	blt lbl_80CACF5C
/* 80CACFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CACFA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CACFA8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CACFAC  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80CACFB0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CACFB4  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80CACFB8  38 60 00 01 */	li r3, 1
/* 80CACFBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CACFC0  4B 6B 52 5C */	b _restgpr_26
/* 80CACFC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CACFC8  7C 08 03 A6 */	mtlr r0
/* 80CACFCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CACFD0  4E 80 00 20 */	blr 
