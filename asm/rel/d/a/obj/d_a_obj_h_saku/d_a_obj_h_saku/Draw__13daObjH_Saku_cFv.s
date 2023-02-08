lbl_80C16340:
/* 80C16340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C16344  7C 08 02 A6 */	mflr r0
/* 80C16348  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1634C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16350  93 C1 00 08 */	stw r30, 8(r1)
/* 80C16354  7C 7E 1B 78 */	mr r30, r3
/* 80C16358  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C1635C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C16360  38 80 00 10 */	li r4, 0x10
/* 80C16364  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C16368  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C1636C  4B 58 D4 59 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C16370  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C16374  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C16378  80 9E 06 28 */	lwz r4, 0x628(r30)
/* 80C1637C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C16380  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C16384  4B 58 EA 1D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C16388  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C1638C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C16390  80 9E 06 2C */	lwz r4, 0x62c(r30)
/* 80C16394  80 84 00 04 */	lwz r4, 4(r4)
/* 80C16398  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C1639C  4B 58 EA 05 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C163A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C163A4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C163A8  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C163AC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C163B0  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C163B4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C163B8  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C163BC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C163C0  88 1E 05 DE */	lbz r0, 0x5de(r30)
/* 80C163C4  2C 00 00 01 */	cmpwi r0, 1
/* 80C163C8  41 82 00 0C */	beq lbl_80C163D4
/* 80C163CC  80 7E 06 2C */	lwz r3, 0x62c(r30)
/* 80C163D0  4B 3F 78 F5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80C163D4:
/* 80C163D4  88 1E 05 DE */	lbz r0, 0x5de(r30)
/* 80C163D8  2C 00 00 11 */	cmpwi r0, 0x11
/* 80C163DC  41 82 00 0C */	beq lbl_80C163E8
/* 80C163E0  80 7E 06 28 */	lwz r3, 0x628(r30)
/* 80C163E4  4B 3F 78 E1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80C163E8:
/* 80C163E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C163EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C163F0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C163F4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C163F8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C163FC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C16400  38 60 00 01 */	li r3, 1
/* 80C16404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C16408  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1640C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16410  7C 08 03 A6 */	mtlr r0
/* 80C16414  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16418  4E 80 00 20 */	blr 
