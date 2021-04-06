lbl_8004CF90:
/* 8004CF90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004CF94  7C 08 02 A6 */	mflr r0
/* 8004CF98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004CF9C  39 61 00 20 */	addi r11, r1, 0x20
/* 8004CFA0  48 31 52 31 */	bl _savegpr_26
/* 8004CFA4  7C 7A 1B 78 */	mr r26, r3
/* 8004CFA8  7C 9B 23 78 */	mr r27, r4
/* 8004CFAC  7C BC 2B 78 */	mr r28, r5
/* 8004CFB0  7C DD 33 78 */	mr r29, r6
/* 8004CFB4  7C FE 3B 78 */	mr r30, r7
/* 8004CFB8  7D 1F 43 78 */	mr r31, r8
/* 8004CFBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8004CFC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8004CFC4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8004CFC8  7F 44 D3 78 */	mr r4, r26
/* 8004CFCC  48 02 76 95 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 8004CFD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8004CFD4  40 82 00 0C */	bne lbl_8004CFE0
/* 8004CFD8  38 60 00 00 */	li r3, 0
/* 8004CFDC  48 00 00 74 */	b lbl_8004D050
lbl_8004CFE0:
/* 8004CFE0  2C 1B 00 00 */	cmpwi r27, 0
/* 8004CFE4  40 82 00 38 */	bne lbl_8004D01C
/* 8004CFE8  7F 43 D3 78 */	mr r3, r26
/* 8004CFEC  7F 84 E3 78 */	mr r4, r28
/* 8004CFF0  48 15 E6 79 */	bl dKy_pol_eff_prim_get__FPC13cBgS_PolyInfoP8_GXColor
/* 8004CFF4  7F 43 D3 78 */	mr r3, r26
/* 8004CFF8  7F A4 EB 78 */	mr r4, r29
/* 8004CFFC  48 15 E7 D5 */	bl dKy_pol_eff_env_get__FPC13cBgS_PolyInfoP8_GXColor
/* 8004D000  7F 43 D3 78 */	mr r3, r26
/* 8004D004  48 15 EC 0D */	bl dKy_pol_eff_alpha_get__FPC13cBgS_PolyInfo
/* 8004D008  98 7E 00 00 */	stb r3, 0(r30)
/* 8004D00C  7F 43 D3 78 */	mr r3, r26
/* 8004D010  48 15 ED 3D */	bl dKy_pol_eff_ratio_get__FPC13cBgS_PolyInfo
/* 8004D014  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8004D018  48 00 00 34 */	b lbl_8004D04C
lbl_8004D01C:
/* 8004D01C  7F 43 D3 78 */	mr r3, r26
/* 8004D020  7F 84 E3 78 */	mr r4, r28
/* 8004D024  48 15 E9 19 */	bl dKy_pol_eff2_prim_get__FPC13cBgS_PolyInfoP8_GXColor
/* 8004D028  7F 43 D3 78 */	mr r3, r26
/* 8004D02C  7F A4 EB 78 */	mr r4, r29
/* 8004D030  48 15 EA 75 */	bl dKy_pol_eff2_env_get__FPC13cBgS_PolyInfoP8_GXColor
/* 8004D034  7F 43 D3 78 */	mr r3, r26
/* 8004D038  48 15 EE 71 */	bl dKy_pol_eff2_alpha_get__FPC13cBgS_PolyInfo
/* 8004D03C  98 7E 00 00 */	stb r3, 0(r30)
/* 8004D040  7F 43 D3 78 */	mr r3, r26
/* 8004D044  48 15 EF A1 */	bl dKy_pol_eff2_ratio_get__FPC13cBgS_PolyInfo
/* 8004D048  D0 3F 00 00 */	stfs f1, 0(r31)
lbl_8004D04C:
/* 8004D04C  38 60 00 01 */	li r3, 1
lbl_8004D050:
/* 8004D050  39 61 00 20 */	addi r11, r1, 0x20
/* 8004D054  48 31 51 C9 */	bl _restgpr_26
/* 8004D058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004D05C  7C 08 03 A6 */	mtlr r0
/* 8004D060  38 21 00 20 */	addi r1, r1, 0x20
/* 8004D064  4E 80 00 20 */	blr 
