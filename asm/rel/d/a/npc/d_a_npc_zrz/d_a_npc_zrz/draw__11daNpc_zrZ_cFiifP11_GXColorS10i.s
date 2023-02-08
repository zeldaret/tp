lbl_80B94B34:
/* 80B94B34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B94B38  7C 08 02 A6 */	mflr r0
/* 80B94B3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B94B40  39 61 00 30 */	addi r11, r1, 0x30
/* 80B94B44  4B 7C D6 95 */	bl _savegpr_28
/* 80B94B48  7C 7C 1B 78 */	mr r28, r3
/* 80B94B4C  7C BD 2B 78 */	mr r29, r5
/* 80B94B50  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80B94B54  83 E3 00 04 */	lwz r31, 4(r3)
/* 80B94B58  83 DF 00 04 */	lwz r30, 4(r31)
/* 80B94B5C  38 00 00 01 */	li r0, 1
/* 80B94B60  98 1C 09 F3 */	stb r0, 0x9f3(r28)
/* 80B94B64  88 1C 09 F2 */	lbz r0, 0x9f2(r28)
/* 80B94B68  28 00 00 00 */	cmplwi r0, 0
/* 80B94B6C  40 82 02 90 */	bne lbl_80B94DFC
/* 80B94B70  2C 07 00 00 */	cmpwi r7, 0
/* 80B94B74  40 82 00 58 */	bne lbl_80B94BCC
/* 80B94B78  80 1C 09 54 */	lwz r0, 0x954(r28)
/* 80B94B7C  2C 00 00 00 */	cmpwi r0, 0
/* 80B94B80  41 82 00 4C */	beq lbl_80B94BCC
/* 80B94B84  80 BC 09 58 */	lwz r5, 0x958(r28)
/* 80B94B88  2C 05 00 00 */	cmpwi r5, 0
/* 80B94B8C  41 82 00 40 */	beq lbl_80B94BCC
/* 80B94B90  3C 60 80 BA */	lis r3, lit_4677@ha /* 0x80B9B08C@ha */
/* 80B94B94  C8 43 B0 8C */	lfd f2, lit_4677@l(r3)  /* 0x80B9B08C@l */
/* 80B94B98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B94B9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B94BA0  3C 60 43 30 */	lis r3, 0x4330
/* 80B94BA4  90 61 00 08 */	stw r3, 8(r1)
/* 80B94BA8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80B94BAC  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B94BB0  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80B94BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B94BB8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B94BBC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80B94BC0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B94BC4  EC 41 00 24 */	fdivs f2, f1, f0
/* 80B94BC8  48 00 00 0C */	b lbl_80B94BD4
lbl_80B94BCC:
/* 80B94BCC  3C 60 80 BA */	lis r3, lit_4522@ha /* 0x80B9B084@ha */
/* 80B94BD0  C0 43 B0 84 */	lfs f2, lit_4522@l(r3)  /* 0x80B9B084@l */
lbl_80B94BD4:
/* 80B94BD4  FC 00 12 10 */	fabs f0, f2
/* 80B94BD8  FC 20 00 18 */	frsp f1, f0
/* 80B94BDC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80B94BE0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80B94BE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B94BE8  7C 00 00 26 */	mfcr r0
/* 80B94BEC  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80B94BF0  40 82 00 2C */	bne lbl_80B94C1C
/* 80B94BF4  3C 60 80 BA */	lis r3, lit_4675@ha /* 0x80B9B088@ha */
/* 80B94BF8  C0 03 B0 88 */	lfs f0, lit_4675@l(r3)  /* 0x80B9B088@l */
/* 80B94BFC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B94C00  FC 00 00 1E */	fctiwz f0, f0
/* 80B94C04  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B94C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B94C0C  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 80B94C10  38 00 00 00 */	li r0, 0
/* 80B94C14  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 80B94C18  48 00 00 58 */	b lbl_80B94C70
lbl_80B94C1C:
/* 80B94C1C  2C 04 00 00 */	cmpwi r4, 0
/* 80B94C20  41 82 00 18 */	beq lbl_80B94C38
/* 80B94C24  38 00 00 14 */	li r0, 0x14
/* 80B94C28  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 80B94C2C  38 00 00 00 */	li r0, 0
/* 80B94C30  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 80B94C34  48 00 00 3C */	b lbl_80B94C70
lbl_80B94C38:
/* 80B94C38  28 06 00 00 */	cmplwi r6, 0
/* 80B94C3C  41 82 00 28 */	beq lbl_80B94C64
/* 80B94C40  A8 06 00 00 */	lha r0, 0(r6)
/* 80B94C44  B0 1C 04 64 */	sth r0, 0x464(r28)
/* 80B94C48  A8 06 00 02 */	lha r0, 2(r6)
/* 80B94C4C  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 80B94C50  A8 06 00 04 */	lha r0, 4(r6)
/* 80B94C54  B0 1C 04 68 */	sth r0, 0x468(r28)
/* 80B94C58  A8 06 00 06 */	lha r0, 6(r6)
/* 80B94C5C  B0 1C 04 6A */	sth r0, 0x46a(r28)
/* 80B94C60  48 00 00 10 */	b lbl_80B94C70
lbl_80B94C64:
/* 80B94C64  38 00 00 00 */	li r0, 0
/* 80B94C68  B0 1C 04 66 */	sth r0, 0x466(r28)
/* 80B94C6C  B0 1C 04 64 */	sth r0, 0x464(r28)
lbl_80B94C70:
/* 80B94C70  A8 1C 04 6A */	lha r0, 0x46a(r28)
/* 80B94C74  2C 00 00 00 */	cmpwi r0, 0
/* 80B94C78  40 82 00 0C */	bne lbl_80B94C84
/* 80B94C7C  38 60 00 01 */	li r3, 1
/* 80B94C80  48 00 01 80 */	b lbl_80B94E00
lbl_80B94C84:
/* 80B94C84  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B94C88  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B94C8C  38 80 00 07 */	li r4, 7
/* 80B94C90  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80B94C94  38 DC 01 0C */	addi r6, r28, 0x10c
/* 80B94C98  4B 60 EB 2D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B94C9C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B94CA0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B94CA4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80B94CA8  38 BC 01 0C */	addi r5, r28, 0x10c
/* 80B94CAC  4B 61 00 F5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B94CB0  7F 83 E3 78 */	mr r3, r28
/* 80B94CB4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B94CB8  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80B94CBC  7D 89 03 A6 */	mtctr r12
/* 80B94CC0  4E 80 04 21 */	bctrl 
/* 80B94CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80B94CC8  40 82 01 34 */	bne lbl_80B94DFC
/* 80B94CCC  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 80B94CD0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80B94CD4  41 82 00 20 */	beq lbl_80B94CF4
/* 80B94CD8  38 7C 05 88 */	addi r3, r28, 0x588
/* 80B94CDC  38 9E 00 58 */	addi r4, r30, 0x58
/* 80B94CE0  C0 1C 05 98 */	lfs f0, 0x598(r28)
/* 80B94CE4  FC 00 00 1E */	fctiwz f0, f0
/* 80B94CE8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B94CEC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80B94CF0  4B 47 88 F9 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
lbl_80B94CF4:
/* 80B94CF4  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 80B94CF8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80B94CFC  41 82 00 14 */	beq lbl_80B94D10
/* 80B94D00  C0 3C 05 B0 */	lfs f1, 0x5b0(r28)
/* 80B94D04  38 7C 05 A0 */	addi r3, r28, 0x5a0
/* 80B94D08  38 9E 00 58 */	addi r4, r30, 0x58
/* 80B94D0C  4B 47 89 CD */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80B94D10:
/* 80B94D10  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 80B94D14  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B94D18  41 82 00 14 */	beq lbl_80B94D2C
/* 80B94D1C  C0 3C 05 C8 */	lfs f1, 0x5c8(r28)
/* 80B94D20  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 80B94D24  38 9E 00 58 */	addi r4, r30, 0x58
/* 80B94D28  4B 47 8A 81 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80B94D2C:
/* 80B94D2C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B94D30  41 82 00 10 */	beq lbl_80B94D40
/* 80B94D34  7F 83 E3 78 */	mr r3, r28
/* 80B94D38  7F C4 F3 78 */	mr r4, r30
/* 80B94D3C  4B 48 86 F1 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
lbl_80B94D40:
/* 80B94D40  4B 61 78 3D */	bl dKy_darkworld_check__Fv
/* 80B94D44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B94D48  41 82 00 4C */	beq lbl_80B94D94
/* 80B94D4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B94D50  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B94D54  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80B94D58  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B94D5C  3B A3 4A C8 */	addi r29, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B94D60  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80B94D64  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80B94D68  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80B94D6C  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80B94D70  38 80 00 00 */	li r4, 0
/* 80B94D74  4B 47 9A 4D */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
/* 80B94D78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B94D7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B94D80  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80B94D84  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80B94D88  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80B94D8C  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80B94D90  48 00 00 10 */	b lbl_80B94DA0
lbl_80B94D94:
/* 80B94D94  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80B94D98  38 80 00 00 */	li r4, 0
/* 80B94D9C  4B 47 9A 25 */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
lbl_80B94DA0:
/* 80B94DA0  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 80B94DA4  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80B94DA8  41 82 00 10 */	beq lbl_80B94DB8
/* 80B94DAC  38 7E 00 58 */	addi r3, r30, 0x58
/* 80B94DB0  80 9C 05 9C */	lwz r4, 0x59c(r28)
/* 80B94DB4  4B 79 A9 45 */	bl removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
lbl_80B94DB8:
/* 80B94DB8  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 80B94DBC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80B94DC0  41 82 00 10 */	beq lbl_80B94DD0
/* 80B94DC4  38 7E 00 58 */	addi r3, r30, 0x58
/* 80B94DC8  80 9C 05 B4 */	lwz r4, 0x5b4(r28)
/* 80B94DCC  4B 79 A9 E9 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80B94DD0:
/* 80B94DD0  80 1C 09 9C */	lwz r0, 0x99c(r28)
/* 80B94DD4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B94DD8  41 82 00 10 */	beq lbl_80B94DE8
/* 80B94DDC  38 7E 00 58 */	addi r3, r30, 0x58
/* 80B94DE0  80 9C 05 CC */	lwz r4, 0x5cc(r28)
/* 80B94DE4  4B 79 AA 9D */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_80B94DE8:
/* 80B94DE8  7F 83 E3 78 */	mr r3, r28
/* 80B94DEC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B94DF0  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80B94DF4  7D 89 03 A6 */	mtctr r12
/* 80B94DF8  4E 80 04 21 */	bctrl 
lbl_80B94DFC:
/* 80B94DFC  38 60 00 01 */	li r3, 1
lbl_80B94E00:
/* 80B94E00  39 61 00 30 */	addi r11, r1, 0x30
/* 80B94E04  4B 7C D4 21 */	bl _restgpr_28
/* 80B94E08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B94E0C  7C 08 03 A6 */	mtlr r0
/* 80B94E10  38 21 00 30 */	addi r1, r1, 0x30
/* 80B94E14  4E 80 00 20 */	blr 
