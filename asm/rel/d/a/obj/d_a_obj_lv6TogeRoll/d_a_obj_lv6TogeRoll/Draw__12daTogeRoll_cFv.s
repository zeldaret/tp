lbl_80C79714:
/* 80C79714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C79718  7C 08 02 A6 */	mflr r0
/* 80C7971C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C79720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C79724  93 C1 00 08 */	stw r30, 8(r1)
/* 80C79728  7C 7E 1B 78 */	mr r30, r3
/* 80C7972C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C79730  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C79734  38 80 00 40 */	li r4, 0x40
/* 80C79738  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C7973C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C79740  4B 52 A0 84 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C79744  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C79748  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C7974C  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C79750  80 84 00 04 */	lwz r4, 4(r4)
/* 80C79754  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C79758  4B 52 B6 48 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C7975C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C79760  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C79764  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C79768  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C7976C  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C79770  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C79774  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C79778  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C7977C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C79780  4B 39 45 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C79784  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C79788  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C7978C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C79790  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C79794  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C79798  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C7979C  38 60 00 01 */	li r3, 1
/* 80C797A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C797A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C797A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C797AC  7C 08 03 A6 */	mtlr r0
/* 80C797B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C797B4  4E 80 00 20 */	blr 
