lbl_807844BC:
/* 807844BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807844C0  7C 08 02 A6 */	mflr r0
/* 807844C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807844C8  39 61 00 30 */	addi r11, r1, 0x30
/* 807844CC  4B BD DD 10 */	b _savegpr_29
/* 807844D0  7C 7F 1B 78 */	mr r31, r3
/* 807844D4  3C 60 80 78 */	lis r3, lit_3658@ha
/* 807844D8  3B C3 4D 68 */	addi r30, r3, lit_3658@l
/* 807844DC  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 807844E0  83 A3 00 04 */	lwz r29, 4(r3)
/* 807844E4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807844E8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807844EC  38 80 00 00 */	li r4, 0
/* 807844F0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807844F4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 807844F8  4B A1 F2 CC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807844FC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80784500  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80784504  80 9D 00 04 */	lwz r4, 4(r29)
/* 80784508  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8078450C  4B A2 08 94 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80784510  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80784514  80 63 00 04 */	lwz r3, 4(r3)
/* 80784518  80 63 00 04 */	lwz r3, 4(r3)
/* 8078451C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80784520  80 63 00 04 */	lwz r3, 4(r3)
/* 80784524  80 63 00 08 */	lwz r3, 8(r3)
/* 80784528  28 03 00 00 */	cmplwi r3, 0
/* 8078452C  41 82 00 2C */	beq lbl_80784558
/* 80784530  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80784534  2C 00 00 02 */	cmpwi r0, 2
/* 80784538  40 82 00 14 */	bne lbl_8078454C
/* 8078453C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80784540  60 00 00 01 */	ori r0, r0, 1
/* 80784544  90 03 00 0C */	stw r0, 0xc(r3)
/* 80784548  48 00 00 10 */	b lbl_80784558
lbl_8078454C:
/* 8078454C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80784550  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80784554  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80784558:
/* 80784558  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 8078455C  4B 88 CC 64 */	b entryDL__16mDoExt_McaMorfSOFv
/* 80784560  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80784564  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80784568  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8078456C  EC 20 18 2A */	fadds f1, f0, f3
/* 80784570  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80784574  D0 01 00 08 */	stfs f0, 8(r1)
/* 80784578  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8078457C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80784580  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80784584  38 80 00 01 */	li r4, 1
/* 80784588  7F A5 EB 78 */	mr r5, r29
/* 8078458C  38 C1 00 08 */	addi r6, r1, 8
/* 80784590  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80784594  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80784598  C0 9F 07 A8 */	lfs f4, 0x7a8(r31)
/* 8078459C  38 FF 08 00 */	addi r7, r31, 0x800
/* 807845A0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807845A4  39 20 00 00 */	li r9, 0
/* 807845A8  C0 BE 00 1C */	lfs f5, 0x1c(r30)
/* 807845AC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 807845B0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 807845B4  4B 8A A3 5C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807845B8  90 7F 06 28 */	stw r3, 0x628(r31)
/* 807845BC  38 60 00 01 */	li r3, 1
/* 807845C0  39 61 00 30 */	addi r11, r1, 0x30
/* 807845C4  4B BD DC 64 */	b _restgpr_29
/* 807845C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807845CC  7C 08 03 A6 */	mtlr r0
/* 807845D0  38 21 00 30 */	addi r1, r1, 0x30
/* 807845D4  4E 80 00 20 */	blr 
