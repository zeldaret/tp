lbl_80D3FCE8:
/* 80D3FCE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3FCEC  7C 08 02 A6 */	mflr r0
/* 80D3FCF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3FCF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3FCF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3FCFC  7C 7E 1B 78 */	mr r30, r3
/* 80D3FD00  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D3FD04  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D3FD08  38 80 00 10 */	li r4, 0x10
/* 80D3FD0C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D3FD10  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D3FD14  4B 46 3A B1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D3FD18  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D3FD1C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D3FD20  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80D3FD24  80 84 00 04 */	lwz r4, 4(r4)
/* 80D3FD28  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D3FD2C  4B 46 50 75 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D3FD30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3FD34  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3FD38  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D3FD3C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D3FD40  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D3FD44  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D3FD48  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D3FD4C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D3FD50  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D3FD54  4B 2C DF 71 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D3FD58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3FD5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3FD60  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D3FD64  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D3FD68  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D3FD6C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D3FD70  38 60 00 01 */	li r3, 1
/* 80D3FD74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3FD78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3FD7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3FD80  7C 08 03 A6 */	mtlr r0
/* 80D3FD84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3FD88  4E 80 00 20 */	blr 
