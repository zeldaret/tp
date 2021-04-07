lbl_80CA29EC:
/* 80CA29EC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80CA29F0  7C 08 02 A6 */	mflr r0
/* 80CA29F4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CA29F8  39 61 00 80 */	addi r11, r1, 0x80
/* 80CA29FC  4B 6B F7 E1 */	bl _savegpr_29
/* 80CA2A00  7C 7F 1B 78 */	mr r31, r3
/* 80CA2A04  3C 80 80 CA */	lis r4, lit_3774@ha /* 0x80CA31BC@ha */
/* 80CA2A08  3B C4 31 BC */	addi r30, r4, lit_3774@l /* 0x80CA31BC@l */
/* 80CA2A0C  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 80CA2A10  28 00 00 00 */	cmplwi r0, 0
/* 80CA2A14  41 82 01 18 */	beq lbl_80CA2B2C
/* 80CA2A18  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 80CA2A1C  4B 4B B8 51 */	bl CalcZBuffer__9dInsect_cFf
/* 80CA2A20  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80CA2A24  83 A3 00 04 */	lwz r29, 4(r3)
/* 80CA2A28  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CA2A2C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CA2A30  38 80 00 00 */	li r4, 0
/* 80CA2A34  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CA2A38  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CA2A3C  4B 50 0D 89 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CA2A40  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CA2A44  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CA2A48  80 9D 00 04 */	lwz r4, 4(r29)
/* 80CA2A4C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CA2A50  4B 50 23 51 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CA2A54  80 9D 00 04 */	lwz r4, 4(r29)
/* 80CA2A58  80 7F 06 30 */	lwz r3, 0x630(r31)
/* 80CA2A5C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CA2A60  38 84 00 58 */	addi r4, r4, 0x58
/* 80CA2A64  4B 36 AC 75 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CA2A68  80 9D 00 04 */	lwz r4, 4(r29)
/* 80CA2A6C  80 7F 06 2C */	lwz r3, 0x62c(r31)
/* 80CA2A70  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CA2A74  38 84 00 58 */	addi r4, r4, 0x58
/* 80CA2A78  4B 36 AD 31 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80CA2A7C  88 1F 07 FA */	lbz r0, 0x7fa(r31)
/* 80CA2A80  28 00 00 02 */	cmplwi r0, 2
/* 80CA2A84  41 82 00 A8 */	beq lbl_80CA2B2C
/* 80CA2A88  80 9D 00 04 */	lwz r4, 4(r29)
/* 80CA2A8C  7F E3 FB 78 */	mr r3, r31
/* 80CA2A90  4B 37 A9 9D */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80CA2A94  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80CA2A98  4B 36 E7 29 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80CA2A9C  88 1F 07 FA */	lbz r0, 0x7fa(r31)
/* 80CA2AA0  28 00 00 01 */	cmplwi r0, 1
/* 80CA2AA4  41 82 00 88 */	beq lbl_80CA2B2C
/* 80CA2AA8  38 61 00 14 */	addi r3, r1, 0x14
/* 80CA2AAC  4B 3D 4A D1 */	bl __ct__11dBgS_GndChkFv
/* 80CA2AB0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CA2AB4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CA2AB8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80CA2ABC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CA2AC0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CA2AC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CA2AC8  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80CA2ACC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CA2AD0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CA2AD4  38 61 00 14 */	addi r3, r1, 0x14
/* 80CA2AD8  38 81 00 08 */	addi r4, r1, 8
/* 80CA2ADC  4B 5C 52 4D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80CA2AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA2AE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA2AE8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CA2AEC  38 81 00 14 */	addi r4, r1, 0x14
/* 80CA2AF0  4B 3D 19 B1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80CA2AF4  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80CA2AF8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CA2AFC  41 82 00 24 */	beq lbl_80CA2B20
/* 80CA2B00  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CA2B04  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 80CA2B08  38 81 00 28 */	addi r4, r1, 0x28
/* 80CA2B0C  38 A0 00 00 */	li r5, 0
/* 80CA2B10  C0 7E 00 D4 */	lfs f3, 0xd4(r30)
/* 80CA2B14  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80CA2B18  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80CA2B1C  4B 38 A5 99 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
lbl_80CA2B20:
/* 80CA2B20  38 61 00 14 */	addi r3, r1, 0x14
/* 80CA2B24  38 80 FF FF */	li r4, -1
/* 80CA2B28  4B 3D 4A C9 */	bl __dt__11dBgS_GndChkFv
lbl_80CA2B2C:
/* 80CA2B2C  38 60 00 01 */	li r3, 1
/* 80CA2B30  39 61 00 80 */	addi r11, r1, 0x80
/* 80CA2B34  4B 6B F6 F5 */	bl _restgpr_29
/* 80CA2B38  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80CA2B3C  7C 08 03 A6 */	mtlr r0
/* 80CA2B40  38 21 00 80 */	addi r1, r1, 0x80
/* 80CA2B44  4E 80 00 20 */	blr 
