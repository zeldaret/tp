lbl_80B01598:
/* 80B01598  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B0159C  7C 08 02 A6 */	mflr r0
/* 80B015A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B015A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B015A8  4B 86 0C 35 */	bl _savegpr_29
/* 80B015AC  7C 7D 1B 78 */	mr r29, r3
/* 80B015B0  3C 60 80 B1 */	lis r3, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B015B4  3B E3 C1 C4 */	addi r31, r3, lit_3999@l /* 0x80B0C1C4@l */
/* 80B015B8  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80B015BC  83 C3 00 04 */	lwz r30, 4(r3)
/* 80B015C0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B015C4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B015C8  38 80 00 00 */	li r4, 0
/* 80B015CC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B015D0  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80B015D4  4B 6A 21 F1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B015D8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B015DC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B015E0  80 9E 00 04 */	lwz r4, 4(r30)
/* 80B015E4  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80B015E8  4B 6A 37 B9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B015EC  88 1D 06 C0 */	lbz r0, 0x6c0(r29)
/* 80B015F0  28 00 00 00 */	cmplwi r0, 0
/* 80B015F4  40 82 00 68 */	bne lbl_80B0165C
/* 80B015F8  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80B015FC  4B 50 FB C5 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80B01600  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80B01604  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B01608  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80B0160C  EC 20 18 2A */	fadds f1, f0, f3
/* 80B01610  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B01614  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B01618  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B0161C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80B01620  80 7D 06 88 */	lwz r3, 0x688(r29)
/* 80B01624  38 80 00 01 */	li r4, 1
/* 80B01628  7F C5 F3 78 */	mr r5, r30
/* 80B0162C  38 C1 00 08 */	addi r6, r1, 8
/* 80B01630  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80B01634  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80B01638  C0 9D 08 48 */	lfs f4, 0x848(r29)
/* 80B0163C  38 FD 08 A0 */	addi r7, r29, 0x8a0
/* 80B01640  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80B01644  39 20 00 00 */	li r9, 0
/* 80B01648  C0 BF 00 00 */	lfs f5, 0(r31)
/* 80B0164C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80B01650  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80B01654  4B 52 D2 BD */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80B01658  90 7D 06 88 */	stw r3, 0x688(r29)
lbl_80B0165C:
/* 80B0165C  38 60 00 01 */	li r3, 1
/* 80B01660  39 61 00 30 */	addi r11, r1, 0x30
/* 80B01664  4B 86 0B C5 */	bl _restgpr_29
/* 80B01668  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B0166C  7C 08 03 A6 */	mtlr r0
/* 80B01670  38 21 00 30 */	addi r1, r1, 0x30
/* 80B01674  4E 80 00 20 */	blr 
