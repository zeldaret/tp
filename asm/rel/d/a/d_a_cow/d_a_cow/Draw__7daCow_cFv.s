lbl_8066296C:
/* 8066296C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80662970  7C 08 02 A6 */	mflr r0
/* 80662974  90 01 00 64 */	stw r0, 0x64(r1)
/* 80662978  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8066297C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80662980  39 61 00 50 */	addi r11, r1, 0x50
/* 80662984  4B CF F8 58 */	b _savegpr_29
/* 80662988  7C 7D 1B 78 */	mr r29, r3
/* 8066298C  3C 60 80 66 */	lis r3, lit_3987@ha
/* 80662990  3B E3 2D B0 */	addi r31, r3, lit_3987@l
/* 80662994  88 1D 0C A6 */	lbz r0, 0xca6(r29)
/* 80662998  28 00 00 00 */	cmplwi r0, 0
/* 8066299C  41 82 00 0C */	beq lbl_806629A8
/* 806629A0  38 60 00 01 */	li r3, 1
/* 806629A4  48 00 02 00 */	b lbl_80662BA4
lbl_806629A8:
/* 806629A8  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 806629AC  83 C3 00 04 */	lwz r30, 4(r3)
/* 806629B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806629B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806629B8  38 80 00 00 */	li r4, 0
/* 806629BC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806629C0  38 DD 01 0C */	addi r6, r29, 0x10c
/* 806629C4  4B B4 0E 00 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806629C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806629CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806629D0  80 9E 00 04 */	lwz r4, 4(r30)
/* 806629D4  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806629D8  4B B4 23 C8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806629DC  80 9E 00 04 */	lwz r4, 4(r30)
/* 806629E0  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 806629E4  38 84 00 58 */	addi r4, r4, 0x58
/* 806629E8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806629EC  FC 00 00 1E */	fctiwz f0, f0
/* 806629F0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806629F4  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 806629F8  4B 9A AB F0 */	b entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 806629FC  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80662A00  4B 9A E7 C0 */	b entryDL__16mDoExt_McaMorfSOFv
/* 80662A04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80662A08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80662A0C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80662A10  4B 9E 59 D8 */	b getRunEventName__16dEvent_manager_cFv
/* 80662A14  3C 80 80 66 */	lis r4, stringBase0@ha
/* 80662A18  38 84 2F 18 */	addi r4, r4, stringBase0@l
/* 80662A1C  38 84 00 36 */	addi r4, r4, 0x36
/* 80662A20  4B D0 5F 74 */	b strcmp
/* 80662A24  2C 03 00 00 */	cmpwi r3, 0
/* 80662A28  40 82 00 A0 */	bne lbl_80662AC8
/* 80662A2C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80662A30  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80662A34  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80662A38  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80662A3C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80662A40  38 61 00 2C */	addi r3, r1, 0x2c
/* 80662A44  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80662A48  A8 BD 04 DE */	lha r5, 0x4de(r29)
/* 80662A4C  38 C1 00 20 */	addi r6, r1, 0x20
/* 80662A50  4B C0 E3 70 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80662A54  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80662A58  C0 3D 0C 44 */	lfs f1, 0xc44(r29)
/* 80662A5C  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 80662A60  38 9D 06 FC */	addi r4, r29, 0x6fc
/* 80662A64  38 A0 00 00 */	li r5, 0
/* 80662A68  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80662A6C  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80662A70  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80662A74  4B 9C A6 40 */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 80662A78  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80662A7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80662A80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80662A84  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80662A88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80662A8C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80662A90  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80662A94  A8 BD 04 DE */	lha r5, 0x4de(r29)
/* 80662A98  38 C1 00 20 */	addi r6, r1, 0x20
/* 80662A9C  4B C0 E3 24 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80662AA0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80662AA4  C0 3D 0C 44 */	lfs f1, 0xc44(r29)
/* 80662AA8  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 80662AAC  38 9D 06 FC */	addi r4, r29, 0x6fc
/* 80662AB0  38 A0 00 00 */	li r5, 0
/* 80662AB4  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80662AB8  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80662ABC  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80662AC0  4B 9C A5 F4 */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 80662AC4  48 00 00 C0 */	b lbl_80662B84
lbl_80662AC8:
/* 80662AC8  C3 FF 00 B0 */	lfs f31, 0xb0(r31)
/* 80662ACC  3C 60 80 66 */	lis r3, lit_8186@ha
/* 80662AD0  38 83 33 78 */	addi r4, r3, lit_8186@l
/* 80662AD4  80 64 00 00 */	lwz r3, 0(r4)
/* 80662AD8  80 04 00 04 */	lwz r0, 4(r4)
/* 80662ADC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80662AE0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80662AE4  80 04 00 08 */	lwz r0, 8(r4)
/* 80662AE8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80662AEC  7F A3 EB 78 */	mr r3, r29
/* 80662AF0  38 81 00 14 */	addi r4, r1, 0x14
/* 80662AF4  4B FF 65 F5 */	bl checkProcess__7daCow_cFM7daCow_cFPCvPv_v
/* 80662AF8  2C 03 00 00 */	cmpwi r3, 0
/* 80662AFC  40 82 00 38 */	bne lbl_80662B34
/* 80662B00  3C 60 80 66 */	lis r3, lit_8188@ha
/* 80662B04  38 83 33 84 */	addi r4, r3, lit_8188@l
/* 80662B08  80 64 00 00 */	lwz r3, 0(r4)
/* 80662B0C  80 04 00 04 */	lwz r0, 4(r4)
/* 80662B10  90 61 00 08 */	stw r3, 8(r1)
/* 80662B14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80662B18  80 04 00 08 */	lwz r0, 8(r4)
/* 80662B1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80662B20  7F A3 EB 78 */	mr r3, r29
/* 80662B24  38 81 00 08 */	addi r4, r1, 8
/* 80662B28  4B FF 65 C1 */	bl checkProcess__7daCow_cFM7daCow_cFPCvPv_v
/* 80662B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80662B30  41 82 00 14 */	beq lbl_80662B44
lbl_80662B34:
/* 80662B34  88 1D 0C 9F */	lbz r0, 0xc9f(r29)
/* 80662B38  28 00 00 04 */	cmplwi r0, 4
/* 80662B3C  40 82 00 08 */	bne lbl_80662B44
/* 80662B40  C3 FF 00 98 */	lfs f31, 0x98(r31)
lbl_80662B44:
/* 80662B44  80 7D 0C 64 */	lwz r3, 0xc64(r29)
/* 80662B48  38 80 00 01 */	li r4, 1
/* 80662B4C  7F C5 F3 78 */	mr r5, r30
/* 80662B50  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80662B54  FC 20 F8 90 */	fmr f1, f31
/* 80662B58  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80662B5C  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80662B60  C0 9D 0C 44 */	lfs f4, 0xc44(r29)
/* 80662B64  38 FD 06 FC */	addi r7, r29, 0x6fc
/* 80662B68  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80662B6C  39 20 00 00 */	li r9, 0
/* 80662B70  C0 BF 00 08 */	lfs f5, 8(r31)
/* 80662B74  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80662B78  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80662B7C  4B 9C BD 94 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80662B80  90 7D 0C 64 */	stw r3, 0xc64(r29)
lbl_80662B84:
/* 80662B84  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80662B88  C0 1D 0C AC */	lfs f0, 0xcac(r29)
/* 80662B8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80662B90  FC 00 00 1E */	fctiwz f0, f0
/* 80662B94  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80662B98  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80662B9C  B0 1D 04 64 */	sth r0, 0x464(r29)
/* 80662BA0  38 60 00 01 */	li r3, 1
lbl_80662BA4:
/* 80662BA4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80662BA8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80662BAC  39 61 00 50 */	addi r11, r1, 0x50
/* 80662BB0  4B CF F6 78 */	b _restgpr_29
/* 80662BB4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80662BB8  7C 08 03 A6 */	mtlr r0
/* 80662BBC  38 21 00 60 */	addi r1, r1, 0x60
/* 80662BC0  4E 80 00 20 */	blr 
