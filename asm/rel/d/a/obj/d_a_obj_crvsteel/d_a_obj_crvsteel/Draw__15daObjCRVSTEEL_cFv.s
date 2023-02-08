lbl_80BD6138:
/* 80BD6138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD613C  7C 08 02 A6 */	mflr r0
/* 80BD6140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD6144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD6148  7C 7F 1B 78 */	mr r31, r3
/* 80BD614C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD6150  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD6154  38 80 00 08 */	li r4, 8
/* 80BD6158  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BD615C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BD6160  4B 5C D6 65 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BD6164  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BD6168  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BD616C  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80BD6170  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD6174  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BD6178  4B 5C EC 29 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BD617C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD6180  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD6184  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BD6188  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BD618C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BD6190  90 03 00 48 */	stw r0, 0x48(r3)
/* 80BD6194  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BD6198  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80BD619C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80BD61A0  4B 43 7B 25 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BD61A4  38 60 00 01 */	li r3, 1
/* 80BD61A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD61AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD61B0  7C 08 03 A6 */	mtlr r0
/* 80BD61B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD61B8  4E 80 00 20 */	blr 
