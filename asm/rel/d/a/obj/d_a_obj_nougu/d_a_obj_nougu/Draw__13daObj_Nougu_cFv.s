lbl_80CA45F4:
/* 80CA45F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA45F8  7C 08 02 A6 */	mflr r0
/* 80CA45FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA4604  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA4608  7C 7E 1B 78 */	mr r30, r3
/* 80CA460C  3C 60 80 CA */	lis r3, m__19daObj_Nougu_Param_c@ha
/* 80CA4610  3B E3 49 B8 */	addi r31, r3, m__19daObj_Nougu_Param_c@l
/* 80CA4614  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CA4618  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CA461C  38 80 00 00 */	li r4, 0
/* 80CA4620  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CA4624  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CA4628  4B 4F F1 9C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CA462C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CA4630  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CA4634  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80CA4638  80 84 00 04 */	lwz r4, 4(r4)
/* 80CA463C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CA4640  4B 50 07 60 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CA4644  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CA4648  4B 36 96 7C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CA464C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80CA4650  C0 9E 0E 20 */	lfs f4, 0xe20(r30)
/* 80CA4654  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 80CA4658  41 82 00 44 */	beq lbl_80CA469C
/* 80CA465C  80 7E 0E 24 */	lwz r3, 0xe24(r30)
/* 80CA4660  38 80 00 01 */	li r4, 1
/* 80CA4664  80 BE 05 74 */	lwz r5, 0x574(r30)
/* 80CA4668  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80CA466C  38 FF 00 00 */	addi r7, r31, 0
/* 80CA4670  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 80CA4674  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80CA4678  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80CA467C  38 FE 07 E0 */	addi r7, r30, 0x7e0
/* 80CA4680  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80CA4684  39 20 00 00 */	li r9, 0
/* 80CA4688  C0 BF 00 3C */	lfs f5, 0x3c(r31)
/* 80CA468C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80CA4690  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80CA4694  4B 38 A2 7C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80CA4698  90 7E 0E 24 */	stw r3, 0xe24(r30)
lbl_80CA469C:
/* 80CA469C  38 60 00 01 */	li r3, 1
/* 80CA46A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA46A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA46A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA46AC  7C 08 03 A6 */	mtlr r0
/* 80CA46B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA46B4  4E 80 00 20 */	blr 
