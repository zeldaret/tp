lbl_80BB5E10:
/* 80BB5E10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB5E14  7C 08 02 A6 */	mflr r0
/* 80BB5E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB5E1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB5E20  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB5E24  7C 7E 1B 78 */	mr r30, r3
/* 80BB5E28  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BB5E2C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BB5E30  38 80 00 10 */	li r4, 0x10
/* 80BB5E34  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BB5E38  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BB5E3C  4B 5E D9 88 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BB5E40  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BB5E44  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BB5E48  80 9E 05 EC */	lwz r4, 0x5ec(r30)
/* 80BB5E4C  80 84 00 04 */	lwz r4, 4(r4)
/* 80BB5E50  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BB5E54  4B 5E EF 4C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BB5E58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB5E5C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BB5E60  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BB5E64  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BB5E68  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BB5E6C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BB5E70  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BB5E74  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BB5E78  80 7E 05 EC */	lwz r3, 0x5ec(r30)
/* 80BB5E7C  4B 45 7E 48 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BB5E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB5E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BB5E88  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BB5E8C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BB5E90  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BB5E94  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BB5E98  38 60 00 01 */	li r3, 1
/* 80BB5E9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB5EA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB5EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB5EA8  7C 08 03 A6 */	mtlr r0
/* 80BB5EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB5EB0  4E 80 00 20 */	blr 
