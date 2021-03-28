lbl_80765A98:
/* 80765A98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80765A9C  7C 08 02 A6 */	mflr r0
/* 80765AA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80765AA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80765AA8  4B BF C7 28 */	b _savegpr_26
/* 80765AAC  7C 7A 1B 78 */	mr r26, r3
/* 80765AB0  7C 9B 23 78 */	mr r27, r4
/* 80765AB4  7C BC 2B 78 */	mr r28, r5
/* 80765AB8  7C DD 33 78 */	mr r29, r6
/* 80765ABC  7C FE 3B 78 */	mr r30, r7
/* 80765AC0  7D 1F 43 78 */	mr r31, r8
/* 80765AC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80765AC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80765ACC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80765AD0  7F 44 D3 78 */	mr r4, r26
/* 80765AD4  4B 90 EB 8C */	b ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 80765AD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80765ADC  40 82 00 0C */	bne lbl_80765AE8
/* 80765AE0  38 60 00 00 */	li r3, 0
/* 80765AE4  48 00 00 74 */	b lbl_80765B58
lbl_80765AE8:
/* 80765AE8  2C 1B 00 00 */	cmpwi r27, 0
/* 80765AEC  40 82 00 38 */	bne lbl_80765B24
/* 80765AF0  7F 43 D3 78 */	mr r3, r26
/* 80765AF4  7F 84 E3 78 */	mr r4, r28
/* 80765AF8  4B A4 5B 70 */	b dKy_pol_eff_prim_get__FPC13cBgS_PolyInfoP8_GXColor
/* 80765AFC  7F 43 D3 78 */	mr r3, r26
/* 80765B00  7F A4 EB 78 */	mr r4, r29
/* 80765B04  4B A4 5C CC */	b dKy_pol_eff_env_get__FPC13cBgS_PolyInfoP8_GXColor
/* 80765B08  7F 43 D3 78 */	mr r3, r26
/* 80765B0C  4B A4 61 04 */	b dKy_pol_eff_alpha_get__FPC13cBgS_PolyInfo
/* 80765B10  98 7E 00 00 */	stb r3, 0(r30)
/* 80765B14  7F 43 D3 78 */	mr r3, r26
/* 80765B18  4B A4 62 34 */	b dKy_pol_eff_ratio_get__FPC13cBgS_PolyInfo
/* 80765B1C  D0 3F 00 00 */	stfs f1, 0(r31)
/* 80765B20  48 00 00 34 */	b lbl_80765B54
lbl_80765B24:
/* 80765B24  7F 43 D3 78 */	mr r3, r26
/* 80765B28  7F 84 E3 78 */	mr r4, r28
/* 80765B2C  4B A4 5E 10 */	b dKy_pol_eff2_prim_get__FPC13cBgS_PolyInfoP8_GXColor
/* 80765B30  7F 43 D3 78 */	mr r3, r26
/* 80765B34  7F A4 EB 78 */	mr r4, r29
/* 80765B38  4B A4 5F 6C */	b dKy_pol_eff2_env_get__FPC13cBgS_PolyInfoP8_GXColor
/* 80765B3C  7F 43 D3 78 */	mr r3, r26
/* 80765B40  4B A4 63 68 */	b dKy_pol_eff2_alpha_get__FPC13cBgS_PolyInfo
/* 80765B44  98 7E 00 00 */	stb r3, 0(r30)
/* 80765B48  7F 43 D3 78 */	mr r3, r26
/* 80765B4C  4B A4 64 98 */	b dKy_pol_eff2_ratio_get__FPC13cBgS_PolyInfo
/* 80765B50  D0 3F 00 00 */	stfs f1, 0(r31)
lbl_80765B54:
/* 80765B54  38 60 00 01 */	li r3, 1
lbl_80765B58:
/* 80765B58  39 61 00 20 */	addi r11, r1, 0x20
/* 80765B5C  4B BF C6 C0 */	b _restgpr_26
/* 80765B60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80765B64  7C 08 03 A6 */	mtlr r0
/* 80765B68  38 21 00 20 */	addi r1, r1, 0x20
/* 80765B6C  4E 80 00 20 */	blr 
