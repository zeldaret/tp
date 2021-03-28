lbl_80C3D8F8:
/* 80C3D8F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C3D8FC  7C 08 02 A6 */	mflr r0
/* 80C3D900  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C3D904  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C3D908  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C3D90C  7C 7E 1B 78 */	mr r30, r3
/* 80C3D910  3C 60 80 C4 */	lis r3, lit_3648@ha
/* 80C3D914  3B E3 F0 58 */	addi r31, r3, lit_3648@l
/* 80C3D918  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C3D91C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C3D920  38 80 00 08 */	li r4, 8
/* 80C3D924  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C3D928  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C3D92C  4B 56 5E 98 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C3D930  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C3D934  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C3D938  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80C3D93C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C3D940  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C3D944  4B 56 74 5C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C3D948  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C3D94C  80 63 00 04 */	lwz r3, 4(r3)
/* 80C3D950  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80C3D954  80 63 00 00 */	lwz r3, 0(r3)
/* 80C3D958  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80C3D95C  38 80 00 01 */	li r4, 1
/* 80C3D960  81 83 00 00 */	lwz r12, 0(r3)
/* 80C3D964  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80C3D968  7D 89 03 A6 */	mtctr r12
/* 80C3D96C  4E 80 04 21 */	bctrl 
/* 80C3D970  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C3D974  C0 1E 05 9C */	lfs f0, 0x59c(r30)
/* 80C3D978  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C3D97C  FC 00 00 1E */	fctiwz f0, f0
/* 80C3D980  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C3D984  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C3D988  98 03 00 03 */	stb r0, 3(r3)
/* 80C3D98C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C3D990  4B 3D 03 34 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C3D994  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80C3D998  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C3D99C  40 82 00 60 */	bne lbl_80C3D9FC
/* 80C3D9A0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C3D9A4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C3D9A8  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80C3D9AC  EC 20 18 2A */	fadds f1, f0, f3
/* 80C3D9B0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C3D9B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C3D9B8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C3D9BC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C3D9C0  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80C3D9C4  38 80 00 01 */	li r4, 1
/* 80C3D9C8  80 BE 05 74 */	lwz r5, 0x574(r30)
/* 80C3D9CC  38 C1 00 08 */	addi r6, r1, 8
/* 80C3D9D0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80C3D9D4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80C3D9D8  C0 9E 06 98 */	lfs f4, 0x698(r30)
/* 80C3D9DC  38 FE 06 F0 */	addi r7, r30, 0x6f0
/* 80C3D9E0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80C3D9E4  39 20 00 00 */	li r9, 0
/* 80C3D9E8  C0 BF 00 18 */	lfs f5, 0x18(r31)
/* 80C3D9EC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80C3D9F0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80C3D9F4  4B 3F 0F 1C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80C3D9F8  90 7E 05 84 */	stw r3, 0x584(r30)
lbl_80C3D9FC:
/* 80C3D9FC  38 60 00 01 */	li r3, 1
/* 80C3DA00  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C3DA04  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C3DA08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C3DA0C  7C 08 03 A6 */	mtlr r0
/* 80C3DA10  38 21 00 30 */	addi r1, r1, 0x30
/* 80C3DA14  4E 80 00 20 */	blr 
