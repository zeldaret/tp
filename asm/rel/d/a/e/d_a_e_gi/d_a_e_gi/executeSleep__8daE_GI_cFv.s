lbl_806CE3C4:
/* 806CE3C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806CE3C8  7C 08 02 A6 */	mflr r0
/* 806CE3CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806CE3D0  39 61 00 20 */	addi r11, r1, 0x20
/* 806CE3D4  4B C9 3E 08 */	b _savegpr_29
/* 806CE3D8  7C 7E 1B 78 */	mr r30, r3
/* 806CE3DC  3C 80 80 6D */	lis r4, lit_3907@ha
/* 806CE3E0  3B E4 0E 60 */	addi r31, r4, lit_3907@l
/* 806CE3E4  80 03 06 74 */	lwz r0, 0x674(r3)
/* 806CE3E8  2C 00 00 02 */	cmpwi r0, 2
/* 806CE3EC  41 82 01 14 */	beq lbl_806CE500
/* 806CE3F0  40 80 00 14 */	bge lbl_806CE404
/* 806CE3F4  2C 00 00 00 */	cmpwi r0, 0
/* 806CE3F8  41 82 00 18 */	beq lbl_806CE410
/* 806CE3FC  40 80 00 68 */	bge lbl_806CE464
/* 806CE400  48 00 02 94 */	b lbl_806CE694
lbl_806CE404:
/* 806CE404  2C 00 00 04 */	cmpwi r0, 4
/* 806CE408  40 80 02 8C */	bge lbl_806CE694
/* 806CE40C  48 00 01 8C */	b lbl_806CE598
lbl_806CE410:
/* 806CE410  38 00 00 00 */	li r0, 0
/* 806CE414  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 806CE418  38 80 00 09 */	li r4, 9
/* 806CE41C  38 A0 00 00 */	li r5, 0
/* 806CE420  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806CE424  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CE428  4B FF F4 41 */	bl setBck__8daE_GI_cFiUcff
/* 806CE42C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806CE430  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CE434  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806CE438  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CE43C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CE440  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806CE444  38 00 00 01 */	li r0, 1
/* 806CE448  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806CE44C  80 1E 09 18 */	lwz r0, 0x918(r30)
/* 806CE450  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806CE454  90 1E 09 18 */	stw r0, 0x918(r30)
/* 806CE458  80 1E 0A 50 */	lwz r0, 0xa50(r30)
/* 806CE45C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806CE460  90 1E 0A 50 */	stw r0, 0xa50(r30)
lbl_806CE464:
/* 806CE464  38 00 00 00 */	li r0, 0
/* 806CE468  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806CE46C  88 9E 06 9E */	lbz r4, 0x69e(r30)
/* 806CE470  28 04 00 FF */	cmplwi r4, 0xff
/* 806CE474  41 82 00 38 */	beq lbl_806CE4AC
/* 806CE478  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CE47C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CE480  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806CE484  7C 05 07 74 */	extsb r5, r0
/* 806CE488  4B 96 6E D8 */	b isSwitch__10dSv_info_cCFii
/* 806CE48C  2C 03 00 00 */	cmpwi r3, 0
/* 806CE490  41 82 02 04 */	beq lbl_806CE694
/* 806CE494  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806CE498  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CE49C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806CE4A0  38 00 00 02 */	li r0, 2
/* 806CE4A4  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806CE4A8  48 00 01 EC */	b lbl_806CE694
lbl_806CE4AC:
/* 806CE4AC  7F C3 F3 78 */	mr r3, r30
/* 806CE4B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806CE4B4  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 806CE4B8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806CE4BC  4B 94 C3 24 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CE4C0  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CE4C4  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CE4C8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806CE4CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CE4D0  40 80 01 C4 */	bge lbl_806CE694
/* 806CE4D4  7F C3 F3 78 */	mr r3, r30
/* 806CE4D8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806CE4DC  4B 94 E9 20 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CE4E0  2C 03 00 00 */	cmpwi r3, 0
/* 806CE4E4  40 82 01 B0 */	bne lbl_806CE694
/* 806CE4E8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806CE4EC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CE4F0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806CE4F4  38 00 00 02 */	li r0, 2
/* 806CE4F8  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806CE4FC  48 00 01 98 */	b lbl_806CE694
lbl_806CE500:
/* 806CE500  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CE504  38 80 00 01 */	li r4, 1
/* 806CE508  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806CE50C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806CE510  40 82 00 18 */	bne lbl_806CE528
/* 806CE514  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CE518  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806CE51C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806CE520  41 82 00 08 */	beq lbl_806CE528
/* 806CE524  38 80 00 00 */	li r4, 0
lbl_806CE528:
/* 806CE528  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806CE52C  41 82 01 68 */	beq lbl_806CE694
/* 806CE530  7F C3 F3 78 */	mr r3, r30
/* 806CE534  38 80 00 04 */	li r4, 4
/* 806CE538  38 A0 00 00 */	li r5, 0
/* 806CE53C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806CE540  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CE544  4B FF F3 25 */	bl setBck__8daE_GI_cFiUcff
/* 806CE548  38 00 00 03 */	li r0, 3
/* 806CE54C  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806CE550  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 806CE554  4B B9 94 38 */	b cM_rndFX__Ff
/* 806CE558  D0 3E 06 68 */	stfs f1, 0x668(r30)
/* 806CE55C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806CE560  4B B9 94 2C */	b cM_rndFX__Ff
/* 806CE564  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806CE568  EC 00 08 2A */	fadds f0, f0, f1
/* 806CE56C  FC 00 00 1E */	fctiwz f0, f0
/* 806CE570  D8 01 00 08 */	stfd f0, 8(r1)
/* 806CE574  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806CE578  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 806CE57C  80 1E 09 18 */	lwz r0, 0x918(r30)
/* 806CE580  60 00 00 01 */	ori r0, r0, 1
/* 806CE584  90 1E 09 18 */	stw r0, 0x918(r30)
/* 806CE588  80 1E 0A 50 */	lwz r0, 0xa50(r30)
/* 806CE58C  60 00 00 01 */	ori r0, r0, 1
/* 806CE590  90 1E 0A 50 */	stw r0, 0xa50(r30)
/* 806CE594  48 00 01 00 */	b lbl_806CE694
lbl_806CE598:
/* 806CE598  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CE59C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806CE5A0  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 806CE5A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CE5A8  4C 41 13 82 */	cror 2, 1, 2
/* 806CE5AC  40 82 00 6C */	bne lbl_806CE618
/* 806CE5B0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 806CE5B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CE5B8  4C 41 13 82 */	cror 2, 1, 2
/* 806CE5BC  40 82 00 18 */	bne lbl_806CE5D4
/* 806CE5C0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806CE5C4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CE5C8  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806CE5CC  4B BA 21 74 */	b cLib_chaseF__FPfff
/* 806CE5D0  48 00 00 14 */	b lbl_806CE5E4
lbl_806CE5D4:
/* 806CE5D4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806CE5D8  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 806CE5DC  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806CE5E0  4B BA 21 60 */	b cLib_chaseF__FPfff
lbl_806CE5E4:
/* 806CE5E4  7F C3 F3 78 */	mr r3, r30
/* 806CE5E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806CE5EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806CE5F0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806CE5F4  4B 94 C1 1C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CE5F8  7C 64 1B 78 */	mr r4, r3
/* 806CE5FC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806CE600  38 A0 00 10 */	li r5, 0x10
/* 806CE604  A8 DE 06 6C */	lha r6, 0x66c(r30)
/* 806CE608  38 E0 00 40 */	li r7, 0x40
/* 806CE60C  4B BA 1F 34 */	b cLib_addCalcAngleS__FPsssss
/* 806CE610  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806CE614  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_806CE618:
/* 806CE618  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CE61C  38 80 00 01 */	li r4, 1
/* 806CE620  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806CE624  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806CE628  40 82 00 18 */	bne lbl_806CE640
/* 806CE62C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CE630  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806CE634  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806CE638  41 82 00 08 */	beq lbl_806CE640
/* 806CE63C  38 80 00 00 */	li r4, 0
lbl_806CE640:
/* 806CE640  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806CE644  41 82 00 50 */	beq lbl_806CE694
/* 806CE648  7F C3 F3 78 */	mr r3, r30
/* 806CE64C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806CE650  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806CE654  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806CE658  4B 94 C1 88 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CE65C  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CE660  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CE664  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806CE668  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CE66C  40 81 00 18 */	ble lbl_806CE684
/* 806CE670  7F C3 F3 78 */	mr r3, r30
/* 806CE674  38 80 00 01 */	li r4, 1
/* 806CE678  38 A0 00 00 */	li r5, 0
/* 806CE67C  4B FF F2 91 */	bl setActionMode__8daE_GI_cFii
/* 806CE680  48 00 00 14 */	b lbl_806CE694
lbl_806CE684:
/* 806CE684  7F C3 F3 78 */	mr r3, r30
/* 806CE688  38 80 00 02 */	li r4, 2
/* 806CE68C  38 A0 00 0A */	li r5, 0xa
/* 806CE690  4B FF F2 7D */	bl setActionMode__8daE_GI_cFii
lbl_806CE694:
/* 806CE694  39 61 00 20 */	addi r11, r1, 0x20
/* 806CE698  4B C9 3B 90 */	b _restgpr_29
/* 806CE69C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806CE6A0  7C 08 03 A6 */	mtlr r0
/* 806CE6A4  38 21 00 20 */	addi r1, r1, 0x20
/* 806CE6A8  4E 80 00 20 */	blr 
