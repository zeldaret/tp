lbl_8059F808:
/* 8059F808  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059F80C  7C 08 02 A6 */	mflr r0
/* 8059F810  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059F814  39 61 00 30 */	addi r11, r1, 0x30
/* 8059F818  4B DC 29 C5 */	bl _savegpr_29
/* 8059F81C  7C 7D 1B 78 */	mr r29, r3
/* 8059F820  3C 60 80 5A */	lis r3, lit_3769@ha /* 0x805A1158@ha */
/* 8059F824  3B E3 11 58 */	addi r31, r3, lit_3769@l /* 0x805A1158@l */
/* 8059F828  80 7D 05 EC */	lwz r3, 0x5ec(r29)
/* 8059F82C  83 C3 00 04 */	lwz r30, 4(r3)
/* 8059F830  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8059F834  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8059F838  38 80 00 00 */	li r4, 0
/* 8059F83C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8059F840  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8059F844  4B C0 3F 81 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8059F848  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8059F84C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8059F850  80 9E 00 04 */	lwz r4, 4(r30)
/* 8059F854  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8059F858  4B C0 55 49 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8059F85C  80 9E 00 04 */	lwz r4, 4(r30)
/* 8059F860  80 7D 05 F0 */	lwz r3, 0x5f0(r29)
/* 8059F864  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8059F868  38 84 00 58 */	addi r4, r4, 0x58
/* 8059F86C  4B A6 DE 6D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8059F870  80 7D 05 EC */	lwz r3, 0x5ec(r29)
/* 8059F874  4B A7 0E 0D */	bl entryDL__14mDoExt_McaMorfFv
/* 8059F878  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8059F87C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8059F880  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8059F884  EC 20 18 2A */	fadds f1, f0, f3
/* 8059F888  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8059F88C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8059F890  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8059F894  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8059F898  80 7D 05 FC */	lwz r3, 0x5fc(r29)
/* 8059F89C  38 80 00 01 */	li r4, 1
/* 8059F8A0  7F C5 F3 78 */	mr r5, r30
/* 8059F8A4  38 C1 00 08 */	addi r6, r1, 8
/* 8059F8A8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8059F8AC  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8059F8B0  3C E0 80 5A */	lis r7, l_HIO@ha /* 0x805A1340@ha */
/* 8059F8B4  38 E7 13 40 */	addi r7, r7, l_HIO@l /* 0x805A1340@l */
/* 8059F8B8  C0 07 00 08 */	lfs f0, 8(r7)
/* 8059F8BC  EC 42 00 32 */	fmuls f2, f2, f0
/* 8059F8C0  C0 9D 07 48 */	lfs f4, 0x748(r29)
/* 8059F8C4  38 FD 07 A0 */	addi r7, r29, 0x7a0
/* 8059F8C8  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8059F8CC  39 20 00 00 */	li r9, 0
/* 8059F8D0  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8059F8D4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 8059F8D8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 8059F8DC  4B A8 F0 35 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8059F8E0  90 7D 05 FC */	stw r3, 0x5fc(r29)
/* 8059F8E4  38 60 00 01 */	li r3, 1
/* 8059F8E8  39 61 00 30 */	addi r11, r1, 0x30
/* 8059F8EC  4B DC 29 3D */	bl _restgpr_29
/* 8059F8F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059F8F4  7C 08 03 A6 */	mtlr r0
/* 8059F8F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8059F8FC  4E 80 00 20 */	blr 
