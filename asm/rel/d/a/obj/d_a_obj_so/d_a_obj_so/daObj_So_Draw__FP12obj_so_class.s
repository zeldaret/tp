lbl_80CE03F0:
/* 80CE03F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE03F4  7C 08 02 A6 */	mflr r0
/* 80CE03F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE03FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CE0400  4B 68 1D D4 */	b _savegpr_27
/* 80CE0404  7C 7F 1B 78 */	mr r31, r3
/* 80CE0408  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CE040C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CE0410  38 80 00 10 */	li r4, 0x10
/* 80CE0414  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CE0418  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CE041C  4B 4C 33 A8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CE0420  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80CE0424  2C 00 00 00 */	cmpwi r0, 0
/* 80CE0428  41 82 00 24 */	beq lbl_80CE044C
/* 80CE042C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CE0430  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CE0434  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CE0438  80 84 00 04 */	lwz r4, 4(r4)
/* 80CE043C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CE0440  4B 4C 49 60 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CE0444  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CE0448  4B 32 D8 7C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80CE044C:
/* 80CE044C  3B 60 00 00 */	li r27, 0
/* 80CE0450  3B C0 00 00 */	li r30, 0
lbl_80CE0454:
/* 80CE0454  7F BF DA 14 */	add r29, r31, r27
/* 80CE0458  88 1D 05 FC */	lbz r0, 0x5fc(r29)
/* 80CE045C  7C 00 07 75 */	extsb. r0, r0
/* 80CE0460  41 82 00 70 */	beq lbl_80CE04D0
/* 80CE0464  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CE0468  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CE046C  7F 9F F2 14 */	add r28, r31, r30
/* 80CE0470  80 9C 05 94 */	lwz r4, 0x594(r28)
/* 80CE0474  80 84 00 04 */	lwz r4, 4(r4)
/* 80CE0478  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CE047C  4B 4C 49 24 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CE0480  80 7C 05 94 */	lwz r3, 0x594(r28)
/* 80CE0484  4B 32 D8 40 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CE0488  A8 1F 0D AE */	lha r0, 0xdae(r31)
/* 80CE048C  2C 00 00 01 */	cmpwi r0, 1
/* 80CE0490  41 82 00 40 */	beq lbl_80CE04D0
/* 80CE0494  2C 1B 00 02 */	cmpwi r27, 2
/* 80CE0498  41 80 00 38 */	blt lbl_80CE04D0
/* 80CE049C  2C 1B 00 0A */	cmpwi r27, 0xa
/* 80CE04A0  40 80 00 30 */	bge lbl_80CE04D0
/* 80CE04A4  88 1D 1A 96 */	lbz r0, 0x1a96(r29)
/* 80CE04A8  7C 00 07 75 */	extsb. r0, r0
/* 80CE04AC  41 82 00 24 */	beq lbl_80CE04D0
/* 80CE04B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CE04B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CE04B8  80 9C 1A 98 */	lwz r4, 0x1a98(r28)
/* 80CE04BC  80 84 00 04 */	lwz r4, 4(r4)
/* 80CE04C0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CE04C4  4B 4C 48 DC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CE04C8  80 7C 1A 98 */	lwz r3, 0x1a98(r28)
/* 80CE04CC  4B 32 D7 F8 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80CE04D0:
/* 80CE04D0  3B 7B 00 01 */	addi r27, r27, 1
/* 80CE04D4  2C 1B 00 1A */	cmpwi r27, 0x1a
/* 80CE04D8  3B DE 00 04 */	addi r30, r30, 4
/* 80CE04DC  41 80 FF 78 */	blt lbl_80CE0454
/* 80CE04E0  38 60 00 01 */	li r3, 1
/* 80CE04E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CE04E8  4B 68 1D 38 */	b _restgpr_27
/* 80CE04EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE04F0  7C 08 03 A6 */	mtlr r0
/* 80CE04F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE04F8  4E 80 00 20 */	blr 
