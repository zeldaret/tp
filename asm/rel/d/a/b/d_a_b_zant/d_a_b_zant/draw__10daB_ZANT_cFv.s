lbl_8063E2B0:
/* 8063E2B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8063E2B4  7C 08 02 A6 */	mflr r0
/* 8063E2B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8063E2BC  39 61 00 30 */	addi r11, r1, 0x30
/* 8063E2C0  4B D2 3F 1C */	b _savegpr_29
/* 8063E2C4  7C 7F 1B 78 */	mr r31, r3
/* 8063E2C8  3C 60 80 65 */	lis r3, lit_3757@ha
/* 8063E2CC  3B C3 EB 1C */	addi r30, r3, lit_3757@l
/* 8063E2D0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8063E2D4  83 A3 00 04 */	lwz r29, 4(r3)
/* 8063E2D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8063E2DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8063E2E0  38 80 00 00 */	li r4, 0
/* 8063E2E4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8063E2E8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8063E2EC  4B B6 54 D8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8063E2F0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8063E2F4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8063E2F8  80 9D 00 04 */	lwz r4, 4(r29)
/* 8063E2FC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8063E300  4B B6 6A A0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8063E304  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8063E308  4B 9D 2E B8 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8063E30C  7F A3 EB 78 */	mr r3, r29
/* 8063E310  4B 9F 36 3C */	b entry__10daMirror_cFP8J3DModel
/* 8063E314  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8063E318  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8063E31C  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8063E320  EC 20 18 2A */	fadds f1, f0, f3
/* 8063E324  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8063E328  D0 01 00 08 */	stfs f0, 8(r1)
/* 8063E32C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8063E330  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8063E334  88 1F 06 FB */	lbz r0, 0x6fb(r31)
/* 8063E338  28 00 00 05 */	cmplwi r0, 5
/* 8063E33C  40 82 00 8C */	bne lbl_8063E3C8
/* 8063E340  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8063E344  EC 20 18 28 */	fsubs f1, f0, f3
/* 8063E348  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8063E34C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063E350  40 80 00 08 */	bge lbl_8063E358
/* 8063E354  FC 20 00 90 */	fmr f1, f0
lbl_8063E358:
/* 8063E358  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8063E35C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8063E360  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8063E364  EC 01 00 24 */	fdivs f0, f1, f0
/* 8063E368  D0 1F 04 50 */	stfs f0, 0x450(r31)
/* 8063E36C  C0 3F 04 50 */	lfs f1, 0x450(r31)
/* 8063E370  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8063E374  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063E378  4C 41 13 82 */	cror 2, 1, 2
/* 8063E37C  40 82 00 08 */	bne lbl_8063E384
/* 8063E380  D0 1F 04 50 */	stfs f0, 0x450(r31)
lbl_8063E384:
/* 8063E384  80 7F 06 E0 */	lwz r3, 0x6e0(r31)
/* 8063E388  38 80 00 00 */	li r4, 0
/* 8063E38C  7F A5 EB 78 */	mr r5, r29
/* 8063E390  38 C1 00 08 */	addi r6, r1, 8
/* 8063E394  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8063E398  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8063E39C  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8063E3A0  C0 9F 08 64 */	lfs f4, 0x864(r31)
/* 8063E3A4  38 FF 08 BC */	addi r7, r31, 0x8bc
/* 8063E3A8  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8063E3AC  39 20 00 00 */	li r9, 0
/* 8063E3B0  C0 BE 00 0C */	lfs f5, 0xc(r30)
/* 8063E3B4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8063E3B8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8063E3BC  4B 9F 05 54 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8063E3C0  90 7F 06 E0 */	stw r3, 0x6e0(r31)
/* 8063E3C4  48 00 00 40 */	b lbl_8063E404
lbl_8063E3C8:
/* 8063E3C8  80 7F 06 E0 */	lwz r3, 0x6e0(r31)
/* 8063E3CC  38 80 00 01 */	li r4, 1
/* 8063E3D0  7F A5 EB 78 */	mr r5, r29
/* 8063E3D4  38 C1 00 08 */	addi r6, r1, 8
/* 8063E3D8  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8063E3DC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8063E3E0  C0 9F 08 64 */	lfs f4, 0x864(r31)
/* 8063E3E4  38 FF 08 BC */	addi r7, r31, 0x8bc
/* 8063E3E8  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8063E3EC  39 20 00 00 */	li r9, 0
/* 8063E3F0  C0 BE 00 0C */	lfs f5, 0xc(r30)
/* 8063E3F4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8063E3F8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8063E3FC  4B 9F 05 14 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8063E400  90 7F 06 E0 */	stw r3, 0x6e0(r31)
lbl_8063E404:
/* 8063E404  88 1F 07 10 */	lbz r0, 0x710(r31)
/* 8063E408  28 00 00 00 */	cmplwi r0, 0
/* 8063E40C  41 82 00 70 */	beq lbl_8063E47C
/* 8063E410  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8063E414  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8063E418  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8063E41C  80 84 00 04 */	lwz r4, 4(r4)
/* 8063E420  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8063E424  4B B6 69 7C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8063E428  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8063E42C  4B 9C F8 98 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8063E430  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063E434  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063E438  3B A3 61 C0 */	addi r29, r3, 0x61c0
/* 8063E43C  7F A3 EB 78 */	mr r3, r29
/* 8063E440  80 9F 06 E0 */	lwz r4, 0x6e0(r31)
/* 8063E444  80 BF 05 B8 */	lwz r5, 0x5b8(r31)
/* 8063E448  4B A1 7A D4 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 8063E44C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8063E450  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8063E454  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 8063E458  80 84 00 04 */	lwz r4, 4(r4)
/* 8063E45C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8063E460  4B B6 69 40 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8063E464  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8063E468  4B 9C F8 5C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8063E46C  7F A3 EB 78 */	mr r3, r29
/* 8063E470  80 9F 06 E0 */	lwz r4, 0x6e0(r31)
/* 8063E474  80 BF 05 BC */	lwz r5, 0x5bc(r31)
/* 8063E478  4B A1 7A A4 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_8063E47C:
/* 8063E47C  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 8063E480  28 00 00 00 */	cmplwi r0, 0
/* 8063E484  41 82 00 C8 */	beq lbl_8063E54C
/* 8063E488  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8063E48C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8063E490  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 8063E494  80 84 00 04 */	lwz r4, 4(r4)
/* 8063E498  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8063E49C  4B B6 69 04 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8063E4A0  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8063E4A4  80 83 00 04 */	lwz r4, 4(r3)
/* 8063E4A8  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8063E4AC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8063E4B0  38 84 00 58 */	addi r4, r4, 0x58
/* 8063E4B4  4B 9C F2 F4 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 8063E4B8  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8063E4BC  80 83 00 04 */	lwz r4, 4(r3)
/* 8063E4C0  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8063E4C4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8063E4C8  38 84 00 58 */	addi r4, r4, 0x58
/* 8063E4CC  4B 9C F2 0C */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8063E4D0  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8063E4D4  80 83 00 04 */	lwz r4, 4(r3)
/* 8063E4D8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8063E4DC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8063E4E0  38 84 00 58 */	addi r4, r4, 0x58
/* 8063E4E4  4B 9C F1 F4 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8063E4E8  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8063E4EC  4B 9C F7 D8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8063E4F0  88 1F 05 E9 */	lbz r0, 0x5e9(r31)
/* 8063E4F4  28 00 00 00 */	cmplwi r0, 0
/* 8063E4F8  41 82 00 54 */	beq lbl_8063E54C
/* 8063E4FC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8063E500  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8063E504  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 8063E508  80 84 00 04 */	lwz r4, 4(r4)
/* 8063E50C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8063E510  4B B6 68 90 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8063E514  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8063E518  80 83 00 04 */	lwz r4, 4(r3)
/* 8063E51C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8063E520  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8063E524  38 84 00 58 */	addi r4, r4, 0x58
/* 8063E528  4B 9C F2 80 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 8063E52C  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8063E530  80 83 00 04 */	lwz r4, 4(r3)
/* 8063E534  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8063E538  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8063E53C  38 84 00 58 */	addi r4, r4, 0x58
/* 8063E540  4B 9C F1 98 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8063E544  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8063E548  4B 9C F7 7C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8063E54C:
/* 8063E54C  38 60 00 01 */	li r3, 1
/* 8063E550  39 61 00 30 */	addi r11, r1, 0x30
/* 8063E554  4B D2 3C D4 */	b _restgpr_29
/* 8063E558  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063E55C  7C 08 03 A6 */	mtlr r0
/* 8063E560  38 21 00 30 */	addi r1, r1, 0x30
/* 8063E564  4E 80 00 20 */	blr 
