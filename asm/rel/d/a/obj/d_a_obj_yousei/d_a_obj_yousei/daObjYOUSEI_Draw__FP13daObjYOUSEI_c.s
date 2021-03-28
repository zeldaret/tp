lbl_804D1040:
/* 804D1040  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D1044  7C 08 02 A6 */	mflr r0
/* 804D1048  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D104C  39 61 00 30 */	addi r11, r1, 0x30
/* 804D1050  4B E9 11 8C */	b _savegpr_29
/* 804D1054  7C 7D 1B 78 */	mr r29, r3
/* 804D1058  3C 60 80 4D */	lis r3, ccSphSrc@ha
/* 804D105C  3B E3 15 F0 */	addi r31, r3, ccSphSrc@l
/* 804D1060  80 7D 06 B0 */	lwz r3, 0x6b0(r29)
/* 804D1064  83 C3 00 04 */	lwz r30, 4(r3)
/* 804D1068  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804D106C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804D1070  38 80 00 00 */	li r4, 0
/* 804D1074  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804D1078  38 DD 01 0C */	addi r6, r29, 0x10c
/* 804D107C  4B CD 27 48 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804D1080  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804D1084  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804D1088  80 9E 00 04 */	lwz r4, 4(r30)
/* 804D108C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 804D1090  4B CD 3D 10 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804D1094  80 7D 06 B0 */	lwz r3, 0x6b0(r29)
/* 804D1098  4B B4 01 28 */	b entryDL__16mDoExt_McaMorfSOFv
/* 804D109C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 804D10A0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804D10A4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804D10A8  EC 21 00 2A */	fadds f1, f1, f0
/* 804D10AC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804D10B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 804D10B4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804D10B8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804D10BC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804D10C0  C0 3D 07 94 */	lfs f1, 0x794(r29)
/* 804D10C4  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804D10C8  38 9D 07 EC */	addi r4, r29, 0x7ec
/* 804D10CC  38 A0 00 00 */	li r5, 0
/* 804D10D0  C0 7F 01 28 */	lfs f3, 0x128(r31)
/* 804D10D4  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 804D10D8  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 804D10DC  4B B5 BF D8 */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 804D10E0  38 60 00 01 */	li r3, 1
/* 804D10E4  39 61 00 30 */	addi r11, r1, 0x30
/* 804D10E8  4B E9 11 40 */	b _restgpr_29
/* 804D10EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D10F0  7C 08 03 A6 */	mtlr r0
/* 804D10F4  38 21 00 30 */	addi r1, r1, 0x30
/* 804D10F8  4E 80 00 20 */	blr 
