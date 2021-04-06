lbl_80D200B4:
/* 80D200B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D200B8  7C 08 02 A6 */	mflr r0
/* 80D200BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D200C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D200C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D200C8  7C 7E 1B 78 */	mr r30, r3
/* 80D200CC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D200D0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D200D4  38 80 00 10 */	li r4, 0x10
/* 80D200D8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D200DC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D200E0  4B 48 36 E5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D200E4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D200E8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D200EC  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80D200F0  80 84 00 04 */	lwz r4, 4(r4)
/* 80D200F4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D200F8  4B 48 4C A9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D200FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D20100  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D20104  80 04 5F 78 */	lwz r0, 0x5f78(r4)
/* 80D20108  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D2010C  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D20110  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D20114  80 04 5F 7C */	lwz r0, 0x5f7c(r4)
/* 80D20118  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D2011C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D20120  4B 2E DB A5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D20124  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D20128  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2012C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D20130  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D20134  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D20138  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D2013C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D20140  83 E3 00 04 */	lwz r31, 4(r3)
/* 80D20144  C0 3E 05 BC */	lfs f1, 0x5bc(r30)
/* 80D20148  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80D2014C  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D20150  4B 2E D5 89 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D20154  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 80D20158  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80D2015C  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D20160  4B 2E D6 49 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D20164  38 60 00 01 */	li r3, 1
/* 80D20168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2016C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D20170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D20174  7C 08 03 A6 */	mtlr r0
/* 80D20178  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2017C  4E 80 00 20 */	blr 
