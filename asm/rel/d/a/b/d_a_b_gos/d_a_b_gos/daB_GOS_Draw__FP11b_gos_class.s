lbl_8060429C:
/* 8060429C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806042A0  7C 08 02 A6 */	mflr r0
/* 806042A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 806042A8  39 61 00 30 */	addi r11, r1, 0x30
/* 806042AC  4B D5 DF 30 */	b _savegpr_29
/* 806042B0  7C 7D 1B 78 */	mr r29, r3
/* 806042B4  3C 60 80 60 */	lis r3, lit_3646@ha
/* 806042B8  3B E3 53 C8 */	addi r31, r3, lit_3646@l
/* 806042BC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806042C0  83 C3 00 04 */	lwz r30, 4(r3)
/* 806042C4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806042C8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806042CC  38 80 00 00 */	li r4, 0
/* 806042D0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806042D4  38 DD 01 0C */	addi r6, r29, 0x10c
/* 806042D8  4B B9 F4 EC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806042DC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806042E0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806042E4  80 9E 00 04 */	lwz r4, 4(r30)
/* 806042E8  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806042EC  4B BA 0A B4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806042F0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806042F4  4B A0 CE CC */	b entryDL__16mDoExt_McaMorfSOFv
/* 806042F8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806042FC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80604300  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80604304  EC 20 18 2A */	fadds f1, f0, f3
/* 80604308  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8060430C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80604310  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80604314  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80604318  80 7D 06 68 */	lwz r3, 0x668(r29)
/* 8060431C  38 80 00 01 */	li r4, 1
/* 80604320  7F C5 F3 78 */	mr r5, r30
/* 80604324  38 C1 00 08 */	addi r6, r1, 8
/* 80604328  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8060432C  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80604330  C0 9D 07 7C */	lfs f4, 0x77c(r29)
/* 80604334  38 FD 07 D4 */	addi r7, r29, 0x7d4
/* 80604338  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8060433C  39 20 00 00 */	li r9, 0
/* 80604340  C0 BF 00 00 */	lfs f5, 0(r31)
/* 80604344  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80604348  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8060434C  4B A2 A5 C4 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80604350  90 7D 06 68 */	stw r3, 0x668(r29)
/* 80604354  38 60 00 01 */	li r3, 1
/* 80604358  39 61 00 30 */	addi r11, r1, 0x30
/* 8060435C  4B D5 DE CC */	b _restgpr_29
/* 80604360  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80604364  7C 08 03 A6 */	mtlr r0
/* 80604368  38 21 00 30 */	addi r1, r1, 0x30
/* 8060436C  4E 80 00 20 */	blr 
