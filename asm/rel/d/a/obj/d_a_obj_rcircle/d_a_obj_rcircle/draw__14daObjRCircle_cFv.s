lbl_80CB8A5C:
/* 80CB8A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8A60  7C 08 02 A6 */	mflr r0
/* 80CB8A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8A68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB8A6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB8A70  7C 7E 1B 78 */	mr r30, r3
/* 80CB8A74  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CB8A78  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CB8A7C  38 80 00 10 */	li r4, 0x10
/* 80CB8A80  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CB8A84  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CB8A88  4B 4E AD 3D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CB8A8C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CB8A90  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CB8A94  80 9E 05 A4 */	lwz r4, 0x5a4(r30)
/* 80CB8A98  80 84 00 04 */	lwz r4, 4(r4)
/* 80CB8A9C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CB8AA0  4B 4E C3 01 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CB8AA4  80 7E 05 A4 */	lwz r3, 0x5a4(r30)
/* 80CB8AA8  83 E3 00 04 */	lwz r31, 4(r3)
/* 80CB8AAC  C0 3E 05 9C */	lfs f1, 0x59c(r30)
/* 80CB8AB0  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80CB8AB4  38 9F 00 58 */	addi r4, r31, 0x58
/* 80CB8AB8  4B 35 4C 21 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CB8ABC  C0 3E 05 84 */	lfs f1, 0x584(r30)
/* 80CB8AC0  38 7E 05 74 */	addi r3, r30, 0x574
/* 80CB8AC4  38 9F 00 58 */	addi r4, r31, 0x58
/* 80CB8AC8  4B 35 4C E1 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80CB8ACC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB8AD0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB8AD4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CB8AD8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CB8ADC  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CB8AE0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CB8AE4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CB8AE8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CB8AEC  80 7E 05 A4 */	lwz r3, 0x5a4(r30)
/* 80CB8AF0  4B 35 51 D5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CB8AF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB8AF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB8AFC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CB8B00  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CB8B04  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CB8B08  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CB8B0C  38 60 00 01 */	li r3, 1
/* 80CB8B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB8B14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB8B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8B1C  7C 08 03 A6 */	mtlr r0
/* 80CB8B20  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8B24  4E 80 00 20 */	blr 
