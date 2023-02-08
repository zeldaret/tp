lbl_8094C110:
/* 8094C110  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8094C114  7C 08 02 A6 */	mflr r0
/* 8094C118  90 01 00 34 */	stw r0, 0x34(r1)
/* 8094C11C  39 61 00 30 */	addi r11, r1, 0x30
/* 8094C120  4B A1 60 BD */	bl _savegpr_29
/* 8094C124  7C 7D 1B 78 */	mr r29, r3
/* 8094C128  3C 60 80 95 */	lis r3, lit_3958@ha /* 0x809511C0@ha */
/* 8094C12C  3B E3 11 C0 */	addi r31, r3, lit_3958@l /* 0x809511C0@l */
/* 8094C130  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 8094C134  83 C3 00 04 */	lwz r30, 4(r3)
/* 8094C138  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8094C13C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8094C140  38 80 00 00 */	li r4, 0
/* 8094C144  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8094C148  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8094C14C  4B 85 76 79 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8094C150  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8094C154  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8094C158  80 9E 00 04 */	lwz r4, 4(r30)
/* 8094C15C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8094C160  4B 85 8C 41 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8094C164  80 9E 00 04 */	lwz r4, 4(r30)
/* 8094C168  80 7D 05 EC */	lwz r3, 0x5ec(r29)
/* 8094C16C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8094C170  38 84 00 58 */	addi r4, r4, 0x58
/* 8094C174  4B 6C 15 65 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8094C178  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 8094C17C  4B 6C 45 05 */	bl entryDL__14mDoExt_McaMorfFv
/* 8094C180  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8094C184  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8094C188  40 82 00 60 */	bne lbl_8094C1E8
/* 8094C18C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8094C190  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8094C194  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8094C198  EC 20 18 2A */	fadds f1, f0, f3
/* 8094C19C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8094C1A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8094C1A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8094C1A8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8094C1AC  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8094C1B0  38 80 00 01 */	li r4, 1
/* 8094C1B4  7F C5 F3 78 */	mr r5, r30
/* 8094C1B8  38 C1 00 08 */	addi r6, r1, 8
/* 8094C1BC  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8094C1C0  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 8094C1C4  C0 9D 07 08 */	lfs f4, 0x708(r29)
/* 8094C1C8  38 FD 07 60 */	addi r7, r29, 0x760
/* 8094C1CC  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8094C1D0  39 20 00 00 */	li r9, 0
/* 8094C1D4  C0 BF 00 20 */	lfs f5, 0x20(r31)
/* 8094C1D8  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 8094C1DC  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 8094C1E0  4B 6E 27 31 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8094C1E4  90 7D 06 00 */	stw r3, 0x600(r29)
lbl_8094C1E8:
/* 8094C1E8  38 60 00 01 */	li r3, 1
/* 8094C1EC  39 61 00 30 */	addi r11, r1, 0x30
/* 8094C1F0  4B A1 60 39 */	bl _restgpr_29
/* 8094C1F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8094C1F8  7C 08 03 A6 */	mtlr r0
/* 8094C1FC  38 21 00 30 */	addi r1, r1, 0x30
/* 8094C200  4E 80 00 20 */	blr 
