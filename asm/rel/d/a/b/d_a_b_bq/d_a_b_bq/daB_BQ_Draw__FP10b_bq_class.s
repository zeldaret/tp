lbl_805B37A4:
/* 805B37A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B37A8  7C 08 02 A6 */	mflr r0
/* 805B37AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B37B0  39 61 00 40 */	addi r11, r1, 0x40
/* 805B37B4  4B DA EA 1D */	bl _savegpr_26
/* 805B37B8  7C 7D 1B 78 */	mr r29, r3
/* 805B37BC  3C 60 80 5C */	lis r3, lit_3816@ha /* 0x805BA588@ha */
/* 805B37C0  3B E3 A5 88 */	addi r31, r3, lit_3816@l /* 0x805BA588@l */
/* 805B37C4  88 1D 06 F8 */	lbz r0, 0x6f8(r29)
/* 805B37C8  7C 00 07 75 */	extsb. r0, r0
/* 805B37CC  41 82 00 0C */	beq lbl_805B37D8
/* 805B37D0  38 60 00 01 */	li r3, 1
/* 805B37D4  48 00 02 D0 */	b lbl_805B3AA4
lbl_805B37D8:
/* 805B37D8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B37DC  83 C3 00 04 */	lwz r30, 4(r3)
/* 805B37E0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805B37E4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805B37E8  38 80 00 00 */	li r4, 0
/* 805B37EC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805B37F0  38 DD 01 0C */	addi r6, r29, 0x10c
/* 805B37F4  4B BE FF D1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805B37F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805B37FC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805B3800  80 9E 00 04 */	lwz r4, 4(r30)
/* 805B3804  38 BD 01 0C */	addi r5, r29, 0x10c
/* 805B3808  4B BF 15 99 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805B380C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 805B3810  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 805B3814  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805B3818  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B381C  40 81 00 14 */	ble lbl_805B3830
/* 805B3820  80 9E 00 04 */	lwz r4, 4(r30)
/* 805B3824  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805B3828  38 84 00 58 */	addi r4, r4, 0x58
/* 805B382C  4B A5 9F 7D */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_805B3830:
/* 805B3830  88 1D 05 C0 */	lbz r0, 0x5c0(r29)
/* 805B3834  7C 00 07 75 */	extsb. r0, r0
/* 805B3838  41 82 00 18 */	beq lbl_805B3850
/* 805B383C  80 9E 00 04 */	lwz r4, 4(r30)
/* 805B3840  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 805B3844  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805B3848  38 84 00 58 */	addi r4, r4, 0x58
/* 805B384C  4B A5 9E 8D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_805B3850:
/* 805B3850  88 1D 13 97 */	lbz r0, 0x1397(r29)
/* 805B3854  7C 00 07 75 */	extsb. r0, r0
/* 805B3858  41 82 00 B4 */	beq lbl_805B390C
/* 805B385C  83 9E 00 04 */	lwz r28, 4(r30)
/* 805B3860  3B 40 00 00 */	li r26, 0
/* 805B3864  48 00 00 98 */	b lbl_805B38FC
lbl_805B3868:
/* 805B3868  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 805B386C  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 805B3870  7F 63 00 2E */	lwzx r27, r3, r0
/* 805B3874  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805B3878  38 80 00 00 */	li r4, 0
/* 805B387C  81 83 00 00 */	lwz r12, 0(r3)
/* 805B3880  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805B3884  7D 89 03 A6 */	mtctr r12
/* 805B3888  4E 80 04 21 */	bctrl 
/* 805B388C  C0 1D 13 98 */	lfs f0, 0x1398(r29)
/* 805B3890  FC 00 00 1E */	fctiwz f0, f0
/* 805B3894  D8 01 00 08 */	stfd f0, 8(r1)
/* 805B3898  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805B389C  B0 03 00 00 */	sth r0, 0(r3)
/* 805B38A0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805B38A4  38 80 00 00 */	li r4, 0
/* 805B38A8  81 83 00 00 */	lwz r12, 0(r3)
/* 805B38AC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805B38B0  7D 89 03 A6 */	mtctr r12
/* 805B38B4  4E 80 04 21 */	bctrl 
/* 805B38B8  C0 1D 13 98 */	lfs f0, 0x1398(r29)
/* 805B38BC  FC 00 00 1E */	fctiwz f0, f0
/* 805B38C0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805B38C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B38C8  B0 03 00 02 */	sth r0, 2(r3)
/* 805B38CC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805B38D0  38 80 00 00 */	li r4, 0
/* 805B38D4  81 83 00 00 */	lwz r12, 0(r3)
/* 805B38D8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805B38DC  7D 89 03 A6 */	mtctr r12
/* 805B38E0  4E 80 04 21 */	bctrl 
/* 805B38E4  C0 1D 13 98 */	lfs f0, 0x1398(r29)
/* 805B38E8  FC 00 00 1E */	fctiwz f0, f0
/* 805B38EC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805B38F0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B38F4  B0 03 00 04 */	sth r0, 4(r3)
/* 805B38F8  3B 5A 00 01 */	addi r26, r26, 1
lbl_805B38FC:
/* 805B38FC  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 805B3900  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 805B3904  7C 03 00 40 */	cmplw r3, r0
/* 805B3908  41 80 FF 60 */	blt lbl_805B3868
lbl_805B390C:
/* 805B390C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B3910  4B A5 D8 B1 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 805B3914  88 7D 05 C8 */	lbz r3, 0x5c8(r29)
/* 805B3918  7C 60 07 75 */	extsb. r0, r3
/* 805B391C  41 82 01 40 */	beq lbl_805B3A5C
/* 805B3920  7C 60 07 74 */	extsb r0, r3
/* 805B3924  2C 00 00 01 */	cmpwi r0, 1
/* 805B3928  40 82 01 14 */	bne lbl_805B3A3C
/* 805B392C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805B3930  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805B3934  80 9D 05 C4 */	lwz r4, 0x5c4(r29)
/* 805B3938  80 84 00 04 */	lwz r4, 4(r4)
/* 805B393C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 805B3940  4B BF 14 61 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805B3944  C0 3D 11 78 */	lfs f1, 0x1178(r29)
/* 805B3948  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805B394C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B3950  40 81 00 E4 */	ble lbl_805B3A34
/* 805B3954  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 805B3958  80 63 00 04 */	lwz r3, 4(r3)
/* 805B395C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805B3960  80 63 00 00 */	lwz r3, 0(r3)
/* 805B3964  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805B3968  38 80 00 02 */	li r4, 2
/* 805B396C  81 83 00 00 */	lwz r12, 0(r3)
/* 805B3970  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805B3974  7D 89 03 A6 */	mtctr r12
/* 805B3978  4E 80 04 21 */	bctrl 
/* 805B397C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 805B3980  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805B3984  C0 1D 11 78 */	lfs f0, 0x1178(r29)
/* 805B3988  EC 01 00 32 */	fmuls f0, f1, f0
/* 805B398C  EC 02 00 28 */	fsubs f0, f2, f0
/* 805B3990  FC 00 00 1E */	fctiwz f0, f0
/* 805B3994  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805B3998  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B399C  B0 03 00 00 */	sth r0, 0(r3)
/* 805B39A0  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 805B39A4  80 63 00 04 */	lwz r3, 4(r3)
/* 805B39A8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805B39AC  80 63 00 00 */	lwz r3, 0(r3)
/* 805B39B0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805B39B4  38 80 00 02 */	li r4, 2
/* 805B39B8  81 83 00 00 */	lwz r12, 0(r3)
/* 805B39BC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805B39C0  7D 89 03 A6 */	mtctr r12
/* 805B39C4  4E 80 04 21 */	bctrl 
/* 805B39C8  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 805B39CC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805B39D0  C0 1D 11 78 */	lfs f0, 0x1178(r29)
/* 805B39D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 805B39D8  EC 02 00 28 */	fsubs f0, f2, f0
/* 805B39DC  FC 00 00 1E */	fctiwz f0, f0
/* 805B39E0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805B39E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B39E8  B0 03 00 02 */	sth r0, 2(r3)
/* 805B39EC  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 805B39F0  80 63 00 04 */	lwz r3, 4(r3)
/* 805B39F4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805B39F8  80 63 00 00 */	lwz r3, 0(r3)
/* 805B39FC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805B3A00  38 80 00 02 */	li r4, 2
/* 805B3A04  81 83 00 00 */	lwz r12, 0(r3)
/* 805B3A08  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805B3A0C  7D 89 03 A6 */	mtctr r12
/* 805B3A10  4E 80 04 21 */	bctrl 
/* 805B3A14  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805B3A18  C0 1D 11 78 */	lfs f0, 0x1178(r29)
/* 805B3A1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805B3A20  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B3A24  FC 00 00 1E */	fctiwz f0, f0
/* 805B3A28  D8 01 00 08 */	stfd f0, 8(r1)
/* 805B3A2C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805B3A30  B0 03 00 04 */	sth r0, 4(r3)
lbl_805B3A34:
/* 805B3A34  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 805B3A38  4B A5 A2 8D */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_805B3A3C:
/* 805B3A3C  80 7E 00 04 */	lwz r3, 4(r30)
/* 805B3A40  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805B3A44  80 63 00 08 */	lwz r3, 8(r3)
/* 805B3A48  80 63 00 08 */	lwz r3, 8(r3)
/* 805B3A4C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805B3A50  60 00 00 01 */	ori r0, r0, 1
/* 805B3A54  90 03 00 0C */	stw r0, 0xc(r3)
/* 805B3A58  48 00 00 20 */	b lbl_805B3A78
lbl_805B3A5C:
/* 805B3A5C  80 7E 00 04 */	lwz r3, 4(r30)
/* 805B3A60  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805B3A64  80 63 00 08 */	lwz r3, 8(r3)
/* 805B3A68  80 63 00 08 */	lwz r3, 8(r3)
/* 805B3A6C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805B3A70  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805B3A74  90 03 00 0C */	stw r0, 0xc(r3)
lbl_805B3A78:
/* 805B3A78  A8 1D 12 AC */	lha r0, 0x12ac(r29)
/* 805B3A7C  2C 00 00 02 */	cmpwi r0, 2
/* 805B3A80  40 81 00 14 */	ble lbl_805B3A94
/* 805B3A84  3C 60 80 45 */	lis r3, mBlureFlag__13mDoGph_gInf_c+0x1@ha /* 0x80450BE5@ha */
/* 805B3A88  98 03 0B E5 */	stb r0, mBlureFlag__13mDoGph_gInf_c+0x1@l(r3)  /* 0x80450BE5@l */
/* 805B3A8C  4B A5 45 ED */	bl onBlure__13mDoGph_gInf_cFv
/* 805B3A90  48 00 00 10 */	b lbl_805B3AA0
lbl_805B3A94:
/* 805B3A94  38 00 00 00 */	li r0, 0
/* 805B3A98  3C 60 80 45 */	lis r3, mBlureFlag__13mDoGph_gInf_c+0x0@ha /* 0x80450BE4@ha */
/* 805B3A9C  98 03 0B E4 */	stb r0, mBlureFlag__13mDoGph_gInf_c+0x0@l(r3)  /* 0x80450BE4@l */
lbl_805B3AA0:
/* 805B3AA0  38 60 00 01 */	li r3, 1
lbl_805B3AA4:
/* 805B3AA4  39 61 00 40 */	addi r11, r1, 0x40
/* 805B3AA8  4B DA E7 75 */	bl _restgpr_26
/* 805B3AAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B3AB0  7C 08 03 A6 */	mtlr r0
/* 805B3AB4  38 21 00 40 */	addi r1, r1, 0x40
/* 805B3AB8  4E 80 00 20 */	blr 
