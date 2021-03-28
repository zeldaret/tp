lbl_807F7E18:
/* 807F7E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F7E1C  7C 08 02 A6 */	mflr r0
/* 807F7E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F7E24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F7E28  93 C1 00 08 */	stw r30, 8(r1)
/* 807F7E2C  7C 7E 1B 78 */	mr r30, r3
/* 807F7E30  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807F7E34  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807F7E38  38 80 00 02 */	li r4, 2
/* 807F7E3C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807F7E40  38 DE 01 0C */	addi r6, r30, 0x10c
/* 807F7E44  4B 9A B9 80 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807F7E48  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807F7E4C  80 83 00 04 */	lwz r4, 4(r3)
/* 807F7E50  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807F7E54  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807F7E58  80 84 00 04 */	lwz r4, 4(r4)
/* 807F7E5C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 807F7E60  4B 9A CF 40 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807F7E64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F7E68  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 807F7E6C  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 807F7E70  3C 60 80 43 */	lis r3, j3dSys@ha
/* 807F7E74  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 807F7E78  90 1F 00 48 */	stw r0, 0x48(r31)
/* 807F7E7C  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 807F7E80  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 807F7E84  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807F7E88  4B 81 87 F8 */	b entryDL__14mDoExt_McaMorfFv
/* 807F7E8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F7E90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807F7E94  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 807F7E98  90 1F 00 48 */	stw r0, 0x48(r31)
/* 807F7E9C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 807F7EA0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 807F7EA4  38 60 00 01 */	li r3, 1
/* 807F7EA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F7EAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 807F7EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F7EB4  7C 08 03 A6 */	mtlr r0
/* 807F7EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 807F7EBC  4E 80 00 20 */	blr 
