lbl_80B444A0:
/* 80B444A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B444A4  7C 08 02 A6 */	mflr r0
/* 80B444A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B444AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B444B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B444B4  7C 7E 1B 78 */	mr r30, r3
/* 80B444B8  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80B444BC  83 E3 00 04 */	lwz r31, 4(r3)
/* 80B444C0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B444C4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B444C8  38 80 00 03 */	li r4, 3
/* 80B444CC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B444D0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80B444D4  4B 65 F2 F1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B444D8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B444DC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B444E0  80 9F 00 04 */	lwz r4, 4(r31)
/* 80B444E4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80B444E8  4B 66 08 B9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B444EC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B444F0  4B 4C CC D1 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80B444F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B444F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B444FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B44500  7C 08 03 A6 */	mtlr r0
/* 80B44504  38 21 00 10 */	addi r1, r1, 0x10
/* 80B44508  4E 80 00 20 */	blr 
