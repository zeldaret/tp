lbl_80CA98B8:
/* 80CA98B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA98BC  7C 08 02 A6 */	mflr r0
/* 80CA98C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA98C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA98C8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA98CC  7C 7E 1B 78 */	mr r30, r3
/* 80CA98D0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CA98D4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CA98D8  38 80 00 40 */	li r4, 0x40
/* 80CA98DC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CA98E0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CA98E4  4B 4F 9E E1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CA98E8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CA98EC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CA98F0  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80CA98F4  80 84 00 04 */	lwz r4, 4(r4)
/* 80CA98F8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CA98FC  4B 4F B4 A5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CA9900  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA9904  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA9908  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CA990C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CA9910  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CA9914  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CA9918  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CA991C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CA9920  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CA9924  4B 36 43 A1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CA9928  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA992C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA9930  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CA9934  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CA9938  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CA993C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CA9940  38 60 00 01 */	li r3, 1
/* 80CA9944  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA9948  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA994C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA9950  7C 08 03 A6 */	mtlr r0
/* 80CA9954  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA9958  4E 80 00 20 */	blr 
