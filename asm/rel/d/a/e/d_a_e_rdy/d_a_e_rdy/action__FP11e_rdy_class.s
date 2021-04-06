lbl_8077424C:
/* 8077424C  94 21 FD 70 */	stwu r1, -0x290(r1)
/* 80774250  7C 08 02 A6 */	mflr r0
/* 80774254  90 01 02 94 */	stw r0, 0x294(r1)
/* 80774258  39 61 02 90 */	addi r11, r1, 0x290
/* 8077425C  4B BE DF 6D */	bl _savegpr_24
/* 80774260  7C 7F 1B 78 */	mr r31, r3
/* 80774264  3C 80 80 78 */	lis r4, lit_4018@ha /* 0x80779DFC@ha */
/* 80774268  3B C4 9D FC */	addi r30, r4, lit_4018@l /* 0x80779DFC@l */
/* 8077426C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80774270  3B 24 61 C0 */	addi r25, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80774274  83 99 5D AC */	lwz r28, 0x5dac(r25)
/* 80774278  38 00 00 00 */	li r0, 0
/* 8077427C  98 03 0A 98 */	stb r0, 0xa98(r3)
/* 80774280  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 80774284  4B 8A 65 5D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80774288  D0 3F 0A 48 */	stfs f1, 0xa48(r31)
/* 8077428C  80 79 5D AC */	lwz r3, 0x5dac(r25)
/* 80774290  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80774294  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80774298  7D 89 03 A6 */	mtctr r12
/* 8077429C  4E 80 04 21 */	bctrl 
/* 807742A0  28 03 00 00 */	cmplwi r3, 0
/* 807742A4  41 82 00 14 */	beq lbl_807742B8
/* 807742A8  C0 3F 0A 48 */	lfs f1, 0xa48(r31)
/* 807742AC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807742B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807742B4  D0 1F 0A 48 */	stfs f0, 0xa48(r31)
lbl_807742B8:
/* 807742B8  7F E3 FB 78 */	mr r3, r31
/* 807742BC  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 807742C0  4B 8A 64 51 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807742C4  B0 7F 0A 4C */	sth r3, 0xa4c(r31)
/* 807742C8  88 1F 0A 8C */	lbz r0, 0xa8c(r31)
/* 807742CC  7C 00 07 75 */	extsb. r0, r0
/* 807742D0  40 82 00 10 */	bne lbl_807742E0
/* 807742D4  38 00 00 04 */	li r0, 4
/* 807742D8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 807742DC  48 00 00 18 */	b lbl_807742F4
lbl_807742E0:
/* 807742E0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 807742E4  54 00 00 3E */	slwi r0, r0, 0
/* 807742E8  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 807742EC  38 00 00 00 */	li r0, 0
/* 807742F0  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_807742F4:
/* 807742F4  7F E3 FB 78 */	mr r3, r31
/* 807742F8  4B FF FB 65 */	bl damage_check__FP11e_rdy_class
/* 807742FC  3B A0 00 00 */	li r29, 0
/* 80774300  3B 60 00 01 */	li r27, 1
/* 80774304  3B 00 00 00 */	li r24, 0
/* 80774308  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 8077430C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80774310  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 80774314  A8 1F 0A 42 */	lha r0, 0xa42(r31)
/* 80774318  28 00 00 33 */	cmplwi r0, 0x33
/* 8077431C  41 81 01 48 */	bgt lbl_80774464
/* 80774320  3C 60 80 78 */	lis r3, lit_7918@ha /* 0x8077A364@ha */
/* 80774324  38 63 A3 64 */	addi r3, r3, lit_7918@l /* 0x8077A364@l */
/* 80774328  54 00 10 3A */	slwi r0, r0, 2
/* 8077432C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80774330  7C 09 03 A6 */	mtctr r0
/* 80774334  4E 80 04 20 */	bctr 
lbl_80774338:
/* 80774338  7F E3 FB 78 */	mr r3, r31
/* 8077433C  4B FF 92 B5 */	bl e_rdy_normal__FP11e_rdy_class
/* 80774340  3B 00 00 01 */	li r24, 1
/* 80774344  48 00 01 20 */	b lbl_80774464
lbl_80774348:
/* 80774348  7F E3 FB 78 */	mr r3, r31
/* 8077434C  4B FF 96 F1 */	bl e_rdy_fight_run__FP11e_rdy_class
/* 80774350  3B A0 00 01 */	li r29, 1
/* 80774354  48 00 01 10 */	b lbl_80774464
lbl_80774358:
/* 80774358  7F E3 FB 78 */	mr r3, r31
/* 8077435C  4B FF 9D 11 */	bl e_rdy_fight__FP11e_rdy_class
/* 80774360  3B A0 00 01 */	li r29, 1
/* 80774364  48 00 01 00 */	b lbl_80774464
lbl_80774368:
/* 80774368  7F E3 FB 78 */	mr r3, r31
/* 8077436C  4B FF A0 AD */	bl e_rdy_bow_run__FP11e_rdy_class
/* 80774370  3B A0 00 01 */	li r29, 1
/* 80774374  48 00 00 F0 */	b lbl_80774464
lbl_80774378:
/* 80774378  7F E3 FB 78 */	mr r3, r31
/* 8077437C  4B FF A4 A1 */	bl e_rdy_bow__FP11e_rdy_class
/* 80774380  3B A0 00 01 */	li r29, 1
/* 80774384  48 00 00 E0 */	b lbl_80774464
lbl_80774388:
/* 80774388  7F E3 FB 78 */	mr r3, r31
/* 8077438C  4B FF A8 2D */	bl e_rdy_bow2__FP11e_rdy_class
/* 80774390  7C 78 1B 78 */	mr r24, r3
/* 80774394  3B A0 00 01 */	li r29, 1
/* 80774398  48 00 00 CC */	b lbl_80774464
lbl_8077439C:
/* 8077439C  7F E3 FB 78 */	mr r3, r31
/* 807743A0  4B FF AD 41 */	bl e_rdy_bow_ikki2__FP11e_rdy_class
/* 807743A4  3B 60 00 00 */	li r27, 0
/* 807743A8  48 00 00 BC */	b lbl_80774464
lbl_807743AC:
/* 807743AC  7F E3 FB 78 */	mr r3, r31
/* 807743B0  4B FF B0 89 */	bl e_rdy_avoid__FP11e_rdy_class
/* 807743B4  48 00 00 B0 */	b lbl_80774464
lbl_807743B8:
/* 807743B8  7F E3 FB 78 */	mr r3, r31
/* 807743BC  4B FF C4 E1 */	bl e_rdy_bomb_action__FP11e_rdy_class
/* 807743C0  48 00 00 A4 */	b lbl_80774464
lbl_807743C4:
/* 807743C4  7F E3 FB 78 */	mr r3, r31
/* 807743C8  4B FF C9 31 */	bl e_rdy_s_damage__FP11e_rdy_class
/* 807743CC  48 00 00 98 */	b lbl_80774464
lbl_807743D0:
/* 807743D0  7F E3 FB 78 */	mr r3, r31
/* 807743D4  4B FF CE D5 */	bl e_rdy_damage__FP11e_rdy_class
/* 807743D8  48 00 00 8C */	b lbl_80774464
lbl_807743DC:
/* 807743DC  7F E3 FB 78 */	mr r3, r31
/* 807743E0  4B FF DD 49 */	bl e_rdy_drop__FP11e_rdy_class
/* 807743E4  48 00 00 80 */	b lbl_80774464
lbl_807743E8:
/* 807743E8  7F E3 FB 78 */	mr r3, r31
/* 807743EC  4B FF E0 B5 */	bl e_rdy_a_damage__FP11e_rdy_class
/* 807743F0  48 00 00 74 */	b lbl_80774464
lbl_807743F4:
/* 807743F4  7F E3 FB 78 */	mr r3, r31
/* 807743F8  4B FF E1 89 */	bl e_rdy_stand__FP11e_rdy_class
/* 807743FC  3B 00 00 01 */	li r24, 1
/* 80774400  48 00 00 64 */	b lbl_80774464
lbl_80774404:
/* 80774404  7F E3 FB 78 */	mr r3, r31
/* 80774408  4B FF E7 FD */	bl e_rdy_commander__FP11e_rdy_class
/* 8077440C  3B A0 00 01 */	li r29, 1
/* 80774410  48 00 00 54 */	b lbl_80774464
lbl_80774414:
/* 80774414  7F E3 FB 78 */	mr r3, r31
/* 80774418  4B FF E2 D9 */	bl e_rdy_bow3__FP11e_rdy_class
/* 8077441C  7C 78 1B 78 */	mr r24, r3
/* 80774420  3B A0 00 01 */	li r29, 1
/* 80774424  48 00 00 40 */	b lbl_80774464
lbl_80774428:
/* 80774428  7F E3 FB 78 */	mr r3, r31
/* 8077442C  4B FF EC 45 */	bl e_rdy_excite__FP11e_rdy_class
/* 80774430  48 00 00 34 */	b lbl_80774464
lbl_80774434:
/* 80774434  7F E3 FB 78 */	mr r3, r31
/* 80774438  4B FF F0 3D */	bl e_rdy_water__FP11e_rdy_class
/* 8077443C  3B 60 00 00 */	li r27, 0
/* 80774440  48 00 00 24 */	b lbl_80774464
lbl_80774444:
/* 80774444  7F E3 FB 78 */	mr r3, r31
/* 80774448  4B FF B2 D5 */	bl e_rdy_tkusa__FP11e_rdy_class
/* 8077444C  48 00 00 18 */	b lbl_80774464
lbl_80774450:
/* 80774450  7F E3 FB 78 */	mr r3, r31
/* 80774454  4B FF BD A1 */	bl e_rdy_yc_ride__FP11e_rdy_class
/* 80774458  48 00 00 0C */	b lbl_80774464
lbl_8077445C:
/* 8077445C  7F E3 FB 78 */	mr r3, r31
/* 80774460  4B FF F1 49 */	bl e_rdy_jyunkai__FP11e_rdy_class
lbl_80774464:
/* 80774464  7F 00 07 75 */	extsb. r0, r24
/* 80774468  41 82 01 AC */	beq lbl_80774614
/* 8077446C  4B A3 40 09 */	bl dKy_Sound_get__Fv
/* 80774470  7C 7A 1B 78 */	mr r26, r3
/* 80774474  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80774478  3C 03 00 01 */	addis r0, r3, 1
/* 8077447C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80774480  41 82 01 94 */	beq lbl_80774614
/* 80774484  28 1F 00 00 */	cmplwi r31, 0
/* 80774488  41 82 00 0C */	beq lbl_80774494
/* 8077448C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80774490  48 00 00 08 */	b lbl_80774498
lbl_80774494:
/* 80774494  38 00 FF FF */	li r0, -1
lbl_80774498:
/* 80774498  7C 03 00 40 */	cmplw r3, r0
/* 8077449C  41 82 01 78 */	beq lbl_80774614
/* 807744A0  38 61 00 64 */	addi r3, r1, 0x64
/* 807744A4  7F 44 D3 78 */	mr r4, r26
/* 807744A8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807744AC  4B AF 26 89 */	bl __mi__4cXyzCFRC3Vec
/* 807744B0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 807744B4  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807744B8  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 807744BC  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807744C0  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 807744C4  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 807744C8  38 61 00 DC */	addi r3, r1, 0xdc
/* 807744CC  4B BD 2C 6D */	bl PSVECSquareMag
/* 807744D0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807744D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807744D8  40 81 00 58 */	ble lbl_80774530
/* 807744DC  FC 00 08 34 */	frsqrte f0, f1
/* 807744E0  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807744E4  FC 44 00 32 */	fmul f2, f4, f0
/* 807744E8  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807744EC  FC 00 00 32 */	fmul f0, f0, f0
/* 807744F0  FC 01 00 32 */	fmul f0, f1, f0
/* 807744F4  FC 03 00 28 */	fsub f0, f3, f0
/* 807744F8  FC 02 00 32 */	fmul f0, f2, f0
/* 807744FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80774500  FC 00 00 32 */	fmul f0, f0, f0
/* 80774504  FC 01 00 32 */	fmul f0, f1, f0
/* 80774508  FC 03 00 28 */	fsub f0, f3, f0
/* 8077450C  FC 02 00 32 */	fmul f0, f2, f0
/* 80774510  FC 44 00 32 */	fmul f2, f4, f0
/* 80774514  FC 00 00 32 */	fmul f0, f0, f0
/* 80774518  FC 01 00 32 */	fmul f0, f1, f0
/* 8077451C  FC 03 00 28 */	fsub f0, f3, f0
/* 80774520  FC 02 00 32 */	fmul f0, f2, f0
/* 80774524  FC 21 00 32 */	fmul f1, f1, f0
/* 80774528  FC 20 08 18 */	frsp f1, f1
/* 8077452C  48 00 00 88 */	b lbl_807745B4
lbl_80774530:
/* 80774530  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80774534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80774538  40 80 00 10 */	bge lbl_80774548
/* 8077453C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80774540  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80774544  48 00 00 70 */	b lbl_807745B4
lbl_80774548:
/* 80774548  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8077454C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80774550  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80774554  3C 00 7F 80 */	lis r0, 0x7f80
/* 80774558  7C 03 00 00 */	cmpw r3, r0
/* 8077455C  41 82 00 14 */	beq lbl_80774570
/* 80774560  40 80 00 40 */	bge lbl_807745A0
/* 80774564  2C 03 00 00 */	cmpwi r3, 0
/* 80774568  41 82 00 20 */	beq lbl_80774588
/* 8077456C  48 00 00 34 */	b lbl_807745A0
lbl_80774570:
/* 80774570  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80774574  41 82 00 0C */	beq lbl_80774580
/* 80774578  38 00 00 01 */	li r0, 1
/* 8077457C  48 00 00 28 */	b lbl_807745A4
lbl_80774580:
/* 80774580  38 00 00 02 */	li r0, 2
/* 80774584  48 00 00 20 */	b lbl_807745A4
lbl_80774588:
/* 80774588  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8077458C  41 82 00 0C */	beq lbl_80774598
/* 80774590  38 00 00 05 */	li r0, 5
/* 80774594  48 00 00 10 */	b lbl_807745A4
lbl_80774598:
/* 80774598  38 00 00 03 */	li r0, 3
/* 8077459C  48 00 00 08 */	b lbl_807745A4
lbl_807745A0:
/* 807745A0  38 00 00 04 */	li r0, 4
lbl_807745A4:
/* 807745A4  2C 00 00 01 */	cmpwi r0, 1
/* 807745A8  40 82 00 0C */	bne lbl_807745B4
/* 807745AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807745B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807745B4:
/* 807745B4  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 807745B8  1C 00 00 78 */	mulli r0, r0, 0x78
/* 807745BC  C8 5E 00 68 */	lfd f2, 0x68(r30)
/* 807745C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807745C4  90 01 02 5C */	stw r0, 0x25c(r1)
/* 807745C8  3C 00 43 30 */	lis r0, 0x4330
/* 807745CC  90 01 02 58 */	stw r0, 0x258(r1)
/* 807745D0  C8 01 02 58 */	lfd f0, 0x258(r1)
/* 807745D4  EC 00 10 28 */	fsubs f0, f0, f2
/* 807745D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807745DC  40 80 00 38 */	bge lbl_80774614
/* 807745E0  A8 1F 0A 42 */	lha r0, 0xa42(r31)
/* 807745E4  B0 1F 0A 44 */	sth r0, 0xa44(r31)
/* 807745E8  38 00 00 1B */	li r0, 0x1b
/* 807745EC  B0 1F 0A 42 */	sth r0, 0xa42(r31)
/* 807745F0  38 00 00 00 */	li r0, 0
/* 807745F4  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807745F8  C0 1A 00 00 */	lfs f0, 0(r26)
/* 807745FC  3C 60 80 78 */	lis r3, S_find_pos@ha /* 0x8077A8E4@ha */
/* 80774600  D4 03 A8 E4 */	stfsu f0, S_find_pos@l(r3)  /* 0x8077A8E4@l */
/* 80774604  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80774608  D0 03 00 04 */	stfs f0, 4(r3)
/* 8077460C  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80774610  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80774614:
/* 80774614  7F 60 07 75 */	extsb. r0, r27
/* 80774618  41 82 00 88 */	beq lbl_807746A0
/* 8077461C  38 61 02 00 */	addi r3, r1, 0x200
/* 80774620  4B 90 31 91 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80774624  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80774628  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 8077462C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80774630  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 80774634  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80774638  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 8077463C  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80774640  EC 01 00 2A */	fadds f0, f1, f0
/* 80774644  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80774648  38 61 02 00 */	addi r3, r1, 0x200
/* 8077464C  38 81 00 DC */	addi r4, r1, 0xdc
/* 80774650  4B AF 36 D9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80774654  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80774658  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077465C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80774660  38 81 02 00 */	addi r4, r1, 0x200
/* 80774664  4B 8F FE 3D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80774668  D0 3F 0A 54 */	stfs f1, 0xa54(r31)
/* 8077466C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80774670  C0 1F 0A 54 */	lfs f0, 0xa54(r31)
/* 80774674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80774678  40 80 00 1C */	bge lbl_80774694
/* 8077467C  38 00 00 1D */	li r0, 0x1d
/* 80774680  B0 1F 0A 42 */	sth r0, 0xa42(r31)
/* 80774684  38 00 00 00 */	li r0, 0
/* 80774688  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 8077468C  C0 1F 0A 54 */	lfs f0, 0xa54(r31)
/* 80774690  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80774694:
/* 80774694  38 61 02 00 */	addi r3, r1, 0x200
/* 80774698  38 80 FF FF */	li r4, -1
/* 8077469C  4B 90 31 AD */	bl __dt__18dBgS_ObjGndChk_SplFv
lbl_807746A0:
/* 807746A0  7F A0 07 75 */	extsb. r0, r29
/* 807746A4  41 82 00 14 */	beq lbl_807746B8
/* 807746A8  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 807746AC  38 80 00 01 */	li r4, 1
/* 807746B0  4B B4 D4 CD */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 807746B4  48 00 00 10 */	b lbl_807746C4
lbl_807746B8:
/* 807746B8  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 807746BC  38 80 00 00 */	li r4, 0
/* 807746C0  4B B4 D4 BD */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_807746C4:
/* 807746C4  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 807746C8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 807746CC  38 A0 00 02 */	li r5, 2
/* 807746D0  38 C0 10 00 */	li r6, 0x1000
/* 807746D4  4B AF BF 35 */	bl cLib_addCalcAngleS2__FPssss
/* 807746D8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 807746DC  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 807746E0  38 A0 00 02 */	li r5, 2
/* 807746E4  38 C0 10 00 */	li r6, 0x1000
/* 807746E8  4B AF BF 21 */	bl cLib_addCalcAngleS2__FPssss
/* 807746EC  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 807746F0  A8 9F 04 E0 */	lha r4, 0x4e0(r31)
/* 807746F4  38 A0 00 02 */	li r5, 2
/* 807746F8  38 C0 10 00 */	li r6, 0x1000
/* 807746FC  4B AF BF 0D */	bl cLib_addCalcAngleS2__FPssss
/* 80774700  88 1F 0A 8C */	lbz r0, 0xa8c(r31)
/* 80774704  7C 00 07 75 */	extsb. r0, r0
/* 80774708  40 82 01 A0 */	bne lbl_807748A8
/* 8077470C  38 00 00 03 */	li r0, 3
/* 80774710  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80774714  C0 3F 0A BC */	lfs f1, 0xabc(r31)
/* 80774718  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077471C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80774720  41 82 00 5C */	beq lbl_8077477C
/* 80774724  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80774728  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8077472C  80 63 00 00 */	lwz r3, 0(r3)
/* 80774730  A8 9F 0A DE */	lha r4, 0xade(r31)
/* 80774734  4B 89 7C A9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80774738  A8 1F 0B C0 */	lha r0, 0xbc0(r31)
/* 8077473C  2C 00 00 00 */	cmpwi r0, 0
/* 80774740  40 82 00 10 */	bne lbl_80774750
/* 80774744  C0 1F 0A BC */	lfs f0, 0xabc(r31)
/* 80774748  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 8077474C  48 00 00 10 */	b lbl_8077475C
lbl_80774750:
/* 80774750  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80774754  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80774758  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_8077475C:
/* 8077475C  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 80774760  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 80774764  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80774768  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8077476C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80774770  FC 00 00 50 */	fneg f0, f0
/* 80774774  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80774778  48 00 00 28 */	b lbl_807747A0
lbl_8077477C:
/* 8077477C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80774780  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80774784  80 63 00 00 */	lwz r3, 0(r3)
/* 80774788  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8077478C  4B 89 7C 51 */	bl mDoMtx_YrotS__FPA4_fs
/* 80774790  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80774794  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80774798  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 8077479C  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_807747A0:
/* 807747A0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807747A4  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807747A8  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807747AC  38 61 00 DC */	addi r3, r1, 0xdc
/* 807747B0  38 81 00 D0 */	addi r4, r1, 0xd0
/* 807747B4  4B AF C7 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807747B8  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 807747BC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 807747C0  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 807747C4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 807747C8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807747CC  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 807747D0  7C 65 1B 78 */	mr r5, r3
/* 807747D4  4B BD 28 BD */	bl PSVECAdd
/* 807747D8  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 807747DC  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 807747E0  EC 01 00 2A */	fadds f0, f1, f0
/* 807747E4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 807747E8  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 807747EC  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 807747F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807747F4  40 80 00 08 */	bge lbl_807747FC
/* 807747F8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_807747FC:
/* 807747FC  88 1F 0A 7D */	lbz r0, 0xa7d(r31)
/* 80774800  7C 00 07 75 */	extsb. r0, r0
/* 80774804  41 82 00 2C */	beq lbl_80774830
/* 80774808  34 7F 0D EC */	addic. r3, r31, 0xdec
/* 8077480C  41 82 00 24 */	beq lbl_80774830
/* 80774810  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80774814  C0 03 00 00 */	lfs f0, 0(r3)
/* 80774818  EC 01 00 2A */	fadds f0, f1, f0
/* 8077481C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80774820  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80774824  C0 03 00 08 */	lfs f0, 8(r3)
/* 80774828  EC 01 00 2A */	fadds f0, f1, f0
/* 8077482C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80774830:
/* 80774830  38 7F 0A 90 */	addi r3, r31, 0xa90
/* 80774834  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80774838  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 8077483C  4B AF B2 45 */	bl cLib_addCalc0__FPfff
/* 80774840  C0 3F 0A C0 */	lfs f1, 0xac0(r31)
/* 80774844  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80774848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077484C  40 81 03 98 */	ble lbl_80774BE4
/* 80774850  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80774854  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80774858  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8077485C  FC 00 08 50 */	fneg f0, f1
/* 80774860  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80774864  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80774868  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8077486C  80 63 00 00 */	lwz r3, 0(r3)
/* 80774870  A8 9F 0A C4 */	lha r4, 0xac4(r31)
/* 80774874  4B 89 7B 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 80774878  38 61 00 DC */	addi r3, r1, 0xdc
/* 8077487C  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80774880  4B AF C6 6D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80774884  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80774888  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8077488C  7C 65 1B 78 */	mr r5, r3
/* 80774890  4B BD 28 01 */	bl PSVECAdd
/* 80774894  38 7F 0A C0 */	addi r3, r31, 0xac0
/* 80774898  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8077489C  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 807748A0  4B AF B1 E1 */	bl cLib_addCalc0__FPfff
/* 807748A4  48 00 03 40 */	b lbl_80774BE4
lbl_807748A8:
/* 807748A8  80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 807748AC  90 01 00 28 */	stw r0, 0x28(r1)
/* 807748B0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807748B4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807748B8  38 81 00 28 */	addi r4, r1, 0x28
/* 807748BC  4B 8A 4F 3D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807748C0  7C 7D 1B 79 */	or. r29, r3, r3
/* 807748C4  40 82 00 14 */	bne lbl_807748D8
/* 807748C8  38 00 00 00 */	li r0, 0
/* 807748CC  B0 1F 0A 42 */	sth r0, 0xa42(r31)
/* 807748D0  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807748D4  48 00 0F 40 */	b lbl_80775814
lbl_807748D8:
/* 807748D8  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807748DC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 807748E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807748E4  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 807748E8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 807748EC  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 807748F0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807748F4  80 63 00 04 */	lwz r3, 4(r3)
/* 807748F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807748FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80774900  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 80774904  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80774908  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8077490C  80 84 00 00 */	lwz r4, 0(r4)
/* 80774910  4B BD 1B A1 */	bl PSMTXCopy
/* 80774914  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80774918  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 8077491C  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80774920  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80774924  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80774928  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 8077492C  38 61 00 DC */	addi r3, r1, 0xdc
/* 80774930  38 9F 0A 80 */	addi r4, r31, 0xa80
/* 80774934  4B AF C5 B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80774938  88 1F 0A 8C */	lbz r0, 0xa8c(r31)
/* 8077493C  2C 00 00 02 */	cmpwi r0, 2
/* 80774940  40 82 00 68 */	bne lbl_807749A8
/* 80774944  C0 1F 0A 80 */	lfs f0, 0xa80(r31)
/* 80774948  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8077494C  C0 1F 0A 84 */	lfs f0, 0xa84(r31)
/* 80774950  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80774954  C0 1F 0A 88 */	lfs f0, 0xa88(r31)
/* 80774958  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8077495C  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80774960  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80774964  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80774968  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8077496C  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 80774970  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80774974  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80774978  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8077497C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80774980  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80774984  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80774988  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8077498C  28 1F 00 00 */	cmplwi r31, 0
/* 80774990  41 82 00 0C */	beq lbl_8077499C
/* 80774994  80 1F 00 04 */	lwz r0, 4(r31)
/* 80774998  48 00 00 08 */	b lbl_807749A0
lbl_8077499C:
/* 8077499C  38 00 FF FF */	li r0, -1
lbl_807749A0:
/* 807749A0  90 1D 06 AC */	stw r0, 0x6ac(r29)
/* 807749A4  48 00 02 04 */	b lbl_80774BA8
lbl_807749A8:
/* 807749A8  38 61 00 58 */	addi r3, r1, 0x58
/* 807749AC  38 9F 0A 80 */	addi r4, r31, 0xa80
/* 807749B0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807749B4  4B AF 21 81 */	bl __mi__4cXyzCFRC3Vec
/* 807749B8  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 807749BC  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 807749C0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807749C4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807749C8  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 807749CC  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 807749D0  4B AF 2C A5 */	bl cM_atan2s__Fff
/* 807749D4  7C 64 1B 78 */	mr r4, r3
/* 807749D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807749DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807749E0  80 63 00 00 */	lwz r3, 0(r3)
/* 807749E4  4B 89 79 F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 807749E8  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 807749EC  EC 20 00 32 */	fmuls f1, f0, f0
/* 807749F0  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 807749F4  EC 00 00 32 */	fmuls f0, f0, f0
/* 807749F8  EC 41 00 2A */	fadds f2, f1, f0
/* 807749FC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80774A00  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80774A04  40 81 00 0C */	ble lbl_80774A10
/* 80774A08  FC 00 10 34 */	frsqrte f0, f2
/* 80774A0C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80774A10:
/* 80774A10  C0 21 00 E0 */	lfs f1, 0xe0(r1)
/* 80774A14  4B AF 2C 61 */	bl cM_atan2s__Fff
/* 80774A18  7C 03 00 D0 */	neg r0, r3
/* 80774A1C  7C 04 07 34 */	extsh r4, r0
/* 80774A20  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80774A24  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80774A28  80 63 00 00 */	lwz r3, 0(r3)
/* 80774A2C  4B 89 79 71 */	bl mDoMtx_XrotM__FPA4_fs
/* 80774A30  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80774A34  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80774A38  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80774A3C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80774A40  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80774A44  38 61 00 DC */	addi r3, r1, 0xdc
/* 80774A48  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80774A4C  4B AF C4 A1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80774A50  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80774A54  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80774A58  7C 65 1B 78 */	mr r5, r3
/* 80774A5C  4B BD 26 35 */	bl PSVECAdd
/* 80774A60  38 61 00 4C */	addi r3, r1, 0x4c
/* 80774A64  38 9F 0A 80 */	addi r4, r31, 0xa80
/* 80774A68  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80774A6C  4B AF 20 C9 */	bl __mi__4cXyzCFRC3Vec
/* 80774A70  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80774A74  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80774A78  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80774A7C  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80774A80  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80774A84  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80774A88  38 61 00 DC */	addi r3, r1, 0xdc
/* 80774A8C  4B BD 26 AD */	bl PSVECSquareMag
/* 80774A90  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80774A94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80774A98  40 81 00 58 */	ble lbl_80774AF0
/* 80774A9C  FC 00 08 34 */	frsqrte f0, f1
/* 80774AA0  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80774AA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80774AA8  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80774AAC  FC 00 00 32 */	fmul f0, f0, f0
/* 80774AB0  FC 01 00 32 */	fmul f0, f1, f0
/* 80774AB4  FC 03 00 28 */	fsub f0, f3, f0
/* 80774AB8  FC 02 00 32 */	fmul f0, f2, f0
/* 80774ABC  FC 44 00 32 */	fmul f2, f4, f0
/* 80774AC0  FC 00 00 32 */	fmul f0, f0, f0
/* 80774AC4  FC 01 00 32 */	fmul f0, f1, f0
/* 80774AC8  FC 03 00 28 */	fsub f0, f3, f0
/* 80774ACC  FC 02 00 32 */	fmul f0, f2, f0
/* 80774AD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80774AD4  FC 00 00 32 */	fmul f0, f0, f0
/* 80774AD8  FC 01 00 32 */	fmul f0, f1, f0
/* 80774ADC  FC 03 00 28 */	fsub f0, f3, f0
/* 80774AE0  FC 02 00 32 */	fmul f0, f2, f0
/* 80774AE4  FC 21 00 32 */	fmul f1, f1, f0
/* 80774AE8  FC 20 08 18 */	frsp f1, f1
/* 80774AEC  48 00 00 88 */	b lbl_80774B74
lbl_80774AF0:
/* 80774AF0  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80774AF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80774AF8  40 80 00 10 */	bge lbl_80774B08
/* 80774AFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80774B00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80774B04  48 00 00 70 */	b lbl_80774B74
lbl_80774B08:
/* 80774B08  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80774B0C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80774B10  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80774B14  3C 00 7F 80 */	lis r0, 0x7f80
/* 80774B18  7C 03 00 00 */	cmpw r3, r0
/* 80774B1C  41 82 00 14 */	beq lbl_80774B30
/* 80774B20  40 80 00 40 */	bge lbl_80774B60
/* 80774B24  2C 03 00 00 */	cmpwi r3, 0
/* 80774B28  41 82 00 20 */	beq lbl_80774B48
/* 80774B2C  48 00 00 34 */	b lbl_80774B60
lbl_80774B30:
/* 80774B30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80774B34  41 82 00 0C */	beq lbl_80774B40
/* 80774B38  38 00 00 01 */	li r0, 1
/* 80774B3C  48 00 00 28 */	b lbl_80774B64
lbl_80774B40:
/* 80774B40  38 00 00 02 */	li r0, 2
/* 80774B44  48 00 00 20 */	b lbl_80774B64
lbl_80774B48:
/* 80774B48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80774B4C  41 82 00 0C */	beq lbl_80774B58
/* 80774B50  38 00 00 05 */	li r0, 5
/* 80774B54  48 00 00 10 */	b lbl_80774B64
lbl_80774B58:
/* 80774B58  38 00 00 03 */	li r0, 3
/* 80774B5C  48 00 00 08 */	b lbl_80774B64
lbl_80774B60:
/* 80774B60  38 00 00 04 */	li r0, 4
lbl_80774B64:
/* 80774B64  2C 00 00 01 */	cmpwi r0, 1
/* 80774B68  40 82 00 0C */	bne lbl_80774B74
/* 80774B6C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80774B70  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80774B74:
/* 80774B74  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80774B78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80774B7C  41 80 00 10 */	blt lbl_80774B8C
/* 80774B80  A8 1F 0A 66 */	lha r0, 0xa66(r31)
/* 80774B84  2C 00 00 00 */	cmpwi r0, 0
/* 80774B88  40 82 00 0C */	bne lbl_80774B94
lbl_80774B8C:
/* 80774B8C  38 00 00 02 */	li r0, 2
/* 80774B90  98 1F 0A 8C */	stb r0, 0xa8c(r31)
lbl_80774B94:
/* 80774B94  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80774B98  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80774B9C  38 A0 00 04 */	li r5, 4
/* 80774BA0  38 C0 08 00 */	li r6, 0x800
/* 80774BA4  4B AF BA 65 */	bl cLib_addCalcAngleS2__FPssss
lbl_80774BA8:
/* 80774BA8  C0 3F 0A 90 */	lfs f1, 0xa90(r31)
/* 80774BAC  C0 1F 0A 94 */	lfs f0, 0xa94(r31)
/* 80774BB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80774BB4  D0 1F 0A 90 */	stfs f0, 0xa90(r31)
/* 80774BB8  C0 3F 0A 94 */	lfs f1, 0xa94(r31)
/* 80774BBC  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 80774BC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80774BC4  D0 1F 0A 94 */	stfs f0, 0xa94(r31)
/* 80774BC8  C0 3F 0A 90 */	lfs f1, 0xa90(r31)
/* 80774BCC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80774BD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80774BD4  4C 40 13 82 */	cror 2, 0, 2
/* 80774BD8  40 82 00 0C */	bne lbl_80774BE4
/* 80774BDC  D0 1F 0A 90 */	stfs f0, 0xa90(r31)
/* 80774BE0  D0 1F 0A 94 */	stfs f0, 0xa94(r31)
lbl_80774BE4:
/* 80774BE4  3B 40 00 00 */	li r26, 0
/* 80774BE8  38 00 00 00 */	li r0, 0
/* 80774BEC  98 1F 0A 74 */	stb r0, 0xa74(r31)
/* 80774BF0  3B 60 10 00 */	li r27, 0x1000
/* 80774BF4  88 7F 0A 98 */	lbz r3, 0xa98(r31)
/* 80774BF8  7C 60 07 74 */	extsb r0, r3
/* 80774BFC  2C 00 FF FF */	cmpwi r0, -1
/* 80774C00  41 82 00 0C */	beq lbl_80774C0C
/* 80774C04  2C 00 FF FE */	cmpwi r0, -2
/* 80774C08  40 82 00 78 */	bne lbl_80774C80
lbl_80774C0C:
/* 80774C0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80774C10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80774C14  80 63 00 00 */	lwz r3, 0(r3)
/* 80774C18  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80774C1C  4B 89 77 C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80774C20  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80774C24  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80774C28  88 1F 0A 98 */	lbz r0, 0xa98(r31)
/* 80774C2C  7C 00 07 74 */	extsb r0, r0
/* 80774C30  2C 00 FF FE */	cmpwi r0, -2
/* 80774C34  40 82 00 10 */	bne lbl_80774C44
/* 80774C38  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 80774C3C  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80774C40  48 00 00 0C */	b lbl_80774C4C
lbl_80774C44:
/* 80774C44  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80774C48  D0 01 00 E0 */	stfs f0, 0xe0(r1)
lbl_80774C4C:
/* 80774C4C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80774C50  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80774C54  38 61 00 DC */	addi r3, r1, 0xdc
/* 80774C58  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80774C5C  4B AF C2 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80774C60  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80774C64  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80774C68  7C 65 1B 78 */	mr r5, r3
/* 80774C6C  4B BD 24 25 */	bl PSVECAdd
/* 80774C70  38 00 00 02 */	li r0, 2
/* 80774C74  98 1F 0A 98 */	stb r0, 0xa98(r31)
/* 80774C78  3B 60 08 00 */	li r27, 0x800
/* 80774C7C  48 00 00 48 */	b lbl_80774CC4
lbl_80774C80:
/* 80774C80  2C 00 00 0B */	cmpwi r0, 0xb
/* 80774C84  41 80 00 28 */	blt lbl_80774CAC
/* 80774C88  38 03 FF F6 */	addi r0, r3, -10
/* 80774C8C  98 1F 0A 98 */	stb r0, 0xa98(r31)
/* 80774C90  C0 1F 0A A4 */	lfs f0, 0xaa4(r31)
/* 80774C94  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80774C98  C0 1F 0A A8 */	lfs f0, 0xaa8(r31)
/* 80774C9C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80774CA0  C0 1F 0A AC */	lfs f0, 0xaac(r31)
/* 80774CA4  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80774CA8  48 00 00 1C */	b lbl_80774CC4
lbl_80774CAC:
/* 80774CAC  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 80774CB0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80774CB4  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80774CB8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80774CBC  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 80774CC0  D0 01 00 CC */	stfs f0, 0xcc(r1)
lbl_80774CC4:
/* 80774CC4  88 1F 0A 8C */	lbz r0, 0xa8c(r31)
/* 80774CC8  2C 00 00 02 */	cmpwi r0, 2
/* 80774CCC  40 82 00 08 */	bne lbl_80774CD4
/* 80774CD0  3B 60 10 00 */	li r27, 0x1000
lbl_80774CD4:
/* 80774CD4  88 1F 0A 98 */	lbz r0, 0xa98(r31)
/* 80774CD8  7C 00 07 75 */	extsb. r0, r0
/* 80774CDC  41 82 01 DC */	beq lbl_80774EB8
/* 80774CE0  38 61 00 40 */	addi r3, r1, 0x40
/* 80774CE4  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80774CE8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80774CEC  4B AF 1E 49 */	bl __mi__4cXyzCFRC3Vec
/* 80774CF0  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80774CF4  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 80774CF8  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 80774CFC  D0 61 00 E0 */	stfs f3, 0xe0(r1)
/* 80774D00  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 80774D04  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 80774D08  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80774D0C  EC 03 00 2A */	fadds f0, f3, f0
/* 80774D10  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80774D14  4B AF 29 61 */	bl cM_atan2s__Fff
/* 80774D18  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80774D1C  7C 00 18 50 */	subf r0, r0, r3
/* 80774D20  7C 18 07 34 */	extsh r24, r0
/* 80774D24  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80774D28  EC 20 00 32 */	fmuls f1, f0, f0
/* 80774D2C  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80774D30  EC 00 00 32 */	fmuls f0, f0, f0
/* 80774D34  EC 41 00 2A */	fadds f2, f1, f0
/* 80774D38  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80774D3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80774D40  40 81 00 0C */	ble lbl_80774D4C
/* 80774D44  FC 00 10 34 */	frsqrte f0, f2
/* 80774D48  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80774D4C:
/* 80774D4C  C0 21 00 E0 */	lfs f1, 0xe0(r1)
/* 80774D50  4B AF 29 25 */	bl cM_atan2s__Fff
/* 80774D54  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80774D58  7C 00 1A 14 */	add r0, r0, r3
/* 80774D5C  7C 1A 07 34 */	extsh r26, r0
/* 80774D60  88 1F 0A 98 */	lbz r0, 0xa98(r31)
/* 80774D64  7C 00 07 74 */	extsb r0, r0
/* 80774D68  2C 00 00 02 */	cmpwi r0, 2
/* 80774D6C  41 81 00 54 */	bgt lbl_80774DC0
/* 80774D70  2C 18 3E 80 */	cmpwi r24, 0x3e80
/* 80774D74  40 81 00 0C */	ble lbl_80774D80
/* 80774D78  3B 00 3E 80 */	li r24, 0x3e80
/* 80774D7C  48 00 00 10 */	b lbl_80774D8C
lbl_80774D80:
/* 80774D80  2C 18 C1 80 */	cmpwi r24, -16000
/* 80774D84  40 80 00 08 */	bge lbl_80774D8C
/* 80774D88  3B 00 C1 80 */	li r24, -16000
lbl_80774D8C:
/* 80774D8C  2C 1A 3E 80 */	cmpwi r26, 0x3e80
/* 80774D90  40 81 00 0C */	ble lbl_80774D9C
/* 80774D94  3B 40 3E 80 */	li r26, 0x3e80
/* 80774D98  48 00 00 10 */	b lbl_80774DA8
lbl_80774D9C:
/* 80774D9C  2C 1A C1 80 */	cmpwi r26, -16000
/* 80774DA0  40 80 00 08 */	bge lbl_80774DA8
/* 80774DA4  3B 40 C1 80 */	li r26, -16000
lbl_80774DA8:
/* 80774DA8  38 7F 0A 9A */	addi r3, r31, 0xa9a
/* 80774DAC  7F 04 C3 78 */	mr r4, r24
/* 80774DB0  38 A0 00 02 */	li r5, 2
/* 80774DB4  7F 66 DB 78 */	mr r6, r27
/* 80774DB8  4B AF B8 51 */	bl cLib_addCalcAngleS2__FPssss
/* 80774DBC  48 00 01 18 */	b lbl_80774ED4
lbl_80774DC0:
/* 80774DC0  2C 00 00 05 */	cmpwi r0, 5
/* 80774DC4  40 82 00 40 */	bne lbl_80774E04
/* 80774DC8  A8 1F 0A 40 */	lha r0, 0xa40(r31)
/* 80774DCC  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80774DD0  40 82 01 04 */	bne lbl_80774ED4
/* 80774DD4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80774DD8  4B AF 2C F5 */	bl cM_rndF2__Ff
/* 80774DDC  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80774DE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80774DE4  40 80 00 F0 */	bge lbl_80774ED4
/* 80774DE8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80774DEC  4B AF 2D 19 */	bl cM_rndFX2__Ff
/* 80774DF0  FC 00 08 1E */	fctiwz f0, f1
/* 80774DF4  D8 01 02 58 */	stfd f0, 0x258(r1)
/* 80774DF8  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 80774DFC  B0 1F 0A A0 */	sth r0, 0xaa0(r31)
/* 80774E00  48 00 00 D4 */	b lbl_80774ED4
lbl_80774E04:
/* 80774E04  2C 18 75 30 */	cmpwi r24, 0x7530
/* 80774E08  40 81 00 14 */	ble lbl_80774E1C
/* 80774E0C  3B 00 75 30 */	li r24, 0x7530
/* 80774E10  38 00 00 01 */	li r0, 1
/* 80774E14  98 1F 0A 74 */	stb r0, 0xa74(r31)
/* 80774E18  48 00 00 18 */	b lbl_80774E30
lbl_80774E1C:
/* 80774E1C  2C 18 9E 58 */	cmpwi r24, -25000
/* 80774E20  40 80 00 10 */	bge lbl_80774E30
/* 80774E24  3B 00 9E 58 */	li r24, -25000
/* 80774E28  38 00 00 01 */	li r0, 1
/* 80774E2C  98 1F 0A 74 */	stb r0, 0xa74(r31)
lbl_80774E30:
/* 80774E30  38 7F 0A 9A */	addi r3, r31, 0xa9a
/* 80774E34  7F 00 07 34 */	extsh r0, r24
/* 80774E38  7C 00 0E 70 */	srawi r0, r0, 1
/* 80774E3C  7C 00 01 94 */	addze r0, r0
/* 80774E40  7C 04 07 34 */	extsh r4, r0
/* 80774E44  38 A0 00 02 */	li r5, 2
/* 80774E48  38 C0 10 00 */	li r6, 0x1000
/* 80774E4C  4B AF B7 BD */	bl cLib_addCalcAngleS2__FPssss
/* 80774E50  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80774E54  EC 20 00 32 */	fmuls f1, f0, f0
/* 80774E58  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80774E5C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80774E60  EC 41 00 2A */	fadds f2, f1, f0
/* 80774E64  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80774E68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80774E6C  40 81 00 0C */	ble lbl_80774E78
/* 80774E70  FC 00 10 34 */	frsqrte f0, f2
/* 80774E74  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80774E78:
/* 80774E78  C0 21 00 E0 */	lfs f1, 0xe0(r1)
/* 80774E7C  4B AF 27 F9 */	bl cM_atan2s__Fff
/* 80774E80  7C 03 00 D0 */	neg r0, r3
/* 80774E84  7C 1A 07 34 */	extsh r26, r0
/* 80774E88  2C 1A 2A F8 */	cmpwi r26, 0x2af8
/* 80774E8C  40 81 00 14 */	ble lbl_80774EA0
/* 80774E90  3B 40 2A F8 */	li r26, 0x2af8
/* 80774E94  38 00 00 01 */	li r0, 1
/* 80774E98  98 1F 0A 74 */	stb r0, 0xa74(r31)
/* 80774E9C  48 00 00 38 */	b lbl_80774ED4
lbl_80774EA0:
/* 80774EA0  2C 1A E0 C0 */	cmpwi r26, -8000
/* 80774EA4  40 80 00 30 */	bge lbl_80774ED4
/* 80774EA8  3B 40 E0 C0 */	li r26, -8000
/* 80774EAC  38 00 00 01 */	li r0, 1
/* 80774EB0  98 1F 0A 74 */	stb r0, 0xa74(r31)
/* 80774EB4  48 00 00 20 */	b lbl_80774ED4
lbl_80774EB8:
/* 80774EB8  38 7F 0A 9A */	addi r3, r31, 0xa9a
/* 80774EBC  38 80 00 00 */	li r4, 0
/* 80774EC0  38 A0 00 02 */	li r5, 2
/* 80774EC4  38 C0 10 00 */	li r6, 0x1000
/* 80774EC8  4B AF B7 41 */	bl cLib_addCalcAngleS2__FPssss
/* 80774ECC  38 00 00 00 */	li r0, 0
/* 80774ED0  B0 1F 0A A0 */	sth r0, 0xaa0(r31)
lbl_80774ED4:
/* 80774ED4  38 7F 0A 9C */	addi r3, r31, 0xa9c
/* 80774ED8  7F 44 D3 78 */	mr r4, r26
/* 80774EDC  38 A0 00 02 */	li r5, 2
/* 80774EE0  7F 66 DB 78 */	mr r6, r27
/* 80774EE4  4B AF B7 25 */	bl cLib_addCalcAngleS2__FPssss
/* 80774EE8  38 7F 0A 9E */	addi r3, r31, 0xa9e
/* 80774EEC  A8 9F 0A A0 */	lha r4, 0xaa0(r31)
/* 80774EF0  38 A0 00 04 */	li r5, 4
/* 80774EF4  38 C0 05 00 */	li r6, 0x500
/* 80774EF8  4B AF B7 11 */	bl cLib_addCalcAngleS2__FPssss
/* 80774EFC  C0 1F 0A FC */	lfs f0, 0xafc(r31)
/* 80774F00  FC 20 02 10 */	fabs f1, f0
/* 80774F04  FC 40 08 18 */	frsp f2, f1
/* 80774F08  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80774F0C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80774F10  40 81 00 60 */	ble lbl_80774F70
/* 80774F14  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80774F18  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80774F1C  A8 1F 0B 00 */	lha r0, 0xb00(r31)
/* 80774F20  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80774F24  7C 63 02 14 */	add r3, r3, r0
/* 80774F28  C0 63 00 04 */	lfs f3, 4(r3)
/* 80774F2C  C0 5E 01 1C */	lfs f2, 0x11c(r30)
/* 80774F30  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80774F34  EC 02 00 32 */	fmuls f0, f2, f0
/* 80774F38  FC 00 00 1E */	fctiwz f0, f0
/* 80774F3C  D8 01 02 58 */	stfd f0, 0x258(r1)
/* 80774F40  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 80774F44  B0 1F 0B 4A */	sth r0, 0xb4a(r31)
/* 80774F48  A8 7F 0B 50 */	lha r3, 0xb50(r31)
/* 80774F4C  A8 1F 0B 4A */	lha r0, 0xb4a(r31)
/* 80774F50  7C 03 02 14 */	add r0, r3, r0
/* 80774F54  B0 1F 0B 50 */	sth r0, 0xb50(r31)
/* 80774F58  38 7F 0A FC */	addi r3, r31, 0xafc
/* 80774F5C  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 80774F60  4B AF AB 21 */	bl cLib_addCalc0__FPfff
/* 80774F64  A8 7F 0B 00 */	lha r3, 0xb00(r31)
/* 80774F68  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 80774F6C  B0 1F 0B 00 */	sth r0, 0xb00(r31)
lbl_80774F70:
/* 80774F70  C0 1F 0A F4 */	lfs f0, 0xaf4(r31)
/* 80774F74  FC 20 02 10 */	fabs f1, f0
/* 80774F78  FC 40 08 18 */	frsp f2, f1
/* 80774F7C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80774F80  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80774F84  40 81 00 50 */	ble lbl_80774FD4
/* 80774F88  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80774F8C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80774F90  A8 1F 0A F8 */	lha r0, 0xaf8(r31)
/* 80774F94  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80774F98  7C 63 02 14 */	add r3, r3, r0
/* 80774F9C  C0 63 00 04 */	lfs f3, 4(r3)
/* 80774FA0  C0 5E 01 1C */	lfs f2, 0x11c(r30)
/* 80774FA4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80774FA8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80774FAC  FC 00 00 1E */	fctiwz f0, f0
/* 80774FB0  D8 01 02 58 */	stfd f0, 0x258(r1)
/* 80774FB4  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 80774FB8  B0 1F 0B 44 */	sth r0, 0xb44(r31)
/* 80774FBC  38 7F 0A F4 */	addi r3, r31, 0xaf4
/* 80774FC0  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 80774FC4  4B AF AA BD */	bl cLib_addCalc0__FPfff
/* 80774FC8  A8 7F 0A F8 */	lha r3, 0xaf8(r31)
/* 80774FCC  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 80774FD0  B0 1F 0A F8 */	sth r0, 0xaf8(r31)
lbl_80774FD4:
/* 80774FD4  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80774FD8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80774FDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80774FE0  40 80 00 30 */	bge lbl_80775010
/* 80774FE4  80 1F 0C 40 */	lwz r0, 0xc40(r31)
/* 80774FE8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80774FEC  41 82 00 24 */	beq lbl_80775010
/* 80774FF0  38 7F 0A FC */	addi r3, r31, 0xafc
/* 80774FF4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80774FF8  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 80774FFC  4B AF AA 85 */	bl cLib_addCalc0__FPfff
/* 80775000  38 7F 0A F4 */	addi r3, r31, 0xaf4
/* 80775004  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80775008  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 8077500C  4B AF AA 75 */	bl cLib_addCalc0__FPfff
lbl_80775010:
/* 80775010  C0 3F 0A BC */	lfs f1, 0xabc(r31)
/* 80775014  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80775018  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077501C  41 82 01 48 */	beq lbl_80775164
/* 80775020  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80775024  A8 1F 0A DE */	lha r0, 0xade(r31)
/* 80775028  7C 03 00 50 */	subf r0, r3, r0
/* 8077502C  7C 04 07 34 */	extsh r4, r0
/* 80775030  20 64 40 00 */	subfic r3, r4, 0x4000
/* 80775034  B0 7F 0B 58 */	sth r3, 0xb58(r31)
/* 80775038  A8 1F 0B 58 */	lha r0, 0xb58(r31)
/* 8077503C  2C 00 17 70 */	cmpwi r0, 0x1770
/* 80775040  40 81 00 10 */	ble lbl_80775050
/* 80775044  38 00 17 70 */	li r0, 0x1770
/* 80775048  B0 1F 0B 58 */	sth r0, 0xb58(r31)
/* 8077504C  48 00 00 14 */	b lbl_80775060
lbl_80775050:
/* 80775050  2C 00 D1 20 */	cmpwi r0, -12000
/* 80775054  40 80 00 0C */	bge lbl_80775060
/* 80775058  38 00 D1 20 */	li r0, -12000
/* 8077505C  B0 1F 0B 58 */	sth r0, 0xb58(r31)
lbl_80775060:
/* 80775060  B0 7F 0B 5E */	sth r3, 0xb5e(r31)
/* 80775064  A8 1F 0B 5E */	lha r0, 0xb5e(r31)
/* 80775068  2C 00 3A 98 */	cmpwi r0, 0x3a98
/* 8077506C  40 81 00 10 */	ble lbl_8077507C
/* 80775070  38 00 3A 98 */	li r0, 0x3a98
/* 80775074  B0 1F 0B 5E */	sth r0, 0xb5e(r31)
/* 80775078  48 00 00 14 */	b lbl_8077508C
lbl_8077507C:
/* 8077507C  7C 00 07 35 */	extsh. r0, r0
/* 80775080  40 80 00 0C */	bge lbl_8077508C
/* 80775084  38 00 00 00 */	li r0, 0
/* 80775088  B0 1F 0B 5E */	sth r0, 0xb5e(r31)
lbl_8077508C:
/* 8077508C  38 64 40 00 */	addi r3, r4, 0x4000
/* 80775090  B0 7F 0B 64 */	sth r3, 0xb64(r31)
/* 80775094  A8 1F 0B 64 */	lha r0, 0xb64(r31)
/* 80775098  2C 00 17 70 */	cmpwi r0, 0x1770
/* 8077509C  40 81 00 10 */	ble lbl_807750AC
/* 807750A0  38 00 17 70 */	li r0, 0x1770
/* 807750A4  B0 1F 0B 64 */	sth r0, 0xb64(r31)
/* 807750A8  48 00 00 14 */	b lbl_807750BC
lbl_807750AC:
/* 807750AC  2C 00 D1 20 */	cmpwi r0, -12000
/* 807750B0  40 80 00 0C */	bge lbl_807750BC
/* 807750B4  38 00 D1 20 */	li r0, -12000
/* 807750B8  B0 1F 0B 64 */	sth r0, 0xb64(r31)
lbl_807750BC:
/* 807750BC  B0 7F 0B 6A */	sth r3, 0xb6a(r31)
/* 807750C0  A8 1F 0B 6A */	lha r0, 0xb6a(r31)
/* 807750C4  2C 00 3A 98 */	cmpwi r0, 0x3a98
/* 807750C8  40 81 00 10 */	ble lbl_807750D8
/* 807750CC  38 00 3A 98 */	li r0, 0x3a98
/* 807750D0  B0 1F 0B 6A */	sth r0, 0xb6a(r31)
/* 807750D4  48 00 00 14 */	b lbl_807750E8
lbl_807750D8:
/* 807750D8  7C 00 07 35 */	extsh. r0, r0
/* 807750DC  40 80 00 0C */	bge lbl_807750E8
/* 807750E0  38 00 00 00 */	li r0, 0
/* 807750E4  B0 1F 0B 6A */	sth r0, 0xb6a(r31)
lbl_807750E8:
/* 807750E8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807750EC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807750F0  80 63 00 00 */	lwz r3, 0(r3)
/* 807750F4  4B 89 72 E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 807750F8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807750FC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80775100  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80775104  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 80775108  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 8077510C  38 61 00 DC */	addi r3, r1, 0xdc
/* 80775110  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80775114  4B AF BD D9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80775118  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8077511C  FC 00 00 50 */	fneg f0, f0
/* 80775120  FC 00 00 1E */	fctiwz f0, f0
/* 80775124  D8 01 02 58 */	stfd f0, 0x258(r1)
/* 80775128  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 8077512C  B0 1F 0B B6 */	sth r0, 0xbb6(r31)
/* 80775130  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80775134  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80775138  FC 00 00 50 */	fneg f0, f0
/* 8077513C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80775140  FC 00 00 1E */	fctiwz f0, f0
/* 80775144  D8 01 02 60 */	stfd f0, 0x260(r1)
/* 80775148  80 01 02 64 */	lwz r0, 0x264(r1)
/* 8077514C  B0 1F 0B B4 */	sth r0, 0xbb4(r31)
/* 80775150  A8 1F 0B B4 */	lha r0, 0xbb4(r31)
/* 80775154  2C 00 27 10 */	cmpwi r0, 0x2710
/* 80775158  40 81 00 0C */	ble lbl_80775164
/* 8077515C  38 00 27 10 */	li r0, 0x2710
/* 80775160  B0 1F 0B B4 */	sth r0, 0xbb4(r31)
lbl_80775164:
/* 80775164  3B 40 00 00 */	li r26, 0
/* 80775168  3B 60 00 00 */	li r27, 0
/* 8077516C  3B 80 00 00 */	li r28, 0
/* 80775170  3B 20 00 00 */	li r25, 0
/* 80775174  3C 60 80 78 */	lis r3, j_spd@ha /* 0x8077A344@ha */
/* 80775178  3B A3 A3 44 */	addi r29, r3, j_spd@l /* 0x8077A344@l */
lbl_8077517C:
/* 8077517C  7F 1F CA 14 */	add r24, r31, r25
/* 80775180  38 78 0B 02 */	addi r3, r24, 0xb02
/* 80775184  A8 98 0B 44 */	lha r4, 0xb44(r24)
/* 80775188  38 A0 00 02 */	li r5, 2
/* 8077518C  7C DD E2 AE */	lhax r6, r29, r28
/* 80775190  4B AF B4 79 */	bl cLib_addCalcAngleS2__FPssss
/* 80775194  38 78 0B 04 */	addi r3, r24, 0xb04
/* 80775198  A8 98 0B 46 */	lha r4, 0xb46(r24)
/* 8077519C  38 A0 00 02 */	li r5, 2
/* 807751A0  7C DD E2 AE */	lhax r6, r29, r28
/* 807751A4  4B AF B4 65 */	bl cLib_addCalcAngleS2__FPssss
/* 807751A8  38 78 0B 06 */	addi r3, r24, 0xb06
/* 807751AC  A8 98 0B 48 */	lha r4, 0xb48(r24)
/* 807751B0  38 A0 00 02 */	li r5, 2
/* 807751B4  7C DD E2 AE */	lhax r6, r29, r28
/* 807751B8  4B AF B4 51 */	bl cLib_addCalcAngleS2__FPssss
/* 807751BC  38 00 00 00 */	li r0, 0
/* 807751C0  B0 18 0B 48 */	sth r0, 0xb48(r24)
/* 807751C4  B0 18 0B 44 */	sth r0, 0xb44(r24)
/* 807751C8  2C 1A 00 03 */	cmpwi r26, 3
/* 807751CC  41 80 00 58 */	blt lbl_80775224
/* 807751D0  2C 1A 00 06 */	cmpwi r26, 6
/* 807751D4  41 81 00 50 */	bgt lbl_80775224
/* 807751D8  38 9C 0B 9C */	addi r4, r28, 0xb9c
/* 807751DC  7C 7F 22 AE */	lhax r3, r31, r4
/* 807751E0  2C 03 00 00 */	cmpwi r3, 0
/* 807751E4  40 82 00 34 */	bne lbl_80775218
/* 807751E8  2C 1A 00 04 */	cmpwi r26, 4
/* 807751EC  41 82 00 0C */	beq lbl_807751F8
/* 807751F0  2C 1A 00 06 */	cmpwi r26, 6
/* 807751F4  40 82 00 0C */	bne lbl_80775200
lbl_807751F8:
/* 807751F8  38 C0 06 00 */	li r6, 0x600
/* 807751FC  48 00 00 08 */	b lbl_80775204
lbl_80775200:
/* 80775200  38 C0 08 00 */	li r6, 0x800
lbl_80775204:
/* 80775204  38 78 0B 46 */	addi r3, r24, 0xb46
/* 80775208  38 80 00 00 */	li r4, 0
/* 8077520C  38 A0 00 01 */	li r5, 1
/* 80775210  4B AF B3 F9 */	bl cLib_addCalcAngleS2__FPssss
/* 80775214  48 00 00 18 */	b lbl_8077522C
lbl_80775218:
/* 80775218  38 03 FF FF */	addi r0, r3, -1
/* 8077521C  7C 1F 23 2E */	sthx r0, r31, r4
/* 80775220  48 00 00 0C */	b lbl_8077522C
lbl_80775224:
/* 80775224  38 00 00 00 */	li r0, 0
/* 80775228  B0 18 0B 46 */	sth r0, 0xb46(r24)
lbl_8077522C:
/* 8077522C  2C 1A 00 03 */	cmpwi r26, 3
/* 80775230  41 80 00 40 */	blt lbl_80775270
/* 80775234  A8 1F 0A 40 */	lha r0, 0xa40(r31)
/* 80775238  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 8077523C  7C 00 DA 14 */	add r0, r0, r27
/* 80775240  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 80775244  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80775248  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8077524C  7C 60 22 14 */	add r3, r0, r4
/* 80775250  C0 23 00 04 */	lfs f1, 4(r3)
/* 80775254  C0 1F 0B 88 */	lfs f0, 0xb88(r31)
/* 80775258  EC 00 00 72 */	fmuls f0, f0, f1
/* 8077525C  FC 00 00 1E */	fctiwz f0, f0
/* 80775260  D8 01 02 60 */	stfd f0, 0x260(r1)
/* 80775264  80 61 02 64 */	lwz r3, 0x264(r1)
/* 80775268  38 1C 0B 8C */	addi r0, r28, 0xb8c
/* 8077526C  7C 7F 03 2E */	sthx r3, r31, r0
lbl_80775270:
/* 80775270  3B 5A 00 01 */	addi r26, r26, 1
/* 80775274  2C 1A 00 0B */	cmpwi r26, 0xb
/* 80775278  3B 7B 4E 20 */	addi r27, r27, 0x4e20
/* 8077527C  3B 9C 00 02 */	addi r28, r28, 2
/* 80775280  3B 39 00 06 */	addi r25, r25, 6
/* 80775284  41 80 FE F8 */	blt lbl_8077517C
/* 80775288  38 7F 0B 88 */	addi r3, r31, 0xb88
/* 8077528C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80775290  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80775294  4B AF A7 ED */	bl cLib_addCalc0__FPfff
/* 80775298  38 7F 0B B0 */	addi r3, r31, 0xbb0
/* 8077529C  A8 9F 0B B6 */	lha r4, 0xbb6(r31)
/* 807752A0  38 A0 00 02 */	li r5, 2
/* 807752A4  38 C0 08 00 */	li r6, 0x800
/* 807752A8  4B AF B3 61 */	bl cLib_addCalcAngleS2__FPssss
/* 807752AC  38 7F 0B AE */	addi r3, r31, 0xbae
/* 807752B0  A8 9F 0B B4 */	lha r4, 0xbb4(r31)
/* 807752B4  38 A0 00 02 */	li r5, 2
/* 807752B8  38 C0 08 00 */	li r6, 0x800
/* 807752BC  4B AF B3 4D */	bl cLib_addCalcAngleS2__FPssss
/* 807752C0  38 00 00 00 */	li r0, 0
/* 807752C4  B0 1F 0B B4 */	sth r0, 0xbb4(r31)
/* 807752C8  B0 1F 0B B6 */	sth r0, 0xbb6(r31)
/* 807752CC  3B 40 00 00 */	li r26, 0
/* 807752D0  3B 60 00 00 */	li r27, 0
/* 807752D4  88 7F 0A EE */	lbz r3, 0xaee(r31)
/* 807752D8  7C 60 07 75 */	extsb. r0, r3
/* 807752DC  41 82 02 EC */	beq lbl_807755C8
/* 807752E0  38 03 FF FF */	addi r0, r3, -1
/* 807752E4  98 1F 0A EE */	stb r0, 0xaee(r31)
/* 807752E8  A8 1F 0A DC */	lha r0, 0xadc(r31)
/* 807752EC  2C 00 00 00 */	cmpwi r0, 0
/* 807752F0  41 82 02 D8 */	beq lbl_807755C8
/* 807752F4  38 61 01 AC */	addi r3, r1, 0x1ac
/* 807752F8  4B 90 22 85 */	bl __ct__11dBgS_GndChkFv
/* 807752FC  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80775300  80 63 00 04 */	lwz r3, 4(r3)
/* 80775304  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80775308  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077530C  38 63 00 30 */	addi r3, r3, 0x30
/* 80775310  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80775314  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80775318  80 84 00 00 */	lwz r4, 0(r4)
/* 8077531C  4B BD 11 95 */	bl PSMTXCopy
/* 80775320  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80775324  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80775328  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8077532C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80775330  38 61 00 DC */	addi r3, r1, 0xdc
/* 80775334  38 81 00 AC */	addi r4, r1, 0xac
/* 80775338  4B AF BB B5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8077533C  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80775340  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80775344  EC 00 08 2A */	fadds f0, f0, f1
/* 80775348  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8077534C  EC 00 08 2A */	fadds f0, f0, f1
/* 80775350  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80775354  38 61 01 AC */	addi r3, r1, 0x1ac
/* 80775358  38 81 00 AC */	addi r4, r1, 0xac
/* 8077535C  4B AF 29 CD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80775360  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80775364  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80775368  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 8077536C  7F 03 C3 78 */	mr r3, r24
/* 80775370  38 81 01 AC */	addi r4, r1, 0x1ac
/* 80775374  4B 8F F1 2D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80775378  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 8077537C  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 80775380  FC 20 08 18 */	frsp f1, f1
/* 80775384  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80775388  41 82 01 0C */	beq lbl_80775494
/* 8077538C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80775390  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80775394  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80775398  EC 00 08 2A */	fadds f0, f0, f1
/* 8077539C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807753A0  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 807753A4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 807753A8  EC 01 00 2A */	fadds f0, f1, f0
/* 807753AC  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807753B0  38 61 01 AC */	addi r3, r1, 0x1ac
/* 807753B4  38 81 00 B8 */	addi r4, r1, 0xb8
/* 807753B8  4B AF 29 55 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 807753BC  7F 03 C3 78 */	mr r3, r24
/* 807753C0  38 81 01 AC */	addi r4, r1, 0x1ac
/* 807753C4  4B 8F F0 DD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807753C8  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 807753CC  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 807753D0  FC 20 08 18 */	frsp f1, f1
/* 807753D4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807753D8  41 82 00 38 */	beq lbl_80775410
/* 807753DC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 807753E0  EC 21 00 28 */	fsubs f1, f1, f0
/* 807753E4  C0 41 00 C0 */	lfs f2, 0xc0(r1)
/* 807753E8  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 807753EC  EC 42 00 28 */	fsubs f2, f2, f0
/* 807753F0  4B AF 22 85 */	bl cM_atan2s__Fff
/* 807753F4  7C 03 00 D0 */	neg r0, r3
/* 807753F8  7C 1B 07 34 */	extsh r27, r0
/* 807753FC  2C 1B 30 00 */	cmpwi r27, 0x3000
/* 80775400  41 81 00 0C */	bgt lbl_8077540C
/* 80775404  2C 1B D0 00 */	cmpwi r27, -12288
/* 80775408  40 80 00 08 */	bge lbl_80775410
lbl_8077540C:
/* 8077540C  3B 60 00 00 */	li r27, 0
lbl_80775410:
/* 80775410  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 80775414  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80775418  EC 01 00 2A */	fadds f0, f1, f0
/* 8077541C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80775420  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80775424  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80775428  EC 01 00 2A */	fadds f0, f1, f0
/* 8077542C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80775430  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80775434  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80775438  38 61 01 AC */	addi r3, r1, 0x1ac
/* 8077543C  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80775440  4B AF 28 CD */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 80775444  7F 03 C3 78 */	mr r3, r24
/* 80775448  38 81 01 AC */	addi r4, r1, 0x1ac
/* 8077544C  4B 8F F0 55 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80775450  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80775454  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 80775458  FC 20 08 18 */	frsp f1, f1
/* 8077545C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80775460  41 82 00 34 */	beq lbl_80775494
/* 80775464  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80775468  EC 21 00 28 */	fsubs f1, f1, f0
/* 8077546C  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 80775470  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80775474  EC 42 00 28 */	fsubs f2, f2, f0
/* 80775478  4B AF 21 FD */	bl cM_atan2s__Fff
/* 8077547C  7C 7A 07 34 */	extsh r26, r3
/* 80775480  2C 1A 30 00 */	cmpwi r26, 0x3000
/* 80775484  41 81 00 0C */	bgt lbl_80775490
/* 80775488  2C 1A D0 00 */	cmpwi r26, -12288
/* 8077548C  40 80 00 08 */	bge lbl_80775494
lbl_80775490:
/* 80775490  3B 40 00 00 */	li r26, 0
lbl_80775494:
/* 80775494  38 61 01 3C */	addi r3, r1, 0x13c
/* 80775498  4B 90 27 D1 */	bl __ct__11dBgS_LinChkFv
/* 8077549C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807754A0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807754A4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807754A8  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 807754AC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807754B0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 807754B4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807754B8  EC 01 00 2A */	fadds f0, f1, f0
/* 807754BC  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 807754C0  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807754C4  80 63 00 04 */	lwz r3, 4(r3)
/* 807754C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807754CC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 807754D0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 807754D4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 807754D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807754DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807754E0  38 63 02 70 */	addi r3, r3, 0x270
/* 807754E4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807754E8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807754EC  80 84 00 00 */	lwz r4, 0(r4)
/* 807754F0  4B BD 0F C1 */	bl PSMTXCopy
/* 807754F4  38 61 00 A0 */	addi r3, r1, 0xa0
/* 807754F8  38 81 00 88 */	addi r4, r1, 0x88
/* 807754FC  4B AF B9 F1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80775500  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80775504  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80775508  EC 01 00 2A */	fadds f0, f1, f0
/* 8077550C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80775510  38 61 01 3C */	addi r3, r1, 0x13c
/* 80775514  38 81 00 94 */	addi r4, r1, 0x94
/* 80775518  38 A1 00 88 */	addi r5, r1, 0x88
/* 8077551C  7F E6 FB 78 */	mr r6, r31
/* 80775520  4B 90 28 45 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80775524  7F 03 C3 78 */	mr r3, r24
/* 80775528  38 81 01 3C */	addi r4, r1, 0x13c
/* 8077552C  4B 8F EE 89 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80775530  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80775534  41 82 00 74 */	beq lbl_807755A8
/* 80775538  38 61 00 34 */	addi r3, r1, 0x34
/* 8077553C  38 81 00 94 */	addi r4, r1, 0x94
/* 80775540  38 A1 00 88 */	addi r5, r1, 0x88
/* 80775544  4B AF 15 F1 */	bl __mi__4cXyzCFRC3Vec
/* 80775548  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8077554C  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 80775550  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80775554  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80775558  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8077555C  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 80775560  4B AF 21 15 */	bl cM_atan2s__Fff
/* 80775564  7C 64 1B 78 */	mr r4, r3
/* 80775568  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8077556C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80775570  80 63 00 00 */	lwz r3, 0(r3)
/* 80775574  4B 89 6E 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 80775578  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077557C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80775580  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80775584  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80775588  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8077558C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80775590  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80775594  4B AF B9 59 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80775598  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8077559C  38 81 00 D0 */	addi r4, r1, 0xd0
/* 807755A0  7C 65 1B 78 */	mr r5, r3
/* 807755A4  4B BD 1A ED */	bl PSVECAdd
lbl_807755A8:
/* 807755A8  B3 7F 0A E8 */	sth r27, 0xae8(r31)
/* 807755AC  B3 5F 0A EC */	sth r26, 0xaec(r31)
/* 807755B0  38 61 01 3C */	addi r3, r1, 0x13c
/* 807755B4  38 80 FF FF */	li r4, -1
/* 807755B8  4B 90 27 25 */	bl __dt__11dBgS_LinChkFv
/* 807755BC  38 61 01 AC */	addi r3, r1, 0x1ac
/* 807755C0  38 80 FF FF */	li r4, -1
/* 807755C4  4B 90 20 2D */	bl __dt__11dBgS_GndChkFv
lbl_807755C8:
/* 807755C8  38 7F 0A E2 */	addi r3, r31, 0xae2
/* 807755CC  A8 9F 0A E8 */	lha r4, 0xae8(r31)
/* 807755D0  38 A0 00 01 */	li r5, 1
/* 807755D4  38 C0 04 00 */	li r6, 0x400
/* 807755D8  4B AF B0 31 */	bl cLib_addCalcAngleS2__FPssss
/* 807755DC  38 7F 0A E6 */	addi r3, r31, 0xae6
/* 807755E0  A8 9F 0A EC */	lha r4, 0xaec(r31)
/* 807755E4  38 A0 00 01 */	li r5, 1
/* 807755E8  38 C0 04 00 */	li r6, 0x400
/* 807755EC  4B AF B0 1D */	bl cLib_addCalcAngleS2__FPssss
/* 807755F0  88 7F 13 6B */	lbz r3, 0x136b(r31)
/* 807755F4  7C 60 07 75 */	extsb. r0, r3
/* 807755F8  41 82 00 64 */	beq lbl_8077565C
/* 807755FC  38 03 FF FF */	addi r0, r3, -1
/* 80775600  98 1F 13 6B */	stb r0, 0x136b(r31)
/* 80775604  88 1F 13 6B */	lbz r0, 0x136b(r31)
/* 80775608  7C 00 07 75 */	extsb. r0, r0
/* 8077560C  40 82 00 50 */	bne lbl_8077565C
/* 80775610  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80775614  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80775618  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8077561C  38 80 00 00 */	li r4, 0
/* 80775620  90 81 00 08 */	stw r4, 8(r1)
/* 80775624  38 00 FF FF */	li r0, -1
/* 80775628  90 01 00 0C */	stw r0, 0xc(r1)
/* 8077562C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80775630  90 81 00 14 */	stw r4, 0x14(r1)
/* 80775634  90 81 00 18 */	stw r4, 0x18(r1)
/* 80775638  38 80 00 00 */	li r4, 0
/* 8077563C  38 A0 01 5E */	li r5, 0x15e
/* 80775640  38 DF 05 38 */	addi r6, r31, 0x538
/* 80775644  38 E0 00 00 */	li r7, 0
/* 80775648  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8077564C  39 20 00 00 */	li r9, 0
/* 80775650  39 40 00 FF */	li r10, 0xff
/* 80775654  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80775658  4B 8D 74 39 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8077565C:
/* 8077565C  88 1F 13 2D */	lbz r0, 0x132d(r31)
/* 80775660  7C 00 07 75 */	extsb. r0, r0
/* 80775664  41 82 01 8C */	beq lbl_807757F0
/* 80775668  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8077566C  80 63 00 04 */	lwz r3, 4(r3)
/* 80775670  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80775674  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80775678  38 63 02 10 */	addi r3, r3, 0x210
/* 8077567C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80775680  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80775684  80 84 00 00 */	lwz r4, 0(r4)
/* 80775688  4B BD 0E 29 */	bl PSMTXCopy
/* 8077568C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80775690  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80775694  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80775698  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 8077569C  38 61 00 DC */	addi r3, r1, 0xdc
/* 807756A0  38 81 00 D0 */	addi r4, r1, 0xd0
/* 807756A4  4B AF B8 49 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807756A8  38 61 00 E8 */	addi r3, r1, 0xe8
/* 807756AC  4B 90 21 05 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 807756B0  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 807756B4  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 807756B8  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 807756BC  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 807756C0  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 807756C4  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 807756C8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807756CC  EC 01 00 2A */	fadds f0, f1, f0
/* 807756D0  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 807756D4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 807756D8  38 81 00 DC */	addi r4, r1, 0xdc
/* 807756DC  4B AF 26 4D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 807756E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807756E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807756E8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807756EC  38 81 00 E8 */	addi r4, r1, 0xe8
/* 807756F0  4B 8F ED B1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807756F4  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 807756F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807756FC  FC 00 02 10 */	fabs f0, f0
/* 80775700  FC 20 00 18 */	frsp f1, f0
/* 80775704  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80775708  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077570C  40 80 00 B0 */	bge lbl_807757BC
/* 80775710  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80775714  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80775718  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8077571C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80775720  38 61 00 2C */	addi r3, r1, 0x2c
/* 80775724  38 80 00 00 */	li r4, 0
/* 80775728  38 A0 00 00 */	li r5, 0
/* 8077572C  38 C0 00 00 */	li r6, 0
/* 80775730  4B AF 1C C5 */	bl __ct__5csXyzFsss
/* 80775734  3B A0 00 00 */	li r29, 0
/* 80775738  3B 40 00 00 */	li r26, 0
/* 8077573C  3B 60 00 00 */	li r27, 0
/* 80775740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80775744  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80775748  3C 60 80 78 */	lis r3, w_eff_name@ha /* 0x8077A35C@ha */
/* 8077574C  3B 23 A3 5C */	addi r25, r3, w_eff_name@l /* 0x8077A35C@l */
lbl_80775750:
/* 80775750  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80775754  38 00 00 FF */	li r0, 0xff
/* 80775758  90 01 00 08 */	stw r0, 8(r1)
/* 8077575C  38 80 00 00 */	li r4, 0
/* 80775760  90 81 00 0C */	stw r4, 0xc(r1)
/* 80775764  38 00 FF FF */	li r0, -1
/* 80775768  90 01 00 10 */	stw r0, 0x10(r1)
/* 8077576C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80775770  90 81 00 18 */	stw r4, 0x18(r1)
/* 80775774  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80775778  3B 1B 13 38 */	addi r24, r27, 0x1338
/* 8077577C  7C 9F C0 2E */	lwzx r4, r31, r24
/* 80775780  38 A0 00 00 */	li r5, 0
/* 80775784  7C D9 D2 2E */	lhzx r6, r25, r26
/* 80775788  38 E1 00 D0 */	addi r7, r1, 0xd0
/* 8077578C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80775790  39 21 00 2C */	addi r9, r1, 0x2c
/* 80775794  39 41 00 7C */	addi r10, r1, 0x7c
/* 80775798  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8077579C  4B 8D 7D 31 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807757A0  7C 7F C1 2E */	stwx r3, r31, r24
/* 807757A4  3B BD 00 01 */	addi r29, r29, 1
/* 807757A8  2C 1D 00 03 */	cmpwi r29, 3
/* 807757AC  3B 5A 00 02 */	addi r26, r26, 2
/* 807757B0  3B 7B 00 04 */	addi r27, r27, 4
/* 807757B4  41 80 FF 9C */	blt lbl_80775750
/* 807757B8  48 00 00 24 */	b lbl_807757DC
lbl_807757BC:
/* 807757BC  38 7F 13 30 */	addi r3, r31, 0x1330
/* 807757C0  38 9F 13 34 */	addi r4, r31, 0x1334
/* 807757C4  38 A1 00 D0 */	addi r5, r1, 0xd0
/* 807757C8  38 C0 00 00 */	li r6, 0
/* 807757CC  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 807757D0  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807757D4  39 00 00 01 */	li r8, 1
/* 807757D8  4B 8A 78 49 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_807757DC:
/* 807757DC  38 00 00 00 */	li r0, 0
/* 807757E0  98 1F 13 2D */	stb r0, 0x132d(r31)
/* 807757E4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 807757E8  38 80 FF FF */	li r4, -1
/* 807757EC  4B 90 20 5D */	bl __dt__18dBgS_ObjGndChk_SplFv
lbl_807757F0:
/* 807757F0  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 807757F4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807757F8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807757FC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80775800  7F E3 FB 78 */	mr r3, r31
/* 80775804  38 9F 05 D0 */	addi r4, r31, 0x5d0
/* 80775808  38 BF 05 38 */	addi r5, r31, 0x538
/* 8077580C  38 C1 00 70 */	addi r6, r1, 0x70
/* 80775810  48 00 41 39 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
lbl_80775814:
/* 80775814  39 61 02 90 */	addi r11, r1, 0x290
/* 80775818  4B BE C9 FD */	bl _restgpr_24
/* 8077581C  80 01 02 94 */	lwz r0, 0x294(r1)
/* 80775820  7C 08 03 A6 */	mtlr r0
/* 80775824  38 21 02 90 */	addi r1, r1, 0x290
/* 80775828  4E 80 00 20 */	blr 
