lbl_80C72EE0:
/* 80C72EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C72EE4  7C 08 02 A6 */	mflr r0
/* 80C72EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C72EEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C72EF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C72EF4  7C 7E 1B 78 */	mr r30, r3
/* 80C72EF8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C72EFC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C72F00  38 80 00 10 */	li r4, 0x10
/* 80C72F04  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C72F08  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C72F0C  4B 53 08 B8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C72F10  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C72F14  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C72F18  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C72F1C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C72F20  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C72F24  4B 53 1E 7C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C72F28  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C72F2C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C72F30  7F C3 F3 78 */	mr r3, r30
/* 80C72F34  4B 3A A4 F8 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80C72F38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C72F3C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C72F40  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C72F44  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C72F48  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C72F4C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C72F50  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C72F54  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C72F58  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C72F5C  4B 39 AD 68 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C72F60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C72F64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C72F68  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C72F6C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C72F70  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C72F74  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C72F78  38 60 00 01 */	li r3, 1
/* 80C72F7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C72F80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C72F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C72F88  7C 08 03 A6 */	mtlr r0
/* 80C72F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C72F90  4E 80 00 20 */	blr 
