lbl_80D23904:
/* 80D23904  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D23908  7C 08 02 A6 */	mflr r0
/* 80D2390C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D23910  39 61 00 20 */	addi r11, r1, 0x20
/* 80D23914  4B 63 E8 C1 */	bl _savegpr_27
/* 80D23918  7C 7B 1B 78 */	mr r27, r3
/* 80D2391C  3C 60 80 D2 */	lis r3, l_sph_src@ha /* 0x80D23DCC@ha */
/* 80D23920  3B C3 3D CC */	addi r30, r3, l_sph_src@l /* 0x80D23DCC@l */
/* 80D23924  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D23928  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D2392C  38 80 00 00 */	li r4, 0
/* 80D23930  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80D23934  38 DB 01 0C */	addi r6, r27, 0x10c
/* 80D23938  4B 47 FE 8D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D2393C  C0 1B 25 10 */	lfs f0, 0x2510(r27)
/* 80D23940  D0 1B 04 44 */	stfs f0, 0x444(r27)
/* 80D23944  C0 1B 25 14 */	lfs f0, 0x2514(r27)
/* 80D23948  D0 1B 04 48 */	stfs f0, 0x448(r27)
/* 80D2394C  C0 1B 25 18 */	lfs f0, 0x2518(r27)
/* 80D23950  D0 1B 04 4C */	stfs f0, 0x44c(r27)
/* 80D23954  C0 1B 25 5C */	lfs f0, 0x255c(r27)
/* 80D23958  D0 1B 04 50 */	stfs f0, 0x450(r27)
/* 80D2395C  3B BB 06 0C */	addi r29, r27, 0x60c
/* 80D23960  3B 80 00 00 */	li r28, 0
/* 80D23964  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D23968  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
lbl_80D2396C:
/* 80D2396C  88 1D 03 76 */	lbz r0, 0x376(r29)
/* 80D23970  28 00 00 00 */	cmplwi r0, 0
/* 80D23974  41 82 00 20 */	beq lbl_80D23994
/* 80D23978  7F E3 FB 78 */	mr r3, r31
/* 80D2397C  80 9D 00 00 */	lwz r4, 0(r29)
/* 80D23980  80 84 00 04 */	lwz r4, 4(r4)
/* 80D23984  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80D23988  4B 48 14 19 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D2398C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80D23990  4B 2E A3 35 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80D23994:
/* 80D23994  3B 9C 00 01 */	addi r28, r28, 1
/* 80D23998  2C 1C 00 09 */	cmpwi r28, 9
/* 80D2399C  3B BD 03 E0 */	addi r29, r29, 0x3e0
/* 80D239A0  41 80 FF CC */	blt lbl_80D2396C
/* 80D239A4  88 1B 28 82 */	lbz r0, 0x2882(r27)
/* 80D239A8  28 00 00 00 */	cmplwi r0, 0
/* 80D239AC  41 82 00 44 */	beq lbl_80D239F0
/* 80D239B0  80 7B 28 7C */	lwz r3, 0x287c(r27)
/* 80D239B4  38 80 00 00 */	li r4, 0
/* 80D239B8  80 BB 25 0C */	lwz r5, 0x250c(r27)
/* 80D239BC  38 DB 28 70 */	addi r6, r27, 0x2870
/* 80D239C0  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80D239C4  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80D239C8  C0 7B 28 74 */	lfs f3, 0x2874(r27)
/* 80D239CC  C0 9B 25 F8 */	lfs f4, 0x25f8(r27)
/* 80D239D0  38 FB 26 50 */	addi r7, r27, 0x2650
/* 80D239D4  39 1B 01 0C */	addi r8, r27, 0x10c
/* 80D239D8  39 20 00 00 */	li r9, 0
/* 80D239DC  C0 BE 00 58 */	lfs f5, 0x58(r30)
/* 80D239E0  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80D239E4  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80D239E8  4B 30 AF 29 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80D239EC  90 7B 28 7C */	stw r3, 0x287c(r27)
lbl_80D239F0:
/* 80D239F0  38 60 00 01 */	li r3, 1
/* 80D239F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D239F8  4B 63 E8 29 */	bl _restgpr_27
/* 80D239FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D23A00  7C 08 03 A6 */	mtlr r0
/* 80D23A04  38 21 00 20 */	addi r1, r1, 0x20
/* 80D23A08  4E 80 00 20 */	blr 
