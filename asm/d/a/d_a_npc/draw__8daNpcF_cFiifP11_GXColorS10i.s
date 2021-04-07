lbl_801522AC:
/* 801522AC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801522B0  7C 08 02 A6 */	mflr r0
/* 801522B4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801522B8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801522BC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 801522C0  39 61 00 40 */	addi r11, r1, 0x40
/* 801522C4  48 20 FF 05 */	bl _savegpr_24
/* 801522C8  7C 7A 1B 78 */	mr r26, r3
/* 801522CC  7C 9B 23 78 */	mr r27, r4
/* 801522D0  7C BC 2B 78 */	mr r28, r5
/* 801522D4  FF E0 08 90 */	fmr f31, f1
/* 801522D8  7C DD 33 78 */	mr r29, r6
/* 801522DC  7C F8 3B 78 */	mr r24, r7
/* 801522E0  80 63 05 68 */	lwz r3, 0x568(r3)
/* 801522E4  83 E3 00 04 */	lwz r31, 4(r3)
/* 801522E8  83 DF 00 04 */	lwz r30, 4(r31)
/* 801522EC  38 00 00 01 */	li r0, 1
/* 801522F0  98 1A 09 F3 */	stb r0, 0x9f3(r26)
/* 801522F4  3B 20 00 00 */	li r25, 0
/* 801522F8  88 1A 09 F2 */	lbz r0, 0x9f2(r26)
/* 801522FC  28 00 00 00 */	cmplwi r0, 0
/* 80152300  40 82 00 1C */	bne lbl_8015231C
/* 80152304  88 1A 09 F4 */	lbz r0, 0x9f4(r26)
/* 80152308  28 00 00 00 */	cmplwi r0, 0
/* 8015230C  41 82 00 14 */	beq lbl_80152320
/* 80152310  4B ED D7 45 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80152314  2C 03 00 00 */	cmpwi r3, 0
/* 80152318  40 82 00 08 */	bne lbl_80152320
lbl_8015231C:
/* 8015231C  3B 20 00 01 */	li r25, 1
lbl_80152320:
/* 80152320  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80152324  40 82 02 CC */	bne lbl_801525F0
/* 80152328  2C 18 00 00 */	cmpwi r24, 0
/* 8015232C  40 82 00 54 */	bne lbl_80152380
/* 80152330  80 1A 09 54 */	lwz r0, 0x954(r26)
/* 80152334  2C 00 00 00 */	cmpwi r0, 0
/* 80152338  41 82 00 48 */	beq lbl_80152380
/* 8015233C  80 9A 09 58 */	lwz r4, 0x958(r26)
/* 80152340  2C 04 00 00 */	cmpwi r4, 0
/* 80152344  41 82 00 3C */	beq lbl_80152380
/* 80152348  C8 42 99 E0 */	lfd f2, lit_4142(r2)
/* 8015234C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80152350  90 01 00 0C */	stw r0, 0xc(r1)
/* 80152354  3C 60 43 30 */	lis r3, 0x4330
/* 80152358  90 61 00 08 */	stw r3, 8(r1)
/* 8015235C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80152360  EC 20 10 28 */	fsubs f1, f0, f2
/* 80152364  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80152368  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015236C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80152370  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80152374  EC 00 10 28 */	fsubs f0, f0, f2
/* 80152378  EC 41 00 24 */	fdivs f2, f1, f0
/* 8015237C  48 00 00 08 */	b lbl_80152384
lbl_80152380:
/* 80152380  C0 42 99 D8 */	lfs f2, lit_4116(r2)
lbl_80152384:
/* 80152384  FC 00 12 10 */	fabs f0, f2
/* 80152388  FC 20 00 18 */	frsp f1, f0
/* 8015238C  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 80152390  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80152394  7C 00 00 26 */	mfcr r0
/* 80152398  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8015239C  40 82 00 28 */	bne lbl_801523C4
/* 801523A0  C0 02 9A 44 */	lfs f0, lit_5794(r2)
/* 801523A4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801523A8  FC 00 00 1E */	fctiwz f0, f0
/* 801523AC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801523B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801523B4  B0 1A 04 64 */	sth r0, 0x464(r26)
/* 801523B8  38 00 00 00 */	li r0, 0
/* 801523BC  B0 1A 04 66 */	sth r0, 0x466(r26)
/* 801523C0  48 00 00 58 */	b lbl_80152418
lbl_801523C4:
/* 801523C4  2C 1B 00 00 */	cmpwi r27, 0
/* 801523C8  41 82 00 18 */	beq lbl_801523E0
/* 801523CC  38 00 00 14 */	li r0, 0x14
/* 801523D0  B0 1A 04 66 */	sth r0, 0x466(r26)
/* 801523D4  38 00 00 00 */	li r0, 0
/* 801523D8  B0 1A 04 64 */	sth r0, 0x464(r26)
/* 801523DC  48 00 00 3C */	b lbl_80152418
lbl_801523E0:
/* 801523E0  28 1D 00 00 */	cmplwi r29, 0
/* 801523E4  41 82 00 28 */	beq lbl_8015240C
/* 801523E8  A8 1D 00 00 */	lha r0, 0(r29)
/* 801523EC  B0 1A 04 64 */	sth r0, 0x464(r26)
/* 801523F0  A8 1D 00 02 */	lha r0, 2(r29)
/* 801523F4  B0 1A 04 66 */	sth r0, 0x466(r26)
/* 801523F8  A8 1D 00 04 */	lha r0, 4(r29)
/* 801523FC  B0 1A 04 68 */	sth r0, 0x468(r26)
/* 80152400  A8 1D 00 06 */	lha r0, 6(r29)
/* 80152404  B0 1A 04 6A */	sth r0, 0x46a(r26)
/* 80152408  48 00 00 10 */	b lbl_80152418
lbl_8015240C:
/* 8015240C  38 00 00 00 */	li r0, 0
/* 80152410  B0 1A 04 66 */	sth r0, 0x466(r26)
/* 80152414  B0 1A 04 64 */	sth r0, 0x464(r26)
lbl_80152418:
/* 80152418  88 1A 09 F4 */	lbz r0, 0x9f4(r26)
/* 8015241C  28 00 00 00 */	cmplwi r0, 0
/* 80152420  41 82 00 20 */	beq lbl_80152440
/* 80152424  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80152428  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8015242C  38 80 00 04 */	li r4, 4
/* 80152430  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80152434  38 DA 01 0C */	addi r6, r26, 0x10c
/* 80152438  48 05 13 8D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8015243C  48 00 00 1C */	b lbl_80152458
lbl_80152440:
/* 80152440  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80152444  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80152448  38 80 00 00 */	li r4, 0
/* 8015244C  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80152450  38 DA 01 0C */	addi r6, r26, 0x10c
/* 80152454  48 05 13 71 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_80152458:
/* 80152458  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8015245C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80152460  80 9F 00 04 */	lwz r4, 4(r31)
/* 80152464  38 BA 01 0C */	addi r5, r26, 0x10c
/* 80152468  48 05 29 39 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8015246C  7F 43 D3 78 */	mr r3, r26
/* 80152470  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80152474  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80152478  7D 89 03 A6 */	mtctr r12
/* 8015247C  4E 80 04 21 */	bctrl 
/* 80152480  2C 03 00 00 */	cmpwi r3, 0
/* 80152484  40 82 01 6C */	bne lbl_801525F0
/* 80152488  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 8015248C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80152490  41 82 00 20 */	beq lbl_801524B0
/* 80152494  38 7A 05 88 */	addi r3, r26, 0x588
/* 80152498  38 9E 00 58 */	addi r4, r30, 0x58
/* 8015249C  C0 1A 05 98 */	lfs f0, 0x598(r26)
/* 801524A0  FC 00 00 1E */	fctiwz f0, f0
/* 801524A4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801524A8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 801524AC  4B EB B1 3D */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
lbl_801524B0:
/* 801524B0  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 801524B4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801524B8  41 82 00 14 */	beq lbl_801524CC
/* 801524BC  C0 3A 05 B0 */	lfs f1, 0x5b0(r26)
/* 801524C0  38 7A 05 A0 */	addi r3, r26, 0x5a0
/* 801524C4  38 9E 00 58 */	addi r4, r30, 0x58
/* 801524C8  4B EB B2 11 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_801524CC:
/* 801524CC  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 801524D0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 801524D4  41 82 00 14 */	beq lbl_801524E8
/* 801524D8  C0 3A 05 C8 */	lfs f1, 0x5c8(r26)
/* 801524DC  38 7A 05 B8 */	addi r3, r26, 0x5b8
/* 801524E0  38 9E 00 58 */	addi r4, r30, 0x58
/* 801524E4  4B EB B2 C5 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_801524E8:
/* 801524E8  2C 1C 00 00 */	cmpwi r28, 0
/* 801524EC  41 82 00 10 */	beq lbl_801524FC
/* 801524F0  7F 43 D3 78 */	mr r3, r26
/* 801524F4  7F C4 F3 78 */	mr r4, r30
/* 801524F8  4B EC AF 35 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
lbl_801524FC:
/* 801524FC  88 1A 09 F4 */	lbz r0, 0x9f4(r26)
/* 80152500  28 00 00 00 */	cmplwi r0, 0
/* 80152504  41 82 00 48 */	beq lbl_8015254C
/* 80152508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015250C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80152510  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80152514  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80152518  3B 63 4A C8 */	addi r27, r3, j3dSys@l /* 0x80434AC8@l */
/* 8015251C  90 1B 00 48 */	stw r0, 0x48(r27)
/* 80152520  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80152524  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 80152528  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 8015252C  4B EB EC 95 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80152530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80152534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80152538  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8015253C  90 1B 00 48 */	stw r0, 0x48(r27)
/* 80152540  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80152544  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 80152548  48 00 00 0C */	b lbl_80152554
lbl_8015254C:
/* 8015254C  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80152550  4B EB EC 71 */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_80152554:
/* 80152554  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 80152558  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8015255C  41 82 00 10 */	beq lbl_8015256C
/* 80152560  38 7E 00 58 */	addi r3, r30, 0x58
/* 80152564  80 9A 05 9C */	lwz r4, 0x59c(r26)
/* 80152568  48 1D D1 91 */	bl removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
lbl_8015256C:
/* 8015256C  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 80152570  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80152574  41 82 00 10 */	beq lbl_80152584
/* 80152578  38 7E 00 58 */	addi r3, r30, 0x58
/* 8015257C  80 9A 05 B4 */	lwz r4, 0x5b4(r26)
/* 80152580  48 1D D2 35 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80152584:
/* 80152584  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 80152588  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8015258C  41 82 00 10 */	beq lbl_8015259C
/* 80152590  38 7E 00 58 */	addi r3, r30, 0x58
/* 80152594  80 9A 05 CC */	lwz r4, 0x5cc(r26)
/* 80152598  48 1D D2 E9 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_8015259C:
/* 8015259C  80 7A 09 A0 */	lwz r3, 0x9a0(r26)
/* 801525A0  38 80 00 01 */	li r4, 1
/* 801525A4  7F E5 FB 78 */	mr r5, r31
/* 801525A8  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 801525AC  FC 20 F8 90 */	fmr f1, f31
/* 801525B0  C0 42 9A 44 */	lfs f2, lit_5794(r2)
/* 801525B4  C0 7A 04 D4 */	lfs f3, 0x4d4(r26)
/* 801525B8  C0 9A 09 80 */	lfs f4, 0x980(r26)
/* 801525BC  38 FA 0A 58 */	addi r7, r26, 0xa58
/* 801525C0  39 1A 01 0C */	addi r8, r26, 0x10c
/* 801525C4  39 20 00 00 */	li r9, 0
/* 801525C8  C0 A2 99 DC */	lfs f5, lit_4140(r2)
/* 801525CC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 801525D0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 801525D4  4B ED C3 3D */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 801525D8  90 7A 09 A0 */	stw r3, 0x9a0(r26)
/* 801525DC  7F 43 D3 78 */	mr r3, r26
/* 801525E0  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 801525E4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 801525E8  7D 89 03 A6 */	mtctr r12
/* 801525EC  4E 80 04 21 */	bctrl 
lbl_801525F0:
/* 801525F0  38 60 00 01 */	li r3, 1
/* 801525F4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 801525F8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801525FC  39 61 00 40 */	addi r11, r1, 0x40
/* 80152600  48 20 FC 15 */	bl _restgpr_24
/* 80152604  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80152608  7C 08 03 A6 */	mtlr r0
/* 8015260C  38 21 00 50 */	addi r1, r1, 0x50
/* 80152610  4E 80 00 20 */	blr 
