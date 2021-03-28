lbl_806A254C:
/* 806A254C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806A2550  7C 08 02 A6 */	mflr r0
/* 806A2554  90 01 00 34 */	stw r0, 0x34(r1)
/* 806A2558  39 61 00 30 */	addi r11, r1, 0x30
/* 806A255C  4B CB FC 80 */	b _savegpr_29
/* 806A2560  7C 7F 1B 78 */	mr r31, r3
/* 806A2564  3C 60 80 6A */	lis r3, lit_3903@ha
/* 806A2568  3B C3 71 C4 */	addi r30, r3, lit_3903@l
/* 806A256C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A2570  83 A3 00 04 */	lwz r29, 4(r3)
/* 806A2574  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806A2578  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806A257C  38 80 00 00 */	li r4, 0
/* 806A2580  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806A2584  38 DF 01 0C */	addi r6, r31, 0x10c
/* 806A2588  4B B0 12 3C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806A258C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806A2590  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806A2594  80 9D 00 04 */	lwz r4, 4(r29)
/* 806A2598  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806A259C  4B B0 28 04 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806A25A0  80 9D 00 04 */	lwz r4, 4(r29)
/* 806A25A4  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 806A25A8  54 00 10 3A */	slwi r0, r0, 2
/* 806A25AC  7C 7F 02 14 */	add r3, r31, r0
/* 806A25B0  80 63 06 68 */	lwz r3, 0x668(r3)
/* 806A25B4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806A25B8  38 84 00 58 */	addi r4, r4, 0x58
/* 806A25BC  4B 96 B1 EC */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 806A25C0  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806A25C4  4B 96 EB FC */	b entryDL__16mDoExt_McaMorfSOFv
/* 806A25C8  80 7F 06 B4 */	lwz r3, 0x6b4(r31)
/* 806A25CC  3C 03 FF FB */	addis r0, r3, 0xfffb
/* 806A25D0  28 00 64 FF */	cmplwi r0, 0x64ff
/* 806A25D4  41 82 00 5C */	beq lbl_806A2630
/* 806A25D8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806A25DC  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 806A25E0  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 806A25E4  EC 20 18 2A */	fadds f1, f0, f3
/* 806A25E8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806A25EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 806A25F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806A25F4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806A25F8  38 80 00 01 */	li r4, 1
/* 806A25FC  7F A5 EB 78 */	mr r5, r29
/* 806A2600  38 C1 00 08 */	addi r6, r1, 8
/* 806A2604  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 806A2608  C0 5E 00 04 */	lfs f2, 4(r30)
/* 806A260C  C0 9F 07 C0 */	lfs f4, 0x7c0(r31)
/* 806A2610  38 FF 08 18 */	addi r7, r31, 0x818
/* 806A2614  39 1F 01 0C */	addi r8, r31, 0x10c
/* 806A2618  39 20 00 00 */	li r9, 0
/* 806A261C  C0 BE 00 08 */	lfs f5, 8(r30)
/* 806A2620  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806A2624  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806A2628  4B 98 C2 E8 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806A262C  90 7F 06 B4 */	stw r3, 0x6b4(r31)
lbl_806A2630:
/* 806A2630  38 60 00 01 */	li r3, 1
/* 806A2634  39 61 00 30 */	addi r11, r1, 0x30
/* 806A2638  4B CB FB F0 */	b _restgpr_29
/* 806A263C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806A2640  7C 08 03 A6 */	mtlr r0
/* 806A2644  38 21 00 30 */	addi r1, r1, 0x30
/* 806A2648  4E 80 00 20 */	blr 
