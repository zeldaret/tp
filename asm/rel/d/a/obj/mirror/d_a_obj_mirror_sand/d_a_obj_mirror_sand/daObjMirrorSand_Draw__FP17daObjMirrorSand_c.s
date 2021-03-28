lbl_80C98598:
/* 80C98598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9859C  7C 08 02 A6 */	mflr r0
/* 80C985A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C985A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C985A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C985AC  7C 7F 1B 78 */	mr r31, r3
/* 80C985B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C985B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C985B8  38 80 00 10 */	li r4, 0x10
/* 80C985BC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C985C0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C985C4  4B 50 B2 00 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C985C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C985CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C985D0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C985D4  80 84 00 04 */	lwz r4, 4(r4)
/* 80C985D8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C985DC  4B 50 C7 C4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C985E0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C985E4  80 83 00 04 */	lwz r4, 4(r3)
/* 80C985E8  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80C985EC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C985F0  4B 37 53 DC */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C985F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C985F8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C985FC  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C98600  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C98604  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80C98608  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C9860C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C98610  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C98614  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C98618  4B 37 56 AC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C9861C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C98620  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C98624  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C98628  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C9862C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C98630  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C98634  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C98638  80 63 00 04 */	lwz r3, 4(r3)
/* 80C9863C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C98640  80 63 00 00 */	lwz r3, 0(r3)
/* 80C98644  38 00 00 00 */	li r0, 0
/* 80C98648  90 03 00 54 */	stw r0, 0x54(r3)
/* 80C9864C  38 60 00 01 */	li r3, 1
/* 80C98650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C98654  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C98658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9865C  7C 08 03 A6 */	mtlr r0
/* 80C98660  38 21 00 10 */	addi r1, r1, 0x10
/* 80C98664  4E 80 00 20 */	blr 
