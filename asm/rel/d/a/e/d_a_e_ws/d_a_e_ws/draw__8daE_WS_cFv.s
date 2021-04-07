lbl_807E3A6C:
/* 807E3A6C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807E3A70  7C 08 02 A6 */	mflr r0
/* 807E3A74  90 01 00 54 */	stw r0, 0x54(r1)
/* 807E3A78  39 61 00 50 */	addi r11, r1, 0x50
/* 807E3A7C  4B B7 E7 55 */	bl _savegpr_26
/* 807E3A80  7C 7F 1B 78 */	mr r31, r3
/* 807E3A84  3C 60 80 7E */	lis r3, lit_3802@ha /* 0x807E7300@ha */
/* 807E3A88  3B C3 73 00 */	addi r30, r3, lit_3802@l /* 0x807E7300@l */
/* 807E3A8C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807E3A90  83 A3 00 04 */	lwz r29, 4(r3)
/* 807E3A94  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807E3A98  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807E3A9C  38 80 00 00 */	li r4, 0
/* 807E3AA0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807E3AA4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 807E3AA8  4B 9B FD 1D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807E3AAC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807E3AB0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807E3AB4  80 9D 00 04 */	lwz r4, 4(r29)
/* 807E3AB8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 807E3ABC  4B 9C 12 E5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807E3AC0  C0 3F 06 74 */	lfs f1, 0x674(r31)
/* 807E3AC4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807E3AC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807E3ACC  41 82 00 B4 */	beq lbl_807E3B80
/* 807E3AD0  83 9D 00 04 */	lwz r28, 4(r29)
/* 807E3AD4  3B 40 00 00 */	li r26, 0
/* 807E3AD8  48 00 00 98 */	b lbl_807E3B70
lbl_807E3ADC:
/* 807E3ADC  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 807E3AE0  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 807E3AE4  7F 63 00 2E */	lwzx r27, r3, r0
/* 807E3AE8  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807E3AEC  38 80 00 00 */	li r4, 0
/* 807E3AF0  81 83 00 00 */	lwz r12, 0(r3)
/* 807E3AF4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807E3AF8  7D 89 03 A6 */	mtctr r12
/* 807E3AFC  4E 80 04 21 */	bctrl 
/* 807E3B00  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 807E3B04  FC 00 00 1E */	fctiwz f0, f0
/* 807E3B08  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807E3B0C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807E3B10  B0 03 00 00 */	sth r0, 0(r3)
/* 807E3B14  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807E3B18  38 80 00 00 */	li r4, 0
/* 807E3B1C  81 83 00 00 */	lwz r12, 0(r3)
/* 807E3B20  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807E3B24  7D 89 03 A6 */	mtctr r12
/* 807E3B28  4E 80 04 21 */	bctrl 
/* 807E3B2C  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 807E3B30  FC 00 00 1E */	fctiwz f0, f0
/* 807E3B34  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807E3B38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807E3B3C  B0 03 00 02 */	sth r0, 2(r3)
/* 807E3B40  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807E3B44  38 80 00 00 */	li r4, 0
/* 807E3B48  81 83 00 00 */	lwz r12, 0(r3)
/* 807E3B4C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807E3B50  7D 89 03 A6 */	mtctr r12
/* 807E3B54  4E 80 04 21 */	bctrl 
/* 807E3B58  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 807E3B5C  FC 00 00 1E */	fctiwz f0, f0
/* 807E3B60  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807E3B64  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807E3B68  B0 03 00 04 */	sth r0, 4(r3)
/* 807E3B6C  3B 5A 00 01 */	addi r26, r26, 1
lbl_807E3B70:
/* 807E3B70  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 807E3B74  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 807E3B78  7C 03 00 40 */	cmplw r3, r0
/* 807E3B7C  41 80 FF 60 */	blt lbl_807E3ADC
lbl_807E3B80:
/* 807E3B80  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807E3B84  4B 82 D6 3D */	bl entryDL__16mDoExt_McaMorfSOFv
/* 807E3B88  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 807E3B8C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807E3B90  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 807E3B94  EC 20 18 2A */	fadds f1, f0, f3
/* 807E3B98  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807E3B9C  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E3BA0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807E3BA4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807E3BA8  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 807E3BAC  38 80 00 01 */	li r4, 1
/* 807E3BB0  7F A5 EB 78 */	mr r5, r29
/* 807E3BB4  38 C1 00 08 */	addi r6, r1, 8
/* 807E3BB8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807E3BBC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807E3BC0  C0 9F 07 6C */	lfs f4, 0x76c(r31)
/* 807E3BC4  38 FF 07 C4 */	addi r7, r31, 0x7c4
/* 807E3BC8  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807E3BCC  39 20 00 00 */	li r9, 0
/* 807E3BD0  C0 BE 00 08 */	lfs f5, 8(r30)
/* 807E3BD4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 807E3BD8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 807E3BDC  4B 84 AD 35 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807E3BE0  90 7F 06 84 */	stw r3, 0x684(r31)
/* 807E3BE4  38 60 00 01 */	li r3, 1
/* 807E3BE8  39 61 00 50 */	addi r11, r1, 0x50
/* 807E3BEC  4B B7 E6 31 */	bl _restgpr_26
/* 807E3BF0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807E3BF4  7C 08 03 A6 */	mtlr r0
/* 807E3BF8  38 21 00 50 */	addi r1, r1, 0x50
/* 807E3BFC  4E 80 00 20 */	blr 
