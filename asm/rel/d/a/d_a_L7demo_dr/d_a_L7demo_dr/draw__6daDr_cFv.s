lbl_805A93D4:
/* 805A93D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A93D8  7C 08 02 A6 */	mflr r0
/* 805A93DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A93E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A93E4  93 C1 00 08 */	stw r30, 8(r1)
/* 805A93E8  7C 7E 1B 78 */	mr r30, r3
/* 805A93EC  88 03 06 58 */	lbz r0, 0x658(r3)
/* 805A93F0  28 00 00 00 */	cmplwi r0, 0
/* 805A93F4  41 82 00 0C */	beq lbl_805A9400
/* 805A93F8  38 60 00 01 */	li r3, 1
/* 805A93FC  48 00 00 44 */	b lbl_805A9440
lbl_805A9400:
/* 805A9400  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805A9404  83 E3 00 04 */	lwz r31, 4(r3)
/* 805A9408  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805A940C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805A9410  38 80 00 00 */	li r4, 0
/* 805A9414  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805A9418  38 DE 01 0C */	addi r6, r30, 0x10c
/* 805A941C  4B BF A3 A9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805A9420  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805A9424  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805A9428  80 9F 00 04 */	lwz r4, 4(r31)
/* 805A942C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 805A9430  4B BF B9 71 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805A9434  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805A9438  4B A6 7D 89 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 805A943C  38 60 00 01 */	li r3, 1
lbl_805A9440:
/* 805A9440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A9444  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A9448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A944C  7C 08 03 A6 */	mtlr r0
/* 805A9450  38 21 00 10 */	addi r1, r1, 0x10
/* 805A9454  4E 80 00 20 */	blr 
