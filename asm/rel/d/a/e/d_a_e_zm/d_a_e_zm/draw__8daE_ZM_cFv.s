lbl_8082F9A0:
/* 8082F9A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8082F9A4  7C 08 02 A6 */	mflr r0
/* 8082F9A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8082F9AC  39 61 00 50 */	addi r11, r1, 0x50
/* 8082F9B0  4B B3 28 24 */	b _savegpr_27
/* 8082F9B4  7C 7E 1B 78 */	mr r30, r3
/* 8082F9B8  3C 60 80 83 */	lis r3, lit_3789@ha
/* 8082F9BC  3B E3 2C F8 */	addi r31, r3, lit_3789@l
/* 8082F9C0  88 7E 07 26 */	lbz r3, 0x726(r30)
/* 8082F9C4  28 03 00 0A */	cmplwi r3, 0xa
/* 8082F9C8  40 82 00 0C */	bne lbl_8082F9D4
/* 8082F9CC  38 60 00 01 */	li r3, 1
/* 8082F9D0  48 00 01 CC */	b lbl_8082FB9C
lbl_8082F9D4:
/* 8082F9D4  28 03 00 14 */	cmplwi r3, 0x14
/* 8082F9D8  40 82 00 0C */	bne lbl_8082F9E4
/* 8082F9DC  38 60 00 01 */	li r3, 1
/* 8082F9E0  48 00 01 BC */	b lbl_8082FB9C
lbl_8082F9E4:
/* 8082F9E4  80 1E 06 5C */	lwz r0, 0x65c(r30)
/* 8082F9E8  2C 00 00 05 */	cmpwi r0, 5
/* 8082F9EC  41 82 00 20 */	beq lbl_8082FA0C
/* 8082F9F0  28 03 00 0A */	cmplwi r3, 0xa
/* 8082F9F4  40 80 00 18 */	bge lbl_8082FA0C
/* 8082F9F8  88 1E 05 46 */	lbz r0, 0x546(r30)
/* 8082F9FC  28 00 00 00 */	cmplwi r0, 0
/* 8082FA00  40 82 00 0C */	bne lbl_8082FA0C
/* 8082FA04  38 60 00 01 */	li r3, 1
/* 8082FA08  48 00 01 94 */	b lbl_8082FB9C
lbl_8082FA0C:
/* 8082FA0C  88 9E 07 2A */	lbz r4, 0x72a(r30)
/* 8082FA10  28 04 00 FF */	cmplwi r4, 0xff
/* 8082FA14  41 82 00 28 */	beq lbl_8082FA3C
/* 8082FA18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082FA1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082FA20  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8082FA24  7C 05 07 74 */	extsb r5, r0
/* 8082FA28  4B 80 59 38 */	b isSwitch__10dSv_info_cCFii
/* 8082FA2C  2C 03 00 00 */	cmpwi r3, 0
/* 8082FA30  40 82 00 0C */	bne lbl_8082FA3C
/* 8082FA34  38 60 00 01 */	li r3, 1
/* 8082FA38  48 00 01 64 */	b lbl_8082FB9C
lbl_8082FA3C:
/* 8082FA3C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8082FA40  83 A3 00 04 */	lwz r29, 4(r3)
/* 8082FA44  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8082FA48  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8082FA4C  38 80 00 02 */	li r4, 2
/* 8082FA50  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8082FA54  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8082FA58  4B 97 3D 6C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8082FA5C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8082FA60  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8082FA64  80 9D 00 04 */	lwz r4, 4(r29)
/* 8082FA68  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8082FA6C  4B 97 53 34 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8082FA70  83 BD 00 04 */	lwz r29, 4(r29)
/* 8082FA74  3B 60 00 00 */	li r27, 0
/* 8082FA78  48 00 00 A0 */	b lbl_8082FB18
lbl_8082FA7C:
/* 8082FA7C  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 8082FA80  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 8082FA84  7F 83 00 2E */	lwzx r28, r3, r0
/* 8082FA88  28 1C 00 00 */	cmplwi r28, 0
/* 8082FA8C  41 82 00 88 */	beq lbl_8082FB14
/* 8082FA90  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8082FA94  38 80 00 00 */	li r4, 0
/* 8082FA98  81 83 00 00 */	lwz r12, 0(r3)
/* 8082FA9C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8082FAA0  7D 89 03 A6 */	mtctr r12
/* 8082FAA4  4E 80 04 21 */	bctrl 
/* 8082FAA8  C0 1E 07 08 */	lfs f0, 0x708(r30)
/* 8082FAAC  FC 00 00 1E */	fctiwz f0, f0
/* 8082FAB0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8082FAB4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8082FAB8  B0 03 00 00 */	sth r0, 0(r3)
/* 8082FABC  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8082FAC0  38 80 00 00 */	li r4, 0
/* 8082FAC4  81 83 00 00 */	lwz r12, 0(r3)
/* 8082FAC8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8082FACC  7D 89 03 A6 */	mtctr r12
/* 8082FAD0  4E 80 04 21 */	bctrl 
/* 8082FAD4  C0 1E 07 0C */	lfs f0, 0x70c(r30)
/* 8082FAD8  FC 00 00 1E */	fctiwz f0, f0
/* 8082FADC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8082FAE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8082FAE4  B0 03 00 02 */	sth r0, 2(r3)
/* 8082FAE8  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8082FAEC  38 80 00 00 */	li r4, 0
/* 8082FAF0  81 83 00 00 */	lwz r12, 0(r3)
/* 8082FAF4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8082FAF8  7D 89 03 A6 */	mtctr r12
/* 8082FAFC  4E 80 04 21 */	bctrl 
/* 8082FB00  C0 1E 07 10 */	lfs f0, 0x710(r30)
/* 8082FB04  FC 00 00 1E */	fctiwz f0, f0
/* 8082FB08  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8082FB0C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8082FB10  B0 03 00 04 */	sth r0, 4(r3)
lbl_8082FB14:
/* 8082FB14  3B 7B 00 01 */	addi r27, r27, 1
lbl_8082FB18:
/* 8082FB18  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 8082FB1C  A0 1D 00 5C */	lhz r0, 0x5c(r29)
/* 8082FB20  7C 03 00 40 */	cmplw r3, r0
/* 8082FB24  41 80 FF 58 */	blt lbl_8082FA7C
/* 8082FB28  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8082FB2C  4B 7E 16 94 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8082FB30  C0 1E 06 F8 */	lfs f0, 0x6f8(r30)
/* 8082FB34  3C 60 80 83 */	lis r3, l_HIO@ha
/* 8082FB38  38 63 2F 90 */	addi r3, r3, l_HIO@l
/* 8082FB3C  C0 63 00 08 */	lfs f3, 8(r3)
/* 8082FB40  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 8082FB44  41 82 00 0C */	beq lbl_8082FB50
/* 8082FB48  38 60 00 01 */	li r3, 1
/* 8082FB4C  48 00 00 50 */	b lbl_8082FB9C
lbl_8082FB50:
/* 8082FB50  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8082FB54  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8082FB58  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8082FB5C  EC 21 00 2A */	fadds f1, f1, f0
/* 8082FB60  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8082FB64  D0 01 00 08 */	stfs f0, 8(r1)
/* 8082FB68  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8082FB6C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8082FB70  38 61 00 08 */	addi r3, r1, 8
/* 8082FB74  C0 3E 08 14 */	lfs f1, 0x814(r30)
/* 8082FB78  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8082FB7C  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8082FB80  38 9E 08 6C */	addi r4, r30, 0x86c
/* 8082FB84  38 A0 00 00 */	li r5, 0
/* 8082FB88  C0 7F 00 08 */	lfs f3, 8(r31)
/* 8082FB8C  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8082FB90  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8082FB94  4B 7F D5 20 */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 8082FB98  38 60 00 01 */	li r3, 1
lbl_8082FB9C:
/* 8082FB9C  39 61 00 50 */	addi r11, r1, 0x50
/* 8082FBA0  4B B3 26 80 */	b _restgpr_27
/* 8082FBA4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8082FBA8  7C 08 03 A6 */	mtlr r0
/* 8082FBAC  38 21 00 50 */	addi r1, r1, 0x50
/* 8082FBB0  4E 80 00 20 */	blr 
