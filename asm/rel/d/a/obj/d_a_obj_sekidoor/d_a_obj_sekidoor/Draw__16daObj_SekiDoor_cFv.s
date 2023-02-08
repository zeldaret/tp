lbl_80CCD538:
/* 80CCD538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCD53C  7C 08 02 A6 */	mflr r0
/* 80CCD540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCD544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCD548  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCD54C  7C 7E 1B 78 */	mr r30, r3
/* 80CCD550  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CCD554  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CCD558  38 80 00 10 */	li r4, 0x10
/* 80CCD55C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CCD560  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CCD564  4B 4D 62 61 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CCD568  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CCD56C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CCD570  80 9E 05 AC */	lwz r4, 0x5ac(r30)
/* 80CCD574  80 84 00 04 */	lwz r4, 4(r4)
/* 80CCD578  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CCD57C  4B 4D 78 25 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CCD580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCD584  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCD588  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CCD58C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CCD590  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CCD594  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CCD598  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CCD59C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CCD5A0  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80CCD5A4  4B 34 07 21 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CCD5A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCD5AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCD5B0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CCD5B4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CCD5B8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CCD5BC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CCD5C0  38 60 00 01 */	li r3, 1
/* 80CCD5C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCD5C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCD5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD5D0  7C 08 03 A6 */	mtlr r0
/* 80CCD5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD5D8  4E 80 00 20 */	blr 
