lbl_80BFFA00:
/* 80BFFA00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BFFA04  7C 08 02 A6 */	mflr r0
/* 80BFFA08  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BFFA0C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BFFA10  4B 76 27 B8 */	b _savegpr_24
/* 80BFFA14  7C 7F 1B 78 */	mr r31, r3
/* 80BFFA18  88 03 05 A1 */	lbz r0, 0x5a1(r3)
/* 80BFFA1C  28 00 00 00 */	cmplwi r0, 0
/* 80BFFA20  40 82 00 60 */	bne lbl_80BFFA80
/* 80BFFA24  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BFFA28  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BFFA2C  38 80 00 10 */	li r4, 0x10
/* 80BFFA30  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BFFA34  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BFFA38  4B 5A 3D 8C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BFFA3C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BFFA40  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BFFA44  80 9F 0F 9C */	lwz r4, 0xf9c(r31)
/* 80BFFA48  80 84 00 04 */	lwz r4, 4(r4)
/* 80BFFA4C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BFFA50  4B 5A 53 50 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BFFA54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BFFA58  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BFFA5C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BFFA60  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BFFA64  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80BFFA68  90 03 00 48 */	stw r0, 0x48(r3)
/* 80BFFA6C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BFFA70  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80BFFA74  80 7F 0F 9C */	lwz r3, 0xf9c(r31)
/* 80BFFA78  4B 40 E2 4C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BFFA7C  48 00 00 84 */	b lbl_80BFFB00
lbl_80BFFA80:
/* 80BFFA80  3B 00 00 00 */	li r24, 0
/* 80BFFA84  3B C0 00 00 */	li r30, 0
/* 80BFFA88  3B A0 00 00 */	li r29, 0
/* 80BFFA8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BFFA90  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80BFFA94  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BFFA98  3B 63 4A C8 */	addi r27, r3, j3dSys@l
/* 80BFFA9C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BFFAA0  3B 83 CA 54 */	addi r28, r3, g_env_light@l
lbl_80BFFAA4:
/* 80BFFAA4  7F 83 E3 78 */	mr r3, r28
/* 80BFFAA8  38 80 00 10 */	li r4, 0x10
/* 80BFFAAC  38 BD 05 B0 */	addi r5, r29, 0x5b0
/* 80BFFAB0  7C BF 2A 14 */	add r5, r31, r5
/* 80BFFAB4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BFFAB8  4B 5A 3D 0C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BFFABC  7F 83 E3 78 */	mr r3, r28
/* 80BFFAC0  3B 3E 0F A0 */	addi r25, r30, 0xfa0
/* 80BFFAC4  7C 9F C8 2E */	lwzx r4, r31, r25
/* 80BFFAC8  80 84 00 04 */	lwz r4, 4(r4)
/* 80BFFACC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BFFAD0  4B 5A 52 D0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BFFAD4  80 1A 5F 70 */	lwz r0, 0x5f70(r26)
/* 80BFFAD8  90 1B 00 48 */	stw r0, 0x48(r27)
/* 80BFFADC  80 1A 5F 74 */	lwz r0, 0x5f74(r26)
/* 80BFFAE0  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 80BFFAE4  7C 7F C8 2E */	lwzx r3, r31, r25
/* 80BFFAE8  4B 40 E1 DC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BFFAEC  3B 18 00 01 */	addi r24, r24, 1
/* 80BFFAF0  2C 18 00 04 */	cmpwi r24, 4
/* 80BFFAF4  3B DE 00 04 */	addi r30, r30, 4
/* 80BFFAF8  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BFFAFC  41 80 FF A8 */	blt lbl_80BFFAA4
lbl_80BFFB00:
/* 80BFFB00  38 60 00 01 */	li r3, 1
/* 80BFFB04  39 61 00 30 */	addi r11, r1, 0x30
/* 80BFFB08  4B 76 27 0C */	b _restgpr_24
/* 80BFFB0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BFFB10  7C 08 03 A6 */	mtlr r0
/* 80BFFB14  38 21 00 30 */	addi r1, r1, 0x30
/* 80BFFB18  4E 80 00 20 */	blr 
