lbl_806CF878:
/* 806CF878  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806CF87C  7C 08 02 A6 */	mflr r0
/* 806CF880  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806CF884  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 806CF888  93 C1 00 98 */	stw r30, 0x98(r1)
/* 806CF88C  7C 7F 1B 78 */	mr r31, r3
/* 806CF890  38 80 00 00 */	li r4, 0
/* 806CF894  4B FF E4 89 */	bl setWeaponAtBit__8daE_GI_cFUc
/* 806CF898  38 00 00 00 */	li r0, 0
/* 806CF89C  98 1F 06 9F */	stb r0, 0x69f(r31)
/* 806CF8A0  98 1F 06 98 */	stb r0, 0x698(r31)
/* 806CF8A4  7F E3 FB 78 */	mr r3, r31
/* 806CF8A8  4B FF E0 91 */	bl damage_check__8daE_GI_cFv
/* 806CF8AC  3B C0 00 00 */	li r30, 0
/* 806CF8B0  38 00 00 04 */	li r0, 4
/* 806CF8B4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806CF8B8  80 1F 06 70 */	lwz r0, 0x670(r31)
/* 806CF8BC  2C 00 00 03 */	cmpwi r0, 3
/* 806CF8C0  41 82 00 58 */	beq lbl_806CF918
/* 806CF8C4  40 80 00 1C */	bge lbl_806CF8E0
/* 806CF8C8  2C 00 00 01 */	cmpwi r0, 1
/* 806CF8CC  41 82 00 30 */	beq lbl_806CF8FC
/* 806CF8D0  40 80 00 38 */	bge lbl_806CF908
/* 806CF8D4  2C 00 00 00 */	cmpwi r0, 0
/* 806CF8D8  40 80 00 18 */	bge lbl_806CF8F0
/* 806CF8DC  48 00 00 68 */	b lbl_806CF944
lbl_806CF8E0:
/* 806CF8E0  2C 00 00 05 */	cmpwi r0, 5
/* 806CF8E4  41 82 00 54 */	beq lbl_806CF938
/* 806CF8E8  40 80 00 5C */	bge lbl_806CF944
/* 806CF8EC  48 00 00 3C */	b lbl_806CF928
lbl_806CF8F0:
/* 806CF8F0  7F E3 FB 78 */	mr r3, r31
/* 806CF8F4  4B FF EA D1 */	bl executeSleep__8daE_GI_cFv
/* 806CF8F8  48 00 00 4C */	b lbl_806CF944
lbl_806CF8FC:
/* 806CF8FC  7F E3 FB 78 */	mr r3, r31
/* 806CF900  4B FF ED AD */	bl executeWait__8daE_GI_cFv
/* 806CF904  48 00 00 40 */	b lbl_806CF944
lbl_806CF908:
/* 806CF908  3B C0 00 01 */	li r30, 1
/* 806CF90C  7F E3 FB 78 */	mr r3, r31
/* 806CF910  4B FF EF 49 */	bl executeChase__8daE_GI_cFv
/* 806CF914  48 00 00 30 */	b lbl_806CF944
lbl_806CF918:
/* 806CF918  3B C0 00 01 */	li r30, 1
/* 806CF91C  7F E3 FB 78 */	mr r3, r31
/* 806CF920  4B FF F3 75 */	bl executeAttack__8daE_GI_cFv
/* 806CF924  48 00 00 20 */	b lbl_806CF944
lbl_806CF928:
/* 806CF928  3B C0 00 01 */	li r30, 1
/* 806CF92C  7F E3 FB 78 */	mr r3, r31
/* 806CF930  4B FF F7 89 */	bl executeDamage__8daE_GI_cFv
/* 806CF934  48 00 00 10 */	b lbl_806CF944
lbl_806CF938:
/* 806CF938  3B C0 00 01 */	li r30, 1
/* 806CF93C  7F E3 FB 78 */	mr r3, r31
/* 806CF940  4B FF FA D1 */	bl executeBiteDamage__8daE_GI_cFv
lbl_806CF944:
/* 806CF944  38 7F 06 AC */	addi r3, r31, 0x6ac
/* 806CF948  3C 80 80 6D */	lis r4, lit_3935@ha /* 0x806D0EA8@ha */
/* 806CF94C  C0 24 0E A8 */	lfs f1, lit_3935@l(r4)  /* 0x806D0EA8@l */
/* 806CF950  C0 5F 06 64 */	lfs f2, 0x664(r31)
/* 806CF954  4B 9A 66 05 */	bl SetWall__12dBgS_AcchCirFff
/* 806CF958  9B DF 06 99 */	stb r30, 0x699(r31)
/* 806CF95C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806CF960  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 806CF964  30 04 FF FF */	addic r0, r4, -1
/* 806CF968  7C 00 21 10 */	subfe r0, r0, r4
/* 806CF96C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 806CF970  4B BF 22 0D */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 806CF974  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 806CF978  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 806CF97C  41 82 00 60 */	beq lbl_806CF9DC
/* 806CF980  38 61 00 20 */	addi r3, r1, 0x20
/* 806CF984  4B 9A 82 E5 */	bl __ct__11dBgS_LinChkFv
/* 806CF988  38 61 00 20 */	addi r3, r1, 0x20
/* 806CF98C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CF990  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CF994  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 806CF998  38 84 00 D8 */	addi r4, r4, 0xd8
/* 806CF99C  38 BF 05 50 */	addi r5, r31, 0x550
/* 806CF9A0  7F E6 FB 78 */	mr r6, r31
/* 806CF9A4  4B 9A 83 C1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806CF9A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CF9AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CF9B0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806CF9B4  38 81 00 20 */	addi r4, r1, 0x20
/* 806CF9B8  4B 9A 49 FD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806CF9BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806CF9C0  41 82 00 10 */	beq lbl_806CF9D0
/* 806CF9C4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 806CF9C8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806CF9CC  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_806CF9D0:
/* 806CF9D0  38 61 00 20 */	addi r3, r1, 0x20
/* 806CF9D4  38 80 FF FF */	li r4, -1
/* 806CF9D8  4B 9A 83 05 */	bl __dt__11dBgS_LinChkFv
lbl_806CF9DC:
/* 806CF9DC  7F E3 FB 78 */	mr r3, r31
/* 806CF9E0  4B FF FD 41 */	bl PushButtonCount__8daE_GI_cFv
/* 806CF9E4  88 1F 06 98 */	lbz r0, 0x698(r31)
/* 806CF9E8  28 00 00 00 */	cmplwi r0, 0
/* 806CF9EC  41 82 00 58 */	beq lbl_806CFA44
/* 806CF9F0  7F E3 FB 78 */	mr r3, r31
/* 806CF9F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CF9F8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CF9FC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806CFA00  4B 94 AD 11 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CFA04  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 806CFA08  7C 00 18 50 */	subf r0, r0, r3
/* 806CFA0C  7C 04 07 34 */	extsh r4, r0
/* 806CFA10  2C 04 20 00 */	cmpwi r4, 0x2000
/* 806CFA14  40 81 00 08 */	ble lbl_806CFA1C
/* 806CFA18  38 80 20 00 */	li r4, 0x2000
lbl_806CFA1C:
/* 806CFA1C  7C 80 07 34 */	extsh r0, r4
/* 806CFA20  2C 00 E0 00 */	cmpwi r0, -8192
/* 806CFA24  40 80 00 08 */	bge lbl_806CFA2C
/* 806CFA28  38 80 E0 00 */	li r4, -8192
lbl_806CFA2C:
/* 806CFA2C  38 7F 06 7E */	addi r3, r31, 0x67e
/* 806CFA30  38 A0 00 10 */	li r5, 0x10
/* 806CFA34  38 C0 04 00 */	li r6, 0x400
/* 806CFA38  38 E0 00 80 */	li r7, 0x80
/* 806CFA3C  4B BA 0B 05 */	bl cLib_addCalcAngleS__FPsssss
/* 806CFA40  48 00 00 1C */	b lbl_806CFA5C
lbl_806CFA44:
/* 806CFA44  38 7F 06 7E */	addi r3, r31, 0x67e
/* 806CFA48  38 80 00 00 */	li r4, 0
/* 806CFA4C  38 A0 00 10 */	li r5, 0x10
/* 806CFA50  38 C0 04 00 */	li r6, 0x400
/* 806CFA54  38 E0 00 80 */	li r7, 0x80
/* 806CFA58  4B BA 0A E9 */	bl cLib_addCalcAngleS__FPsssss
lbl_806CFA5C:
/* 806CFA5C  88 1F 06 9F */	lbz r0, 0x69f(r31)
/* 806CFA60  28 00 00 00 */	cmplwi r0, 0
/* 806CFA64  41 82 00 18 */	beq lbl_806CFA7C
/* 806CFA68  38 7F 06 A2 */	addi r3, r31, 0x6a2
/* 806CFA6C  38 80 00 FF */	li r4, 0xff
/* 806CFA70  38 A0 00 10 */	li r5, 0x10
/* 806CFA74  4B BA 0C 5D */	bl cLib_chaseS__FPsss
/* 806CFA78  48 00 00 14 */	b lbl_806CFA8C
lbl_806CFA7C:
/* 806CFA7C  38 7F 06 A2 */	addi r3, r31, 0x6a2
/* 806CFA80  38 80 00 00 */	li r4, 0
/* 806CFA84  38 A0 00 10 */	li r5, 0x10
/* 806CFA88  4B BA 0C 49 */	bl cLib_chaseS__FPsss
lbl_806CFA8C:
/* 806CFA8C  7F E3 FB 78 */	mr r3, r31
/* 806CFA90  38 9F 08 C4 */	addi r4, r31, 0x8c4
/* 806CFA94  4B 94 AC 39 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806CFA98  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806CFA9C  80 63 00 04 */	lwz r3, 4(r3)
/* 806CFAA0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806CFAA4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806CFAA8  38 63 00 C0 */	addi r3, r3, 0xc0
/* 806CFAAC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806CFAB0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806CFAB4  4B C7 69 FD */	bl PSMTXCopy
/* 806CFAB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806CFABC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806CFAC0  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 806CFAC4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 806CFAC8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806CFACC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806CFAD0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806CFAD4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806CFAD8  D0 5F 05 68 */	stfs f2, 0x568(r31)
/* 806CFADC  D0 3F 05 6C */	stfs f1, 0x56c(r31)
/* 806CFAE0  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 806CFAE4  C0 7F 05 38 */	lfs f3, 0x538(r31)
/* 806CFAE8  D0 61 00 08 */	stfs f3, 8(r1)
/* 806CFAEC  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 806CFAF0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 806CFAF4  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 806CFAF8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806CFAFC  3C 60 80 6D */	lis r3, lit_4917@ha /* 0x806D0F50@ha */
/* 806CFB00  C0 03 0F 50 */	lfs f0, lit_4917@l(r3)  /* 0x806D0F50@l */
/* 806CFB04  EC 02 00 2A */	fadds f0, f2, f0
/* 806CFB08  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806CFB0C  D0 7F 05 74 */	stfs f3, 0x574(r31)
/* 806CFB10  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 806CFB14  D0 3F 05 7C */	stfs f1, 0x57c(r31)
/* 806CFB18  38 7F 06 EC */	addi r3, r31, 0x6ec
/* 806CFB1C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CFB20  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CFB24  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806CFB28  4B 9A 6F 85 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806CFB2C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806CFB30  7C 03 07 74 */	extsb r3, r0
/* 806CFB34  4B 95 D5 39 */	bl dComIfGp_getReverb__Fi
/* 806CFB38  7C 65 1B 78 */	mr r5, r3
/* 806CFB3C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806CFB40  38 80 00 00 */	li r4, 0
/* 806CFB44  4B 94 15 6D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 806CFB48  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 806CFB4C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 806CFB50  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806CFB54  7C 08 03 A6 */	mtlr r0
/* 806CFB58  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806CFB5C  4E 80 00 20 */	blr 
