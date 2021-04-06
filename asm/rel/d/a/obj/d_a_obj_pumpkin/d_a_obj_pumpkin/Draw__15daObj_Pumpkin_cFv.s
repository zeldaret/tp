lbl_80CB7638:
/* 80CB7638  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CB763C  7C 08 02 A6 */	mflr r0
/* 80CB7640  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CB7644  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CB7648  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CB764C  7C 7E 1B 78 */	mr r30, r3
/* 80CB7650  3C 60 80 CC */	lis r3, m__21daObj_Pumpkin_Param_c@ha /* 0x80CB8370@ha */
/* 80CB7654  3B E3 83 70 */	addi r31, r3, m__21daObj_Pumpkin_Param_c@l /* 0x80CB8370@l */
/* 80CB7658  88 1E 0B B0 */	lbz r0, 0xbb0(r30)
/* 80CB765C  28 00 00 00 */	cmplwi r0, 0
/* 80CB7660  40 82 01 60 */	bne lbl_80CB77C0
/* 80CB7664  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CB7668  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CB766C  38 80 00 00 */	li r4, 0
/* 80CB7670  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CB7674  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CB7678  4B 4E C1 4D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CB767C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CB7680  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CB7684  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80CB7688  80 84 00 04 */	lwz r4, 4(r4)
/* 80CB768C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CB7690  4B 4E D7 11 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CB7694  88 1E 0B A8 */	lbz r0, 0xba8(r30)
/* 80CB7698  28 00 00 00 */	cmplwi r0, 0
/* 80CB769C  40 82 00 24 */	bne lbl_80CB76C0
/* 80CB76A0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CB76A4  80 63 00 04 */	lwz r3, 4(r3)
/* 80CB76A8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80CB76AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB76B0  80 63 00 08 */	lwz r3, 8(r3)
/* 80CB76B4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80CB76B8  60 00 00 01 */	ori r0, r0, 1
/* 80CB76BC  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80CB76C0:
/* 80CB76C0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CB76C4  4B 35 66 01 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CB76C8  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CB76CC  80 63 00 04 */	lwz r3, 4(r3)
/* 80CB76D0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80CB76D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB76D8  80 63 00 08 */	lwz r3, 8(r3)
/* 80CB76DC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80CB76E0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CB76E4  90 03 00 0C */	stw r0, 0xc(r3)
/* 80CB76E8  38 00 00 00 */	li r0, 0
/* 80CB76EC  90 01 00 08 */	stw r0, 8(r1)
/* 80CB76F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB76F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB76F8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CB76FC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CB7700  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80CB7704  7D 89 03 A6 */	mtctr r12
/* 80CB7708  4E 80 04 21 */	bctrl 
/* 80CB770C  38 81 00 08 */	addi r4, r1, 8
/* 80CB7710  4B 36 22 AD */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80CB7714  80 01 00 08 */	lwz r0, 8(r1)
/* 80CB7718  7C 00 F0 40 */	cmplw r0, r30
/* 80CB771C  40 82 00 10 */	bne lbl_80CB772C
/* 80CB7720  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80CB7724  90 1E 05 24 */	stw r0, 0x524(r30)
/* 80CB7728  48 00 00 98 */	b lbl_80CB77C0
lbl_80CB772C:
/* 80CB772C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80CB7730  C0 1E 0B 60 */	lfs f0, 0xb60(r30)
/* 80CB7734  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CB7738  41 82 00 88 */	beq lbl_80CB77C0
/* 80CB773C  3C 60 80 CC */	lis r3, __vt__8cM3dGPla@ha /* 0x80CB8538@ha */
/* 80CB7740  38 03 85 38 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CB8538@l */
/* 80CB7744  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CB7748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB774C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB7750  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CB7754  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80CB7758  38 A1 00 0C */	addi r5, r1, 0xc
/* 80CB775C  4B 3B CF E9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CB7760  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CB7764  41 82 00 50 */	beq lbl_80CB77B4
/* 80CB7768  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB776C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB7770  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80CB7774  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CB7778  C0 3E 0B 60 */	lfs f1, 0xb60(r30)
/* 80CB777C  C0 9F 00 68 */	lfs f4, 0x68(r31)
/* 80CB7780  C0 7E 04 EC */	lfs f3, 0x4ec(r30)
/* 80CB7784  38 BF 00 00 */	addi r5, r31, 0
/* 80CB7788  C0 45 00 08 */	lfs f2, 8(r5)
/* 80CB778C  C0 1E 0B 18 */	lfs f0, 0xb18(r30)
/* 80CB7790  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CB7794  EC 03 00 24 */	fdivs f0, f3, f0
/* 80CB7798  EC 44 00 32 */	fmuls f2, f4, f0
/* 80CB779C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80CB77A0  38 C0 00 00 */	li r6, 0
/* 80CB77A4  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80CB77A8  3C E0 80 42 */	lis r7, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80CB77AC  38 E7 48 D0 */	addi r7, r7, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80CB77B0  4B 39 E7 D5 */	bl setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj
lbl_80CB77B4:
/* 80CB77B4  3C 60 80 CC */	lis r3, __vt__8cM3dGPla@ha /* 0x80CB8538@ha */
/* 80CB77B8  38 03 85 38 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CB8538@l */
/* 80CB77BC  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_80CB77C0:
/* 80CB77C0  38 60 00 01 */	li r3, 1
/* 80CB77C4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CB77C8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CB77CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CB77D0  7C 08 03 A6 */	mtlr r0
/* 80CB77D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80CB77D8  4E 80 00 20 */	blr 
