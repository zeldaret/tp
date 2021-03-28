lbl_80B6A410:
/* 80B6A410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6A414  7C 08 02 A6 */	mflr r0
/* 80B6A418  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6A41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6A420  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6A424  7C 7E 1B 78 */	mr r30, r3
/* 80B6A428  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80B6A42C  83 E3 00 04 */	lwz r31, 4(r3)
/* 80B6A430  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B6A434  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80B6A438  38 80 00 03 */	li r4, 3
/* 80B6A43C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B6A440  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80B6A444  4B 63 93 80 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B6A448  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B6A44C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80B6A450  80 9F 00 04 */	lwz r4, 4(r31)
/* 80B6A454  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80B6A458  4B 63 A9 48 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B6A45C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B6A460  4B 4A 6D 60 */	b entryDL__16mDoExt_McaMorfSOFv
/* 80B6A464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6A468  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6A46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6A470  7C 08 03 A6 */	mtlr r0
/* 80B6A474  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6A478  4E 80 00 20 */	blr 
