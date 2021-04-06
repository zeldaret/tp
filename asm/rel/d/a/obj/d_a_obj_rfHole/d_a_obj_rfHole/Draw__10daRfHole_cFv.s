lbl_80CB9878:
/* 80CB9878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB987C  7C 08 02 A6 */	mflr r0
/* 80CB9880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB9888  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB988C  7C 7E 1B 78 */	mr r30, r3
/* 80CB9890  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CB9894  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CB9898  38 80 00 10 */	li r4, 0x10
/* 80CB989C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CB98A0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CB98A4  4B 4E 9F 21 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CB98A8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CB98AC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CB98B0  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80CB98B4  80 84 00 04 */	lwz r4, 4(r4)
/* 80CB98B8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CB98BC  4B 4E B4 E5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CB98C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB98C4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB98C8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CB98CC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CB98D0  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CB98D4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CB98D8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CB98DC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CB98E0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CB98E4  4B 35 43 E1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CB98E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB98EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB98F0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CB98F4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CB98F8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CB98FC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CB9900  38 60 00 01 */	li r3, 1
/* 80CB9904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB9908  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB990C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB9910  7C 08 03 A6 */	mtlr r0
/* 80CB9914  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9918  4E 80 00 20 */	blr 
