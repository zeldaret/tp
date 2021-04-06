lbl_80CFB53C:
/* 80CFB53C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CFB540  7C 08 02 A6 */	mflr r0
/* 80CFB544  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CFB548  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFB54C  4B 66 6C 91 */	bl _savegpr_29
/* 80CFB550  7C 7D 1B 78 */	mr r29, r3
/* 80CFB554  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CFB558  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CFB55C  38 80 00 00 */	li r4, 0
/* 80CFB560  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 80CFB564  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80CFB568  4B 4A 82 5D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CFB56C  7F A3 EB 78 */	mr r3, r29
/* 80CFB570  4B FF FE E1 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CFB574  1C 63 00 50 */	mulli r3, r3, 0x50
/* 80CFB578  80 1D 0A 74 */	lwz r0, 0xa74(r29)
/* 80CFB57C  7F E0 1A 14 */	add r31, r0, r3
/* 80CFB580  3B C0 00 00 */	li r30, 0
/* 80CFB584  48 00 00 18 */	b lbl_80CFB59C
lbl_80CFB588:
/* 80CFB588  38 7D 05 78 */	addi r3, r29, 0x578
/* 80CFB58C  7F E4 FB 78 */	mr r4, r31
/* 80CFB590  4B 3A 10 D9 */	bl entryObj__6dMdl_cFP10dMdl_obj_c
/* 80CFB594  3B DE 00 01 */	addi r30, r30, 1
/* 80CFB598  3B FF 00 50 */	addi r31, r31, 0x50
lbl_80CFB59C:
/* 80CFB59C  88 7D 0A 64 */	lbz r3, 0xa64(r29)
/* 80CFB5A0  38 03 FF FF */	addi r0, r3, -1
/* 80CFB5A4  7C 1E 00 00 */	cmpw r30, r0
/* 80CFB5A8  41 80 FF E0 */	blt lbl_80CFB588
/* 80CFB5AC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CFB5B0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CFB5B4  80 9D 05 70 */	lwz r4, 0x570(r29)
/* 80CFB5B8  80 84 00 04 */	lwz r4, 4(r4)
/* 80CFB5BC  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80CFB5C0  4B 4A 97 E1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CFB5C4  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80CFB5C8  4B 31 26 FD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CFB5CC  38 60 00 01 */	li r3, 1
/* 80CFB5D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFB5D4  4B 66 6C 55 */	bl _restgpr_29
/* 80CFB5D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CFB5DC  7C 08 03 A6 */	mtlr r0
/* 80CFB5E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80CFB5E4  4E 80 00 20 */	blr 
