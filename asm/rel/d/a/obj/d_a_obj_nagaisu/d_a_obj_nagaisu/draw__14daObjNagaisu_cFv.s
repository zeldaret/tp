lbl_80C9F81C:
/* 80C9F81C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9F820  7C 08 02 A6 */	mflr r0
/* 80C9F824  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9F828  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9F82C  4B 6C 29 B0 */	b _savegpr_29
/* 80C9F830  7C 7D 1B 78 */	mr r29, r3
/* 80C9F834  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C9F838  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C9F83C  38 80 00 08 */	li r4, 8
/* 80C9F840  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C9F844  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80C9F848  4B 50 3F 7C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C9F84C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C9F850  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C9F854  80 9D 05 74 */	lwz r4, 0x574(r29)
/* 80C9F858  80 84 00 04 */	lwz r4, 4(r4)
/* 80C9F85C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80C9F860  4B 50 55 40 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C9F864  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80C9F868  80 63 00 04 */	lwz r3, 4(r3)
/* 80C9F86C  38 80 00 00 */	li r4, 0
/* 80C9F870  88 BD 04 E2 */	lbz r5, 0x4e2(r29)
/* 80C9F874  7C A5 07 74 */	extsb r5, r5
/* 80C9F878  4B 3F D0 60 */	b entry__10dMdl_mng_cFP12J3DModelDataUsi
/* 80C9F87C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9F880  41 82 00 28 */	beq lbl_80C9F8A8
/* 80C9F884  3B DD 05 B4 */	addi r30, r29, 0x5b4
/* 80C9F888  3B A0 00 00 */	li r29, 0
lbl_80C9F88C:
/* 80C9F88C  7F C3 F3 78 */	mr r3, r30
/* 80C9F890  7F E4 FB 78 */	mr r4, r31
/* 80C9F894  48 00 07 A1 */	bl draw__15daObjIsuChild_cFP6dMdl_c
/* 80C9F898  3B BD 00 01 */	addi r29, r29, 1
/* 80C9F89C  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 80C9F8A0  3B DE 02 F4 */	addi r30, r30, 0x2f4
/* 80C9F8A4  41 80 FF E8 */	blt lbl_80C9F88C
lbl_80C9F8A8:
/* 80C9F8A8  38 60 00 01 */	li r3, 1
/* 80C9F8AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9F8B0  4B 6C 29 78 */	b _restgpr_29
/* 80C9F8B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9F8B8  7C 08 03 A6 */	mtlr r0
/* 80C9F8BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9F8C0  4E 80 00 20 */	blr 
