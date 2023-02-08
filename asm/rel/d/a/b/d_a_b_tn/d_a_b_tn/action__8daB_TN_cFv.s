lbl_8062B6A8:
/* 8062B6A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8062B6AC  7C 08 02 A6 */	mflr r0
/* 8062B6B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8062B6B4  39 61 00 30 */	addi r11, r1, 0x30
/* 8062B6B8  4B D3 6B 21 */	bl _savegpr_28
/* 8062B6BC  7C 7D 1B 78 */	mr r29, r3
/* 8062B6C0  3C 60 80 63 */	lis r3, lit_1109@ha /* 0x8062EFE0@ha */
/* 8062B6C4  3B 83 EF E0 */	addi r28, r3, lit_1109@l /* 0x8062EFE0@l */
/* 8062B6C8  3C 60 80 63 */	lis r3, lit_3920@ha /* 0x8062E634@ha */
/* 8062B6CC  3B E3 E6 34 */	addi r31, r3, lit_3920@l /* 0x8062E634@l */
/* 8062B6D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062B6D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062B6D8  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8062B6DC  80 7C 03 20 */	lwz r3, 0x320(r28)
/* 8062B6E0  2C 03 00 00 */	cmpwi r3, 0
/* 8062B6E4  41 82 00 0C */	beq lbl_8062B6F0
/* 8062B6E8  38 03 FF FF */	addi r0, r3, -1
/* 8062B6EC  90 1C 03 20 */	stw r0, 0x320(r28)
lbl_8062B6F0:
/* 8062B6F0  88 1D 0A A5 */	lbz r0, 0xaa5(r29)
/* 8062B6F4  28 00 00 00 */	cmplwi r0, 0
/* 8062B6F8  41 82 00 20 */	beq lbl_8062B718
/* 8062B6FC  7F C3 F3 78 */	mr r3, r30
/* 8062B700  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8062B704  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8062B708  7D 89 03 A6 */	mtctr r12
/* 8062B70C  4E 80 04 21 */	bctrl 
/* 8062B710  2C 03 00 00 */	cmpwi r3, 0
/* 8062B714  40 82 00 0C */	bne lbl_8062B720
lbl_8062B718:
/* 8062B718  38 00 00 00 */	li r0, 0
/* 8062B71C  90 1C 03 1C */	stw r0, 0x31c(r28)
lbl_8062B720:
/* 8062B720  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 8062B724  28 00 00 0A */	cmplwi r0, 0xa
/* 8062B728  40 82 00 28 */	bne lbl_8062B750
/* 8062B72C  7F C3 F3 78 */	mr r3, r30
/* 8062B730  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8062B734  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 8062B738  7D 89 03 A6 */	mtctr r12
/* 8062B73C  4E 80 04 21 */	bctrl 
/* 8062B740  2C 03 00 00 */	cmpwi r3, 0
/* 8062B744  41 82 00 0C */	beq lbl_8062B750
/* 8062B748  38 00 00 1E */	li r0, 0x1e
/* 8062B74C  98 1D 0A AA */	stb r0, 0xaaa(r29)
lbl_8062B750:
/* 8062B750  7F A3 EB 78 */	mr r3, r29
/* 8062B754  4B FF 5C A9 */	bl damage_check__8daB_TN_cFv
/* 8062B758  38 7C 00 4C */	addi r3, r28, 0x4c
/* 8062B75C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8062B760  FC 00 00 1E */	fctiwz f0, f0
/* 8062B764  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8062B768  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8062B76C  90 1D 07 00 */	stw r0, 0x700(r29)
/* 8062B770  38 00 00 00 */	li r0, 0
/* 8062B774  98 1D 0A 94 */	stb r0, 0xa94(r29)
/* 8062B778  98 1D 0A A1 */	stb r0, 0xaa1(r29)
/* 8062B77C  98 1D 0A A0 */	stb r0, 0xaa0(r29)
/* 8062B780  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 8062B784  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 8062B788  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8062B78C  3B 80 00 01 */	li r28, 1
/* 8062B790  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 8062B794  28 00 00 0F */	cmplwi r0, 0xf
/* 8062B798  41 81 01 20 */	bgt lbl_8062B8B8
/* 8062B79C  3C 60 80 63 */	lis r3, lit_9574@ha /* 0x8062EEC4@ha */
/* 8062B7A0  38 63 EE C4 */	addi r3, r3, lit_9574@l /* 0x8062EEC4@l */
/* 8062B7A4  54 00 10 3A */	slwi r0, r0, 2
/* 8062B7A8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8062B7AC  7C 09 03 A6 */	mtctr r0
/* 8062B7B0  4E 80 04 20 */	bctr 
lbl_8062B7B4:
/* 8062B7B4  7F A3 EB 78 */	mr r3, r29
/* 8062B7B8  4B FF 7A 09 */	bl executeRoomDemo__8daB_TN_cFv
/* 8062B7BC  3B 80 00 00 */	li r28, 0
/* 8062B7C0  48 00 00 F8 */	b lbl_8062B8B8
lbl_8062B7C4:
/* 8062B7C4  7F A3 EB 78 */	mr r3, r29
/* 8062B7C8  4B FF 81 59 */	bl executeOpening__8daB_TN_cFv
/* 8062B7CC  3B 80 00 00 */	li r28, 0
/* 8062B7D0  48 00 00 E8 */	b lbl_8062B8B8
lbl_8062B7D4:
/* 8062B7D4  7F A3 EB 78 */	mr r3, r29
/* 8062B7D8  4B FF 8F 11 */	bl executeWaitH__8daB_TN_cFv
/* 8062B7DC  88 1D 0A A5 */	lbz r0, 0xaa5(r29)
/* 8062B7E0  28 00 00 01 */	cmplwi r0, 1
/* 8062B7E4  40 82 00 D4 */	bne lbl_8062B8B8
/* 8062B7E8  3B 80 00 00 */	li r28, 0
/* 8062B7EC  48 00 00 CC */	b lbl_8062B8B8
lbl_8062B7F0:
/* 8062B7F0  7F A3 EB 78 */	mr r3, r29
/* 8062B7F4  4B FF 90 9D */	bl executeChaseH__8daB_TN_cFv
/* 8062B7F8  48 00 00 C0 */	b lbl_8062B8B8
lbl_8062B7FC:
/* 8062B7FC  7F A3 EB 78 */	mr r3, r29
/* 8062B800  4B FF 9D F1 */	bl executeAttackH__8daB_TN_cFv
/* 8062B804  48 00 00 B4 */	b lbl_8062B8B8
lbl_8062B808:
/* 8062B808  7F A3 EB 78 */	mr r3, r29
/* 8062B80C  4B FF A4 69 */	bl executeAttackShieldH__8daB_TN_cFv
/* 8062B810  48 00 00 A8 */	b lbl_8062B8B8
lbl_8062B814:
/* 8062B814  7F A3 EB 78 */	mr r3, r29
/* 8062B818  4B FF A6 29 */	bl executeGuardH__8daB_TN_cFv
/* 8062B81C  48 00 00 9C */	b lbl_8062B8B8
lbl_8062B820:
/* 8062B820  7F A3 EB 78 */	mr r3, r29
/* 8062B824  4B FF A8 11 */	bl executeDamageH__8daB_TN_cFv
/* 8062B828  48 00 00 90 */	b lbl_8062B8B8
lbl_8062B82C:
/* 8062B82C  88 1D 0A A5 */	lbz r0, 0xaa5(r29)
/* 8062B830  28 00 00 00 */	cmplwi r0, 0
/* 8062B834  40 82 00 10 */	bne lbl_8062B844
/* 8062B838  7F A3 EB 78 */	mr r3, r29
/* 8062B83C  4B FF AA E5 */	bl executeChangeDemo__8daB_TN_cFv
/* 8062B840  48 00 00 78 */	b lbl_8062B8B8
lbl_8062B844:
/* 8062B844  7F A3 EB 78 */	mr r3, r29
/* 8062B848  4B FF B8 B9 */	bl executeZakoChangeDemo__8daB_TN_cFv
/* 8062B84C  48 00 00 6C */	b lbl_8062B8B8
lbl_8062B850:
/* 8062B850  7F A3 EB 78 */	mr r3, r29
/* 8062B854  4B FF CE 39 */	bl executeChaseL__8daB_TN_cFv
/* 8062B858  48 00 00 60 */	b lbl_8062B8B8
lbl_8062B85C:
/* 8062B85C  7F A3 EB 78 */	mr r3, r29
/* 8062B860  4B FF DA 99 */	bl executeAttackL__8daB_TN_cFv
/* 8062B864  48 00 00 54 */	b lbl_8062B8B8
lbl_8062B868:
/* 8062B868  7F A3 EB 78 */	mr r3, r29
/* 8062B86C  4B FF E4 B5 */	bl executeAttackShieldL__8daB_TN_cFv
/* 8062B870  48 00 00 48 */	b lbl_8062B8B8
lbl_8062B874:
/* 8062B874  7F A3 EB 78 */	mr r3, r29
/* 8062B878  4B FF E7 39 */	bl executeGuardL__8daB_TN_cFv
/* 8062B87C  48 00 00 3C */	b lbl_8062B8B8
lbl_8062B880:
/* 8062B880  7F A3 EB 78 */	mr r3, r29
/* 8062B884  4B FF EB 4D */	bl executeDamageL__8daB_TN_cFv
/* 8062B888  48 00 00 30 */	b lbl_8062B8B8
lbl_8062B88C:
/* 8062B88C  7F A3 EB 78 */	mr r3, r29
/* 8062B890  4B FF EE 8D */	bl executeYoroke__8daB_TN_cFv
/* 8062B894  48 00 00 24 */	b lbl_8062B8B8
lbl_8062B898:
/* 8062B898  88 1D 0A A5 */	lbz r0, 0xaa5(r29)
/* 8062B89C  28 00 00 00 */	cmplwi r0, 0
/* 8062B8A0  40 82 00 10 */	bne lbl_8062B8B0
/* 8062B8A4  7F A3 EB 78 */	mr r3, r29
/* 8062B8A8  4B FF F0 A9 */	bl executeEnding__8daB_TN_cFv
/* 8062B8AC  48 00 00 0C */	b lbl_8062B8B8
lbl_8062B8B0:
/* 8062B8B0  7F A3 EB 78 */	mr r3, r29
/* 8062B8B4  4B FF FA 91 */	bl executeZakoEnding__8daB_TN_cFv
lbl_8062B8B8:
/* 8062B8B8  88 1D 0A A5 */	lbz r0, 0xaa5(r29)
/* 8062B8BC  28 00 00 00 */	cmplwi r0, 0
/* 8062B8C0  40 82 00 A4 */	bne lbl_8062B964
/* 8062B8C4  2C 1C 00 00 */	cmpwi r28, 0
/* 8062B8C8  41 82 00 10 */	beq lbl_8062B8D8
/* 8062B8CC  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 8062B8D0  64 00 02 00 */	oris r0, r0, 0x200
/* 8062B8D4  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_8062B8D8:
/* 8062B8D8  88 1D 0A AE */	lbz r0, 0xaae(r29)
/* 8062B8DC  2C 00 00 01 */	cmpwi r0, 1
/* 8062B8E0  41 82 00 3C */	beq lbl_8062B91C
/* 8062B8E4  40 80 00 10 */	bge lbl_8062B8F4
/* 8062B8E8  2C 00 00 00 */	cmpwi r0, 0
/* 8062B8EC  40 80 00 14 */	bge lbl_8062B900
/* 8062B8F0  48 00 00 88 */	b lbl_8062B978
lbl_8062B8F4:
/* 8062B8F4  2C 00 00 03 */	cmpwi r0, 3
/* 8062B8F8  40 80 00 80 */	bge lbl_8062B978
/* 8062B8FC  48 00 00 44 */	b lbl_8062B940
lbl_8062B900:
/* 8062B900  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8062B904  D0 1D 0A B0 */	stfs f0, 0xab0(r29)
/* 8062B908  38 60 00 00 */	li r3, 0
/* 8062B90C  38 80 00 00 */	li r4, 0
/* 8062B910  C0 3D 0A B0 */	lfs f1, 0xab0(r29)
/* 8062B914  4B B7 CE F9 */	bl dKy_custom_colset__FUcUcf
/* 8062B918  48 00 00 60 */	b lbl_8062B978
lbl_8062B91C:
/* 8062B91C  38 7D 0A B0 */	addi r3, r29, 0xab0
/* 8062B920  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8062B924  C0 5F 02 6C */	lfs f2, 0x26c(r31)
/* 8062B928  4B C4 4E 19 */	bl cLib_chaseF__FPfff
/* 8062B92C  38 60 00 00 */	li r3, 0
/* 8062B930  38 80 00 01 */	li r4, 1
/* 8062B934  C0 3D 0A B0 */	lfs f1, 0xab0(r29)
/* 8062B938  4B B7 CE D5 */	bl dKy_custom_colset__FUcUcf
/* 8062B93C  48 00 00 3C */	b lbl_8062B978
lbl_8062B940:
/* 8062B940  38 7D 0A B0 */	addi r3, r29, 0xab0
/* 8062B944  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8062B948  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8062B94C  4B C4 4D F5 */	bl cLib_chaseF__FPfff
/* 8062B950  38 60 00 01 */	li r3, 1
/* 8062B954  38 80 00 02 */	li r4, 2
/* 8062B958  C0 3D 0A B0 */	lfs f1, 0xab0(r29)
/* 8062B95C  4B B7 CE B1 */	bl dKy_custom_colset__FUcUcf
/* 8062B960  48 00 00 18 */	b lbl_8062B978
lbl_8062B964:
/* 8062B964  38 7D 06 4C */	addi r3, r29, 0x64c
/* 8062B968  30 1C FF FF */	addic r0, r28, -1
/* 8062B96C  7C 00 E1 10 */	subfe r0, r0, r28
/* 8062B970  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8062B974  4B C9 62 09 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_8062B978:
/* 8062B978  7F A3 EB 78 */	mr r3, r29
/* 8062B97C  4B FF 33 E1 */	bl calcNeckAngle__8daB_TN_cFv
/* 8062B980  7F A3 EB 78 */	mr r3, r29
/* 8062B984  4B FF 34 91 */	bl calcWaistAngle__8daB_TN_cFv
/* 8062B988  7F A3 EB 78 */	mr r3, r29
/* 8062B98C  4B FF 51 C1 */	bl setBodyShield__8daB_TN_cFv
/* 8062B990  7F A3 EB 78 */	mr r3, r29
/* 8062B994  4B FF 4D 79 */	bl calcPartMove__8daB_TN_cFv
/* 8062B998  7F A3 EB 78 */	mr r3, r29
/* 8062B99C  38 9D 2E 50 */	addi r4, r29, 0x2e50
/* 8062B9A0  4B 9E ED 2D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8062B9A4  38 7D 0A F8 */	addi r3, r29, 0xaf8
/* 8062B9A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062B9AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062B9B0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8062B9B4  4B A4 B0 F9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8062B9B8  C0 7D 05 38 */	lfs f3, 0x538(r29)
/* 8062B9BC  D0 61 00 08 */	stfs f3, 8(r1)
/* 8062B9C0  C0 5D 05 3C */	lfs f2, 0x53c(r29)
/* 8062B9C4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8062B9C8  C0 3D 05 40 */	lfs f1, 0x540(r29)
/* 8062B9CC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8062B9D0  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8062B9D4  EC 02 00 2A */	fadds f0, f2, f0
/* 8062B9D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8062B9DC  D0 7D 05 74 */	stfs f3, 0x574(r29)
/* 8062B9E0  D0 1D 05 78 */	stfs f0, 0x578(r29)
/* 8062B9E4  D0 3D 05 7C */	stfs f1, 0x57c(r29)
/* 8062B9E8  80 1D 0A 78 */	lwz r0, 0xa78(r29)
/* 8062B9EC  23 80 00 0D */	subfic r28, r0, 0xd
/* 8062B9F0  2C 1C 00 00 */	cmpwi r28, 0
/* 8062B9F4  40 80 00 08 */	bge lbl_8062B9FC
/* 8062B9F8  3B 80 00 00 */	li r28, 0
lbl_8062B9FC:
/* 8062B9FC  2C 1C 00 0D */	cmpwi r28, 0xd
/* 8062BA00  40 81 00 08 */	ble lbl_8062BA08
/* 8062BA04  3B 80 00 0D */	li r28, 0xd
lbl_8062BA08:
/* 8062BA08  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8062BA0C  7C 03 07 74 */	extsb r3, r0
/* 8062BA10  4B A0 16 5D */	bl dComIfGp_getReverb__Fi
/* 8062BA14  7C 65 1B 78 */	mr r5, r3
/* 8062BA18  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8062BA1C  3B 9C 00 0A */	addi r28, r28, 0xa
/* 8062BA20  7F 84 E3 78 */	mr r4, r28
/* 8062BA24  4B 9E 56 8D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8062BA28  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8062BA2C  7C 03 07 74 */	extsb r3, r0
/* 8062BA30  4B A0 16 3D */	bl dComIfGp_getReverb__Fi
/* 8062BA34  7C 65 1B 78 */	mr r5, r3
/* 8062BA38  80 7D 05 FC */	lwz r3, 0x5fc(r29)
/* 8062BA3C  7F 84 E3 78 */	mr r4, r28
/* 8062BA40  4B 9E 56 71 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8062BA44  39 61 00 30 */	addi r11, r1, 0x30
/* 8062BA48  4B D3 67 DD */	bl _restgpr_28
/* 8062BA4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8062BA50  7C 08 03 A6 */	mtlr r0
/* 8062BA54  38 21 00 30 */	addi r1, r1, 0x30
/* 8062BA58  4E 80 00 20 */	blr 
