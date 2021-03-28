lbl_80831474:
/* 80831474  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80831478  7C 08 02 A6 */	mflr r0
/* 8083147C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80831480  39 61 00 90 */	addi r11, r1, 0x90
/* 80831484  4B B3 0D 40 */	b _savegpr_23
/* 80831488  7C 7D 1B 78 */	mr r29, r3
/* 8083148C  3C 60 80 83 */	lis r3, lit_3789@ha
/* 80831490  3B C3 2C F8 */	addi r30, r3, lit_3789@l
/* 80831494  3C 60 80 83 */	lis r3, l_HIO@ha
/* 80831498  3B E3 2F 90 */	addi r31, r3, l_HIO@l
/* 8083149C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 808314A0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 808314A4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 808314A8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 808314AC  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 808314B0  2C 00 00 0A */	cmpwi r0, 0xa
/* 808314B4  41 82 00 2C */	beq lbl_808314E0
/* 808314B8  40 80 02 1C */	bge lbl_808316D4
/* 808314BC  2C 00 00 01 */	cmpwi r0, 1
/* 808314C0  41 82 00 AC */	beq lbl_8083156C
/* 808314C4  40 80 02 10 */	bge lbl_808316D4
/* 808314C8  2C 00 00 00 */	cmpwi r0, 0
/* 808314CC  40 80 00 0C */	bge lbl_808314D8
/* 808314D0  48 00 02 04 */	b lbl_808316D4
/* 808314D4  48 00 02 00 */	b lbl_808316D4
lbl_808314D8:
/* 808314D8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 808314DC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_808314E0:
/* 808314E0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 808314E4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 808314E8  80 63 00 00 */	lwz r3, 0(r3)
/* 808314EC  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 808314F0  4B 7D AE EC */	b mDoMtx_YrotS__FPA4_fs
/* 808314F4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 808314F8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 808314FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80831500  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 80831504  4B 7D AE 98 */	b mDoMtx_XrotM__FPA4_fs
/* 80831508  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8083150C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80831510  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80831514  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80831518  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8083151C  38 61 00 48 */	addi r3, r1, 0x48
/* 80831520  38 81 00 3C */	addi r4, r1, 0x3c
/* 80831524  4B A3 F9 C8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80831528  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8083152C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80831530  38 00 00 FA */	li r0, 0xfa
/* 80831534  98 1D 07 22 */	stb r0, 0x722(r29)
/* 80831538  80 1D 0A E4 */	lwz r0, 0xae4(r29)
/* 8083153C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80831540  90 1D 0A E4 */	stw r0, 0xae4(r29)
/* 80831544  80 1D 0A F8 */	lwz r0, 0xaf8(r29)
/* 80831548  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8083154C  90 1D 0A F8 */	stw r0, 0xaf8(r29)
/* 80831550  38 7D 07 3C */	addi r3, r29, 0x73c
/* 80831554  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80831558  FC 40 08 90 */	fmr f2, f1
/* 8083155C  4B 84 49 FC */	b SetWall__12dBgS_AcchCirFff
/* 80831560  80 7D 06 60 */	lwz r3, 0x660(r29)
/* 80831564  38 03 00 01 */	addi r0, r3, 1
/* 80831568  90 1D 06 60 */	stw r0, 0x660(r29)
lbl_8083156C:
/* 8083156C  88 1D 07 22 */	lbz r0, 0x722(r29)
/* 80831570  28 00 00 5A */	cmplwi r0, 0x5a
/* 80831574  40 82 00 1C */	bne lbl_80831590
/* 80831578  80 1D 0A E4 */	lwz r0, 0xae4(r29)
/* 8083157C  60 00 00 01 */	ori r0, r0, 1
/* 80831580  90 1D 0A E4 */	stw r0, 0xae4(r29)
/* 80831584  80 1D 0A F8 */	lwz r0, 0xaf8(r29)
/* 80831588  60 00 00 01 */	ori r0, r0, 1
/* 8083158C  90 1D 0A F8 */	stw r0, 0xaf8(r29)
lbl_80831590:
/* 80831590  80 1D 0B 28 */	lwz r0, 0xb28(r29)
/* 80831594  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80831598  41 82 01 3C */	beq lbl_808316D4
/* 8083159C  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 808315A0  38 81 00 2C */	addi r4, r1, 0x2c
/* 808315A4  4B 7E 84 18 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 808315A8  2C 03 00 00 */	cmpwi r3, 0
/* 808315AC  41 82 01 28 */	beq lbl_808316D4
/* 808315B0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 808315B4  28 00 00 00 */	cmplwi r0, 0
/* 808315B8  41 82 01 1C */	beq lbl_808316D4
/* 808315BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808315C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808315C4  83 03 5D AC */	lwz r24, 0x5dac(r3)
/* 808315C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070502@ha */
/* 808315CC  38 03 05 02 */	addi r0, r3, 0x0502 /* 0x00070502@l */
/* 808315D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 808315D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 808315D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 808315DC  80 63 00 00 */	lwz r3, 0(r3)
/* 808315E0  38 81 00 24 */	addi r4, r1, 0x24
/* 808315E4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 808315E8  38 C0 00 00 */	li r6, 0
/* 808315EC  38 E0 00 00 */	li r7, 0
/* 808315F0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 808315F4  FC 40 08 90 */	fmr f2, f1
/* 808315F8  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 808315FC  FC 80 18 90 */	fmr f4, f3
/* 80831600  39 00 00 00 */	li r8, 0
/* 80831604  4B A7 A3 80 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80831608  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8083160C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80831610  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80831614  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80831618  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8083161C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80831620  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80831624  88 18 05 68 */	lbz r0, 0x568(r24)
/* 80831628  28 00 00 00 */	cmplwi r0, 0
/* 8083162C  41 82 00 14 */	beq lbl_80831640
/* 80831630  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80831634  EC 01 00 2A */	fadds f0, f1, f0
/* 80831638  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8083163C  48 00 00 10 */	b lbl_8083164C
lbl_80831640:
/* 80831640  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80831644  EC 01 00 28 */	fsubs f0, f1, f0
/* 80831648  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8083164C:
/* 8083164C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80831650  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80831654  7C 65 1B 78 */	mr r5, r3
/* 80831658  4B B1 5A 5C */	b PSVECSubtract
/* 8083165C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80831660  4B A3 5A C8 */	b atan2sX_Z__4cXyzCFv
/* 80831664  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80831668  88 18 05 68 */	lbz r0, 0x568(r24)
/* 8083166C  28 00 00 00 */	cmplwi r0, 0
/* 80831670  40 82 00 30 */	bne lbl_808316A0
/* 80831674  4B A3 61 F8 */	b cM_rnd__Fv
/* 80831678  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 8083167C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80831680  40 80 00 14 */	bge lbl_80831694
/* 80831684  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 80831688  38 03 40 00 */	addi r0, r3, 0x4000
/* 8083168C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80831690  48 00 00 10 */	b lbl_808316A0
lbl_80831694:
/* 80831694  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 80831698  38 03 C0 00 */	addi r0, r3, -16384
/* 8083169C  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_808316A0:
/* 808316A0  38 61 00 3C */	addi r3, r1, 0x3c
/* 808316A4  4B A3 5A AC */	b atan2sY_XZ__4cXyzCFv
/* 808316A8  B0 7D 04 DC */	sth r3, 0x4dc(r29)
/* 808316AC  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 808316B0  3C 60 80 83 */	lis r3, l_HIO@ha
/* 808316B4  38 63 2F 90 */	addi r3, r3, l_HIO@l
/* 808316B8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 808316BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 808316C0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 808316C4  38 00 00 FA */	li r0, 0xfa
/* 808316C8  98 1D 07 22 */	stb r0, 0x722(r29)
/* 808316CC  38 00 00 0A */	li r0, 0xa
/* 808316D0  90 1D 06 60 */	stw r0, 0x660(r29)
lbl_808316D4:
/* 808316D4  80 7D 07 A8 */	lwz r3, 0x7a8(r29)
/* 808316D8  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 808316DC  40 82 00 50 */	bne lbl_8083172C
/* 808316E0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 808316E4  40 82 00 48 */	bne lbl_8083172C
/* 808316E8  80 1D 0B 28 */	lwz r0, 0xb28(r29)
/* 808316EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 808316F0  40 82 00 14 */	bne lbl_80831704
/* 808316F4  38 7D 0A CC */	addi r3, r29, 0xacc
/* 808316F8  4B 85 2B C8 */	b ChkAtHit__12dCcD_GObjInfFv
/* 808316FC  28 03 00 00 */	cmplwi r3, 0
/* 80831700  40 82 00 2C */	bne lbl_8083172C
lbl_80831704:
/* 80831704  88 1D 07 22 */	lbz r0, 0x722(r29)
/* 80831708  28 00 00 00 */	cmplwi r0, 0
/* 8083170C  41 82 00 20 */	beq lbl_8083172C
/* 80831710  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 80831714  2C 00 00 01 */	cmpwi r0, 1
/* 80831718  40 81 00 14 */	ble lbl_8083172C
/* 8083171C  38 7D 0A CC */	addi r3, r29, 0xacc
/* 80831720  4B 85 2D 40 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80831724  28 03 00 00 */	cmplwi r3, 0
/* 80831728  41 82 00 BC */	beq lbl_808317E4
lbl_8083172C:
/* 8083172C  3B 00 00 00 */	li r24, 0
/* 80831730  3B 60 00 00 */	li r27, 0
/* 80831734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80831738  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 8083173C  3C 60 80 83 */	lis r3, eff_bullet_delete_id@ha
/* 80831740  3B 23 2E 8C */	addi r25, r3, eff_bullet_delete_id@l
lbl_80831744:
/* 80831744  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80831748  38 80 00 00 */	li r4, 0
/* 8083174C  90 81 00 08 */	stw r4, 8(r1)
/* 80831750  38 00 FF FF */	li r0, -1
/* 80831754  90 01 00 0C */	stw r0, 0xc(r1)
/* 80831758  90 81 00 10 */	stw r4, 0x10(r1)
/* 8083175C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80831760  90 81 00 18 */	stw r4, 0x18(r1)
/* 80831764  38 80 00 00 */	li r4, 0
/* 80831768  7C B9 DA 2E */	lhzx r5, r25, r27
/* 8083176C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80831770  38 E0 00 00 */	li r7, 0
/* 80831774  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80831778  39 21 00 54 */	addi r9, r1, 0x54
/* 8083177C  39 40 00 FF */	li r10, 0xff
/* 80831780  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80831784  4B 81 B3 0C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80831788  3B 18 00 01 */	addi r24, r24, 1
/* 8083178C  2C 18 00 04 */	cmpwi r24, 4
/* 80831790  3B 7B 00 02 */	addi r27, r27, 2
/* 80831794  41 80 FF B0 */	blt lbl_80831744
/* 80831798  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703BD@ha */
/* 8083179C  38 03 03 BD */	addi r0, r3, 0x03BD /* 0x000703BD@l */
/* 808317A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 808317A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 808317A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 808317AC  80 63 00 00 */	lwz r3, 0(r3)
/* 808317B0  38 81 00 20 */	addi r4, r1, 0x20
/* 808317B4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 808317B8  38 C0 00 00 */	li r6, 0
/* 808317BC  38 E0 00 00 */	li r7, 0
/* 808317C0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 808317C4  FC 40 08 90 */	fmr f2, f1
/* 808317C8  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 808317CC  FC 80 18 90 */	fmr f4, f3
/* 808317D0  39 00 00 00 */	li r8, 0
/* 808317D4  4B A7 A1 B0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 808317D8  7F A3 EB 78 */	mr r3, r29
/* 808317DC  4B 7E 84 A0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 808317E0  48 00 01 38 */	b lbl_80831918
lbl_808317E4:
/* 808317E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703BC@ha */
/* 808317E8  38 03 03 BC */	addi r0, r3, 0x03BC /* 0x000703BC@l */
/* 808317EC  90 01 00 28 */	stw r0, 0x28(r1)
/* 808317F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 808317F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 808317F8  80 63 00 00 */	lwz r3, 0(r3)
/* 808317FC  38 81 00 28 */	addi r4, r1, 0x28
/* 80831800  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80831804  38 C0 00 00 */	li r6, 0
/* 80831808  38 E0 00 00 */	li r7, 0
/* 8083180C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80831810  FC 40 08 90 */	fmr f2, f1
/* 80831814  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80831818  FC 80 18 90 */	fmr f4, f3
/* 8083181C  39 00 00 00 */	li r8, 0
/* 80831820  4B A7 AC EC */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80831824  3A E0 00 00 */	li r23, 0
/* 80831828  3B 80 00 00 */	li r28, 0
/* 8083182C  3B 60 00 00 */	li r27, 0
/* 80831830  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80831834  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80831838  3C 60 80 83 */	lis r3, eff_bullet_id@ha
/* 8083183C  3B 43 2E 84 */	addi r26, r3, eff_bullet_id@l
lbl_80831840:
/* 80831840  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80831844  38 00 00 FF */	li r0, 0xff
/* 80831848  90 01 00 08 */	stw r0, 8(r1)
/* 8083184C  38 80 00 00 */	li r4, 0
/* 80831850  90 81 00 0C */	stw r4, 0xc(r1)
/* 80831854  38 00 FF FF */	li r0, -1
/* 80831858  90 01 00 10 */	stw r0, 0x10(r1)
/* 8083185C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80831860  90 81 00 18 */	stw r4, 0x18(r1)
/* 80831864  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80831868  3B 1B 07 30 */	addi r24, r27, 0x730
/* 8083186C  7C 9D C0 2E */	lwzx r4, r29, r24
/* 80831870  38 A0 00 00 */	li r5, 0
/* 80831874  7C DA E2 2E */	lhzx r6, r26, r28
/* 80831878  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 8083187C  39 00 00 00 */	li r8, 0
/* 80831880  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 80831884  39 41 00 54 */	addi r10, r1, 0x54
/* 80831888  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8083188C  4B 81 BC 40 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80831890  7C 7D C1 2E */	stwx r3, r29, r24
/* 80831894  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80831898  38 63 02 10 */	addi r3, r3, 0x210
/* 8083189C  7C 9D C0 2E */	lwzx r4, r29, r24
/* 808318A0  4B 81 A0 78 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 808318A4  28 03 00 00 */	cmplwi r3, 0
/* 808318A8  41 82 00 28 */	beq lbl_808318D0
/* 808318AC  E0 1D 04 D0 */	psq_l f0, 1232(r29), 0, 0 /* qr0 */
/* 808318B0  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 808318B4  F0 01 00 30 */	psq_st f0, 48(r1), 0, 0 /* qr0 */
/* 808318B8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 808318BC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 808318C0  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 808318C4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 808318C8  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 808318CC  D0 23 00 AC */	stfs f1, 0xac(r3)
lbl_808318D0:
/* 808318D0  3A F7 00 01 */	addi r23, r23, 1
/* 808318D4  2C 17 00 03 */	cmpwi r23, 3
/* 808318D8  3B 9C 00 02 */	addi r28, r28, 2
/* 808318DC  3B 7B 00 04 */	addi r27, r27, 4
/* 808318E0  41 80 FF 60 */	blt lbl_80831840
/* 808318E4  38 7D 0B F0 */	addi r3, r29, 0xbf0
/* 808318E8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 808318EC  4B A3 DD 5C */	b SetC__8cM3dGSphFRC4cXyz
/* 808318F0  38 7D 0B F0 */	addi r3, r29, 0xbf0
/* 808318F4  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 808318F8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 808318FC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80831900  4B A3 DE 08 */	b SetR__8cM3dGSphFf
/* 80831904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80831908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083190C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80831910  38 9D 0A CC */	addi r4, r29, 0xacc
/* 80831914  4B A3 32 94 */	b Set__4cCcSFP8cCcD_Obj
lbl_80831918:
/* 80831918  39 61 00 90 */	addi r11, r1, 0x90
/* 8083191C  4B B3 08 F4 */	b _restgpr_23
/* 80831920  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80831924  7C 08 03 A6 */	mtlr r0
/* 80831928  38 21 00 90 */	addi r1, r1, 0x90
/* 8083192C  4E 80 00 20 */	blr 
