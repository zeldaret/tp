lbl_804E11D4:
/* 804E11D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E11D8  7C 08 02 A6 */	mflr r0
/* 804E11DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E11E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E11E4  7C 7F 1B 78 */	mr r31, r3
/* 804E11E8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804E11EC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804E11F0  38 80 00 0E */	li r4, 0xe
/* 804E11F4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804E11F8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804E11FC  4B CC 25 C9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804E1200  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804E1204  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804E1208  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 804E120C  80 84 00 04 */	lwz r4, 4(r4)
/* 804E1210  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804E1214  4B CC 3B 8D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804E1218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E121C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1220  7C 08 03 A6 */	mtlr r0
/* 804E1224  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1228  4E 80 00 20 */	blr 
