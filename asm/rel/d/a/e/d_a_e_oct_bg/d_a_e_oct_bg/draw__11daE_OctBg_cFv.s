lbl_807399A4:
/* 807399A4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807399A8  7C 08 02 A6 */	mflr r0
/* 807399AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 807399B0  39 61 00 50 */	addi r11, r1, 0x50
/* 807399B4  4B C2 88 28 */	b _savegpr_29
/* 807399B8  7C 7D 1B 78 */	mr r29, r3
/* 807399BC  3C 60 80 74 */	lis r3, lit_3768@ha
/* 807399C0  3B E3 9D 60 */	addi r31, r3, lit_3768@l
/* 807399C4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807399C8  83 C3 00 04 */	lwz r30, 4(r3)
/* 807399CC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807399D0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807399D4  38 80 00 00 */	li r4, 0
/* 807399D8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807399DC  38 DD 01 0C */	addi r6, r29, 0x10c
/* 807399E0  4B A6 9D E4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807399E4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807399E8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807399EC  80 9E 00 04 */	lwz r4, 4(r30)
/* 807399F0  38 BD 01 0C */	addi r5, r29, 0x10c
/* 807399F4  4B A6 B3 AC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807399F8  80 9E 00 04 */	lwz r4, 4(r30)
/* 807399FC  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80739A00  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80739A04  38 84 00 58 */	addi r4, r4, 0x58
/* 80739A08  4B 8D 3D A0 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80739A0C  3C 60 80 74 */	lis r3, lit_5232@ha
/* 80739A10  38 83 A0 14 */	addi r4, r3, lit_5232@l
/* 80739A14  80 64 00 00 */	lwz r3, 0(r4)
/* 80739A18  80 04 00 04 */	lwz r0, 4(r4)
/* 80739A1C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80739A20  90 01 00 20 */	stw r0, 0x20(r1)
/* 80739A24  80 04 00 08 */	lwz r0, 8(r4)
/* 80739A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80739A2C  38 7D 0B 58 */	addi r3, r29, 0xb58
/* 80739A30  38 81 00 1C */	addi r4, r1, 0x1c
/* 80739A34  4B C2 86 14 */	b __ptmf_cmpr
/* 80739A38  2C 03 00 00 */	cmpwi r3, 0
/* 80739A3C  41 82 00 38 */	beq lbl_80739A74
/* 80739A40  3C 60 80 74 */	lis r3, lit_5234@ha
/* 80739A44  38 83 A0 20 */	addi r4, r3, lit_5234@l
/* 80739A48  80 64 00 00 */	lwz r3, 0(r4)
/* 80739A4C  80 04 00 04 */	lwz r0, 4(r4)
/* 80739A50  90 61 00 10 */	stw r3, 0x10(r1)
/* 80739A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80739A58  80 04 00 08 */	lwz r0, 8(r4)
/* 80739A5C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80739A60  38 7D 0B 58 */	addi r3, r29, 0xb58
/* 80739A64  38 81 00 10 */	addi r4, r1, 0x10
/* 80739A68  4B C2 85 E0 */	b __ptmf_cmpr
/* 80739A6C  2C 03 00 00 */	cmpwi r3, 0
/* 80739A70  40 82 00 B0 */	bne lbl_80739B20
lbl_80739A74:
/* 80739A74  80 1D 0B 90 */	lwz r0, 0xb90(r29)
/* 80739A78  2C 00 00 00 */	cmpwi r0, 0
/* 80739A7C  41 82 00 A4 */	beq lbl_80739B20
/* 80739A80  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80739A84  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80739A88  A8 1D 0B 94 */	lha r0, 0xb94(r29)
/* 80739A8C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80739A90  7C 63 02 14 */	add r3, r3, r0
/* 80739A94  C0 23 00 04 */	lfs f1, 4(r3)
/* 80739A98  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80739A9C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80739AA0  FC 00 02 10 */	fabs f0, f0
/* 80739AA4  FC 20 00 18 */	frsp f1, f0
/* 80739AA8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80739AAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80739AB0  FC 00 00 1E */	fctiwz f0, f0
/* 80739AB4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80739AB8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80739ABC  B0 01 00 08 */	sth r0, 8(r1)
/* 80739AC0  38 00 00 00 */	li r0, 0
/* 80739AC4  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80739AC8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80739ACC  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80739AD0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80739AD4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80739AD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80739ADC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80739AE0  38 80 00 00 */	li r4, 0
/* 80739AE4  38 A1 00 08 */	addi r5, r1, 8
/* 80739AE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80739AEC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80739AF0  7D 89 03 A6 */	mtctr r12
/* 80739AF4  4E 80 04 21 */	bctrl 
/* 80739AF8  80 7E 00 04 */	lwz r3, 4(r30)
/* 80739AFC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80739B00  80 63 00 04 */	lwz r3, 4(r3)
/* 80739B04  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80739B08  38 80 00 00 */	li r4, 0
/* 80739B0C  38 A1 00 08 */	addi r5, r1, 8
/* 80739B10  81 83 00 00 */	lwz r12, 0(r3)
/* 80739B14  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80739B18  7D 89 03 A6 */	mtctr r12
/* 80739B1C  4E 80 04 21 */	bctrl 
lbl_80739B20:
/* 80739B20  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80739B24  4B 8D 76 9C */	b entryDL__16mDoExt_McaMorfSOFv
/* 80739B28  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80739B2C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80739B30  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80739B34  EC 20 18 2A */	fadds f1, f0, f3
/* 80739B38  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80739B3C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80739B40  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80739B44  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80739B48  80 7D 0B 78 */	lwz r3, 0xb78(r29)
/* 80739B4C  38 80 00 01 */	li r4, 1
/* 80739B50  7F C5 F3 78 */	mr r5, r30
/* 80739B54  38 C1 00 28 */	addi r6, r1, 0x28
/* 80739B58  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80739B5C  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80739B60  C0 9D 07 44 */	lfs f4, 0x744(r29)
/* 80739B64  38 FD 07 9C */	addi r7, r29, 0x79c
/* 80739B68  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80739B6C  39 20 00 00 */	li r9, 0
/* 80739B70  C0 BF 00 18 */	lfs f5, 0x18(r31)
/* 80739B74  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80739B78  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80739B7C  4B 8F 4D 94 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80739B80  90 7D 0B 78 */	stw r3, 0xb78(r29)
/* 80739B84  38 60 00 01 */	li r3, 1
/* 80739B88  39 61 00 50 */	addi r11, r1, 0x50
/* 80739B8C  4B C2 86 9C */	b _restgpr_29
/* 80739B90  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80739B94  7C 08 03 A6 */	mtlr r0
/* 80739B98  38 21 00 50 */	addi r1, r1, 0x50
/* 80739B9C  4E 80 00 20 */	blr 
