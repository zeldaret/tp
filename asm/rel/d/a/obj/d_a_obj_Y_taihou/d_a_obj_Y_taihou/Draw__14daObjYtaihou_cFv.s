lbl_80BA0B4C:
/* 80BA0B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA0B50  7C 08 02 A6 */	mflr r0
/* 80BA0B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA0B58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA0B5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA0B60  7C 7F 1B 78 */	mr r31, r3
/* 80BA0B64  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BA0B68  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BA0B6C  38 80 00 10 */	li r4, 0x10
/* 80BA0B70  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BA0B74  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BA0B78  4B 60 2C 4D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BA0B7C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BA0B80  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BA0B84  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80BA0B88  80 84 00 04 */	lwz r4, 4(r4)
/* 80BA0B8C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BA0B90  4B 60 42 11 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BA0B94  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BA0B98  80 83 00 04 */	lwz r4, 4(r3)
/* 80BA0B9C  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80BA0BA0  80 63 00 08 */	lwz r3, 8(r3)
/* 80BA0BA4  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80BA0BA8  B0 03 00 24 */	sth r0, 0x24(r3)
/* 80BA0BAC  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80BA0BB0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80BA0BB4  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80BA0BB8  7C 00 00 D0 */	neg r0, r0
/* 80BA0BBC  B0 03 00 24 */	sth r0, 0x24(r3)
/* 80BA0BC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA0BC4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA0BC8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BA0BCC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BA0BD0  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BA0BD4  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80BA0BD8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BA0BDC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80BA0BE0  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BA0BE4  4B 46 D0 E1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BA0BE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA0BEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA0BF0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BA0BF4  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80BA0BF8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BA0BFC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80BA0C00  38 60 00 01 */	li r3, 1
/* 80BA0C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA0C08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA0C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA0C10  7C 08 03 A6 */	mtlr r0
/* 80BA0C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA0C18  4E 80 00 20 */	blr 
