lbl_80C3CD90:
/* 80C3CD90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C3CD94  7C 08 02 A6 */	mflr r0
/* 80C3CD98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C3CD9C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C3CDA0  4B 72 54 28 */	b _savegpr_24
/* 80C3CDA4  7C 7E 1B 78 */	mr r30, r3
/* 80C3CDA8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C3CDAC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C3CDB0  38 80 00 10 */	li r4, 0x10
/* 80C3CDB4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C3CDB8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C3CDBC  4B 56 6A 08 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C3CDC0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C3CDC4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C3CDC8  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C3CDCC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C3CDD0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C3CDD4  4B 56 7F CC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C3CDD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3CDDC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80C3CDE0  80 1F 5F 70 */	lwz r0, 0x5f70(r31)
/* 80C3CDE4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C3CDE8  3B 43 4A C8 */	addi r26, r3, j3dSys@l
/* 80C3CDEC  90 1A 00 48 */	stw r0, 0x48(r26)
/* 80C3CDF0  80 1F 5F 74 */	lwz r0, 0x5f74(r31)
/* 80C3CDF4  90 1A 00 4C */	stw r0, 0x4c(r26)
/* 80C3CDF8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C3CDFC  4B 3D 0E C8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C3CE00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3CE04  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80C3CE08  80 1B 5F 80 */	lwz r0, 0x5f80(r27)
/* 80C3CE0C  90 1A 00 48 */	stw r0, 0x48(r26)
/* 80C3CE10  80 1B 5F 84 */	lwz r0, 0x5f84(r27)
/* 80C3CE14  90 1A 00 4C */	stw r0, 0x4c(r26)
/* 80C3CE18  80 1E 07 38 */	lwz r0, 0x738(r30)
/* 80C3CE1C  2C 00 00 01 */	cmpwi r0, 1
/* 80C3CE20  40 82 00 0C */	bne lbl_80C3CE2C
/* 80C3CE24  38 60 00 01 */	li r3, 1
/* 80C3CE28  48 00 00 68 */	b lbl_80C3CE90
lbl_80C3CE2C:
/* 80C3CE2C  3B 20 00 00 */	li r25, 0
/* 80C3CE30  7F 3D CB 78 */	mr r29, r25
/* 80C3CE34  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C3CE38  3B 83 CA 54 */	addi r28, r3, g_env_light@l
lbl_80C3CE3C:
/* 80C3CE3C  7F 83 E3 78 */	mr r3, r28
/* 80C3CE40  3B 1D 05 6C */	addi r24, r29, 0x56c
/* 80C3CE44  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80C3CE48  80 84 00 04 */	lwz r4, 4(r4)
/* 80C3CE4C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C3CE50  4B 56 7F 50 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C3CE54  80 1F 5F 70 */	lwz r0, 0x5f70(r31)
/* 80C3CE58  90 1A 00 48 */	stw r0, 0x48(r26)
/* 80C3CE5C  80 1F 5F 74 */	lwz r0, 0x5f74(r31)
/* 80C3CE60  90 1A 00 4C */	stw r0, 0x4c(r26)
/* 80C3CE64  7C 7E C0 2E */	lwzx r3, r30, r24
/* 80C3CE68  4B 3D 0E 5C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C3CE6C  80 1B 5F 80 */	lwz r0, 0x5f80(r27)
/* 80C3CE70  90 1A 00 48 */	stw r0, 0x48(r26)
/* 80C3CE74  80 1B 5F 84 */	lwz r0, 0x5f84(r27)
/* 80C3CE78  90 1A 00 4C */	stw r0, 0x4c(r26)
/* 80C3CE7C  3B 39 00 01 */	addi r25, r25, 1
/* 80C3CE80  2C 19 00 04 */	cmpwi r25, 4
/* 80C3CE84  3B BD 00 04 */	addi r29, r29, 4
/* 80C3CE88  41 80 FF B4 */	blt lbl_80C3CE3C
/* 80C3CE8C  38 60 00 01 */	li r3, 1
lbl_80C3CE90:
/* 80C3CE90  39 61 00 30 */	addi r11, r1, 0x30
/* 80C3CE94  4B 72 53 80 */	b _restgpr_24
/* 80C3CE98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C3CE9C  7C 08 03 A6 */	mtlr r0
/* 80C3CEA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C3CEA4  4E 80 00 20 */	blr 
