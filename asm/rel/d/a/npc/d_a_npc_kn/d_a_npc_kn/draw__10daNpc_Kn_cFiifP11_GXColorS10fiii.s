lbl_80A38BB8:
/* 80A38BB8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A38BBC  7C 08 02 A6 */	mflr r0
/* 80A38BC0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A38BC4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A38BC8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A38BCC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80A38BD0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80A38BD4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A38BD8  4B 92 95 E8 */	b _savegpr_22
/* 80A38BDC  7C 77 1B 78 */	mr r23, r3
/* 80A38BE0  7C 98 23 78 */	mr r24, r4
/* 80A38BE4  7C B9 2B 78 */	mr r25, r5
/* 80A38BE8  FF C0 08 90 */	fmr f30, f1
/* 80A38BEC  7C DA 33 78 */	mr r26, r6
/* 80A38BF0  FF E0 10 90 */	fmr f31, f2
/* 80A38BF4  7C FB 3B 78 */	mr r27, r7
/* 80A38BF8  7D 1C 43 78 */	mr r28, r8
/* 80A38BFC  7D 3D 4B 78 */	mr r29, r9
/* 80A38C00  80 83 05 BC */	lwz r4, 0x5bc(r3)
/* 80A38C04  83 E4 00 04 */	lwz r31, 4(r4)
/* 80A38C08  83 DF 00 04 */	lwz r30, 4(r31)
/* 80A38C0C  38 00 00 01 */	li r0, 1
/* 80A38C10  98 03 0E 3A */	stb r0, 0xe3a(r3)
/* 80A38C14  4B FF 41 65 */	bl drawDbgInfo__10daNpc_Kn_cFv
/* 80A38C18  2C 03 00 00 */	cmpwi r3, 0
/* 80A38C1C  40 82 00 44 */	bne lbl_80A38C60
/* 80A38C20  3A C0 00 00 */	li r22, 0
/* 80A38C24  88 17 0E 2C */	lbz r0, 0xe2c(r23)
/* 80A38C28  28 00 00 00 */	cmplwi r0, 0
/* 80A38C2C  40 82 00 1C */	bne lbl_80A38C48
/* 80A38C30  4B 5F 6E 24 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80A38C34  2C 03 00 00 */	cmpwi r3, 0
/* 80A38C38  40 82 00 14 */	bne lbl_80A38C4C
/* 80A38C3C  88 17 0A BD */	lbz r0, 0xabd(r23)
/* 80A38C40  28 00 00 00 */	cmplwi r0, 0
/* 80A38C44  41 82 00 08 */	beq lbl_80A38C4C
lbl_80A38C48:
/* 80A38C48  3A C0 00 01 */	li r22, 1
lbl_80A38C4C:
/* 80A38C4C  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80A38C50  40 82 00 10 */	bne lbl_80A38C60
/* 80A38C54  88 17 0E 32 */	lbz r0, 0xe32(r23)
/* 80A38C58  28 00 00 00 */	cmplwi r0, 0
/* 80A38C5C  41 82 00 0C */	beq lbl_80A38C68
lbl_80A38C60:
/* 80A38C60  38 60 00 01 */	li r3, 1
/* 80A38C64  48 00 03 20 */	b lbl_80A38F84
lbl_80A38C68:
/* 80A38C68  38 00 00 00 */	li r0, 0
/* 80A38C6C  B0 17 04 64 */	sth r0, 0x464(r23)
/* 80A38C70  B0 17 04 66 */	sth r0, 0x466(r23)
/* 80A38C74  B0 17 04 68 */	sth r0, 0x468(r23)
/* 80A38C78  B0 17 04 6A */	sth r0, 0x46a(r23)
/* 80A38C7C  28 1A 00 00 */	cmplwi r26, 0
/* 80A38C80  41 82 00 24 */	beq lbl_80A38CA4
/* 80A38C84  A8 1A 00 00 */	lha r0, 0(r26)
/* 80A38C88  B0 17 04 64 */	sth r0, 0x464(r23)
/* 80A38C8C  A8 1A 00 02 */	lha r0, 2(r26)
/* 80A38C90  B0 17 04 66 */	sth r0, 0x466(r23)
/* 80A38C94  A8 1A 00 04 */	lha r0, 4(r26)
/* 80A38C98  B0 17 04 68 */	sth r0, 0x468(r23)
/* 80A38C9C  A8 1A 00 06 */	lha r0, 6(r26)
/* 80A38CA0  B0 17 04 6A */	sth r0, 0x46a(r23)
lbl_80A38CA4:
/* 80A38CA4  80 97 0D E0 */	lwz r4, 0xde0(r23)
/* 80A38CA8  2C 04 00 00 */	cmpwi r4, 0
/* 80A38CAC  41 82 00 88 */	beq lbl_80A38D34
/* 80A38CB0  80 17 0D E4 */	lwz r0, 0xde4(r23)
/* 80A38CB4  2C 00 00 00 */	cmpwi r0, 0
/* 80A38CB8  41 82 00 7C */	beq lbl_80A38D34
/* 80A38CBC  3C 60 80 A4 */	lis r3, lit_4095@ha
/* 80A38CC0  C8 43 08 F8 */	lfd f2, lit_4095@l(r3)
/* 80A38CC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A38CC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A38CCC  3C 60 43 30 */	lis r3, 0x4330
/* 80A38CD0  90 61 00 08 */	stw r3, 8(r1)
/* 80A38CD4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A38CD8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A38CDC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80A38CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A38CE4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A38CE8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A38CEC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A38CF0  EC 41 00 24 */	fdivs f2, f1, f0
/* 80A38CF4  FC 00 12 10 */	fabs f0, f2
/* 80A38CF8  FC 20 00 18 */	frsp f1, f0
/* 80A38CFC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80A38D00  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80A38D04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A38D08  7C 00 00 26 */	mfcr r0
/* 80A38D0C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80A38D10  40 82 00 34 */	bne lbl_80A38D44
/* 80A38D14  3C 60 80 A4 */	lis r3, lit_4326@ha
/* 80A38D18  C0 03 09 08 */	lfs f0, lit_4326@l(r3)
/* 80A38D1C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80A38D20  FC 00 00 1E */	fctiwz f0, f0
/* 80A38D24  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A38D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A38D2C  B0 17 04 64 */	sth r0, 0x464(r23)
/* 80A38D30  48 00 00 14 */	b lbl_80A38D44
lbl_80A38D34:
/* 80A38D34  2C 18 00 00 */	cmpwi r24, 0
/* 80A38D38  41 82 00 0C */	beq lbl_80A38D44
/* 80A38D3C  38 00 00 14 */	li r0, 0x14
/* 80A38D40  B0 17 04 66 */	sth r0, 0x466(r23)
lbl_80A38D44:
/* 80A38D44  80 17 0D CC */	lwz r0, 0xdcc(r23)
/* 80A38D48  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80A38D4C  41 82 00 20 */	beq lbl_80A38D6C
/* 80A38D50  38 77 06 70 */	addi r3, r23, 0x670
/* 80A38D54  38 9E 00 58 */	addi r4, r30, 0x58
/* 80A38D58  C0 17 06 80 */	lfs f0, 0x680(r23)
/* 80A38D5C  FC 00 00 1E */	fctiwz f0, f0
/* 80A38D60  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A38D64  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80A38D68  4B 5D 48 80 */	b entry__13mDoExt_btpAnmFP16J3DMaterialTables
lbl_80A38D6C:
/* 80A38D6C  80 17 0D CC */	lwz r0, 0xdcc(r23)
/* 80A38D70  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80A38D74  41 82 00 14 */	beq lbl_80A38D88
/* 80A38D78  C0 37 06 98 */	lfs f1, 0x698(r23)
/* 80A38D7C  38 77 06 88 */	addi r3, r23, 0x688
/* 80A38D80  38 9E 00 58 */	addi r4, r30, 0x58
/* 80A38D84  4B 5D 49 54 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80A38D88:
/* 80A38D88  80 17 0D CC */	lwz r0, 0xdcc(r23)
/* 80A38D8C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A38D90  41 82 00 14 */	beq lbl_80A38DA4
/* 80A38D94  C0 37 06 B0 */	lfs f1, 0x6b0(r23)
/* 80A38D98  38 77 06 A0 */	addi r3, r23, 0x6a0
/* 80A38D9C  38 9E 00 58 */	addi r4, r30, 0x58
/* 80A38DA0  4B 5D 4A 08 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80A38DA4:
/* 80A38DA4  80 17 0D CC */	lwz r0, 0xdcc(r23)
/* 80A38DA8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80A38DAC  41 82 00 14 */	beq lbl_80A38DC0
/* 80A38DB0  C0 37 06 C8 */	lfs f1, 0x6c8(r23)
/* 80A38DB4  38 77 06 B8 */	addi r3, r23, 0x6b8
/* 80A38DB8  38 9E 00 58 */	addi r4, r30, 0x58
/* 80A38DBC  4B 5D 47 5C */	b entry__13mDoExt_bpkAnmFP16J3DMaterialTablef
lbl_80A38DC0:
/* 80A38DC0  2C 19 00 00 */	cmpwi r25, 0
/* 80A38DC4  41 82 00 10 */	beq lbl_80A38DD4
/* 80A38DC8  7E E3 BB 78 */	mr r3, r23
/* 80A38DCC  7F C4 F3 78 */	mr r4, r30
/* 80A38DD0  4B 5E 46 5C */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
lbl_80A38DD4:
/* 80A38DD4  2C 1B 00 00 */	cmpwi r27, 0
/* 80A38DD8  41 82 00 10 */	beq lbl_80A38DE8
/* 80A38DDC  7E E3 BB 78 */	mr r3, r23
/* 80A38DE0  4B FF 41 BD */	bl drawGhost__10daNpc_Kn_cFv
/* 80A38DE4  48 00 00 B4 */	b lbl_80A38E98
lbl_80A38DE8:
/* 80A38DE8  88 17 0A BD */	lbz r0, 0xabd(r23)
/* 80A38DEC  28 00 00 00 */	cmplwi r0, 0
/* 80A38DF0  41 82 00 74 */	beq lbl_80A38E64
/* 80A38DF4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80A38DF8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80A38DFC  38 80 00 04 */	li r4, 4
/* 80A38E00  38 B7 04 D0 */	addi r5, r23, 0x4d0
/* 80A38E04  38 D7 01 0C */	addi r6, r23, 0x10c
/* 80A38E08  4B 76 A9 BC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80A38E0C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80A38E10  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80A38E14  80 9F 00 04 */	lwz r4, 4(r31)
/* 80A38E18  38 B7 01 0C */	addi r5, r23, 0x10c
/* 80A38E1C  4B 76 BF 84 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A38E20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A38E24  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80A38E28  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80A38E2C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80A38E30  3B 03 4A C8 */	addi r24, r3, j3dSys@l
/* 80A38E34  90 18 00 48 */	stw r0, 0x48(r24)
/* 80A38E38  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80A38E3C  90 18 00 4C */	stw r0, 0x4c(r24)
/* 80A38E40  80 77 05 BC */	lwz r3, 0x5bc(r23)
/* 80A38E44  4B 5D 83 7C */	b entryDL__16mDoExt_McaMorfSOFv
/* 80A38E48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A38E4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A38E50  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80A38E54  90 18 00 48 */	stw r0, 0x48(r24)
/* 80A38E58  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80A38E5C  90 18 00 4C */	stw r0, 0x4c(r24)
/* 80A38E60  48 00 00 38 */	b lbl_80A38E98
lbl_80A38E64:
/* 80A38E64  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80A38E68  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80A38E6C  38 80 00 00 */	li r4, 0
/* 80A38E70  38 B7 04 D0 */	addi r5, r23, 0x4d0
/* 80A38E74  38 D7 01 0C */	addi r6, r23, 0x10c
/* 80A38E78  4B 76 A9 4C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80A38E7C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80A38E80  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80A38E84  80 9F 00 04 */	lwz r4, 4(r31)
/* 80A38E88  38 B7 01 0C */	addi r5, r23, 0x10c
/* 80A38E8C  4B 76 BF 14 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A38E90  80 77 05 BC */	lwz r3, 0x5bc(r23)
/* 80A38E94  4B 5D 83 2C */	b entryDL__16mDoExt_McaMorfSOFv
lbl_80A38E98:
/* 80A38E98  80 17 0D CC */	lwz r0, 0xdcc(r23)
/* 80A38E9C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80A38EA0  41 82 00 10 */	beq lbl_80A38EB0
/* 80A38EA4  38 7E 00 58 */	addi r3, r30, 0x58
/* 80A38EA8  80 97 06 84 */	lwz r4, 0x684(r23)
/* 80A38EAC  4B 8F 68 4C */	b removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
lbl_80A38EB0:
/* 80A38EB0  80 17 0D CC */	lwz r0, 0xdcc(r23)
/* 80A38EB4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80A38EB8  41 82 00 10 */	beq lbl_80A38EC8
/* 80A38EBC  38 7E 00 58 */	addi r3, r30, 0x58
/* 80A38EC0  80 97 06 9C */	lwz r4, 0x69c(r23)
/* 80A38EC4  4B 8F 68 F0 */	b removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80A38EC8:
/* 80A38EC8  80 17 0D CC */	lwz r0, 0xdcc(r23)
/* 80A38ECC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A38ED0  41 82 00 10 */	beq lbl_80A38EE0
/* 80A38ED4  38 7E 00 58 */	addi r3, r30, 0x58
/* 80A38ED8  80 97 06 B4 */	lwz r4, 0x6b4(r23)
/* 80A38EDC  4B 8F 69 A4 */	b removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_80A38EE0:
/* 80A38EE0  80 17 0D CC */	lwz r0, 0xdcc(r23)
/* 80A38EE4  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80A38EE8  41 82 00 10 */	beq lbl_80A38EF8
/* 80A38EEC  38 7E 00 58 */	addi r3, r30, 0x58
/* 80A38EF0  80 97 06 CC */	lwz r4, 0x6cc(r23)
/* 80A38EF4  4B 8F 67 58 */	b removeMatColorAnimator__16J3DMaterialTableFP11J3DAnmColor
lbl_80A38EF8:
/* 80A38EF8  2C 1C 00 00 */	cmpwi r28, 0
/* 80A38EFC  40 82 00 7C */	bne lbl_80A38F78
/* 80A38F00  2C 1D 00 00 */	cmpwi r29, 0
/* 80A38F04  40 82 00 4C */	bne lbl_80A38F50
/* 80A38F08  80 77 0D C8 */	lwz r3, 0xdc8(r23)
/* 80A38F0C  38 80 00 01 */	li r4, 1
/* 80A38F10  7F E5 FB 78 */	mr r5, r31
/* 80A38F14  38 D7 04 D0 */	addi r6, r23, 0x4d0
/* 80A38F18  FC 20 F0 90 */	fmr f1, f30
/* 80A38F1C  FC 40 F8 90 */	fmr f2, f31
/* 80A38F20  C0 77 04 D4 */	lfs f3, 0x4d4(r23)
/* 80A38F24  C0 97 0E 14 */	lfs f4, 0xe14(r23)
/* 80A38F28  38 F7 09 78 */	addi r7, r23, 0x978
/* 80A38F2C  39 17 01 0C */	addi r8, r23, 0x10c
/* 80A38F30  39 20 00 00 */	li r9, 0
/* 80A38F34  3D 40 80 A4 */	lis r10, lit_4327@ha
/* 80A38F38  C0 AA 09 0C */	lfs f5, lit_4327@l(r10)
/* 80A38F3C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80A38F40  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80A38F44  4B 5F 59 CC */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80A38F48  90 77 0D C8 */	stw r3, 0xdc8(r23)
/* 80A38F4C  48 00 00 2C */	b lbl_80A38F78
lbl_80A38F50:
/* 80A38F50  38 77 04 D0 */	addi r3, r23, 0x4d0
/* 80A38F54  C0 37 0E 14 */	lfs f1, 0xe14(r23)
/* 80A38F58  FC 40 F8 90 */	fmr f2, f31
/* 80A38F5C  38 97 09 78 */	addi r4, r23, 0x978
/* 80A38F60  38 A0 00 00 */	li r5, 0
/* 80A38F64  3C C0 80 A4 */	lis r6, lit_4327@ha
/* 80A38F68  C0 66 09 0C */	lfs f3, lit_4327@l(r6)
/* 80A38F6C  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80A38F70  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80A38F74  4B 5F 41 40 */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80A38F78:
/* 80A38F78  7E E3 BB 78 */	mr r3, r23
/* 80A38F7C  4B FF 3E 05 */	bl drawOtherMdl__10daNpc_Kn_cFv
/* 80A38F80  38 60 00 01 */	li r3, 1
lbl_80A38F84:
/* 80A38F84  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A38F88  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A38F8C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80A38F90  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80A38F94  39 61 00 40 */	addi r11, r1, 0x40
/* 80A38F98  4B 92 92 74 */	b _restgpr_22
/* 80A38F9C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A38FA0  7C 08 03 A6 */	mtlr r0
/* 80A38FA4  38 21 00 60 */	addi r1, r1, 0x60
/* 80A38FA8  4E 80 00 20 */	blr 
