lbl_8072AA90:
/* 8072AA90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072AA94  7C 08 02 A6 */	mflr r0
/* 8072AA98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072AA9C  39 61 00 20 */	addi r11, r1, 0x20
/* 8072AAA0  4B C3 77 31 */	bl _savegpr_26
/* 8072AAA4  7C 7A 1B 78 */	mr r26, r3
/* 8072AAA8  7C 9B 23 78 */	mr r27, r4
/* 8072AAAC  7C BC 2B 78 */	mr r28, r5
/* 8072AAB0  7C DD 33 78 */	mr r29, r6
/* 8072AAB4  7C FE 3B 78 */	mr r30, r7
/* 8072AAB8  7D 1F 43 78 */	mr r31, r8
/* 8072AABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072AAC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072AAC4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8072AAC8  7F 44 D3 78 */	mr r4, r26
/* 8072AACC  4B 94 9B 95 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 8072AAD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072AAD4  40 82 00 0C */	bne lbl_8072AAE0
/* 8072AAD8  38 60 00 00 */	li r3, 0
/* 8072AADC  48 00 00 74 */	b lbl_8072AB50
lbl_8072AAE0:
/* 8072AAE0  2C 1B 00 00 */	cmpwi r27, 0
/* 8072AAE4  40 82 00 38 */	bne lbl_8072AB1C
/* 8072AAE8  7F 43 D3 78 */	mr r3, r26
/* 8072AAEC  7F 84 E3 78 */	mr r4, r28
/* 8072AAF0  4B A8 0B 79 */	bl dKy_pol_eff_prim_get__FPC13cBgS_PolyInfoP8_GXColor
/* 8072AAF4  7F 43 D3 78 */	mr r3, r26
/* 8072AAF8  7F A4 EB 78 */	mr r4, r29
/* 8072AAFC  4B A8 0C D5 */	bl dKy_pol_eff_env_get__FPC13cBgS_PolyInfoP8_GXColor
/* 8072AB00  7F 43 D3 78 */	mr r3, r26
/* 8072AB04  4B A8 11 0D */	bl dKy_pol_eff_alpha_get__FPC13cBgS_PolyInfo
/* 8072AB08  98 7E 00 00 */	stb r3, 0(r30)
/* 8072AB0C  7F 43 D3 78 */	mr r3, r26
/* 8072AB10  4B A8 12 3D */	bl dKy_pol_eff_ratio_get__FPC13cBgS_PolyInfo
/* 8072AB14  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8072AB18  48 00 00 34 */	b lbl_8072AB4C
lbl_8072AB1C:
/* 8072AB1C  7F 43 D3 78 */	mr r3, r26
/* 8072AB20  7F 84 E3 78 */	mr r4, r28
/* 8072AB24  4B A8 0E 19 */	bl dKy_pol_eff2_prim_get__FPC13cBgS_PolyInfoP8_GXColor
/* 8072AB28  7F 43 D3 78 */	mr r3, r26
/* 8072AB2C  7F A4 EB 78 */	mr r4, r29
/* 8072AB30  4B A8 0F 75 */	bl dKy_pol_eff2_env_get__FPC13cBgS_PolyInfoP8_GXColor
/* 8072AB34  7F 43 D3 78 */	mr r3, r26
/* 8072AB38  4B A8 13 71 */	bl dKy_pol_eff2_alpha_get__FPC13cBgS_PolyInfo
/* 8072AB3C  98 7E 00 00 */	stb r3, 0(r30)
/* 8072AB40  7F 43 D3 78 */	mr r3, r26
/* 8072AB44  4B A8 14 A1 */	bl dKy_pol_eff2_ratio_get__FPC13cBgS_PolyInfo
/* 8072AB48  D0 3F 00 00 */	stfs f1, 0(r31)
lbl_8072AB4C:
/* 8072AB4C  38 60 00 01 */	li r3, 1
lbl_8072AB50:
/* 8072AB50  39 61 00 20 */	addi r11, r1, 0x20
/* 8072AB54  4B C3 76 C9 */	bl _restgpr_26
/* 8072AB58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072AB5C  7C 08 03 A6 */	mtlr r0
/* 8072AB60  38 21 00 20 */	addi r1, r1, 0x20
/* 8072AB64  4E 80 00 20 */	blr 
