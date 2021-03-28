lbl_805949C8:
/* 805949C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805949CC  7C 08 02 A6 */	mflr r0
/* 805949D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805949D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805949D8  93 C1 00 08 */	stw r30, 8(r1)
/* 805949DC  7C 7E 1B 78 */	mr r30, r3
/* 805949E0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805949E4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805949E8  38 80 00 10 */	li r4, 0x10
/* 805949EC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805949F0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 805949F4  4B C0 ED D0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805949F8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805949FC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80594A00  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80594A04  80 84 00 04 */	lwz r4, 4(r4)
/* 80594A08  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80594A0C  4B C1 03 94 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80594A10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80594A14  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80594A18  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80594A1C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80594A20  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80594A24  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80594A28  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80594A2C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80594A30  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80594A34  4B A7 92 90 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80594A38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80594A3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80594A40  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80594A44  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80594A48  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80594A4C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80594A50  38 60 00 01 */	li r3, 1
/* 80594A54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594A58  83 C1 00 08 */	lwz r30, 8(r1)
/* 80594A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594A60  7C 08 03 A6 */	mtlr r0
/* 80594A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80594A68  4E 80 00 20 */	blr 
