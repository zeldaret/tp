lbl_8075F3A8:
/* 8075F3A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8075F3AC  7C 08 02 A6 */	mflr r0
/* 8075F3B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8075F3B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8075F3B8  7C 7F 1B 78 */	mr r31, r3
/* 8075F3BC  3C 80 80 76 */	lis r4, lit_3929@ha
/* 8075F3C0  C0 24 15 30 */	lfs f1, lit_3929@l(r4)
/* 8075F3C4  3C 80 80 76 */	lis r4, struct_80761E0C+0x0@ha
/* 8075F3C8  38 84 1E 0C */	addi r4, r4, struct_80761E0C+0x0@l
/* 8075F3CC  C0 04 00 08 */	lfs f0, 8(r4)
/* 8075F3D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8075F3D4  D0 03 07 CC */	stfs f0, 0x7cc(r3)
/* 8075F3D8  4B FF 9A 2D */	bl damage_check__8daE_PZ_cFv
/* 8075F3DC  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 8075F3E0  2C 00 00 03 */	cmpwi r0, 3
/* 8075F3E4  41 82 00 54 */	beq lbl_8075F438
/* 8075F3E8  40 80 00 1C */	bge lbl_8075F404
/* 8075F3EC  2C 00 00 01 */	cmpwi r0, 1
/* 8075F3F0  41 82 00 30 */	beq lbl_8075F420
/* 8075F3F4  40 80 00 38 */	bge lbl_8075F42C
/* 8075F3F8  2C 00 00 00 */	cmpwi r0, 0
/* 8075F3FC  40 80 00 18 */	bge lbl_8075F414
/* 8075F400  48 00 00 58 */	b lbl_8075F458
lbl_8075F404:
/* 8075F404  2C 00 00 05 */	cmpwi r0, 5
/* 8075F408  41 82 00 48 */	beq lbl_8075F450
/* 8075F40C  40 80 00 4C */	bge lbl_8075F458
/* 8075F410  48 00 00 34 */	b lbl_8075F444
lbl_8075F414:
/* 8075F414  7F E3 FB 78 */	mr r3, r31
/* 8075F418  4B FF 9E DD */	bl executeSearchPoint__8daE_PZ_cFv
/* 8075F41C  48 00 00 3C */	b lbl_8075F458
lbl_8075F420:
/* 8075F420  7F E3 FB 78 */	mr r3, r31
/* 8075F424  4B FF 9F A9 */	bl executeOpeningDemo__8daE_PZ_cFv
/* 8075F428  48 00 00 30 */	b lbl_8075F458
lbl_8075F42C:
/* 8075F42C  7F E3 FB 78 */	mr r3, r31
/* 8075F430  4B FF C5 41 */	bl executeWait__8daE_PZ_cFv
/* 8075F434  48 00 00 24 */	b lbl_8075F458
lbl_8075F438:
/* 8075F438  7F E3 FB 78 */	mr r3, r31
/* 8075F43C  4B FF D2 71 */	bl executeAttack__8daE_PZ_cFv
/* 8075F440  48 00 00 18 */	b lbl_8075F458
lbl_8075F444:
/* 8075F444  7F E3 FB 78 */	mr r3, r31
/* 8075F448  4B FF D7 39 */	bl executeDamage__8daE_PZ_cFv
/* 8075F44C  48 00 00 0C */	b lbl_8075F458
lbl_8075F450:
/* 8075F450  7F E3 FB 78 */	mr r3, r31
/* 8075F454  4B FF DA 15 */	bl executeDead__8daE_PZ_cFv
lbl_8075F458:
/* 8075F458  7F E3 FB 78 */	mr r3, r31
/* 8075F45C  4B FF 97 45 */	bl mEnemyScaleSet__8daE_PZ_cFv
/* 8075F460  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 8075F464  28 00 00 0A */	cmplwi r0, 0xa
/* 8075F468  40 80 00 10 */	bge lbl_8075F478
/* 8075F46C  88 1F 05 46 */	lbz r0, 0x546(r31)
/* 8075F470  28 00 00 00 */	cmplwi r0, 0
/* 8075F474  41 82 00 88 */	beq lbl_8075F4FC
lbl_8075F478:
/* 8075F478  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 8075F47C  2C 00 00 05 */	cmpwi r0, 5
/* 8075F480  41 82 00 0C */	beq lbl_8075F48C
/* 8075F484  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8075F488  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_8075F48C:
/* 8075F48C  7F E3 FB 78 */	mr r3, r31
/* 8075F490  38 9F 0A D4 */	addi r4, r31, 0xad4
/* 8075F494  4B 8B B2 38 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8075F498  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 8075F49C  2C 00 00 01 */	cmpwi r0, 1
/* 8075F4A0  40 82 00 10 */	bne lbl_8075F4B0
/* 8075F4A4  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 8075F4A8  2C 00 00 64 */	cmpwi r0, 0x64
/* 8075F4AC  40 80 00 24 */	bge lbl_8075F4D0
lbl_8075F4B0:
/* 8075F4B0  38 7F 08 90 */	addi r3, r31, 0x890
/* 8075F4B4  C0 3F 07 BC */	lfs f1, 0x7bc(r31)
/* 8075F4B8  4B 91 7C 5C */	b SetGroundUpY__9dBgS_AcchFf
/* 8075F4BC  38 7F 08 90 */	addi r3, r31, 0x890
/* 8075F4C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8075F4C4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8075F4C8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8075F4CC  4B 91 75 E0 */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_8075F4D0:
/* 8075F4D0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8075F4D4  4B 8A DF 54 */	b play__14mDoExt_baseAnmFv
/* 8075F4D8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8075F4DC  4B 8A DF 4C */	b play__14mDoExt_baseAnmFv
/* 8075F4E0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8075F4E4  7C 03 07 74 */	extsb r3, r0
/* 8075F4E8  4B 8C DB 84 */	b dComIfGp_getReverb__Fi
/* 8075F4EC  7C 65 1B 78 */	mr r5, r3
/* 8075F4F0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075F4F4  38 80 00 00 */	li r4, 0
/* 8075F4F8  4B 8B 1B B8 */	b play__16mDoExt_McaMorfSOFUlSc
lbl_8075F4FC:
/* 8075F4FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8075F500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8075F504  7C 08 03 A6 */	mtlr r0
/* 8075F508  38 21 00 10 */	addi r1, r1, 0x10
/* 8075F50C  4E 80 00 20 */	blr 
