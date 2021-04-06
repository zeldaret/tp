lbl_807EFF9C:
/* 807EFF9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807EFFA0  7C 08 02 A6 */	mflr r0
/* 807EFFA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807EFFA8  39 61 00 30 */	addi r11, r1, 0x30
/* 807EFFAC  4B B7 22 2D */	bl _savegpr_28
/* 807EFFB0  7C 7E 1B 78 */	mr r30, r3
/* 807EFFB4  3C 60 80 7F */	lis r3, lit_3715@ha /* 0x807F2864@ha */
/* 807EFFB8  3B E3 28 64 */	addi r31, r3, lit_3715@l /* 0x807F2864@l */
/* 807EFFBC  88 1E 06 B2 */	lbz r0, 0x6b2(r30)
/* 807EFFC0  7C 00 07 75 */	extsb. r0, r0
/* 807EFFC4  41 82 00 0C */	beq lbl_807EFFD0
/* 807EFFC8  38 60 00 01 */	li r3, 1
/* 807EFFCC  48 00 00 D8 */	b lbl_807F00A4
lbl_807EFFD0:
/* 807EFFD0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807EFFD4  83 83 00 04 */	lwz r28, 4(r3)
/* 807EFFD8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807EFFDC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807EFFE0  38 80 00 02 */	li r4, 2
/* 807EFFE4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807EFFE8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 807EFFEC  4B 9B 37 D9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807EFFF0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807EFFF4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807EFFF8  80 9C 00 04 */	lwz r4, 4(r28)
/* 807EFFFC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 807F0000  4B 9B 4D A1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807F0004  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F0008  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F000C  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 807F0010  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 807F0014  3B A3 4A C8 */	addi r29, r3, j3dSys@l /* 0x80434AC8@l */
/* 807F0018  90 1D 00 48 */	stw r0, 0x48(r29)
/* 807F001C  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 807F0020  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 807F0024  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F0028  4B 82 11 99 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 807F002C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F0030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F0034  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 807F0038  90 1D 00 48 */	stw r0, 0x48(r29)
/* 807F003C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 807F0040  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 807F0044  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 807F0048  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 807F004C  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 807F0050  EC 20 18 2A */	fadds f1, f0, f3
/* 807F0054  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807F0058  D0 01 00 08 */	stfs f0, 8(r1)
/* 807F005C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807F0060  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807F0064  80 7E 06 68 */	lwz r3, 0x668(r30)
/* 807F0068  38 80 00 01 */	li r4, 1
/* 807F006C  7F 85 E3 78 */	mr r5, r28
/* 807F0070  38 C1 00 08 */	addi r6, r1, 8
/* 807F0074  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 807F0078  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807F007C  C0 9E 07 8C */	lfs f4, 0x78c(r30)
/* 807F0080  38 FE 07 E4 */	addi r7, r30, 0x7e4
/* 807F0084  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807F0088  39 20 00 00 */	li r9, 0
/* 807F008C  C0 BF 00 00 */	lfs f5, 0(r31)
/* 807F0090  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 807F0094  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 807F0098  4B 83 E8 79 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807F009C  90 7E 06 68 */	stw r3, 0x668(r30)
/* 807F00A0  38 60 00 01 */	li r3, 1
lbl_807F00A4:
/* 807F00A4  39 61 00 30 */	addi r11, r1, 0x30
/* 807F00A8  4B B7 21 7D */	bl _restgpr_28
/* 807F00AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807F00B0  7C 08 03 A6 */	mtlr r0
/* 807F00B4  38 21 00 30 */	addi r1, r1, 0x30
/* 807F00B8  4E 80 00 20 */	blr 
