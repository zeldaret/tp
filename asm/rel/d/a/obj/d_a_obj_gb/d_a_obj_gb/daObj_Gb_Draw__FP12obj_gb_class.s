lbl_80BF6318:
/* 80BF6318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF631C  7C 08 02 A6 */	mflr r0
/* 80BF6320  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF6324  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF6328  4B 76 BE B5 */	bl _savegpr_29
/* 80BF632C  7C 7D 1B 78 */	mr r29, r3
/* 80BF6330  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BF6334  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BF6338  38 80 00 10 */	li r4, 0x10
/* 80BF633C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80BF6340  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80BF6344  4B 5A D4 81 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BF6348  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BF634C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BF6350  80 9D 05 70 */	lwz r4, 0x570(r29)
/* 80BF6354  80 84 00 04 */	lwz r4, 4(r4)
/* 80BF6358  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80BF635C  4B 5A EA 45 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BF6360  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80BF6364  83 E3 00 04 */	lwz r31, 4(r3)
/* 80BF6368  3B C0 00 00 */	li r30, 0
/* 80BF636C  48 00 00 34 */	b lbl_80BF63A0
lbl_80BF6370:
/* 80BF6370  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80BF6374  57 C0 13 BA */	rlwinm r0, r30, 2, 0xe, 0x1d
/* 80BF6378  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BF637C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80BF6380  38 80 00 01 */	li r4, 1
/* 80BF6384  81 83 00 00 */	lwz r12, 0(r3)
/* 80BF6388  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80BF638C  7D 89 03 A6 */	mtctr r12
/* 80BF6390  4E 80 04 21 */	bctrl 
/* 80BF6394  88 1D 05 7D */	lbz r0, 0x57d(r29)
/* 80BF6398  98 03 00 03 */	stb r0, 3(r3)
/* 80BF639C  3B DE 00 01 */	addi r30, r30, 1
lbl_80BF63A0:
/* 80BF63A0  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80BF63A4  28 00 00 01 */	cmplwi r0, 1
/* 80BF63A8  40 81 FF C8 */	ble lbl_80BF6370
/* 80BF63AC  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80BF63B0  4B 5B 69 75 */	bl dKy_bg_MAxx_proc__FPv
/* 80BF63B4  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80BF63B8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BF63BC  38 9F 00 58 */	addi r4, r31, 0x58
/* 80BF63C0  4B 41 73 19 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80BF63C4  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80BF63C8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BF63CC  38 9F 00 58 */	addi r4, r31, 0x58
/* 80BF63D0  4B 41 73 D9 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80BF63D4  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80BF63D8  4B 41 78 ED */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BF63DC  38 60 00 01 */	li r3, 1
/* 80BF63E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF63E4  4B 76 BE 45 */	bl _restgpr_29
/* 80BF63E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF63EC  7C 08 03 A6 */	mtlr r0
/* 80BF63F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF63F4  4E 80 00 20 */	blr 
