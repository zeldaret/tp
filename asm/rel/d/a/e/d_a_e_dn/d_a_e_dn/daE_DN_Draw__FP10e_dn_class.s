lbl_804E5838:
/* 804E5838  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804E583C  7C 08 02 A6 */	mflr r0
/* 804E5840  90 01 00 54 */	stw r0, 0x54(r1)
/* 804E5844  39 61 00 50 */	addi r11, r1, 0x50
/* 804E5848  4B E7 C9 88 */	b _savegpr_26
/* 804E584C  7C 7D 1B 78 */	mr r29, r3
/* 804E5850  3C 60 80 4F */	lis r3, lit_3789@ha
/* 804E5854  3B E3 E8 AC */	addi r31, r3, lit_3789@l
/* 804E5858  88 1D 10 D8 */	lbz r0, 0x10d8(r29)
/* 804E585C  28 00 00 00 */	cmplwi r0, 0
/* 804E5860  41 82 00 0C */	beq lbl_804E586C
/* 804E5864  38 60 00 01 */	li r3, 1
/* 804E5868  48 00 02 A0 */	b lbl_804E5B08
lbl_804E586C:
/* 804E586C  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 804E5870  83 C3 00 04 */	lwz r30, 4(r3)
/* 804E5874  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804E5878  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804E587C  38 80 00 00 */	li r4, 0
/* 804E5880  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804E5884  38 DD 01 0C */	addi r6, r29, 0x10c
/* 804E5888  4B CB DF 3C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804E588C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804E5890  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804E5894  80 9E 00 04 */	lwz r4, 4(r30)
/* 804E5898  38 BD 01 0C */	addi r5, r29, 0x10c
/* 804E589C  4B CB F5 04 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804E58A0  88 1D 06 C4 */	lbz r0, 0x6c4(r29)
/* 804E58A4  7C 00 07 75 */	extsb. r0, r0
/* 804E58A8  41 82 00 B4 */	beq lbl_804E595C
/* 804E58AC  83 9E 00 04 */	lwz r28, 4(r30)
/* 804E58B0  3B 40 00 00 */	li r26, 0
/* 804E58B4  48 00 00 98 */	b lbl_804E594C
lbl_804E58B8:
/* 804E58B8  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 804E58BC  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 804E58C0  7F 63 00 2E */	lwzx r27, r3, r0
/* 804E58C4  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 804E58C8  38 80 00 00 */	li r4, 0
/* 804E58CC  81 83 00 00 */	lwz r12, 0(r3)
/* 804E58D0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804E58D4  7D 89 03 A6 */	mtctr r12
/* 804E58D8  4E 80 04 21 */	bctrl 
/* 804E58DC  C0 1D 06 C8 */	lfs f0, 0x6c8(r29)
/* 804E58E0  FC 00 00 1E */	fctiwz f0, f0
/* 804E58E4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804E58E8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804E58EC  B0 03 00 00 */	sth r0, 0(r3)
/* 804E58F0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 804E58F4  38 80 00 00 */	li r4, 0
/* 804E58F8  81 83 00 00 */	lwz r12, 0(r3)
/* 804E58FC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804E5900  7D 89 03 A6 */	mtctr r12
/* 804E5904  4E 80 04 21 */	bctrl 
/* 804E5908  C0 1D 06 C8 */	lfs f0, 0x6c8(r29)
/* 804E590C  FC 00 00 1E */	fctiwz f0, f0
/* 804E5910  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804E5914  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E5918  B0 03 00 02 */	sth r0, 2(r3)
/* 804E591C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 804E5920  38 80 00 00 */	li r4, 0
/* 804E5924  81 83 00 00 */	lwz r12, 0(r3)
/* 804E5928  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804E592C  7D 89 03 A6 */	mtctr r12
/* 804E5930  4E 80 04 21 */	bctrl 
/* 804E5934  C0 1D 06 C8 */	lfs f0, 0x6c8(r29)
/* 804E5938  FC 00 00 1E */	fctiwz f0, f0
/* 804E593C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804E5940  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804E5944  B0 03 00 04 */	sth r0, 4(r3)
/* 804E5948  3B 5A 00 01 */	addi r26, r26, 1
lbl_804E594C:
/* 804E594C  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 804E5950  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 804E5954  7C 03 00 40 */	cmplw r3, r0
/* 804E5958  41 80 FF 60 */	blt lbl_804E58B8
lbl_804E595C:
/* 804E595C  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 804E5960  4B B2 B8 60 */	b entryDL__16mDoExt_McaMorfSOFv
/* 804E5964  88 1D 06 C4 */	lbz r0, 0x6c4(r29)
/* 804E5968  7C 00 07 75 */	extsb. r0, r0
/* 804E596C  41 82 00 90 */	beq lbl_804E59FC
/* 804E5970  83 7E 00 04 */	lwz r27, 4(r30)
/* 804E5974  3B 40 00 00 */	li r26, 0
/* 804E5978  48 00 00 74 */	b lbl_804E59EC
lbl_804E597C:
/* 804E597C  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 804E5980  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 804E5984  7F 83 00 2E */	lwzx r28, r3, r0
/* 804E5988  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 804E598C  38 80 00 00 */	li r4, 0
/* 804E5990  81 83 00 00 */	lwz r12, 0(r3)
/* 804E5994  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804E5998  7D 89 03 A6 */	mtctr r12
/* 804E599C  4E 80 04 21 */	bctrl 
/* 804E59A0  38 00 00 00 */	li r0, 0
/* 804E59A4  B0 03 00 00 */	sth r0, 0(r3)
/* 804E59A8  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 804E59AC  38 80 00 00 */	li r4, 0
/* 804E59B0  81 83 00 00 */	lwz r12, 0(r3)
/* 804E59B4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804E59B8  7D 89 03 A6 */	mtctr r12
/* 804E59BC  4E 80 04 21 */	bctrl 
/* 804E59C0  38 00 00 00 */	li r0, 0
/* 804E59C4  B0 03 00 02 */	sth r0, 2(r3)
/* 804E59C8  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 804E59CC  38 80 00 00 */	li r4, 0
/* 804E59D0  81 83 00 00 */	lwz r12, 0(r3)
/* 804E59D4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804E59D8  7D 89 03 A6 */	mtctr r12
/* 804E59DC  4E 80 04 21 */	bctrl 
/* 804E59E0  38 00 00 00 */	li r0, 0
/* 804E59E4  B0 03 00 04 */	sth r0, 4(r3)
/* 804E59E8  3B 5A 00 01 */	addi r26, r26, 1
lbl_804E59EC:
/* 804E59EC  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 804E59F0  A0 1B 00 5C */	lhz r0, 0x5c(r27)
/* 804E59F4  7C 03 00 40 */	cmplw r3, r0
/* 804E59F8  41 80 FF 84 */	blt lbl_804E597C
lbl_804E59FC:
/* 804E59FC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804E5A00  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804E5A04  80 9D 05 E4 */	lwz r4, 0x5e4(r29)
/* 804E5A08  80 84 00 04 */	lwz r4, 4(r4)
/* 804E5A0C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 804E5A10  4B CB F3 90 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804E5A14  80 7D 05 E4 */	lwz r3, 0x5e4(r29)
/* 804E5A18  4B B2 82 AC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 804E5A1C  80 9D 06 90 */	lwz r4, 0x690(r29)
/* 804E5A20  28 04 00 00 */	cmplwi r4, 0
/* 804E5A24  41 82 00 20 */	beq lbl_804E5A44
/* 804E5A28  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804E5A2C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804E5A30  80 84 00 04 */	lwz r4, 4(r4)
/* 804E5A34  38 BD 01 0C */	addi r5, r29, 0x10c
/* 804E5A38  4B CB F3 68 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804E5A3C  80 7D 06 90 */	lwz r3, 0x690(r29)
/* 804E5A40  4B B2 82 84 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_804E5A44:
/* 804E5A44  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804E5A48  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804E5A4C  80 9D 06 8C */	lwz r4, 0x68c(r29)
/* 804E5A50  80 84 00 04 */	lwz r4, 4(r4)
/* 804E5A54  38 BD 01 0C */	addi r5, r29, 0x10c
/* 804E5A58  4B CB F3 48 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804E5A5C  80 7D 06 8C */	lwz r3, 0x68c(r29)
/* 804E5A60  4B B2 82 64 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 804E5A64  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 804E5A68  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804E5A6C  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 804E5A70  EC 20 18 2A */	fadds f1, f0, f3
/* 804E5A74  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804E5A78  D0 01 00 08 */	stfs f0, 8(r1)
/* 804E5A7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804E5A80  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804E5A84  80 7D 06 DC */	lwz r3, 0x6dc(r29)
/* 804E5A88  38 80 00 01 */	li r4, 1
/* 804E5A8C  7F C5 F3 78 */	mr r5, r30
/* 804E5A90  38 C1 00 08 */	addi r6, r1, 8
/* 804E5A94  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804E5A98  C0 5F 00 04 */	lfs f2, 4(r31)
/* 804E5A9C  C0 9D 09 1C */	lfs f4, 0x91c(r29)
/* 804E5AA0  38 FD 09 74 */	addi r7, r29, 0x974
/* 804E5AA4  39 1D 01 0C */	addi r8, r29, 0x10c
/* 804E5AA8  39 20 00 00 */	li r9, 0
/* 804E5AAC  C0 BF 00 08 */	lfs f5, 8(r31)
/* 804E5AB0  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 804E5AB4  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 804E5AB8  4B B4 8E 58 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 804E5ABC  90 7D 06 DC */	stw r3, 0x6dc(r29)
/* 804E5AC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E5AC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E5AC8  3B 63 61 C0 */	addi r27, r3, 0x61c0
/* 804E5ACC  7F 63 DB 78 */	mr r3, r27
/* 804E5AD0  80 9D 06 DC */	lwz r4, 0x6dc(r29)
/* 804E5AD4  80 BD 05 E4 */	lwz r5, 0x5e4(r29)
/* 804E5AD8  4B B7 04 44 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 804E5ADC  80 BD 06 90 */	lwz r5, 0x690(r29)
/* 804E5AE0  28 05 00 00 */	cmplwi r5, 0
/* 804E5AE4  41 82 00 10 */	beq lbl_804E5AF4
/* 804E5AE8  7F 63 DB 78 */	mr r3, r27
/* 804E5AEC  80 9D 06 DC */	lwz r4, 0x6dc(r29)
/* 804E5AF0  4B B7 04 2C */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_804E5AF4:
/* 804E5AF4  7F 63 DB 78 */	mr r3, r27
/* 804E5AF8  80 9D 06 DC */	lwz r4, 0x6dc(r29)
/* 804E5AFC  80 BD 06 8C */	lwz r5, 0x68c(r29)
/* 804E5B00  4B B7 04 1C */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 804E5B04  38 60 00 01 */	li r3, 1
lbl_804E5B08:
/* 804E5B08  39 61 00 50 */	addi r11, r1, 0x50
/* 804E5B0C  4B E7 C7 10 */	b _restgpr_26
/* 804E5B10  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804E5B14  7C 08 03 A6 */	mtlr r0
/* 804E5B18  38 21 00 50 */	addi r1, r1, 0x50
/* 804E5B1C  4E 80 00 20 */	blr 
