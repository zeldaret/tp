lbl_809B0014:
/* 809B0014  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B0018  7C 08 02 A6 */	mflr r0
/* 809B001C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B0020  39 61 00 30 */	addi r11, r1, 0x30
/* 809B0024  4B 9B 21 B9 */	bl _savegpr_29
/* 809B0028  7C 7D 1B 78 */	mr r29, r3
/* 809B002C  3C 60 80 9B */	lis r3, lit_3762@ha /* 0x809B1848@ha */
/* 809B0030  3B E3 18 48 */	addi r31, r3, lit_3762@l /* 0x809B1848@l */
/* 809B0034  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 809B0038  83 C3 00 04 */	lwz r30, 4(r3)
/* 809B003C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 809B0040  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 809B0044  38 80 00 00 */	li r4, 0
/* 809B0048  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 809B004C  38 DD 01 0C */	addi r6, r29, 0x10c
/* 809B0050  4B 7F 37 75 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 809B0054  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 809B0058  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 809B005C  80 9E 00 04 */	lwz r4, 4(r30)
/* 809B0060  38 BD 01 0C */	addi r5, r29, 0x10c
/* 809B0064  4B 7F 4D 3D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809B0068  80 9E 00 04 */	lwz r4, 4(r30)
/* 809B006C  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 809B0070  38 84 00 58 */	addi r4, r4, 0x58
/* 809B0074  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 809B0078  FC 00 00 1E */	fctiwz f0, f0
/* 809B007C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 809B0080  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 809B0084  4B 65 D5 65 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 809B0088  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 809B008C  4B 66 05 F5 */	bl entryDL__14mDoExt_McaMorfFv
/* 809B0090  A8 1D 05 CE */	lha r0, 0x5ce(r29)
/* 809B0094  2C 00 00 02 */	cmpwi r0, 2
/* 809B0098  41 82 00 60 */	beq lbl_809B00F8
/* 809B009C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 809B00A0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 809B00A4  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 809B00A8  EC 20 18 2A */	fadds f1, f0, f3
/* 809B00AC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 809B00B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 809B00B4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809B00B8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 809B00BC  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 809B00C0  38 80 00 01 */	li r4, 1
/* 809B00C4  7F C5 F3 78 */	mr r5, r30
/* 809B00C8  38 C1 00 08 */	addi r6, r1, 8
/* 809B00CC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 809B00D0  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 809B00D4  C0 9D 06 C0 */	lfs f4, 0x6c0(r29)
/* 809B00D8  38 FD 07 18 */	addi r7, r29, 0x718
/* 809B00DC  39 1D 01 0C */	addi r8, r29, 0x10c
/* 809B00E0  39 20 00 00 */	li r9, 0
/* 809B00E4  C0 BF 00 00 */	lfs f5, 0(r31)
/* 809B00E8  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 809B00EC  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 809B00F0  4B 67 E8 21 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 809B00F4  90 7D 05 D4 */	stw r3, 0x5d4(r29)
lbl_809B00F8:
/* 809B00F8  38 60 00 01 */	li r3, 1
/* 809B00FC  39 61 00 30 */	addi r11, r1, 0x30
/* 809B0100  4B 9B 21 29 */	bl _restgpr_29
/* 809B0104  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B0108  7C 08 03 A6 */	mtlr r0
/* 809B010C  38 21 00 30 */	addi r1, r1, 0x30
/* 809B0110  4E 80 00 20 */	blr 
