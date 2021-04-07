lbl_80C120FC:
/* 80C120FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C12100  7C 08 02 A6 */	mflr r0
/* 80C12104  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C12108  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C1210C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C12110  7C 7E 1B 78 */	mr r30, r3
/* 80C12114  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C12118  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C1211C  38 80 00 00 */	li r4, 0
/* 80C12120  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C12124  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C12128  4B 59 16 9D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C1212C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C12130  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C12134  80 9E 05 C8 */	lwz r4, 0x5c8(r30)
/* 80C12138  80 84 00 04 */	lwz r4, 4(r4)
/* 80C1213C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C12140  4B 59 2C 61 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C12144  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C12148  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1214C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C12150  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C12154  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C12158  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C1215C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C12160  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C12164  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80C12168  80 83 00 04 */	lwz r4, 4(r3)
/* 80C1216C  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 80C12170  38 84 00 58 */	addi r4, r4, 0x58
/* 80C12174  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 80C12178  FC 00 00 1E */	fctiwz f0, f0
/* 80C1217C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C12180  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80C12184  4B 3F B4 65 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 80C12188  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 80C1218C  4B 3F BB 39 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C12190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C12194  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C12198  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C1219C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C121A0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C121A4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C121A8  38 60 00 01 */	li r3, 1
/* 80C121AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C121B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C121B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C121B8  7C 08 03 A6 */	mtlr r0
/* 80C121BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C121C0  4E 80 00 20 */	blr 
