lbl_80D3D32C:
/* 80D3D32C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3D330  7C 08 02 A6 */	mflr r0
/* 80D3D334  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3D338  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D3D33C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D3D340  7C 7E 1B 78 */	mr r30, r3
/* 80D3D344  3C 60 80 D4 */	lis r3, mCcDObjInfo__12daObj_YBag_c@ha
/* 80D3D348  3B E3 DC 8C */	addi r31, r3, mCcDObjInfo__12daObj_YBag_c@l
/* 80D3D34C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D3D350  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D3D354  38 80 00 00 */	li r4, 0
/* 80D3D358  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D3D35C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D3D360  4B 46 64 64 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D3D364  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D3D368  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D3D36C  80 9E 05 80 */	lwz r4, 0x580(r30)
/* 80D3D370  80 84 00 04 */	lwz r4, 4(r4)
/* 80D3D374  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D3D378  4B 46 7A 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D3D37C  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80D3D380  4B 2D 09 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D3D384  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80D3D388  C0 1E 09 F0 */	lfs f0, 0x9f0(r30)
/* 80D3D38C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D3D390  41 82 00 8C */	beq lbl_80D3D41C
/* 80D3D394  38 00 00 00 */	li r0, 0
/* 80D3D398  90 01 00 08 */	stw r0, 8(r1)
/* 80D3D39C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3D3A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3D3A4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D3D3A8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D3D3AC  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80D3D3B0  7D 89 03 A6 */	mtctr r12
/* 80D3D3B4  4E 80 04 21 */	bctrl 
/* 80D3D3B8  38 81 00 08 */	addi r4, r1, 8
/* 80D3D3BC  4B 2D C6 00 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80D3D3C0  80 01 00 08 */	lwz r0, 8(r1)
/* 80D3D3C4  7C 1E 00 40 */	cmplw r30, r0
/* 80D3D3C8  40 82 00 10 */	bne lbl_80D3D3D8
/* 80D3D3CC  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 80D3D3D0  90 1E 05 24 */	stw r0, 0x524(r30)
/* 80D3D3D4  48 00 00 48 */	b lbl_80D3D41C
lbl_80D3D3D8:
/* 80D3D3D8  80 7E 0A 0C */	lwz r3, 0xa0c(r30)
/* 80D3D3DC  38 80 00 01 */	li r4, 1
/* 80D3D3E0  80 BE 05 80 */	lwz r5, 0x580(r30)
/* 80D3D3E4  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D3D3E8  38 FF 00 30 */	addi r7, r31, 0x30
/* 80D3D3EC  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 80D3D3F0  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80D3D3F4  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80D3D3F8  C0 9E 09 F0 */	lfs f4, 0x9f0(r30)
/* 80D3D3FC  38 FE 09 2C */	addi r7, r30, 0x92c
/* 80D3D400  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80D3D404  39 20 00 00 */	li r9, 0
/* 80D3D408  C0 BF 00 94 */	lfs f5, 0x94(r31)
/* 80D3D40C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80D3D410  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80D3D414  4B 2F 14 FC */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80D3D418  90 7E 0A 0C */	stw r3, 0xa0c(r30)
lbl_80D3D41C:
/* 80D3D41C  38 60 00 01 */	li r3, 1
/* 80D3D420  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D3D424  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D3D428  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3D42C  7C 08 03 A6 */	mtlr r0
/* 80D3D430  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3D434  4E 80 00 20 */	blr 
