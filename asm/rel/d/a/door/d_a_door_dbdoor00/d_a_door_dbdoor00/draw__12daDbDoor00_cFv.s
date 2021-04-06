lbl_8045E31C:
/* 8045E31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E320  7C 08 02 A6 */	mflr r0
/* 8045E324  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045E32C  93 C1 00 08 */	stw r30, 8(r1)
/* 8045E330  7C 7F 1B 78 */	mr r31, r3
/* 8045E334  4B FF FF A9 */	bl checkDraw__12daDbDoor00_cFv
/* 8045E338  2C 03 00 00 */	cmpwi r3, 0
/* 8045E33C  40 82 00 34 */	bne lbl_8045E370
/* 8045E340  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 8045E344  28 00 00 00 */	cmplwi r0, 0
/* 8045E348  41 82 00 20 */	beq lbl_8045E368
/* 8045E34C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045E350  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045E354  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8045E358  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 8045E35C  4B C1 5E F5 */	bl Release__4cBgSFP9dBgW_Base
/* 8045E360  38 00 00 00 */	li r0, 0
/* 8045E364  98 1F 05 84 */	stb r0, 0x584(r31)
lbl_8045E368:
/* 8045E368  38 60 00 01 */	li r3, 1
/* 8045E36C  48 00 00 A4 */	b lbl_8045E410
lbl_8045E370:
/* 8045E370  88 1F 05 84 */	lbz r0, 0x584(r31)
/* 8045E374  28 00 00 00 */	cmplwi r0, 0
/* 8045E378  40 82 00 24 */	bne lbl_8045E39C
/* 8045E37C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045E380  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045E384  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8045E388  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 8045E38C  7F E5 FB 78 */	mr r5, r31
/* 8045E390  4B C1 66 79 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8045E394  38 00 00 01 */	li r0, 1
/* 8045E398  98 1F 05 84 */	stb r0, 0x584(r31)
lbl_8045E39C:
/* 8045E39C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8045E3A0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8045E3A4  38 80 00 10 */	li r4, 0x10
/* 8045E3A8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8045E3AC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8045E3B0  4B D4 54 15 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8045E3B4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8045E3B8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8045E3BC  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 8045E3C0  80 84 00 04 */	lwz r4, 4(r4)
/* 8045E3C4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8045E3C8  4B D4 69 D9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8045E3CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045E3D0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045E3D4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8045E3D8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8045E3DC  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 8045E3E0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8045E3E4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8045E3E8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8045E3EC  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 8045E3F0  4B BA F8 D5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8045E3F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045E3F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045E3FC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8045E400  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8045E404  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8045E408  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8045E40C  38 60 00 01 */	li r3, 1
lbl_8045E410:
/* 8045E410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045E414  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045E418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E41C  7C 08 03 A6 */	mtlr r0
/* 8045E420  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E424  4E 80 00 20 */	blr 
