lbl_8014886C:
/* 8014886C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80148870  7C 08 02 A6 */	mflr r0
/* 80148874  90 01 00 64 */	stw r0, 0x64(r1)
/* 80148878  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8014887C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80148880  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80148884  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80148888  39 61 00 40 */	addi r11, r1, 0x40
/* 8014888C  48 21 99 35 */	bl _savegpr_22
/* 80148890  7C 77 1B 78 */	mr r23, r3
/* 80148894  7C 98 23 78 */	mr r24, r4
/* 80148898  7C B9 2B 78 */	mr r25, r5
/* 8014889C  FF C0 08 90 */	fmr f30, f1
/* 801488A0  7C DA 33 78 */	mr r26, r6
/* 801488A4  FF E0 10 90 */	fmr f31, f2
/* 801488A8  7C FB 3B 78 */	mr r27, r7
/* 801488AC  7D 1C 43 78 */	mr r28, r8
/* 801488B0  7D 3D 4B 78 */	mr r29, r9
/* 801488B4  80 83 05 78 */	lwz r4, 0x578(r3)
/* 801488B8  83 E4 00 04 */	lwz r31, 4(r4)
/* 801488BC  83 DF 00 04 */	lwz r30, 4(r31)
/* 801488C0  38 00 00 01 */	li r0, 1
/* 801488C4  98 03 0E 34 */	stb r0, 0xe34(r3)
/* 801488C8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 801488CC  81 8C 00 94 */	lwz r12, 0x94(r12)
/* 801488D0  7D 89 03 A6 */	mtctr r12
/* 801488D4  4E 80 04 21 */	bctrl 
/* 801488D8  2C 03 00 00 */	cmpwi r3, 0
/* 801488DC  40 82 00 44 */	bne lbl_80148920
/* 801488E0  3A C0 00 00 */	li r22, 0
/* 801488E4  88 17 0E 25 */	lbz r0, 0xe25(r23)
/* 801488E8  28 00 00 00 */	cmplwi r0, 0
/* 801488EC  40 82 00 1C */	bne lbl_80148908
/* 801488F0  4B EE 71 65 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 801488F4  2C 03 00 00 */	cmpwi r3, 0
/* 801488F8  40 82 00 14 */	bne lbl_8014890C
/* 801488FC  88 17 0A 89 */	lbz r0, 0xa89(r23)
/* 80148900  28 00 00 00 */	cmplwi r0, 0
/* 80148904  41 82 00 08 */	beq lbl_8014890C
lbl_80148908:
/* 80148908  3A C0 00 01 */	li r22, 1
lbl_8014890C:
/* 8014890C  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80148910  40 82 00 10 */	bne lbl_80148920
/* 80148914  88 17 0E 2B */	lbz r0, 0xe2b(r23)
/* 80148918  28 00 00 00 */	cmplwi r0, 0
/* 8014891C  41 82 00 0C */	beq lbl_80148928
lbl_80148920:
/* 80148920  38 60 00 01 */	li r3, 1
/* 80148924  48 00 03 24 */	b lbl_80148C48
lbl_80148928:
/* 80148928  38 00 00 00 */	li r0, 0
/* 8014892C  B0 17 04 64 */	sth r0, 0x464(r23)
/* 80148930  B0 17 04 66 */	sth r0, 0x466(r23)
/* 80148934  B0 17 04 68 */	sth r0, 0x468(r23)
/* 80148938  B0 17 04 6A */	sth r0, 0x46a(r23)
/* 8014893C  28 1A 00 00 */	cmplwi r26, 0
/* 80148940  41 82 00 24 */	beq lbl_80148964
/* 80148944  A8 1A 00 00 */	lha r0, 0(r26)
/* 80148948  B0 17 04 64 */	sth r0, 0x464(r23)
/* 8014894C  A8 1A 00 02 */	lha r0, 2(r26)
/* 80148950  B0 17 04 66 */	sth r0, 0x466(r23)
/* 80148954  A8 1A 00 04 */	lha r0, 4(r26)
/* 80148958  B0 17 04 68 */	sth r0, 0x468(r23)
/* 8014895C  A8 1A 00 06 */	lha r0, 6(r26)
/* 80148960  B0 17 04 6A */	sth r0, 0x46a(r23)
lbl_80148964:
/* 80148964  80 97 0D B8 */	lwz r4, 0xdb8(r23)
/* 80148968  2C 04 00 00 */	cmpwi r4, 0
/* 8014896C  41 82 00 7C */	beq lbl_801489E8
/* 80148970  80 17 0D BC */	lwz r0, 0xdbc(r23)
/* 80148974  2C 00 00 00 */	cmpwi r0, 0
/* 80148978  41 82 00 70 */	beq lbl_801489E8
/* 8014897C  C8 42 99 E0 */	lfd f2, lit_4142(r2)
/* 80148980  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80148984  90 01 00 0C */	stw r0, 0xc(r1)
/* 80148988  3C 60 43 30 */	lis r3, 0x4330
/* 8014898C  90 61 00 08 */	stw r3, 8(r1)
/* 80148990  C8 01 00 08 */	lfd f0, 8(r1)
/* 80148994  EC 20 10 28 */	fsubs f1, f0, f2
/* 80148998  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8014899C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801489A0  90 61 00 10 */	stw r3, 0x10(r1)
/* 801489A4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801489A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801489AC  EC 41 00 24 */	fdivs f2, f1, f0
/* 801489B0  FC 00 12 10 */	fabs f0, f2
/* 801489B4  FC 20 00 18 */	frsp f1, f0
/* 801489B8  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 801489BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801489C0  7C 00 00 26 */	mfcr r0
/* 801489C4  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 801489C8  40 82 00 30 */	bne lbl_801489F8
/* 801489CC  C0 02 9A 44 */	lfs f0, lit_5794(r2)
/* 801489D0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801489D4  FC 00 00 1E */	fctiwz f0, f0
/* 801489D8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801489DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801489E0  B0 17 04 64 */	sth r0, 0x464(r23)
/* 801489E4  48 00 00 14 */	b lbl_801489F8
lbl_801489E8:
/* 801489E8  2C 18 00 00 */	cmpwi r24, 0
/* 801489EC  41 82 00 0C */	beq lbl_801489F8
/* 801489F0  38 00 00 14 */	li r0, 0x14
/* 801489F4  B0 17 04 66 */	sth r0, 0x466(r23)
lbl_801489F8:
/* 801489F8  80 17 0D 98 */	lwz r0, 0xd98(r23)
/* 801489FC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80148A00  41 82 00 20 */	beq lbl_80148A20
/* 80148A04  38 77 06 2C */	addi r3, r23, 0x62c
/* 80148A08  38 9E 00 58 */	addi r4, r30, 0x58
/* 80148A0C  C0 17 06 3C */	lfs f0, 0x63c(r23)
/* 80148A10  FC 00 00 1E */	fctiwz f0, f0
/* 80148A14  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80148A18  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80148A1C  4B EC 4B CD */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
lbl_80148A20:
/* 80148A20  80 17 0D 98 */	lwz r0, 0xd98(r23)
/* 80148A24  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80148A28  41 82 00 14 */	beq lbl_80148A3C
/* 80148A2C  C0 37 06 54 */	lfs f1, 0x654(r23)
/* 80148A30  38 77 06 44 */	addi r3, r23, 0x644
/* 80148A34  38 9E 00 58 */	addi r4, r30, 0x58
/* 80148A38  4B EC 4C A1 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80148A3C:
/* 80148A3C  80 17 0D 98 */	lwz r0, 0xd98(r23)
/* 80148A40  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80148A44  41 82 00 14 */	beq lbl_80148A58
/* 80148A48  C0 37 06 6C */	lfs f1, 0x66c(r23)
/* 80148A4C  38 77 06 5C */	addi r3, r23, 0x65c
/* 80148A50  38 9E 00 58 */	addi r4, r30, 0x58
/* 80148A54  4B EC 4D 55 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80148A58:
/* 80148A58  80 17 0D 98 */	lwz r0, 0xd98(r23)
/* 80148A5C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80148A60  41 82 00 14 */	beq lbl_80148A74
/* 80148A64  C0 37 06 84 */	lfs f1, 0x684(r23)
/* 80148A68  38 77 06 74 */	addi r3, r23, 0x674
/* 80148A6C  38 9E 00 58 */	addi r4, r30, 0x58
/* 80148A70  4B EC 4A A9 */	bl entry__13mDoExt_bpkAnmFP16J3DMaterialTablef
lbl_80148A74:
/* 80148A74  2C 19 00 00 */	cmpwi r25, 0
/* 80148A78  41 82 00 10 */	beq lbl_80148A88
/* 80148A7C  7E E3 BB 78 */	mr r3, r23
/* 80148A80  7F C4 F3 78 */	mr r4, r30
/* 80148A84  4B ED 49 A9 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
lbl_80148A88:
/* 80148A88  2C 1B 00 00 */	cmpwi r27, 0
/* 80148A8C  41 82 00 1C */	beq lbl_80148AA8
/* 80148A90  7E E3 BB 78 */	mr r3, r23
/* 80148A94  81 97 0E 3C */	lwz r12, 0xe3c(r23)
/* 80148A98  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80148A9C  7D 89 03 A6 */	mtctr r12
/* 80148AA0  4E 80 04 21 */	bctrl 
/* 80148AA4  48 00 00 B4 */	b lbl_80148B58
lbl_80148AA8:
/* 80148AA8  88 17 0A 89 */	lbz r0, 0xa89(r23)
/* 80148AAC  28 00 00 00 */	cmplwi r0, 0
/* 80148AB0  41 82 00 74 */	beq lbl_80148B24
/* 80148AB4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80148AB8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80148ABC  38 80 00 04 */	li r4, 4
/* 80148AC0  38 B7 04 D0 */	addi r5, r23, 0x4d0
/* 80148AC4  38 D7 01 0C */	addi r6, r23, 0x10c
/* 80148AC8  48 05 AC FD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80148ACC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80148AD0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80148AD4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80148AD8  38 B7 01 0C */	addi r5, r23, 0x10c
/* 80148ADC  48 05 C2 C5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80148AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80148AE4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80148AE8  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80148AEC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80148AF0  3B 03 4A C8 */	addi r24, r3, j3dSys@l
/* 80148AF4  90 18 00 48 */	stw r0, 0x48(r24)
/* 80148AF8  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80148AFC  90 18 00 4C */	stw r0, 0x4c(r24)
/* 80148B00  80 77 05 78 */	lwz r3, 0x578(r23)
/* 80148B04  4B EC 86 BD */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80148B08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80148B0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80148B10  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80148B14  90 18 00 48 */	stw r0, 0x48(r24)
/* 80148B18  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80148B1C  90 18 00 4C */	stw r0, 0x4c(r24)
/* 80148B20  48 00 00 38 */	b lbl_80148B58
lbl_80148B24:
/* 80148B24  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80148B28  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80148B2C  38 80 00 00 */	li r4, 0
/* 80148B30  38 B7 04 D0 */	addi r5, r23, 0x4d0
/* 80148B34  38 D7 01 0C */	addi r6, r23, 0x10c
/* 80148B38  48 05 AC 8D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80148B3C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80148B40  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80148B44  80 9F 00 04 */	lwz r4, 4(r31)
/* 80148B48  38 B7 01 0C */	addi r5, r23, 0x10c
/* 80148B4C  48 05 C2 55 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80148B50  80 77 05 78 */	lwz r3, 0x578(r23)
/* 80148B54  4B EC 86 6D */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_80148B58:
/* 80148B58  80 17 0D 98 */	lwz r0, 0xd98(r23)
/* 80148B5C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80148B60  41 82 00 10 */	beq lbl_80148B70
/* 80148B64  38 7E 00 58 */	addi r3, r30, 0x58
/* 80148B68  80 97 06 40 */	lwz r4, 0x640(r23)
/* 80148B6C  48 1E 6B 8D */	bl removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
lbl_80148B70:
/* 80148B70  80 17 0D 98 */	lwz r0, 0xd98(r23)
/* 80148B74  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80148B78  41 82 00 10 */	beq lbl_80148B88
/* 80148B7C  38 7E 00 58 */	addi r3, r30, 0x58
/* 80148B80  80 97 06 58 */	lwz r4, 0x658(r23)
/* 80148B84  48 1E 6C 31 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80148B88:
/* 80148B88  80 17 0D 98 */	lwz r0, 0xd98(r23)
/* 80148B8C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80148B90  41 82 00 10 */	beq lbl_80148BA0
/* 80148B94  38 7E 00 58 */	addi r3, r30, 0x58
/* 80148B98  80 97 06 70 */	lwz r4, 0x670(r23)
/* 80148B9C  48 1E 6C E5 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_80148BA0:
/* 80148BA0  80 17 0D 98 */	lwz r0, 0xd98(r23)
/* 80148BA4  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80148BA8  41 82 00 10 */	beq lbl_80148BB8
/* 80148BAC  38 7E 00 58 */	addi r3, r30, 0x58
/* 80148BB0  80 97 06 88 */	lwz r4, 0x688(r23)
/* 80148BB4  48 1E 6A 99 */	bl removeMatColorAnimator__16J3DMaterialTableFP11J3DAnmColor
lbl_80148BB8:
/* 80148BB8  2C 1C 00 00 */	cmpwi r28, 0
/* 80148BBC  40 82 00 74 */	bne lbl_80148C30
/* 80148BC0  2C 1D 00 00 */	cmpwi r29, 0
/* 80148BC4  40 82 00 48 */	bne lbl_80148C0C
/* 80148BC8  80 77 0D 94 */	lwz r3, 0xd94(r23)
/* 80148BCC  38 80 00 01 */	li r4, 1
/* 80148BD0  7F E5 FB 78 */	mr r5, r31
/* 80148BD4  38 D7 04 D0 */	addi r6, r23, 0x4d0
/* 80148BD8  FC 20 F0 90 */	fmr f1, f30
/* 80148BDC  FC 40 F8 90 */	fmr f2, f31
/* 80148BE0  C0 77 04 D4 */	lfs f3, 0x4d4(r23)
/* 80148BE4  C0 97 0D F4 */	lfs f4, 0xdf4(r23)
/* 80148BE8  38 F7 09 44 */	addi r7, r23, 0x944
/* 80148BEC  39 17 01 0C */	addi r8, r23, 0x10c
/* 80148BF0  39 20 00 00 */	li r9, 0
/* 80148BF4  C0 A2 99 DC */	lfs f5, lit_4140(r2)
/* 80148BF8  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80148BFC  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80148C00  4B EE 5D 11 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80148C04  90 77 0D 94 */	stw r3, 0xd94(r23)
/* 80148C08  48 00 00 28 */	b lbl_80148C30
lbl_80148C0C:
/* 80148C0C  38 77 04 D0 */	addi r3, r23, 0x4d0
/* 80148C10  C0 37 0D F4 */	lfs f1, 0xdf4(r23)
/* 80148C14  FC 40 F8 90 */	fmr f2, f31
/* 80148C18  38 97 09 44 */	addi r4, r23, 0x944
/* 80148C1C  38 A0 00 00 */	li r5, 0
/* 80148C20  C0 62 99 DC */	lfs f3, lit_4140(r2)
/* 80148C24  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80148C28  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80148C2C  4B EE 44 89 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80148C30:
/* 80148C30  7E E3 BB 78 */	mr r3, r23
/* 80148C34  81 97 0E 3C */	lwz r12, 0xe3c(r23)
/* 80148C38  81 8C 00 98 */	lwz r12, 0x98(r12)
/* 80148C3C  7D 89 03 A6 */	mtctr r12
/* 80148C40  4E 80 04 21 */	bctrl 
/* 80148C44  38 60 00 01 */	li r3, 1
lbl_80148C48:
/* 80148C48  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80148C4C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80148C50  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80148C54  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80148C58  39 61 00 40 */	addi r11, r1, 0x40
/* 80148C5C  48 21 95 B1 */	bl _restgpr_22
/* 80148C60  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80148C64  7C 08 03 A6 */	mtlr r0
/* 80148C68  38 21 00 60 */	addi r1, r1, 0x60
/* 80148C6C  4E 80 00 20 */	blr 
