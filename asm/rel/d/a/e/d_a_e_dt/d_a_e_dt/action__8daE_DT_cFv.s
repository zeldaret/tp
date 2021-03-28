lbl_806B4724:
/* 806B4724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B4728  7C 08 02 A6 */	mflr r0
/* 806B472C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B4730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B4734  93 C1 00 08 */	stw r30, 8(r1)
/* 806B4738  7C 7F 1B 78 */	mr r31, r3
/* 806B473C  80 03 0B AC */	lwz r0, 0xbac(r3)
/* 806B4740  60 00 00 01 */	ori r0, r0, 1
/* 806B4744  90 03 0B AC */	stw r0, 0xbac(r3)
/* 806B4748  88 03 07 71 */	lbz r0, 0x771(r3)
/* 806B474C  28 00 00 00 */	cmplwi r0, 0
/* 806B4750  41 82 00 38 */	beq lbl_806B4788
/* 806B4754  80 1F 0A 04 */	lwz r0, 0xa04(r31)
/* 806B4758  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B475C  90 1F 0A 04 */	stw r0, 0xa04(r31)
/* 806B4760  80 1F 0B 3C */	lwz r0, 0xb3c(r31)
/* 806B4764  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B4768  90 1F 0B 3C */	stw r0, 0xb3c(r31)
/* 806B476C  80 1F 0C 74 */	lwz r0, 0xc74(r31)
/* 806B4770  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B4774  90 1F 0C 74 */	stw r0, 0xc74(r31)
/* 806B4778  80 1F 0D AC */	lwz r0, 0xdac(r31)
/* 806B477C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B4780  90 1F 0D AC */	stw r0, 0xdac(r31)
/* 806B4784  48 00 00 34 */	b lbl_806B47B8
lbl_806B4788:
/* 806B4788  80 1F 0A 04 */	lwz r0, 0xa04(r31)
/* 806B478C  60 00 00 01 */	ori r0, r0, 1
/* 806B4790  90 1F 0A 04 */	stw r0, 0xa04(r31)
/* 806B4794  80 1F 0B 3C */	lwz r0, 0xb3c(r31)
/* 806B4798  60 00 00 01 */	ori r0, r0, 1
/* 806B479C  90 1F 0B 3C */	stw r0, 0xb3c(r31)
/* 806B47A0  80 1F 0C 74 */	lwz r0, 0xc74(r31)
/* 806B47A4  60 00 00 01 */	ori r0, r0, 1
/* 806B47A8  90 1F 0C 74 */	stw r0, 0xc74(r31)
/* 806B47AC  80 1F 0D AC */	lwz r0, 0xdac(r31)
/* 806B47B0  60 00 00 01 */	ori r0, r0, 1
/* 806B47B4  90 1F 0D AC */	stw r0, 0xdac(r31)
lbl_806B47B8:
/* 806B47B8  80 1F 0E E4 */	lwz r0, 0xee4(r31)
/* 806B47BC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B47C0  90 1F 0E E4 */	stw r0, 0xee4(r31)
/* 806B47C4  80 1F 0E D0 */	lwz r0, 0xed0(r31)
/* 806B47C8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B47CC  90 1F 0E D0 */	stw r0, 0xed0(r31)
/* 806B47D0  80 1F 10 1C */	lwz r0, 0x101c(r31)
/* 806B47D4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B47D8  90 1F 10 1C */	stw r0, 0x101c(r31)
/* 806B47DC  80 1F 10 08 */	lwz r0, 0x1008(r31)
/* 806B47E0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B47E4  90 1F 10 08 */	stw r0, 0x1008(r31)
/* 806B47E8  38 00 00 00 */	li r0, 0
/* 806B47EC  98 1F 07 70 */	stb r0, 0x770(r31)
/* 806B47F0  98 1F 07 76 */	stb r0, 0x776(r31)
/* 806B47F4  98 1F 07 77 */	stb r0, 0x777(r31)
/* 806B47F8  B0 1F 07 3E */	sth r0, 0x73e(r31)
/* 806B47FC  B0 1F 07 40 */	sth r0, 0x740(r31)
/* 806B4800  7F E3 FB 78 */	mr r3, r31
/* 806B4804  4B FF A6 F9 */	bl checkWaterSurface__8daE_DT_cFv
/* 806B4808  7F E3 FB 78 */	mr r3, r31
/* 806B480C  4B FF 9F 4D */	bl damage_check__8daE_DT_cFv
/* 806B4810  38 7F 07 48 */	addi r3, r31, 0x748
/* 806B4814  3C 80 80 6B */	lis r4, lit_4071@ha
/* 806B4818  C0 24 5D 34 */	lfs f1, lit_4071@l(r4)
/* 806B481C  3C 80 80 6B */	lis r4, lit_6732@ha
/* 806B4820  C0 44 5E A8 */	lfs f2, lit_6732@l(r4)
/* 806B4824  4B BB BF 1C */	b cLib_chaseF__FPfff
/* 806B4828  A8 7F 07 4C */	lha r3, 0x74c(r31)
/* 806B482C  38 03 20 00 */	addi r0, r3, 0x2000
/* 806B4830  B0 1F 07 4C */	sth r0, 0x74c(r31)
/* 806B4834  38 7F 07 4E */	addi r3, r31, 0x74e
/* 806B4838  38 80 00 00 */	li r4, 0
/* 806B483C  38 A0 00 40 */	li r5, 0x40
/* 806B4840  4B BB C3 50 */	b cLib_chaseAngleS__FPsss
/* 806B4844  A8 7F 07 50 */	lha r3, 0x750(r31)
/* 806B4848  38 03 20 00 */	addi r0, r3, 0x2000
/* 806B484C  B0 1F 07 50 */	sth r0, 0x750(r31)
/* 806B4850  38 7F 07 52 */	addi r3, r31, 0x752
/* 806B4854  38 80 00 00 */	li r4, 0
/* 806B4858  38 A0 00 40 */	li r5, 0x40
/* 806B485C  4B BB C3 34 */	b cLib_chaseAngleS__FPsss
/* 806B4860  A8 7F 07 54 */	lha r3, 0x754(r31)
/* 806B4864  38 03 20 00 */	addi r0, r3, 0x2000
/* 806B4868  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 806B486C  3B C0 00 01 */	li r30, 1
/* 806B4870  80 1F 07 08 */	lwz r0, 0x708(r31)
/* 806B4874  28 00 00 0A */	cmplwi r0, 0xa
/* 806B4878  41 81 00 B8 */	bgt lbl_806B4930
/* 806B487C  3C 60 80 6B */	lis r3, lit_6804@ha
/* 806B4880  38 63 61 84 */	addi r3, r3, lit_6804@l
/* 806B4884  54 00 10 3A */	slwi r0, r0, 2
/* 806B4888  7C 03 00 2E */	lwzx r0, r3, r0
/* 806B488C  7C 09 03 A6 */	mtctr r0
/* 806B4890  4E 80 04 20 */	bctr 
lbl_806B4894:
/* 806B4894  7F E3 FB 78 */	mr r3, r31
/* 806B4898  4B FF B9 69 */	bl executeWait__8daE_DT_cFv
/* 806B489C  48 00 00 94 */	b lbl_806B4930
lbl_806B48A0:
/* 806B48A0  7F E3 FB 78 */	mr r3, r31
/* 806B48A4  4B FF BA C5 */	bl executeCry__8daE_DT_cFv
/* 806B48A8  48 00 00 88 */	b lbl_806B4930
lbl_806B48AC:
/* 806B48AC  7F E3 FB 78 */	mr r3, r31
/* 806B48B0  4B FF BD 8D */	bl executeShake__8daE_DT_cFv
/* 806B48B4  48 00 00 7C */	b lbl_806B4930
lbl_806B48B8:
/* 806B48B8  7F E3 FB 78 */	mr r3, r31
/* 806B48BC  4B FF BF 09 */	bl executeWalk__8daE_DT_cFv
/* 806B48C0  48 00 00 70 */	b lbl_806B4930
lbl_806B48C4:
/* 806B48C4  7F E3 FB 78 */	mr r3, r31
/* 806B48C8  4B FF C5 D5 */	bl executeJump__8daE_DT_cFv
/* 806B48CC  48 00 00 64 */	b lbl_806B4930
lbl_806B48D0:
/* 806B48D0  80 1F 0B AC */	lwz r0, 0xbac(r31)
/* 806B48D4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B48D8  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 806B48DC  7F E3 FB 78 */	mr r3, r31
/* 806B48E0  4B FF CE 9D */	bl executeDown__8daE_DT_cFv
/* 806B48E4  48 00 00 4C */	b lbl_806B4930
lbl_806B48E8:
/* 806B48E8  7F E3 FB 78 */	mr r3, r31
/* 806B48EC  4B FF D2 75 */	bl executeSearch__8daE_DT_cFv
/* 806B48F0  48 00 00 40 */	b lbl_806B4930
lbl_806B48F4:
/* 806B48F4  80 1F 0B AC */	lwz r0, 0xbac(r31)
/* 806B48F8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B48FC  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 806B4900  7F E3 FB 78 */	mr r3, r31
/* 806B4904  4B FF D2 E9 */	bl executeDamage__8daE_DT_cFv
/* 806B4908  48 00 00 28 */	b lbl_806B4930
lbl_806B490C:
/* 806B490C  7F E3 FB 78 */	mr r3, r31
/* 806B4910  4B FF D4 39 */	bl executeBombDamage__8daE_DT_cFv
/* 806B4914  48 00 00 1C */	b lbl_806B4930
lbl_806B4918:
/* 806B4918  7F E3 FB 78 */	mr r3, r31
/* 806B491C  4B FF D6 5D */	bl executeDeath__8daE_DT_cFv
/* 806B4920  48 00 00 10 */	b lbl_806B4930
lbl_806B4924:
/* 806B4924  7F E3 FB 78 */	mr r3, r31
/* 806B4928  4B FF E0 AD */	bl executeOpening__8daE_DT_cFv
/* 806B492C  3B C0 00 00 */	li r30, 0
lbl_806B4930:
/* 806B4930  2C 1E 00 00 */	cmpwi r30, 0
/* 806B4934  41 82 00 1C */	beq lbl_806B4950
/* 806B4938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B493C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B4940  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806B4944  80 03 05 88 */	lwz r0, 0x588(r3)
/* 806B4948  64 00 02 00 */	oris r0, r0, 0x200
/* 806B494C  90 03 05 88 */	stw r0, 0x588(r3)
lbl_806B4950:
/* 806B4950  7F E3 FB 78 */	mr r3, r31
/* 806B4954  4B FF F1 B5 */	bl calcCamera__8daE_DT_cFv
/* 806B4958  7F E3 FB 78 */	mr r3, r31
/* 806B495C  4B FF AC 71 */	bl setStepEffect__8daE_DT_cFv
/* 806B4960  7F E3 FB 78 */	mr r3, r31
/* 806B4964  38 80 00 00 */	li r4, 0
/* 806B4968  4B 96 5D 64 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806B496C  88 1F 07 81 */	lbz r0, 0x781(r31)
/* 806B4970  28 00 00 00 */	cmplwi r0, 0
/* 806B4974  40 82 00 18 */	bne lbl_806B498C
/* 806B4978  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 806B497C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806B4980  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806B4984  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806B4988  4B 9C 21 24 */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_806B498C:
/* 806B498C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806B4990  7C 03 07 74 */	extsb r3, r0
/* 806B4994  4B 97 86 D8 */	b dComIfGp_getReverb__Fi
/* 806B4998  7C 65 1B 78 */	mr r5, r3
/* 806B499C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B49A0  38 80 00 00 */	li r4, 0
/* 806B49A4  4B 95 C7 0C */	b play__16mDoExt_McaMorfSOFUlSc
/* 806B49A8  7F E3 FB 78 */	mr r3, r31
/* 806B49AC  4B FF F7 2D */	bl calcBoxAndTuba__8daE_DT_cFv
/* 806B49B0  7F E3 FB 78 */	mr r3, r31
/* 806B49B4  4B FF A3 E1 */	bl checkTongueBg__8daE_DT_cFv
/* 806B49B8  38 7F 07 42 */	addi r3, r31, 0x742
/* 806B49BC  A8 9F 07 3E */	lha r4, 0x73e(r31)
/* 806B49C0  38 A0 01 00 */	li r5, 0x100
/* 806B49C4  4B BB C1 CC */	b cLib_chaseAngleS__FPsss
/* 806B49C8  38 7F 07 44 */	addi r3, r31, 0x744
/* 806B49CC  A8 9F 07 40 */	lha r4, 0x740(r31)
/* 806B49D0  38 A0 01 00 */	li r5, 0x100
/* 806B49D4  4B BB C1 BC */	b cLib_chaseAngleS__FPsss
/* 806B49D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B49DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 806B49E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B49E4  7C 08 03 A6 */	mtlr r0
/* 806B49E8  38 21 00 10 */	addi r1, r1, 0x10
/* 806B49EC  4E 80 00 20 */	blr 
