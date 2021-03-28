lbl_80C67104:
/* 80C67104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67108  7C 08 02 A6 */	mflr r0
/* 80C6710C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67110  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C67114  93 C1 00 08 */	stw r30, 8(r1)
/* 80C67118  7C 7E 1B 78 */	mr r30, r3
/* 80C6711C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C67120  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C67124  38 80 00 10 */	li r4, 0x10
/* 80C67128  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C6712C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C67130  4B 53 C6 94 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C67134  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C67138  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C6713C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C67140  80 84 00 04 */	lwz r4, 4(r4)
/* 80C67144  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C67148  4B 53 DC 58 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C6714C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C67150  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C67154  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C67158  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C6715C  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C67160  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C67164  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C67168  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C6716C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C67170  4B 3A 6B 54 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C67174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C67178  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6717C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C67180  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C67184  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C67188  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C6718C  38 60 00 01 */	li r3, 1
/* 80C67190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C67194  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C67198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6719C  7C 08 03 A6 */	mtlr r0
/* 80C671A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C671A4  4E 80 00 20 */	blr 
