lbl_80C575F4:
/* 80C575F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C575F8  7C 08 02 A6 */	mflr r0
/* 80C575FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C57604  93 C1 00 08 */	stw r30, 8(r1)
/* 80C57608  7C 7E 1B 78 */	mr r30, r3
/* 80C5760C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C57610  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C57614  38 80 00 40 */	li r4, 0x40
/* 80C57618  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C5761C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C57620  4B 54 C1 A4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C57624  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C57628  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C5762C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C57630  80 84 00 04 */	lwz r4, 4(r4)
/* 80C57634  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C57638  4B 54 D7 68 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C5763C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C57640  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C57644  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C57648  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C5764C  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C57650  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C57654  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C57658  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C5765C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C57660  4B 3B 66 64 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C57664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C57668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5766C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C57670  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C57674  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C57678  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C5767C  38 60 00 01 */	li r3, 1
/* 80C57680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C57684  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C57688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5768C  7C 08 03 A6 */	mtlr r0
/* 80C57690  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57694  4E 80 00 20 */	blr 
