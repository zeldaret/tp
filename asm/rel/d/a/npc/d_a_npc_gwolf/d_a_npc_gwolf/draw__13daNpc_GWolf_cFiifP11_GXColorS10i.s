lbl_809F3CBC:
/* 809F3CBC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809F3CC0  7C 08 02 A6 */	mflr r0
/* 809F3CC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 809F3CC8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 809F3CCC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 809F3CD0  39 61 00 40 */	addi r11, r1, 0x40
/* 809F3CD4  4B 96 E4 F1 */	bl _savegpr_23
/* 809F3CD8  7C 79 1B 78 */	mr r25, r3
/* 809F3CDC  7C 9A 23 78 */	mr r26, r4
/* 809F3CE0  7C BB 2B 78 */	mr r27, r5
/* 809F3CE4  FF E0 08 90 */	fmr f31, f1
/* 809F3CE8  7C DC 33 78 */	mr r28, r6
/* 809F3CEC  7C F7 3B 78 */	mr r23, r7
/* 809F3CF0  3C 60 80 A0 */	lis r3, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F3CF4  3B E3 84 F4 */	addi r31, r3, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F3CF8  80 79 05 68 */	lwz r3, 0x568(r25)
/* 809F3CFC  83 C3 00 04 */	lwz r30, 4(r3)
/* 809F3D00  83 BE 00 04 */	lwz r29, 4(r30)
/* 809F3D04  38 00 00 01 */	li r0, 1
/* 809F3D08  98 19 09 F3 */	stb r0, 0x9f3(r25)
/* 809F3D0C  3B 00 00 00 */	li r24, 0
/* 809F3D10  88 19 09 F2 */	lbz r0, 0x9f2(r25)
/* 809F3D14  28 00 00 00 */	cmplwi r0, 0
/* 809F3D18  40 82 00 1C */	bne lbl_809F3D34
/* 809F3D1C  88 19 09 F4 */	lbz r0, 0x9f4(r25)
/* 809F3D20  28 00 00 00 */	cmplwi r0, 0
/* 809F3D24  41 82 00 14 */	beq lbl_809F3D38
/* 809F3D28  4B 63 BD 2D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 809F3D2C  2C 03 00 00 */	cmpwi r3, 0
/* 809F3D30  40 82 00 08 */	bne lbl_809F3D38
lbl_809F3D34:
/* 809F3D34  3B 00 00 01 */	li r24, 1
lbl_809F3D38:
/* 809F3D38  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 809F3D3C  40 82 02 58 */	bne lbl_809F3F94
/* 809F3D40  2C 17 00 00 */	cmpwi r23, 0
/* 809F3D44  40 82 00 54 */	bne lbl_809F3D98
/* 809F3D48  80 19 09 54 */	lwz r0, 0x954(r25)
/* 809F3D4C  2C 00 00 00 */	cmpwi r0, 0
/* 809F3D50  41 82 00 48 */	beq lbl_809F3D98
/* 809F3D54  80 99 09 58 */	lwz r4, 0x958(r25)
/* 809F3D58  2C 04 00 00 */	cmpwi r4, 0
/* 809F3D5C  41 82 00 3C */	beq lbl_809F3D98
/* 809F3D60  C8 5F 00 A8 */	lfd f2, 0xa8(r31)
/* 809F3D64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809F3D68  90 01 00 0C */	stw r0, 0xc(r1)
/* 809F3D6C  3C 60 43 30 */	lis r3, 0x4330
/* 809F3D70  90 61 00 08 */	stw r3, 8(r1)
/* 809F3D74  C8 01 00 08 */	lfd f0, 8(r1)
/* 809F3D78  EC 20 10 28 */	fsubs f1, f0, f2
/* 809F3D7C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 809F3D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F3D84  90 61 00 10 */	stw r3, 0x10(r1)
/* 809F3D88  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 809F3D8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 809F3D90  EC 41 00 24 */	fdivs f2, f1, f0
/* 809F3D94  48 00 00 08 */	b lbl_809F3D9C
lbl_809F3D98:
/* 809F3D98  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
lbl_809F3D9C:
/* 809F3D9C  FC 00 12 10 */	fabs f0, f2
/* 809F3DA0  FC 20 00 18 */	frsp f1, f0
/* 809F3DA4  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 809F3DA8  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 809F3DAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F3DB0  7C 00 00 26 */	mfcr r0
/* 809F3DB4  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 809F3DB8  40 82 00 28 */	bne lbl_809F3DE0
/* 809F3DBC  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 809F3DC0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 809F3DC4  FC 00 00 1E */	fctiwz f0, f0
/* 809F3DC8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809F3DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F3DD0  B0 19 04 64 */	sth r0, 0x464(r25)
/* 809F3DD4  38 00 00 00 */	li r0, 0
/* 809F3DD8  B0 19 04 66 */	sth r0, 0x466(r25)
/* 809F3DDC  48 00 00 58 */	b lbl_809F3E34
lbl_809F3DE0:
/* 809F3DE0  2C 1A 00 00 */	cmpwi r26, 0
/* 809F3DE4  41 82 00 18 */	beq lbl_809F3DFC
/* 809F3DE8  38 00 00 14 */	li r0, 0x14
/* 809F3DEC  B0 19 04 66 */	sth r0, 0x466(r25)
/* 809F3DF0  38 00 00 00 */	li r0, 0
/* 809F3DF4  B0 19 04 64 */	sth r0, 0x464(r25)
/* 809F3DF8  48 00 00 3C */	b lbl_809F3E34
lbl_809F3DFC:
/* 809F3DFC  28 1C 00 00 */	cmplwi r28, 0
/* 809F3E00  41 82 00 28 */	beq lbl_809F3E28
/* 809F3E04  A8 1C 00 00 */	lha r0, 0(r28)
/* 809F3E08  B0 19 04 64 */	sth r0, 0x464(r25)
/* 809F3E0C  A8 1C 00 02 */	lha r0, 2(r28)
/* 809F3E10  B0 19 04 66 */	sth r0, 0x466(r25)
/* 809F3E14  A8 1C 00 04 */	lha r0, 4(r28)
/* 809F3E18  B0 19 04 68 */	sth r0, 0x468(r25)
/* 809F3E1C  A8 1C 00 06 */	lha r0, 6(r28)
/* 809F3E20  B0 19 04 6A */	sth r0, 0x46a(r25)
/* 809F3E24  48 00 00 10 */	b lbl_809F3E34
lbl_809F3E28:
/* 809F3E28  38 00 00 00 */	li r0, 0
/* 809F3E2C  B0 19 04 66 */	sth r0, 0x466(r25)
/* 809F3E30  B0 19 04 64 */	sth r0, 0x464(r25)
lbl_809F3E34:
/* 809F3E34  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 809F3E38  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 809F3E3C  38 80 00 05 */	li r4, 5
/* 809F3E40  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 809F3E44  38 D9 01 0C */	addi r6, r25, 0x10c
/* 809F3E48  4B 7A F9 7D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 809F3E4C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 809F3E50  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 809F3E54  80 9E 00 04 */	lwz r4, 4(r30)
/* 809F3E58  38 B9 01 0C */	addi r5, r25, 0x10c
/* 809F3E5C  4B 7B 0F 45 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809F3E60  7F 23 CB 78 */	mr r3, r25
/* 809F3E64  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 809F3E68  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 809F3E6C  7D 89 03 A6 */	mtctr r12
/* 809F3E70  4E 80 04 21 */	bctrl 
/* 809F3E74  2C 03 00 00 */	cmpwi r3, 0
/* 809F3E78  40 82 01 1C */	bne lbl_809F3F94
/* 809F3E7C  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 809F3E80  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 809F3E84  41 82 00 20 */	beq lbl_809F3EA4
/* 809F3E88  38 79 05 88 */	addi r3, r25, 0x588
/* 809F3E8C  38 9D 00 58 */	addi r4, r29, 0x58
/* 809F3E90  C0 19 05 98 */	lfs f0, 0x598(r25)
/* 809F3E94  FC 00 00 1E */	fctiwz f0, f0
/* 809F3E98  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809F3E9C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 809F3EA0  4B 61 97 49 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
lbl_809F3EA4:
/* 809F3EA4  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 809F3EA8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 809F3EAC  41 82 00 14 */	beq lbl_809F3EC0
/* 809F3EB0  C0 39 05 B0 */	lfs f1, 0x5b0(r25)
/* 809F3EB4  38 79 05 A0 */	addi r3, r25, 0x5a0
/* 809F3EB8  38 9D 00 58 */	addi r4, r29, 0x58
/* 809F3EBC  4B 61 98 1D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_809F3EC0:
/* 809F3EC0  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 809F3EC4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809F3EC8  41 82 00 14 */	beq lbl_809F3EDC
/* 809F3ECC  C0 39 05 C8 */	lfs f1, 0x5c8(r25)
/* 809F3ED0  38 79 05 B8 */	addi r3, r25, 0x5b8
/* 809F3ED4  38 9D 00 58 */	addi r4, r29, 0x58
/* 809F3ED8  4B 61 98 D1 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_809F3EDC:
/* 809F3EDC  2C 1B 00 00 */	cmpwi r27, 0
/* 809F3EE0  41 82 00 10 */	beq lbl_809F3EF0
/* 809F3EE4  7F 23 CB 78 */	mr r3, r25
/* 809F3EE8  7F A4 EB 78 */	mr r4, r29
/* 809F3EEC  4B 62 95 41 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
lbl_809F3EF0:
/* 809F3EF0  80 79 05 68 */	lwz r3, 0x568(r25)
/* 809F3EF4  4B 61 D2 CD */	bl entryDL__16mDoExt_McaMorfSOFv
/* 809F3EF8  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 809F3EFC  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 809F3F00  41 82 00 10 */	beq lbl_809F3F10
/* 809F3F04  38 7D 00 58 */	addi r3, r29, 0x58
/* 809F3F08  80 99 05 9C */	lwz r4, 0x59c(r25)
/* 809F3F0C  4B 93 B7 ED */	bl removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
lbl_809F3F10:
/* 809F3F10  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 809F3F14  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 809F3F18  41 82 00 10 */	beq lbl_809F3F28
/* 809F3F1C  38 7D 00 58 */	addi r3, r29, 0x58
/* 809F3F20  80 99 05 B4 */	lwz r4, 0x5b4(r25)
/* 809F3F24  4B 93 B8 91 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_809F3F28:
/* 809F3F28  80 19 09 9C */	lwz r0, 0x99c(r25)
/* 809F3F2C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809F3F30  41 82 00 10 */	beq lbl_809F3F40
/* 809F3F34  38 7D 00 58 */	addi r3, r29, 0x58
/* 809F3F38  80 99 05 CC */	lwz r4, 0x5cc(r25)
/* 809F3F3C  4B 93 B9 45 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_809F3F40:
/* 809F3F40  80 79 09 A0 */	lwz r3, 0x9a0(r25)
/* 809F3F44  38 80 00 01 */	li r4, 1
/* 809F3F48  7F C5 F3 78 */	mr r5, r30
/* 809F3F4C  38 D9 04 D0 */	addi r6, r25, 0x4d0
/* 809F3F50  FC 20 F8 90 */	fmr f1, f31
/* 809F3F54  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 809F3F58  C0 79 04 D4 */	lfs f3, 0x4d4(r25)
/* 809F3F5C  C0 99 09 80 */	lfs f4, 0x980(r25)
/* 809F3F60  38 F9 0A 58 */	addi r7, r25, 0xa58
/* 809F3F64  39 19 01 0C */	addi r8, r25, 0x10c
/* 809F3F68  39 20 00 00 */	li r9, 0
/* 809F3F6C  C0 BF 00 9C */	lfs f5, 0x9c(r31)
/* 809F3F70  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 809F3F74  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 809F3F78  4B 63 A9 99 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 809F3F7C  90 79 09 A0 */	stw r3, 0x9a0(r25)
/* 809F3F80  7F 23 CB 78 */	mr r3, r25
/* 809F3F84  81 99 0B 44 */	lwz r12, 0xb44(r25)
/* 809F3F88  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 809F3F8C  7D 89 03 A6 */	mtctr r12
/* 809F3F90  4E 80 04 21 */	bctrl 
lbl_809F3F94:
/* 809F3F94  38 60 00 01 */	li r3, 1
/* 809F3F98  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 809F3F9C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 809F3FA0  39 61 00 40 */	addi r11, r1, 0x40
/* 809F3FA4  4B 96 E2 6D */	bl _restgpr_23
/* 809F3FA8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809F3FAC  7C 08 03 A6 */	mtlr r0
/* 809F3FB0  38 21 00 50 */	addi r1, r1, 0x50
/* 809F3FB4  4E 80 00 20 */	blr 
