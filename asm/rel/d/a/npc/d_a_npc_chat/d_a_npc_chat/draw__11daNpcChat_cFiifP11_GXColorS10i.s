lbl_8098250C:
/* 8098250C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80982510  7C 08 02 A6 */	mflr r0
/* 80982514  90 01 00 24 */	stw r0, 0x24(r1)
/* 80982518  39 61 00 20 */	addi r11, r1, 0x20
/* 8098251C  4B 9D FC BD */	bl _savegpr_28
/* 80982520  7C 7D 1B 78 */	mr r29, r3
/* 80982524  7C BE 2B 78 */	mr r30, r5
/* 80982528  80 63 05 68 */	lwz r3, 0x568(r3)
/* 8098252C  83 83 00 04 */	lwz r28, 4(r3)
/* 80982530  83 FC 00 04 */	lwz r31, 4(r28)
/* 80982534  28 06 00 00 */	cmplwi r6, 0
/* 80982538  41 82 00 28 */	beq lbl_80982560
/* 8098253C  A8 06 00 00 */	lha r0, 0(r6)
/* 80982540  B0 1D 04 64 */	sth r0, 0x464(r29)
/* 80982544  A8 06 00 02 */	lha r0, 2(r6)
/* 80982548  B0 1D 04 66 */	sth r0, 0x466(r29)
/* 8098254C  A8 06 00 04 */	lha r0, 4(r6)
/* 80982550  B0 1D 04 68 */	sth r0, 0x468(r29)
/* 80982554  A8 06 00 06 */	lha r0, 6(r6)
/* 80982558  B0 1D 04 6A */	sth r0, 0x46a(r29)
/* 8098255C  48 00 00 10 */	b lbl_8098256C
lbl_80982560:
/* 80982560  38 00 00 00 */	li r0, 0
/* 80982564  B0 1D 04 66 */	sth r0, 0x466(r29)
/* 80982568  B0 1D 04 64 */	sth r0, 0x464(r29)
lbl_8098256C:
/* 8098256C  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 80982570  28 00 00 00 */	cmplwi r0, 0
/* 80982574  41 82 00 20 */	beq lbl_80982594
/* 80982578  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8098257C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80982580  38 80 00 04 */	li r4, 4
/* 80982584  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80982588  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8098258C  4B 82 12 39 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80982590  48 00 00 1C */	b lbl_809825AC
lbl_80982594:
/* 80982594  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80982598  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8098259C  38 80 00 00 */	li r4, 0
/* 809825A0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 809825A4  38 DD 01 0C */	addi r6, r29, 0x10c
/* 809825A8  4B 82 12 1D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_809825AC:
/* 809825AC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 809825B0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 809825B4  80 9C 00 04 */	lwz r4, 4(r28)
/* 809825B8  38 BD 01 0C */	addi r5, r29, 0x10c
/* 809825BC  4B 82 27 E5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809825C0  3B 80 00 00 */	li r28, 0
/* 809825C4  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 809825C8  28 00 00 00 */	cmplwi r0, 0
/* 809825CC  40 82 00 1C */	bne lbl_809825E8
/* 809825D0  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 809825D4  28 00 00 00 */	cmplwi r0, 0
/* 809825D8  41 82 00 14 */	beq lbl_809825EC
/* 809825DC  4B 6A D4 79 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 809825E0  2C 03 00 00 */	cmpwi r3, 0
/* 809825E4  40 82 00 08 */	bne lbl_809825EC
lbl_809825E8:
/* 809825E8  3B 80 00 01 */	li r28, 1
lbl_809825EC:
/* 809825EC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 809825F0  40 82 01 60 */	bne lbl_80982750
/* 809825F4  7F A3 EB 78 */	mr r3, r29
/* 809825F8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809825FC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80982600  7D 89 03 A6 */	mtctr r12
/* 80982604  4E 80 04 21 */	bctrl 
/* 80982608  2C 03 00 00 */	cmpwi r3, 0
/* 8098260C  40 82 01 44 */	bne lbl_80982750
/* 80982610  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80982614  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80982618  41 82 00 20 */	beq lbl_80982638
/* 8098261C  38 7D 05 88 */	addi r3, r29, 0x588
/* 80982620  38 9F 00 58 */	addi r4, r31, 0x58
/* 80982624  C0 1D 05 98 */	lfs f0, 0x598(r29)
/* 80982628  FC 00 00 1E */	fctiwz f0, f0
/* 8098262C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80982630  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80982634  4B 68 AF B5 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
lbl_80982638:
/* 80982638  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 8098263C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80982640  41 82 00 14 */	beq lbl_80982654
/* 80982644  C0 3D 05 B0 */	lfs f1, 0x5b0(r29)
/* 80982648  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 8098264C  38 9F 00 58 */	addi r4, r31, 0x58
/* 80982650  4B 68 B0 89 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80982654:
/* 80982654  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80982658  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8098265C  41 82 00 14 */	beq lbl_80982670
/* 80982660  C0 3D 05 C8 */	lfs f1, 0x5c8(r29)
/* 80982664  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 80982668  38 9F 00 58 */	addi r4, r31, 0x58
/* 8098266C  4B 68 B1 3D */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80982670:
/* 80982670  2C 1E 00 00 */	cmpwi r30, 0
/* 80982674  41 82 00 10 */	beq lbl_80982684
/* 80982678  7F A3 EB 78 */	mr r3, r29
/* 8098267C  7F E4 FB 78 */	mr r4, r31
/* 80982680  4B 69 AD AD */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
lbl_80982684:
/* 80982684  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 80982688  28 00 00 00 */	cmplwi r0, 0
/* 8098268C  41 82 00 48 */	beq lbl_809826D4
/* 80982690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80982694  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80982698  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 8098269C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 809826A0  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 809826A4  90 1E 00 48 */	stw r0, 0x48(r30)
/* 809826A8  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 809826AC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 809826B0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809826B4  4B 68 EB 0D */	bl entryDL__16mDoExt_McaMorfSOFv
/* 809826B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809826BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809826C0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 809826C4  90 1E 00 48 */	stw r0, 0x48(r30)
/* 809826C8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 809826CC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 809826D0  48 00 00 0C */	b lbl_809826DC
lbl_809826D4:
/* 809826D4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809826D8  4B 68 EA E9 */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_809826DC:
/* 809826DC  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809826E0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 809826E4  41 82 00 10 */	beq lbl_809826F4
/* 809826E8  38 7F 00 58 */	addi r3, r31, 0x58
/* 809826EC  80 9D 05 9C */	lwz r4, 0x59c(r29)
/* 809826F0  4B 9A D0 09 */	bl removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
lbl_809826F4:
/* 809826F4  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809826F8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 809826FC  41 82 00 10 */	beq lbl_8098270C
/* 80982700  38 7F 00 58 */	addi r3, r31, 0x58
/* 80982704  80 9D 05 B4 */	lwz r4, 0x5b4(r29)
/* 80982708  4B 9A D0 AD */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_8098270C:
/* 8098270C  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80982710  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80982714  41 82 00 10 */	beq lbl_80982724
/* 80982718  38 7F 00 58 */	addi r3, r31, 0x58
/* 8098271C  80 9D 05 CC */	lwz r4, 0x5cc(r29)
/* 80982720  4B 9A D1 61 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_80982724:
/* 80982724  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80982728  C0 3D 06 68 */	lfs f1, 0x668(r29)
/* 8098272C  3C 80 80 98 */	lis r4, lit_5078@ha /* 0x80986F58@ha */
/* 80982730  C0 44 6F 58 */	lfs f2, lit_5078@l(r4)  /* 0x80986F58@l */
/* 80982734  38 9D 06 C0 */	addi r4, r29, 0x6c0
/* 80982738  38 A0 00 00 */	li r5, 0
/* 8098273C  3C C0 80 98 */	lis r6, lit_4247@ha /* 0x80986F10@ha */
/* 80982740  C0 66 6F 10 */	lfs f3, lit_4247@l(r6)  /* 0x80986F10@l */
/* 80982744  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80982748  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 8098274C  4B 6A A9 69 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80982750:
/* 80982750  7F A3 EB 78 */	mr r3, r29
/* 80982754  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80982758  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8098275C  7D 89 03 A6 */	mtctr r12
/* 80982760  4E 80 04 21 */	bctrl 
/* 80982764  38 60 00 01 */	li r3, 1
/* 80982768  39 61 00 20 */	addi r11, r1, 0x20
/* 8098276C  4B 9D FA B9 */	bl _restgpr_28
/* 80982770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80982774  7C 08 03 A6 */	mtlr r0
/* 80982778  38 21 00 20 */	addi r1, r1, 0x20
/* 8098277C  4E 80 00 20 */	blr 
