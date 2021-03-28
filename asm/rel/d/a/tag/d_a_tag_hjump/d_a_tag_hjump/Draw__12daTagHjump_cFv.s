lbl_805A4154:
/* 805A4154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4158  7C 08 02 A6 */	mflr r0
/* 805A415C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A4164  93 C1 00 08 */	stw r30, 8(r1)
/* 805A4168  7C 7E 1B 78 */	mr r30, r3
/* 805A416C  88 03 05 AC */	lbz r0, 0x5ac(r3)
/* 805A4170  28 00 00 00 */	cmplwi r0, 0
/* 805A4174  41 82 00 74 */	beq lbl_805A41E8
/* 805A4178  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805A417C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805A4180  38 80 00 10 */	li r4, 0x10
/* 805A4184  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805A4188  38 DE 01 0C */	addi r6, r30, 0x10c
/* 805A418C  4B BF F6 38 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805A4190  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805A4194  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805A4198  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 805A419C  80 84 00 04 */	lwz r4, 4(r4)
/* 805A41A0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 805A41A4  4B C0 0B FC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805A41A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A41AC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 805A41B0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 805A41B4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 805A41B8  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 805A41BC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 805A41C0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 805A41C4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 805A41C8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 805A41CC  4B A6 9A F8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 805A41D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A41D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A41D8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 805A41DC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 805A41E0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 805A41E4  90 1F 00 4C */	stw r0, 0x4c(r31)
lbl_805A41E8:
/* 805A41E8  38 60 00 01 */	li r3, 1
/* 805A41EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A41F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A41F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A41F8  7C 08 03 A6 */	mtlr r0
/* 805A41FC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4200  4E 80 00 20 */	blr 
