lbl_80CCBA58:
/* 80CCBA58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CCBA5C  7C 08 02 A6 */	mflr r0
/* 80CCBA60  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CCBA64  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCBA68  4B 69 67 74 */	b _savegpr_29
/* 80CCBA6C  7C 7E 1B 78 */	mr r30, r3
/* 80CCBA70  3C 60 80 CD */	lis r3, lit_3832@ha
/* 80CCBA74  3B E3 CC 38 */	addi r31, r3, lit_3832@l
/* 80CCBA78  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CCBA7C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CCBA80  38 80 00 08 */	li r4, 8
/* 80CCBA84  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CCBA88  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CCBA8C  4B 4D 7D 38 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CCBA90  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CCBA94  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CCBA98  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80CCBA9C  80 84 00 04 */	lwz r4, 4(r4)
/* 80CCBAA0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CCBAA4  4B 4D 92 FC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CCBAA8  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CCBAAC  80 83 00 04 */	lwz r4, 4(r3)
/* 80CCBAB0  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CCBAB4  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80CCBAB8  4B 34 1F 14 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80CCBABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCBAC0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CCBAC4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CCBAC8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CCBACC  3B A3 4A C8 */	addi r29, r3, j3dSys@l
/* 80CCBAD0  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80CCBAD4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CCBAD8  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80CCBADC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CCBAE0  4B 34 21 E4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CCBAE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCBAE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCBAEC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CCBAF0  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80CCBAF4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CCBAF8  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80CCBAFC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80CCBB00  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80CCBB04  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CCBB08  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CCBB0C  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80CCBB10  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CCBB14  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 80CCBB18  38 80 00 01 */	li r4, 1
/* 80CCBB1C  80 BE 05 74 */	lwz r5, 0x574(r30)
/* 80CCBB20  38 C1 00 08 */	addi r6, r1, 8
/* 80CCBB24  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CCBB28  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80CCBB2C  C0 9E 05 D8 */	lfs f4, 0x5d8(r30)
/* 80CCBB30  38 FE 05 98 */	addi r7, r30, 0x598
/* 80CCBB34  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80CCBB38  39 20 00 00 */	li r9, 0
/* 80CCBB3C  C0 BF 00 14 */	lfs f5, 0x14(r31)
/* 80CCBB40  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80CCBB44  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80CCBB48  4B 36 2D C8 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80CCBB4C  90 7E 05 DC */	stw r3, 0x5dc(r30)
/* 80CCBB50  38 60 00 01 */	li r3, 1
/* 80CCBB54  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCBB58  4B 69 66 D0 */	b _restgpr_29
/* 80CCBB5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CCBB60  7C 08 03 A6 */	mtlr r0
/* 80CCBB64  38 21 00 30 */	addi r1, r1, 0x30
/* 80CCBB68  4E 80 00 20 */	blr 
