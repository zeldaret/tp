lbl_8067228C:
/* 8067228C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80672290  7C 08 02 A6 */	mflr r0
/* 80672294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80672298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067229C  93 C1 00 08 */	stw r30, 8(r1)
/* 806722A0  7C 7E 1B 78 */	mr r30, r3
/* 806722A4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806722A8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806722AC  38 80 00 10 */	li r4, 0x10
/* 806722B0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806722B4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 806722B8  4B B3 15 0C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806722BC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806722C0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806722C4  80 9E 05 80 */	lwz r4, 0x580(r30)
/* 806722C8  80 84 00 04 */	lwz r4, 4(r4)
/* 806722CC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 806722D0  4B B3 2A D0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806722D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806722D8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 806722DC  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 806722E0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 806722E4  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 806722E8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 806722EC  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 806722F0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 806722F4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806722F8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806722FC  80 9E 05 80 */	lwz r4, 0x580(r30)
/* 80672300  80 84 00 04 */	lwz r4, 4(r4)
/* 80672304  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80672308  4B B3 2A 98 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8067230C  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80672310  80 83 00 04 */	lwz r4, 4(r3)
/* 80672314  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80672318  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8067231C  4B 99 B6 B0 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80672320  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80672324  4B 99 B9 A0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80672328  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 8067232C  80 63 00 04 */	lwz r3, 4(r3)
/* 80672330  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80672334  80 63 00 00 */	lwz r3, 0(r3)
/* 80672338  38 00 00 00 */	li r0, 0
/* 8067233C  90 03 00 54 */	stw r0, 0x54(r3)
/* 80672340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80672344  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80672348  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8067234C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80672350  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80672354  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80672358  38 60 00 01 */	li r3, 1
/* 8067235C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80672360  83 C1 00 08 */	lwz r30, 8(r1)
/* 80672364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80672368  7C 08 03 A6 */	mtlr r0
/* 8067236C  38 21 00 10 */	addi r1, r1, 0x10
/* 80672370  4E 80 00 20 */	blr 
