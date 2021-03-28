lbl_80C18FBC:
/* 80C18FBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18FC0  7C 08 02 A6 */	mflr r0
/* 80C18FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18FC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C18FCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C18FD0  7C 7E 1B 78 */	mr r30, r3
/* 80C18FD4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C18FD8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C18FDC  38 80 00 10 */	li r4, 0x10
/* 80C18FE0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C18FE4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C18FE8  4B 58 A7 DC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C18FEC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C18FF0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C18FF4  80 9E 05 88 */	lwz r4, 0x588(r30)
/* 80C18FF8  80 84 00 04 */	lwz r4, 4(r4)
/* 80C18FFC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C19000  4B 58 BD A0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C19004  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C19008  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C1900C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C19010  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C19014  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C19018  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C1901C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C19020  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C19024  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 80C19028  4B 3F 4C 9C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C1902C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C19030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C19034  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C19038  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C1903C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C19040  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C19044  38 60 00 01 */	li r3, 1
/* 80C19048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1904C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C19050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C19054  7C 08 03 A6 */	mtlr r0
/* 80C19058  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1905C  4E 80 00 20 */	blr 
