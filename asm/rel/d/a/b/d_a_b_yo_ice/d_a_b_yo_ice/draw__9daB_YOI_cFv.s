lbl_8063A17C:
/* 8063A17C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063A180  7C 08 02 A6 */	mflr r0
/* 8063A184  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063A188  39 61 00 20 */	addi r11, r1, 0x20
/* 8063A18C  4B D2 80 51 */	bl _savegpr_29
/* 8063A190  7C 7F 1B 78 */	mr r31, r3
/* 8063A194  88 03 06 AE */	lbz r0, 0x6ae(r3)
/* 8063A198  28 00 00 00 */	cmplwi r0, 0
/* 8063A19C  41 82 00 0C */	beq lbl_8063A1A8
/* 8063A1A0  38 60 00 01 */	li r3, 1
/* 8063A1A4  48 00 00 FC */	b lbl_8063A2A0
lbl_8063A1A8:
/* 8063A1A8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8063A1AC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8063A1B0  38 80 00 00 */	li r4, 0
/* 8063A1B4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8063A1B8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8063A1BC  4B B6 96 09 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8063A1C0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8063A1C4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8063A1C8  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 8063A1CC  80 84 00 04 */	lwz r4, 4(r4)
/* 8063A1D0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8063A1D4  4B B6 AB CD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8063A1D8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8063A1DC  80 83 00 04 */	lwz r4, 4(r3)
/* 8063A1E0  7F E3 FB 78 */	mr r3, r31
/* 8063A1E4  4B 9E 32 49 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 8063A1E8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8063A1EC  4B 9D 3A D9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8063A1F0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8063A1F4  4B 9F 77 59 */	bl entry__10daMirror_cFP8J3DModel
/* 8063A1F8  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 8063A1FC  83 C3 00 04 */	lwz r30, 4(r3)
/* 8063A200  3B A0 00 00 */	li r29, 0
/* 8063A204  48 00 00 40 */	b lbl_8063A244
lbl_8063A208:
/* 8063A208  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 8063A20C  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 8063A210  7C 63 00 2E */	lwzx r3, r3, r0
/* 8063A214  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8063A218  38 80 00 03 */	li r4, 3
/* 8063A21C  81 83 00 00 */	lwz r12, 0(r3)
/* 8063A220  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8063A224  7D 89 03 A6 */	mtctr r12
/* 8063A228  4E 80 04 21 */	bctrl 
/* 8063A22C  C0 1F 06 C0 */	lfs f0, 0x6c0(r31)
/* 8063A230  FC 00 00 1E */	fctiwz f0, f0
/* 8063A234  D8 01 00 08 */	stfd f0, 8(r1)
/* 8063A238  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8063A23C  98 03 00 03 */	stb r0, 3(r3)
/* 8063A240  3B BD 00 01 */	addi r29, r29, 1
lbl_8063A244:
/* 8063A244  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8063A248  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 8063A24C  7C 03 00 40 */	cmplw r3, r0
/* 8063A250  41 80 FF B8 */	blt lbl_8063A208
/* 8063A254  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8063A258  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8063A25C  38 80 00 10 */	li r4, 0x10
/* 8063A260  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8063A264  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8063A268  4B B6 95 5D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8063A26C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8063A270  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8063A274  80 9F 06 B0 */	lwz r4, 0x6b0(r31)
/* 8063A278  80 84 00 04 */	lwz r4, 4(r4)
/* 8063A27C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8063A280  4B B6 AB 21 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8063A284  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 8063A288  80 83 00 04 */	lwz r4, 4(r3)
/* 8063A28C  7F E3 FB 78 */	mr r3, r31
/* 8063A290  4B 9E 31 9D */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 8063A294  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 8063A298  4B 9D 3A 2D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8063A29C  38 60 00 01 */	li r3, 1
lbl_8063A2A0:
/* 8063A2A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8063A2A4  4B D2 7F 85 */	bl _restgpr_29
/* 8063A2A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063A2AC  7C 08 03 A6 */	mtlr r0
/* 8063A2B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8063A2B4  4E 80 00 20 */	blr 
