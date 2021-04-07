lbl_805AE350:
/* 805AE350  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AE354  7C 08 02 A6 */	mflr r0
/* 805AE358  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AE35C  39 61 00 20 */	addi r11, r1, 0x20
/* 805AE360  4B DB 3E 75 */	bl _savegpr_27
/* 805AE364  7C 7C 1B 78 */	mr r28, r3
/* 805AE368  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805AE36C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805AE370  38 80 00 00 */	li r4, 0
/* 805AE374  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805AE378  38 DC 01 0C */	addi r6, r28, 0x10c
/* 805AE37C  4B BF 54 49 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805AE380  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 805AE384  83 C3 00 04 */	lwz r30, 4(r3)
/* 805AE388  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805AE38C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805AE390  80 9E 00 04 */	lwz r4, 4(r30)
/* 805AE394  38 BC 01 0C */	addi r5, r28, 0x10c
/* 805AE398  4B BF 6A 09 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805AE39C  80 9E 00 04 */	lwz r4, 4(r30)
/* 805AE3A0  7F 83 E3 78 */	mr r3, r28
/* 805AE3A4  4B A6 F0 89 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 805AE3A8  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 805AE3AC  4B A6 2E 15 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 805AE3B0  3B 60 00 00 */	li r27, 0
/* 805AE3B4  3B E0 00 00 */	li r31, 0
/* 805AE3B8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805AE3BC  3B C3 CA 54 */	addi r30, r3, g_env_light@l /* 0x8042CA54@l */
lbl_805AE3C0:
/* 805AE3C0  7F C3 F3 78 */	mr r3, r30
/* 805AE3C4  7F BC FA 14 */	add r29, r28, r31
/* 805AE3C8  80 9D 08 00 */	lwz r4, 0x800(r29)
/* 805AE3CC  80 84 00 04 */	lwz r4, 4(r4)
/* 805AE3D0  38 BC 01 0C */	addi r5, r28, 0x10c
/* 805AE3D4  4B BF 69 CD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805AE3D8  80 7D 08 00 */	lwz r3, 0x800(r29)
/* 805AE3DC  4B A5 F8 E9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 805AE3E0  80 9D 09 1C */	lwz r4, 0x91c(r29)
/* 805AE3E4  28 04 00 00 */	cmplwi r4, 0
/* 805AE3E8  41 82 00 1C */	beq lbl_805AE404
/* 805AE3EC  7F C3 F3 78 */	mr r3, r30
/* 805AE3F0  80 84 00 04 */	lwz r4, 4(r4)
/* 805AE3F4  38 BC 01 0C */	addi r5, r28, 0x10c
/* 805AE3F8  4B BF 69 A9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805AE3FC  80 7D 09 1C */	lwz r3, 0x91c(r29)
/* 805AE400  4B A5 F8 C5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_805AE404:
/* 805AE404  3B 7B 00 01 */	addi r27, r27, 1
/* 805AE408  2C 1B 00 11 */	cmpwi r27, 0x11
/* 805AE40C  3B FF 00 04 */	addi r31, r31, 4
/* 805AE410  41 80 FF B0 */	blt lbl_805AE3C0
/* 805AE414  38 60 00 01 */	li r3, 1
/* 805AE418  39 61 00 20 */	addi r11, r1, 0x20
/* 805AE41C  4B DB 3E 05 */	bl _restgpr_27
/* 805AE420  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AE424  7C 08 03 A6 */	mtlr r0
/* 805AE428  38 21 00 20 */	addi r1, r1, 0x20
/* 805AE42C  4E 80 00 20 */	blr 
