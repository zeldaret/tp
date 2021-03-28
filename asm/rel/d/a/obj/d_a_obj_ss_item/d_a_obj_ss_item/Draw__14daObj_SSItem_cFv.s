lbl_80CE7610:
/* 80CE7610  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CE7614  7C 08 02 A6 */	mflr r0
/* 80CE7618  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CE761C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CE7620  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CE7624  7C 7E 1B 78 */	mr r30, r3
/* 80CE7628  3C 60 80 CE */	lis r3, mCcDObjInfo__14daObj_SSItem_c@ha
/* 80CE762C  3B E3 7E B0 */	addi r31, r3, mCcDObjInfo__14daObj_SSItem_c@l
/* 80CE7630  88 1E 0B 0E */	lbz r0, 0xb0e(r30)
/* 80CE7634  28 00 00 02 */	cmplwi r0, 2
/* 80CE7638  40 82 00 0C */	bne lbl_80CE7644
/* 80CE763C  38 60 00 01 */	li r3, 1
/* 80CE7640  48 00 00 B8 */	b lbl_80CE76F8
lbl_80CE7644:
/* 80CE7644  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CE7648  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CE764C  38 80 00 00 */	li r4, 0
/* 80CE7650  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CE7654  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CE7658  4B 4B C1 6C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CE765C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CE7660  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CE7664  80 9E 05 80 */	lwz r4, 0x580(r30)
/* 80CE7668  80 84 00 04 */	lwz r4, 4(r4)
/* 80CE766C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CE7670  4B 4B D7 30 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CE7674  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80CE7678  4B 32 66 4C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CE767C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80CE7680  C0 1E 0B 00 */	lfs f0, 0xb00(r30)
/* 80CE7684  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CE7688  41 82 00 6C */	beq lbl_80CE76F4
/* 80CE768C  3C 60 80 CE */	lis r3, __vt__8cM3dGPla@ha
/* 80CE7690  38 03 7F F8 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CE7694  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CE7698  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE769C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE76A0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CE76A4  38 9E 0A 64 */	addi r4, r30, 0xa64
/* 80CE76A8  38 A1 00 08 */	addi r5, r1, 8
/* 80CE76AC  4B 38 D0 98 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CE76B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CE76B4  41 82 00 34 */	beq lbl_80CE76E8
/* 80CE76B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE76BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE76C0  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80CE76C4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CE76C8  C0 3E 0B 00 */	lfs f1, 0xb00(r30)
/* 80CE76CC  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80CE76D0  38 A1 00 08 */	addi r5, r1, 8
/* 80CE76D4  38 C0 00 00 */	li r6, 0
/* 80CE76D8  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80CE76DC  3C E0 80 42 */	lis r7, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80CE76E0  38 E7 48 D0 */	addi r7, r7, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80CE76E4  4B 36 E8 A0 */	b setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj
lbl_80CE76E8:
/* 80CE76E8  3C 60 80 CE */	lis r3, __vt__8cM3dGPla@ha
/* 80CE76EC  38 03 7F F8 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80CE76F0  90 01 00 18 */	stw r0, 0x18(r1)
lbl_80CE76F4:
/* 80CE76F4  38 60 00 01 */	li r3, 1
lbl_80CE76F8:
/* 80CE76F8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CE76FC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CE7700  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CE7704  7C 08 03 A6 */	mtlr r0
/* 80CE7708  38 21 00 30 */	addi r1, r1, 0x30
/* 80CE770C  4E 80 00 20 */	blr 
