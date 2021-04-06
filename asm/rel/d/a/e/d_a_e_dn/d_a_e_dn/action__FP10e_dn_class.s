lbl_804EB344:
/* 804EB344  94 21 FD 70 */	stwu r1, -0x290(r1)
/* 804EB348  7C 08 02 A6 */	mflr r0
/* 804EB34C  90 01 02 94 */	stw r0, 0x294(r1)
/* 804EB350  DB E1 02 80 */	stfd f31, 0x280(r1)
/* 804EB354  F3 E1 02 88 */	psq_st f31, 648(r1), 0, 0 /* qr0 */
/* 804EB358  39 61 02 80 */	addi r11, r1, 0x280
/* 804EB35C  4B E7 6E 6D */	bl _savegpr_24
/* 804EB360  7C 7F 1B 78 */	mr r31, r3
/* 804EB364  3C 80 80 4F */	lis r4, lit_3789@ha /* 0x804EE8AC@ha */
/* 804EB368  3B A4 E8 AC */	addi r29, r4, lit_3789@l /* 0x804EE8AC@l */
/* 804EB36C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804EB370  3B 24 61 C0 */	addi r25, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804EB374  83 D9 5D AC */	lwz r30, 0x5dac(r25)
/* 804EB378  38 00 00 00 */	li r0, 0
/* 804EB37C  98 03 06 F4 */	stb r0, 0x6f4(r3)
/* 804EB380  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 804EB384  4B B2 F5 E1 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804EB388  D0 3F 06 D0 */	stfs f1, 0x6d0(r31)
/* 804EB38C  7F E3 FB 78 */	mr r3, r31
/* 804EB390  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 804EB394  4B B2 F3 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804EB398  B0 7F 06 D4 */	sth r3, 0x6d4(r31)
/* 804EB39C  7F E3 FB 78 */	mr r3, r31
/* 804EB3A0  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 804EB3A4  4B B2 F3 95 */	bl fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804EB3A8  B0 7F 06 D6 */	sth r3, 0x6d6(r31)
/* 804EB3AC  7F E3 FB 78 */	mr r3, r31
/* 804EB3B0  4B FF FB E5 */	bl damage_check__FP10e_dn_class
/* 804EB3B4  38 00 00 00 */	li r0, 0
/* 804EB3B8  98 1F 08 2E */	stb r0, 0x82e(r31)
/* 804EB3BC  3B 80 00 00 */	li r28, 0
/* 804EB3C0  3B 00 00 01 */	li r24, 1
/* 804EB3C4  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 804EB3C8  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 804EB3CC  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 804EB3D0  7F C3 F3 78 */	mr r3, r30
/* 804EB3D4  7F E4 FB 78 */	mr r4, r31
/* 804EB3D8  4B B3 1A 25 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804EB3DC  2C 03 00 00 */	cmpwi r3, 0
/* 804EB3E0  41 82 00 1C */	beq lbl_804EB3FC
/* 804EB3E4  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 804EB3E8  54 00 00 3E */	slwi r0, r0, 0
/* 804EB3EC  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 804EB3F0  38 00 00 00 */	li r0, 0
/* 804EB3F4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 804EB3F8  48 00 00 0C */	b lbl_804EB404
lbl_804EB3FC:
/* 804EB3FC  38 00 00 04 */	li r0, 4
/* 804EB400  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_804EB404:
/* 804EB404  A8 1F 06 CE */	lha r0, 0x6ce(r31)
/* 804EB408  28 00 00 3C */	cmplwi r0, 0x3c
/* 804EB40C  41 81 01 14 */	bgt lbl_804EB520
/* 804EB410  3C 60 80 4F */	lis r3, lit_6935@ha /* 0x804EEBA8@ha */
/* 804EB414  38 63 EB A8 */	addi r3, r3, lit_6935@l /* 0x804EEBA8@l */
/* 804EB418  54 00 10 3A */	slwi r0, r0, 2
/* 804EB41C  7C 03 00 2E */	lwzx r0, r3, r0
/* 804EB420  7C 09 03 A6 */	mtctr r0
/* 804EB424  4E 80 04 20 */	bctr 
lbl_804EB428:
/* 804EB428  7F E3 FB 78 */	mr r3, r31
/* 804EB42C  4B FF BE 9D */	bl e_dn_normal__FP10e_dn_class
/* 804EB430  48 00 00 F0 */	b lbl_804EB520
lbl_804EB434:
/* 804EB434  7F E3 FB 78 */	mr r3, r31
/* 804EB438  4B FF C8 E1 */	bl e_dn_fight_run__FP10e_dn_class
/* 804EB43C  3B 80 00 01 */	li r28, 1
/* 804EB440  48 00 00 E0 */	b lbl_804EB520
lbl_804EB444:
/* 804EB444  7F E3 FB 78 */	mr r3, r31
/* 804EB448  4B FF D9 91 */	bl e_dn_attack_0__FP10e_dn_class
/* 804EB44C  3B 80 00 01 */	li r28, 1
/* 804EB450  48 00 00 D0 */	b lbl_804EB520
lbl_804EB454:
/* 804EB454  7F E3 FB 78 */	mr r3, r31
/* 804EB458  4B FF DB 21 */	bl e_dn_attack__FP10e_dn_class
/* 804EB45C  3B 80 00 01 */	li r28, 1
/* 804EB460  48 00 00 C0 */	b lbl_804EB520
lbl_804EB464:
/* 804EB464  7F E3 FB 78 */	mr r3, r31
/* 804EB468  4B FF DE ED */	bl e_dn_tail_attack__FP10e_dn_class
/* 804EB46C  3B 80 00 01 */	li r28, 1
/* 804EB470  48 00 00 B0 */	b lbl_804EB520
lbl_804EB474:
/* 804EB474  7F E3 FB 78 */	mr r3, r31
/* 804EB478  4B FF E0 CD */	bl e_dn_guard__FP10e_dn_class
/* 804EB47C  3B 80 00 01 */	li r28, 1
/* 804EB480  48 00 00 A0 */	b lbl_804EB520
lbl_804EB484:
/* 804EB484  7F E3 FB 78 */	mr r3, r31
/* 804EB488  4B FF D1 99 */	bl e_dn_jump__FP10e_dn_class
/* 804EB48C  3B 80 00 01 */	li r28, 1
/* 804EB490  48 00 00 90 */	b lbl_804EB520
lbl_804EB494:
/* 804EB494  7F E3 FB 78 */	mr r3, r31
/* 804EB498  4B FF B1 71 */	bl e_dn_stay__FP10e_dn_class
/* 804EB49C  48 00 00 84 */	b lbl_804EB520
lbl_804EB4A0:
/* 804EB4A0  7F E3 FB 78 */	mr r3, r31
/* 804EB4A4  4B FF B5 E9 */	bl e_dn_otoreac__FP10e_dn_class
/* 804EB4A8  48 00 00 78 */	b lbl_804EB520
lbl_804EB4AC:
/* 804EB4AC  7F E3 FB 78 */	mr r3, r31
/* 804EB4B0  4B FF C1 71 */	bl e_dn_drawback__FP10e_dn_class
/* 804EB4B4  3B 80 00 01 */	li r28, 1
/* 804EB4B8  48 00 00 68 */	b lbl_804EB520
lbl_804EB4BC:
/* 804EB4BC  7F E3 FB 78 */	mr r3, r31
/* 804EB4C0  4B FF C2 E9 */	bl e_dn_wolfbite__FP10e_dn_class
/* 804EB4C4  48 00 00 5C */	b lbl_804EB520
lbl_804EB4C8:
/* 804EB4C8  7F E3 FB 78 */	mr r3, r31
/* 804EB4CC  4B FF B8 F1 */	bl e_dn_bomb_action__FP10e_dn_class
/* 804EB4D0  48 00 00 50 */	b lbl_804EB520
lbl_804EB4D4:
/* 804EB4D4  7F E3 FB 78 */	mr r3, r31
/* 804EB4D8  4B FF E2 65 */	bl e_dn_s_damage__FP10e_dn_class
/* 804EB4DC  48 00 00 44 */	b lbl_804EB520
lbl_804EB4E0:
/* 804EB4E0  7F E3 FB 78 */	mr r3, r31
/* 804EB4E4  4B FF E6 85 */	bl e_dn_damage__FP10e_dn_class
/* 804EB4E8  48 00 00 38 */	b lbl_804EB520
lbl_804EB4EC:
/* 804EB4EC  7F E3 FB 78 */	mr r3, r31
/* 804EB4F0  4B FF F2 11 */	bl e_dn_backdrop__FP10e_dn_class
/* 804EB4F4  48 00 00 2C */	b lbl_804EB520
lbl_804EB4F8:
/* 804EB4F8  7F E3 FB 78 */	mr r3, r31
/* 804EB4FC  4B FF F3 59 */	bl e_dn_water__FP10e_dn_class
/* 804EB500  3B 00 00 00 */	li r24, 0
/* 804EB504  48 00 00 1C */	b lbl_804EB520
lbl_804EB508:
/* 804EB508  7F E3 FB 78 */	mr r3, r31
/* 804EB50C  4B FF D3 3D */	bl e_dn_gakejump__FP10e_dn_class
/* 804EB510  3B 80 00 01 */	li r28, 1
/* 804EB514  48 00 00 0C */	b lbl_804EB520
lbl_804EB518:
/* 804EB518  7F E3 FB 78 */	mr r3, r31
/* 804EB51C  4B FF F4 D9 */	bl e_dn_reg__FP10e_dn_class
lbl_804EB520:
/* 804EB520  7F 00 07 75 */	extsb. r0, r24
/* 804EB524  41 82 01 30 */	beq lbl_804EB654
/* 804EB528  3B 21 01 E8 */	addi r25, r1, 0x1e8
/* 804EB52C  7F 23 CB 78 */	mr r3, r25
/* 804EB530  4B B8 C0 4D */	bl __ct__11dBgS_GndChkFv
/* 804EB534  3C 60 80 4F */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x804EEEA8@ha */
/* 804EB538  38 63 EE A8 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x804EEEA8@l */
/* 804EB53C  90 61 01 F8 */	stw r3, 0x1f8(r1)
/* 804EB540  3B 43 00 0C */	addi r26, r3, 0xc
/* 804EB544  93 41 02 08 */	stw r26, 0x208(r1)
/* 804EB548  3B 63 00 18 */	addi r27, r3, 0x18
/* 804EB54C  93 61 02 24 */	stw r27, 0x224(r1)
/* 804EB550  3B 03 00 24 */	addi r24, r3, 0x24
/* 804EB554  93 01 02 34 */	stw r24, 0x234(r1)
/* 804EB558  38 79 00 3C */	addi r3, r25, 0x3c
/* 804EB55C  4B B8 D9 0D */	bl SetObj__16dBgS_PolyPassChkFv
/* 804EB560  38 61 01 94 */	addi r3, r1, 0x194
/* 804EB564  4B B8 C2 4D */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 804EB568  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804EB56C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EB570  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804EB574  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 804EB578  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804EB57C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EB580  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 804EB584  EC 01 00 2A */	fadds f0, f1, f0
/* 804EB588  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EB58C  38 61 01 94 */	addi r3, r1, 0x194
/* 804EB590  38 81 00 C4 */	addi r4, r1, 0xc4
/* 804EB594  4B D7 C7 95 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 804EB598  7F 23 CB 78 */	mr r3, r25
/* 804EB59C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 804EB5A0  4B D7 C7 89 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 804EB5A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804EB5A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804EB5AC  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 804EB5B0  7F 23 CB 78 */	mr r3, r25
/* 804EB5B4  38 81 01 94 */	addi r4, r1, 0x194
/* 804EB5B8  4B B8 8E E9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804EB5BC  D0 3F 0A 5C */	stfs f1, 0xa5c(r31)
/* 804EB5C0  7F 23 CB 78 */	mr r3, r25
/* 804EB5C4  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 804EB5C8  4B B8 8E D9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804EB5CC  C0 5F 0A 5C */	lfs f2, 0xa5c(r31)
/* 804EB5D0  EC 22 08 28 */	fsubs f1, f2, f1
/* 804EB5D4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804EB5D8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804EB5DC  40 80 00 48 */	bge lbl_804EB624
/* 804EB5E0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 804EB5E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EB5E8  40 81 00 3C */	ble lbl_804EB624
/* 804EB5EC  38 00 00 18 */	li r0, 0x18
/* 804EB5F0  B0 1F 06 CE */	sth r0, 0x6ce(r31)
/* 804EB5F4  7F 23 CB 78 */	mr r3, r25
/* 804EB5F8  38 81 01 A8 */	addi r4, r1, 0x1a8
/* 804EB5FC  4B B8 98 55 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 804EB600  2C 03 00 06 */	cmpwi r3, 6
/* 804EB604  40 82 00 10 */	bne lbl_804EB614
/* 804EB608  38 00 00 01 */	li r0, 1
/* 804EB60C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 804EB610  48 00 00 0C */	b lbl_804EB61C
lbl_804EB614:
/* 804EB614  38 00 00 00 */	li r0, 0
/* 804EB618  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_804EB61C:
/* 804EB61C  C0 1F 0A 5C */	lfs f0, 0xa5c(r31)
/* 804EB620  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_804EB624:
/* 804EB624  38 61 01 94 */	addi r3, r1, 0x194
/* 804EB628  38 80 FF FF */	li r4, -1
/* 804EB62C  4B B8 C2 1D */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 804EB630  3C 60 80 4F */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x804EEEA8@ha */
/* 804EB634  38 03 EE A8 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x804EEEA8@l */
/* 804EB638  90 01 01 F8 */	stw r0, 0x1f8(r1)
/* 804EB63C  93 41 02 08 */	stw r26, 0x208(r1)
/* 804EB640  93 61 02 24 */	stw r27, 0x224(r1)
/* 804EB644  93 01 02 34 */	stw r24, 0x234(r1)
/* 804EB648  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 804EB64C  38 80 00 00 */	li r4, 0
/* 804EB650  4B B8 BF A1 */	bl __dt__11dBgS_GndChkFv
lbl_804EB654:
/* 804EB654  7F 80 07 75 */	extsb. r0, r28
/* 804EB658  41 82 00 14 */	beq lbl_804EB66C
/* 804EB65C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804EB660  38 80 00 01 */	li r4, 1
/* 804EB664  4B DD 65 19 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 804EB668  48 00 00 10 */	b lbl_804EB678
lbl_804EB66C:
/* 804EB66C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804EB670  38 80 00 00 */	li r4, 0
/* 804EB674  4B DD 65 09 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_804EB678:
/* 804EB678  88 1F 08 2E */	lbz r0, 0x82e(r31)
/* 804EB67C  7C 00 07 75 */	extsb. r0, r0
/* 804EB680  40 82 00 18 */	bne lbl_804EB698
/* 804EB684  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 804EB688  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 804EB68C  38 A0 00 02 */	li r5, 2
/* 804EB690  38 C0 20 00 */	li r6, 0x2000
/* 804EB694  4B D8 4F 75 */	bl cLib_addCalcAngleS2__FPssss
lbl_804EB698:
/* 804EB698  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 804EB69C  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 804EB6A0  38 A0 00 02 */	li r5, 2
/* 804EB6A4  38 C0 20 00 */	li r6, 0x2000
/* 804EB6A8  4B D8 4F 61 */	bl cLib_addCalcAngleS2__FPssss
/* 804EB6AC  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 804EB6B0  A8 9F 04 E0 */	lha r4, 0x4e0(r31)
/* 804EB6B4  38 A0 00 02 */	li r5, 2
/* 804EB6B8  38 C0 20 00 */	li r6, 0x2000
/* 804EB6BC  4B D8 4F 4D */	bl cLib_addCalcAngleS2__FPssss
/* 804EB6C0  88 1F 05 D8 */	lbz r0, 0x5d8(r31)
/* 804EB6C4  7C 00 07 75 */	extsb. r0, r0
/* 804EB6C8  41 82 02 E0 */	beq lbl_804EB9A8
/* 804EB6CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804EB6D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804EB6D4  80 63 00 00 */	lwz r3, 0(r3)
/* 804EB6D8  A8 9F 05 D4 */	lha r4, 0x5d4(r31)
/* 804EB6DC  4B B2 0D 01 */	bl mDoMtx_YrotS__FPA4_fs
/* 804EB6E0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804EB6E4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804EB6E8  80 63 00 00 */	lwz r3, 0(r3)
/* 804EB6EC  A8 9F 05 D6 */	lha r4, 0x5d6(r31)
/* 804EB6F0  4B B2 0C AD */	bl mDoMtx_XrotM__FPA4_fs
/* 804EB6F4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EB6F8  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EB6FC  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EB700  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 804EB704  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EB708  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804EB70C  38 81 00 B8 */	addi r4, r1, 0xb8
/* 804EB710  4B D8 57 DD */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EB714  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804EB718  38 81 00 B8 */	addi r4, r1, 0xb8
/* 804EB71C  7C 65 1B 78 */	mr r5, r3
/* 804EB720  4B E5 B9 71 */	bl PSVECAdd
/* 804EB724  38 61 00 64 */	addi r3, r1, 0x64
/* 804EB728  38 9F 05 BC */	addi r4, r31, 0x5bc
/* 804EB72C  38 BF 05 C8 */	addi r5, r31, 0x5c8
/* 804EB730  4B D7 B4 05 */	bl __mi__4cXyzCFRC3Vec
/* 804EB734  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 804EB738  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EB73C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 804EB740  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EB744  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 804EB748  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EB74C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804EB750  4B E5 B9 E9 */	bl PSVECSquareMag
/* 804EB754  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EB758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EB75C  40 81 00 58 */	ble lbl_804EB7B4
/* 804EB760  FC 00 08 34 */	frsqrte f0, f1
/* 804EB764  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 804EB768  FC 44 00 32 */	fmul f2, f4, f0
/* 804EB76C  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 804EB770  FC 00 00 32 */	fmul f0, f0, f0
/* 804EB774  FC 01 00 32 */	fmul f0, f1, f0
/* 804EB778  FC 03 00 28 */	fsub f0, f3, f0
/* 804EB77C  FC 02 00 32 */	fmul f0, f2, f0
/* 804EB780  FC 44 00 32 */	fmul f2, f4, f0
/* 804EB784  FC 00 00 32 */	fmul f0, f0, f0
/* 804EB788  FC 01 00 32 */	fmul f0, f1, f0
/* 804EB78C  FC 03 00 28 */	fsub f0, f3, f0
/* 804EB790  FC 02 00 32 */	fmul f0, f2, f0
/* 804EB794  FC 44 00 32 */	fmul f2, f4, f0
/* 804EB798  FC 00 00 32 */	fmul f0, f0, f0
/* 804EB79C  FC 01 00 32 */	fmul f0, f1, f0
/* 804EB7A0  FC 03 00 28 */	fsub f0, f3, f0
/* 804EB7A4  FC 02 00 32 */	fmul f0, f2, f0
/* 804EB7A8  FF E1 00 32 */	fmul f31, f1, f0
/* 804EB7AC  FF E0 F8 18 */	frsp f31, f31
/* 804EB7B0  48 00 00 90 */	b lbl_804EB840
lbl_804EB7B4:
/* 804EB7B4  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 804EB7B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EB7BC  40 80 00 10 */	bge lbl_804EB7CC
/* 804EB7C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804EB7C4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804EB7C8  48 00 00 78 */	b lbl_804EB840
lbl_804EB7CC:
/* 804EB7CC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804EB7D0  80 81 00 24 */	lwz r4, 0x24(r1)
/* 804EB7D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804EB7D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 804EB7DC  7C 03 00 00 */	cmpw r3, r0
/* 804EB7E0  41 82 00 14 */	beq lbl_804EB7F4
/* 804EB7E4  40 80 00 40 */	bge lbl_804EB824
/* 804EB7E8  2C 03 00 00 */	cmpwi r3, 0
/* 804EB7EC  41 82 00 20 */	beq lbl_804EB80C
/* 804EB7F0  48 00 00 34 */	b lbl_804EB824
lbl_804EB7F4:
/* 804EB7F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804EB7F8  41 82 00 0C */	beq lbl_804EB804
/* 804EB7FC  38 00 00 01 */	li r0, 1
/* 804EB800  48 00 00 28 */	b lbl_804EB828
lbl_804EB804:
/* 804EB804  38 00 00 02 */	li r0, 2
/* 804EB808  48 00 00 20 */	b lbl_804EB828
lbl_804EB80C:
/* 804EB80C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804EB810  41 82 00 0C */	beq lbl_804EB81C
/* 804EB814  38 00 00 05 */	li r0, 5
/* 804EB818  48 00 00 10 */	b lbl_804EB828
lbl_804EB81C:
/* 804EB81C  38 00 00 03 */	li r0, 3
/* 804EB820  48 00 00 08 */	b lbl_804EB828
lbl_804EB824:
/* 804EB824  38 00 00 04 */	li r0, 4
lbl_804EB828:
/* 804EB828  2C 00 00 01 */	cmpwi r0, 1
/* 804EB82C  40 82 00 10 */	bne lbl_804EB83C
/* 804EB830  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804EB834  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804EB838  48 00 00 08 */	b lbl_804EB840
lbl_804EB83C:
/* 804EB83C  FF E0 08 90 */	fmr f31, f1
lbl_804EB840:
/* 804EB840  38 61 00 58 */	addi r3, r1, 0x58
/* 804EB844  38 9F 05 BC */	addi r4, r31, 0x5bc
/* 804EB848  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804EB84C  4B D7 B2 E9 */	bl __mi__4cXyzCFRC3Vec
/* 804EB850  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 804EB854  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EB858  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804EB85C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EB860  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804EB864  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EB868  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804EB86C  4B E5 B8 CD */	bl PSVECSquareMag
/* 804EB870  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EB874  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EB878  40 81 00 58 */	ble lbl_804EB8D0
/* 804EB87C  FC 00 08 34 */	frsqrte f0, f1
/* 804EB880  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 804EB884  FC 44 00 32 */	fmul f2, f4, f0
/* 804EB888  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 804EB88C  FC 00 00 32 */	fmul f0, f0, f0
/* 804EB890  FC 01 00 32 */	fmul f0, f1, f0
/* 804EB894  FC 03 00 28 */	fsub f0, f3, f0
/* 804EB898  FC 02 00 32 */	fmul f0, f2, f0
/* 804EB89C  FC 44 00 32 */	fmul f2, f4, f0
/* 804EB8A0  FC 00 00 32 */	fmul f0, f0, f0
/* 804EB8A4  FC 01 00 32 */	fmul f0, f1, f0
/* 804EB8A8  FC 03 00 28 */	fsub f0, f3, f0
/* 804EB8AC  FC 02 00 32 */	fmul f0, f2, f0
/* 804EB8B0  FC 44 00 32 */	fmul f2, f4, f0
/* 804EB8B4  FC 00 00 32 */	fmul f0, f0, f0
/* 804EB8B8  FC 01 00 32 */	fmul f0, f1, f0
/* 804EB8BC  FC 03 00 28 */	fsub f0, f3, f0
/* 804EB8C0  FC 02 00 32 */	fmul f0, f2, f0
/* 804EB8C4  FC 21 00 32 */	fmul f1, f1, f0
/* 804EB8C8  FC 20 08 18 */	frsp f1, f1
/* 804EB8CC  48 00 00 88 */	b lbl_804EB954
lbl_804EB8D0:
/* 804EB8D0  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 804EB8D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EB8D8  40 80 00 10 */	bge lbl_804EB8E8
/* 804EB8DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804EB8E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804EB8E4  48 00 00 70 */	b lbl_804EB954
lbl_804EB8E8:
/* 804EB8E8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804EB8EC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 804EB8F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804EB8F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 804EB8F8  7C 03 00 00 */	cmpw r3, r0
/* 804EB8FC  41 82 00 14 */	beq lbl_804EB910
/* 804EB900  40 80 00 40 */	bge lbl_804EB940
/* 804EB904  2C 03 00 00 */	cmpwi r3, 0
/* 804EB908  41 82 00 20 */	beq lbl_804EB928
/* 804EB90C  48 00 00 34 */	b lbl_804EB940
lbl_804EB910:
/* 804EB910  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804EB914  41 82 00 0C */	beq lbl_804EB920
/* 804EB918  38 00 00 01 */	li r0, 1
/* 804EB91C  48 00 00 28 */	b lbl_804EB944
lbl_804EB920:
/* 804EB920  38 00 00 02 */	li r0, 2
/* 804EB924  48 00 00 20 */	b lbl_804EB944
lbl_804EB928:
/* 804EB928  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804EB92C  41 82 00 0C */	beq lbl_804EB938
/* 804EB930  38 00 00 05 */	li r0, 5
/* 804EB934  48 00 00 10 */	b lbl_804EB944
lbl_804EB938:
/* 804EB938  38 00 00 03 */	li r0, 3
/* 804EB93C  48 00 00 08 */	b lbl_804EB944
lbl_804EB940:
/* 804EB940  38 00 00 04 */	li r0, 4
lbl_804EB944:
/* 804EB944  2C 00 00 01 */	cmpwi r0, 1
/* 804EB948  40 82 00 0C */	bne lbl_804EB954
/* 804EB94C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804EB950  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804EB954:
/* 804EB954  C0 1D 01 2C */	lfs f0, 0x12c(r29)
/* 804EB958  EC 60 07 F2 */	fmuls f3, f0, f31
/* 804EB95C  C0 1D 00 A0 */	lfs f0, 0xa0(r29)
/* 804EB960  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804EB964  40 81 00 08 */	ble lbl_804EB96C
/* 804EB968  FC 60 00 90 */	fmr f3, f0
lbl_804EB96C:
/* 804EB96C  C0 5D 00 B4 */	lfs f2, 0xb4(r29)
/* 804EB970  EC 01 F8 24 */	fdivs f0, f1, f31
/* 804EB974  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EB978  FC 00 00 1E */	fctiwz f0, f0
/* 804EB97C  D8 01 02 40 */	stfd f0, 0x240(r1)
/* 804EB980  80 01 02 44 */	lwz r0, 0x244(r1)
/* 804EB984  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804EB988  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804EB98C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804EB990  7C 03 04 2E */	lfsx f0, r3, r0
/* 804EB994  EC 03 00 32 */	fmuls f0, f3, f0
/* 804EB998  D0 1F 07 20 */	stfs f0, 0x720(r31)
/* 804EB99C  38 00 00 00 */	li r0, 0
/* 804EB9A0  98 1F 05 D8 */	stb r0, 0x5d8(r31)
/* 804EB9A4  48 00 01 8C */	b lbl_804EBB30
lbl_804EB9A8:
/* 804EB9A8  38 7F 07 20 */	addi r3, r31, 0x720
/* 804EB9AC  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804EB9B0  C0 5D 00 4C */	lfs f2, 0x4c(r29)
/* 804EB9B4  4B D8 40 CD */	bl cLib_addCalc0__FPfff
/* 804EB9B8  C0 3F 07 04 */	lfs f1, 0x704(r31)
/* 804EB9BC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EB9C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804EB9C4  41 82 00 48 */	beq lbl_804EBA0C
/* 804EB9C8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804EB9CC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804EB9D0  80 63 00 00 */	lwz r3, 0(r3)
/* 804EB9D4  A8 9F 07 26 */	lha r4, 0x726(r31)
/* 804EB9D8  4B B2 0A 05 */	bl mDoMtx_YrotS__FPA4_fs
/* 804EB9DC  A8 1F 08 40 */	lha r0, 0x840(r31)
/* 804EB9E0  2C 00 00 00 */	cmpwi r0, 0
/* 804EB9E4  40 82 00 10 */	bne lbl_804EB9F4
/* 804EB9E8  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 804EB9EC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EB9F0  48 00 00 10 */	b lbl_804EBA00
lbl_804EB9F4:
/* 804EB9F4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EB9F8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EB9FC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_804EBA00:
/* 804EBA00  C0 1D 01 30 */	lfs f0, 0x130(r29)
/* 804EBA04  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 804EBA08  48 00 00 20 */	b lbl_804EBA28
lbl_804EBA0C:
/* 804EBA0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804EBA10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804EBA14  80 63 00 00 */	lwz r3, 0(r3)
/* 804EBA18  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 804EBA1C  4B B2 09 C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 804EBA20  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 804EBA24  D0 01 00 CC */	stfs f0, 0xcc(r1)
lbl_804EBA28:
/* 804EBA28  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EBA2C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EBA30  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EBA34  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804EBA38  38 81 00 B8 */	addi r4, r1, 0xb8
/* 804EBA3C  4B D8 54 B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EBA40  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 804EBA44  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 804EBA48  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 804EBA4C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 804EBA50  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 804EBA54  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 804EBA58  EC 01 00 2A */	fadds f0, f1, f0
/* 804EBA5C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804EBA60  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804EBA64  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 804EBA68  7C 65 1B 78 */	mr r5, r3
/* 804EBA6C  4B E5 B6 25 */	bl PSVECAdd
/* 804EBA70  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 804EBA74  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 804EBA78  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 804EBA7C  C0 1D 00 FC */	lfs f0, 0xfc(r29)
/* 804EBA80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EBA84  40 80 00 08 */	bge lbl_804EBA8C
/* 804EBA88  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_804EBA8C:
/* 804EBA8C  A8 1F 06 CE */	lha r0, 0x6ce(r31)
/* 804EBA90  2C 00 00 09 */	cmpwi r0, 9
/* 804EBA94  41 82 00 38 */	beq lbl_804EBACC
/* 804EBA98  88 1F 06 F2 */	lbz r0, 0x6f2(r31)
/* 804EBA9C  7C 00 07 75 */	extsb. r0, r0
/* 804EBAA0  41 82 00 2C */	beq lbl_804EBACC
/* 804EBAA4  34 7F 0A 60 */	addic. r3, r31, 0xa60
/* 804EBAA8  41 82 00 24 */	beq lbl_804EBACC
/* 804EBAAC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804EBAB0  C0 03 00 00 */	lfs f0, 0(r3)
/* 804EBAB4  EC 01 00 2A */	fadds f0, f1, f0
/* 804EBAB8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804EBABC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 804EBAC0  C0 03 00 08 */	lfs f0, 8(r3)
/* 804EBAC4  EC 01 00 2A */	fadds f0, f1, f0
/* 804EBAC8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_804EBACC:
/* 804EBACC  C0 3F 07 08 */	lfs f1, 0x708(r31)
/* 804EBAD0  C0 1D 00 68 */	lfs f0, 0x68(r29)
/* 804EBAD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EBAD8  40 81 00 58 */	ble lbl_804EBB30
/* 804EBADC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EBAE0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EBAE4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EBAE8  FC 00 08 50 */	fneg f0, f1
/* 804EBAEC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EBAF0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804EBAF4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804EBAF8  80 63 00 00 */	lwz r3, 0(r3)
/* 804EBAFC  A8 9F 07 0C */	lha r4, 0x70c(r31)
/* 804EBB00  4B B2 08 DD */	bl mDoMtx_YrotS__FPA4_fs
/* 804EBB04  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804EBB08  38 81 00 B8 */	addi r4, r1, 0xb8
/* 804EBB0C  4B D8 53 E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EBB10  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804EBB14  38 81 00 B8 */	addi r4, r1, 0xb8
/* 804EBB18  7C 65 1B 78 */	mr r5, r3
/* 804EBB1C  4B E5 B5 75 */	bl PSVECAdd
/* 804EBB20  38 7F 07 08 */	addi r3, r31, 0x708
/* 804EBB24  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804EBB28  C0 5D 01 34 */	lfs f2, 0x134(r29)
/* 804EBB2C  4B D8 3F 55 */	bl cLib_addCalc0__FPfff
lbl_804EBB30:
/* 804EBB30  3B 80 08 00 */	li r28, 0x800
/* 804EBB34  88 7F 07 00 */	lbz r3, 0x700(r31)
/* 804EBB38  7C 60 07 75 */	extsb. r0, r3
/* 804EBB3C  41 82 00 74 */	beq lbl_804EBBB0
/* 804EBB40  38 03 FF FF */	addi r0, r3, -1
/* 804EBB44  98 1F 07 00 */	stb r0, 0x700(r31)
/* 804EBB48  38 00 00 02 */	li r0, 2
/* 804EBB4C  98 1F 06 F4 */	stb r0, 0x6f4(r31)
/* 804EBB50  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804EBB54  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804EBB58  80 63 00 00 */	lwz r3, 0(r3)
/* 804EBB5C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 804EBB60  4B B2 08 7D */	bl mDoMtx_YrotS__FPA4_fs
/* 804EBB64  88 1F 07 01 */	lbz r0, 0x701(r31)
/* 804EBB68  7C 00 07 75 */	extsb. r0, r0
/* 804EBB6C  41 82 00 0C */	beq lbl_804EBB78
/* 804EBB70  C0 1D 00 00 */	lfs f0, 0(r29)
/* 804EBB74  48 00 00 08 */	b lbl_804EBB7C
lbl_804EBB78:
/* 804EBB78  C0 1D 00 FC */	lfs f0, 0xfc(r29)
lbl_804EBB7C:
/* 804EBB7C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EBB80  C0 1D 00 00 */	lfs f0, 0(r29)
/* 804EBB84  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EBB88  C0 1D 00 FC */	lfs f0, 0xfc(r29)
/* 804EBB8C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EBB90  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804EBB94  38 9F 07 38 */	addi r4, r31, 0x738
/* 804EBB98  4B D8 53 55 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EBB9C  38 7F 07 38 */	addi r3, r31, 0x738
/* 804EBBA0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804EBBA4  7C 65 1B 78 */	mr r5, r3
/* 804EBBA8  4B E5 B4 E9 */	bl PSVECAdd
/* 804EBBAC  3B 80 04 00 */	li r28, 0x400
lbl_804EBBB0:
/* 804EBBB0  88 7F 06 F4 */	lbz r3, 0x6f4(r31)
/* 804EBBB4  7C 60 07 75 */	extsb. r0, r3
/* 804EBBB8  41 82 01 D4 */	beq lbl_804EBD8C
/* 804EBBBC  7C 60 07 74 */	extsb r0, r3
/* 804EBBC0  2C 00 00 05 */	cmpwi r0, 5
/* 804EBBC4  40 82 00 40 */	bne lbl_804EBC04
/* 804EBBC8  A8 1F 06 CC */	lha r0, 0x6cc(r31)
/* 804EBBCC  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 804EBBD0  40 82 01 B0 */	bne lbl_804EBD80
/* 804EBBD4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804EBBD8  4B D7 BD 7D */	bl cM_rndF__Ff
/* 804EBBDC  C0 1D 01 2C */	lfs f0, 0x12c(r29)
/* 804EBBE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EBBE4  40 80 01 9C */	bge lbl_804EBD80
/* 804EBBE8  C0 3D 01 38 */	lfs f1, 0x138(r29)
/* 804EBBEC  4B D7 BD A1 */	bl cM_rndFX__Ff
/* 804EBBF0  FC 00 08 1E */	fctiwz f0, f1
/* 804EBBF4  D8 01 02 40 */	stfd f0, 0x240(r1)
/* 804EBBF8  80 01 02 44 */	lwz r0, 0x244(r1)
/* 804EBBFC  B0 1F 06 FC */	sth r0, 0x6fc(r31)
/* 804EBC00  48 00 01 80 */	b lbl_804EBD80
lbl_804EBC04:
/* 804EBC04  2C 00 00 01 */	cmpwi r0, 1
/* 804EBC08  40 82 00 30 */	bne lbl_804EBC38
/* 804EBC0C  38 61 00 4C */	addi r3, r1, 0x4c
/* 804EBC10  38 9E 05 38 */	addi r4, r30, 0x538
/* 804EBC14  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804EBC18  4B D7 AF 1D */	bl __mi__4cXyzCFRC3Vec
/* 804EBC1C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804EBC20  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EBC24  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 804EBC28  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EBC2C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 804EBC30  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EBC34  48 00 00 60 */	b lbl_804EBC94
lbl_804EBC38:
/* 804EBC38  2C 00 00 02 */	cmpwi r0, 2
/* 804EBC3C  40 82 00 30 */	bne lbl_804EBC6C
/* 804EBC40  38 61 00 40 */	addi r3, r1, 0x40
/* 804EBC44  38 9F 07 38 */	addi r4, r31, 0x738
/* 804EBC48  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804EBC4C  4B D7 AE E9 */	bl __mi__4cXyzCFRC3Vec
/* 804EBC50  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804EBC54  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EBC58  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804EBC5C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EBC60  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804EBC64  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EBC68  48 00 00 2C */	b lbl_804EBC94
lbl_804EBC6C:
/* 804EBC6C  38 61 00 34 */	addi r3, r1, 0x34
/* 804EBC70  38 9E 05 38 */	addi r4, r30, 0x538
/* 804EBC74  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804EBC78  4B D7 AE BD */	bl __mi__4cXyzCFRC3Vec
/* 804EBC7C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804EBC80  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EBC84  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804EBC88  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EBC8C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804EBC90  D0 01 00 CC */	stfs f0, 0xcc(r1)
lbl_804EBC94:
/* 804EBC94  C0 41 00 C8 */	lfs f2, 0xc8(r1)
/* 804EBC98  C0 3D 00 F4 */	lfs f1, 0xf4(r29)
/* 804EBC9C  3C 60 80 4F */	lis r3, l_HIO@ha /* 0x804EEF3C@ha */
/* 804EBCA0  38 63 EF 3C */	addi r3, r3, l_HIO@l /* 0x804EEF3C@l */
/* 804EBCA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 804EBCA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804EBCAC  EC 02 00 2A */	fadds f0, f2, f0
/* 804EBCB0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EBCB4  C0 21 00 C4 */	lfs f1, 0xc4(r1)
/* 804EBCB8  C0 41 00 CC */	lfs f2, 0xcc(r1)
/* 804EBCBC  4B D7 B9 B9 */	bl cM_atan2s__Fff
/* 804EBCC0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804EBCC4  7C 00 18 50 */	subf r0, r0, r3
/* 804EBCC8  7C 18 07 34 */	extsh r24, r0
/* 804EBCCC  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 804EBCD0  EC 20 00 32 */	fmuls f1, f0, f0
/* 804EBCD4  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 804EBCD8  EC 00 00 32 */	fmuls f0, f0, f0
/* 804EBCDC  EC 41 00 2A */	fadds f2, f1, f0
/* 804EBCE0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EBCE4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804EBCE8  40 81 00 0C */	ble lbl_804EBCF4
/* 804EBCEC  FC 00 10 34 */	frsqrte f0, f2
/* 804EBCF0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804EBCF4:
/* 804EBCF4  C0 21 00 C8 */	lfs f1, 0xc8(r1)
/* 804EBCF8  4B D7 B9 7D */	bl cM_atan2s__Fff
/* 804EBCFC  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 804EBD00  7C 00 1A 14 */	add r0, r0, r3
/* 804EBD04  7C 19 07 34 */	extsh r25, r0
/* 804EBD08  2C 18 27 10 */	cmpwi r24, 0x2710
/* 804EBD0C  40 81 00 0C */	ble lbl_804EBD18
/* 804EBD10  3B 00 27 10 */	li r24, 0x2710
/* 804EBD14  48 00 00 10 */	b lbl_804EBD24
lbl_804EBD18:
/* 804EBD18  2C 18 D8 F0 */	cmpwi r24, -10000
/* 804EBD1C  40 80 00 08 */	bge lbl_804EBD24
/* 804EBD20  3B 00 D8 F0 */	li r24, -10000
lbl_804EBD24:
/* 804EBD24  2C 19 27 10 */	cmpwi r25, 0x2710
/* 804EBD28  40 81 00 0C */	ble lbl_804EBD34
/* 804EBD2C  3B 20 27 10 */	li r25, 0x2710
/* 804EBD30  48 00 00 10 */	b lbl_804EBD40
lbl_804EBD34:
/* 804EBD34  2C 19 B1 E0 */	cmpwi r25, -20000
/* 804EBD38  40 80 00 08 */	bge lbl_804EBD40
/* 804EBD3C  3B 20 B1 E0 */	li r25, -20000
lbl_804EBD40:
/* 804EBD40  38 7F 06 F6 */	addi r3, r31, 0x6f6
/* 804EBD44  7F 00 07 34 */	extsh r0, r24
/* 804EBD48  7C 00 0E 70 */	srawi r0, r0, 1
/* 804EBD4C  7C 00 01 94 */	addze r0, r0
/* 804EBD50  7C 04 07 34 */	extsh r4, r0
/* 804EBD54  38 A0 00 02 */	li r5, 2
/* 804EBD58  7F 86 E3 78 */	mr r6, r28
/* 804EBD5C  4B D8 48 AD */	bl cLib_addCalcAngleS2__FPssss
/* 804EBD60  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 804EBD64  7F 20 07 34 */	extsh r0, r25
/* 804EBD68  7C 00 0E 70 */	srawi r0, r0, 1
/* 804EBD6C  7C 00 01 94 */	addze r0, r0
/* 804EBD70  7C 04 07 34 */	extsh r4, r0
/* 804EBD74  38 A0 00 02 */	li r5, 2
/* 804EBD78  7F 86 E3 78 */	mr r6, r28
/* 804EBD7C  4B D8 48 8D */	bl cLib_addCalcAngleS2__FPssss
lbl_804EBD80:
/* 804EBD80  38 00 00 00 */	li r0, 0
/* 804EBD84  B0 1F 06 FC */	sth r0, 0x6fc(r31)
/* 804EBD88  48 00 00 34 */	b lbl_804EBDBC
lbl_804EBD8C:
/* 804EBD8C  38 7F 06 F6 */	addi r3, r31, 0x6f6
/* 804EBD90  38 80 00 00 */	li r4, 0
/* 804EBD94  38 A0 00 02 */	li r5, 2
/* 804EBD98  7F 86 E3 78 */	mr r6, r28
/* 804EBD9C  4B D8 48 6D */	bl cLib_addCalcAngleS2__FPssss
/* 804EBDA0  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 804EBDA4  38 80 00 00 */	li r4, 0
/* 804EBDA8  38 A0 00 02 */	li r5, 2
/* 804EBDAC  7F 86 E3 78 */	mr r6, r28
/* 804EBDB0  4B D8 48 59 */	bl cLib_addCalcAngleS2__FPssss
/* 804EBDB4  38 00 00 00 */	li r0, 0
/* 804EBDB8  B0 1F 06 FC */	sth r0, 0x6fc(r31)
lbl_804EBDBC:
/* 804EBDBC  38 7F 06 FA */	addi r3, r31, 0x6fa
/* 804EBDC0  A8 9F 06 FC */	lha r4, 0x6fc(r31)
/* 804EBDC4  38 A0 00 04 */	li r5, 4
/* 804EBDC8  38 C0 04 00 */	li r6, 0x400
/* 804EBDCC  4B D8 48 3D */	bl cLib_addCalcAngleS2__FPssss
/* 804EBDD0  A8 7F 06 FE */	lha r3, 0x6fe(r31)
/* 804EBDD4  2C 03 00 00 */	cmpwi r3, 0
/* 804EBDD8  41 82 00 5C */	beq lbl_804EBE34
/* 804EBDDC  38 03 FF FF */	addi r0, r3, -1
/* 804EBDE0  B0 1F 06 FE */	sth r0, 0x6fe(r31)
/* 804EBDE4  A8 9F 06 FE */	lha r4, 0x6fe(r31)
/* 804EBDE8  1C 04 2E E0 */	mulli r0, r4, 0x2ee0
/* 804EBDEC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804EBDF0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804EBDF4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804EBDF8  7C 63 04 2E */	lfsx f3, r3, r0
/* 804EBDFC  C0 5D 00 5C */	lfs f2, 0x5c(r29)
/* 804EBE00  C8 3D 00 90 */	lfd f1, 0x90(r29)
/* 804EBE04  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804EBE08  90 01 02 44 */	stw r0, 0x244(r1)
/* 804EBE0C  3C 00 43 30 */	lis r0, 0x4330
/* 804EBE10  90 01 02 40 */	stw r0, 0x240(r1)
/* 804EBE14  C8 01 02 40 */	lfd f0, 0x240(r1)
/* 804EBE18  EC 00 08 28 */	fsubs f0, f0, f1
/* 804EBE1C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804EBE20  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EBE24  FC 00 00 1E */	fctiwz f0, f0
/* 804EBE28  D8 01 02 48 */	stfd f0, 0x248(r1)
/* 804EBE2C  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 804EBE30  B0 1F 06 FA */	sth r0, 0x6fa(r31)
lbl_804EBE34:
/* 804EBE34  C0 3F 07 4C */	lfs f1, 0x74c(r31)
/* 804EBE38  C0 1D 00 08 */	lfs f0, 8(r29)
/* 804EBE3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EBE40  40 81 00 B0 */	ble lbl_804EBEF0
/* 804EBE44  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804EBE48  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804EBE4C  80 63 00 00 */	lwz r3, 0(r3)
/* 804EBE50  A8 9F 07 50 */	lha r4, 0x750(r31)
/* 804EBE54  4B B2 05 89 */	bl mDoMtx_YrotS__FPA4_fs
/* 804EBE58  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EBE5C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EBE60  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EBE64  C0 3D 00 CC */	lfs f1, 0xcc(r29)
/* 804EBE68  C0 1F 07 4C */	lfs f0, 0x74c(r31)
/* 804EBE6C  EC 21 00 32 */	fmuls f1, f1, f0
/* 804EBE70  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 804EBE74  C0 1D 01 3C */	lfs f0, 0x13c(r29)
/* 804EBE78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EBE7C  40 81 00 08 */	ble lbl_804EBE84
/* 804EBE80  D0 01 00 CC */	stfs f0, 0xcc(r1)
lbl_804EBE84:
/* 804EBE84  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804EBE88  38 81 00 B8 */	addi r4, r1, 0xb8
/* 804EBE8C  4B D8 50 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EBE90  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 804EBE94  FC 00 00 1E */	fctiwz f0, f0
/* 804EBE98  D8 01 02 48 */	stfd f0, 0x248(r1)
/* 804EBE9C  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 804EBEA0  B0 1F 07 A6 */	sth r0, 0x7a6(r31)
/* 804EBEA4  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 804EBEA8  FC 00 00 1E */	fctiwz f0, f0
/* 804EBEAC  D8 01 02 40 */	stfd f0, 0x240(r1)
/* 804EBEB0  80 01 02 44 */	lwz r0, 0x244(r1)
/* 804EBEB4  B0 1F 07 A4 */	sth r0, 0x7a4(r31)
/* 804EBEB8  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 804EBEBC  FC 00 00 1E */	fctiwz f0, f0
/* 804EBEC0  D8 01 02 50 */	stfd f0, 0x250(r1)
/* 804EBEC4  80 01 02 54 */	lwz r0, 0x254(r1)
/* 804EBEC8  B0 1F 07 AC */	sth r0, 0x7ac(r31)
/* 804EBECC  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 804EBED0  FC 00 00 1E */	fctiwz f0, f0
/* 804EBED4  D8 01 02 58 */	stfd f0, 0x258(r1)
/* 804EBED8  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 804EBEDC  B0 1F 07 AA */	sth r0, 0x7aa(r31)
/* 804EBEE0  38 7F 07 4C */	addi r3, r31, 0x74c
/* 804EBEE4  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 804EBEE8  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 804EBEEC  4B D8 3B 95 */	bl cLib_addCalc0__FPfff
lbl_804EBEF0:
/* 804EBEF0  C0 1F 07 5C */	lfs f0, 0x75c(r31)
/* 804EBEF4  FC 20 02 10 */	fabs f1, f0
/* 804EBEF8  FC 40 08 18 */	frsp f2, f1
/* 804EBEFC  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804EBF00  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 804EBF04  40 81 00 60 */	ble lbl_804EBF64
/* 804EBF08  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804EBF0C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804EBF10  A8 1F 07 60 */	lha r0, 0x760(r31)
/* 804EBF14  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804EBF18  7C 63 02 14 */	add r3, r3, r0
/* 804EBF1C  C0 63 00 04 */	lfs f3, 4(r3)
/* 804EBF20  C0 5D 00 F0 */	lfs f2, 0xf0(r29)
/* 804EBF24  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804EBF28  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EBF2C  FC 00 00 1E */	fctiwz f0, f0
/* 804EBF30  D8 01 02 58 */	stfd f0, 0x258(r1)
/* 804EBF34  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 804EBF38  B0 1F 07 AA */	sth r0, 0x7aa(r31)
/* 804EBF3C  A8 7F 07 B0 */	lha r3, 0x7b0(r31)
/* 804EBF40  A8 1F 07 AA */	lha r0, 0x7aa(r31)
/* 804EBF44  7C 03 02 14 */	add r0, r3, r0
/* 804EBF48  B0 1F 07 B0 */	sth r0, 0x7b0(r31)
/* 804EBF4C  38 7F 07 5C */	addi r3, r31, 0x75c
/* 804EBF50  C0 5D 00 70 */	lfs f2, 0x70(r29)
/* 804EBF54  4B D8 3B 2D */	bl cLib_addCalc0__FPfff
/* 804EBF58  A8 7F 07 60 */	lha r3, 0x760(r31)
/* 804EBF5C  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 804EBF60  B0 1F 07 60 */	sth r0, 0x760(r31)
lbl_804EBF64:
/* 804EBF64  C0 1F 07 54 */	lfs f0, 0x754(r31)
/* 804EBF68  FC 20 02 10 */	fabs f1, f0
/* 804EBF6C  FC 40 08 18 */	frsp f2, f1
/* 804EBF70  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804EBF74  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 804EBF78  40 81 00 50 */	ble lbl_804EBFC8
/* 804EBF7C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804EBF80  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804EBF84  A8 1F 07 58 */	lha r0, 0x758(r31)
/* 804EBF88  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804EBF8C  7C 63 02 14 */	add r3, r3, r0
/* 804EBF90  C0 63 00 04 */	lfs f3, 4(r3)
/* 804EBF94  C0 5D 00 F0 */	lfs f2, 0xf0(r29)
/* 804EBF98  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804EBF9C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EBFA0  FC 00 00 1E */	fctiwz f0, f0
/* 804EBFA4  D8 01 02 58 */	stfd f0, 0x258(r1)
/* 804EBFA8  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 804EBFAC  B0 1F 07 A4 */	sth r0, 0x7a4(r31)
/* 804EBFB0  38 7F 07 54 */	addi r3, r31, 0x754
/* 804EBFB4  C0 5D 00 70 */	lfs f2, 0x70(r29)
/* 804EBFB8  4B D8 3A C9 */	bl cLib_addCalc0__FPfff
/* 804EBFBC  A8 7F 07 58 */	lha r3, 0x758(r31)
/* 804EBFC0  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 804EBFC4  B0 1F 07 58 */	sth r0, 0x758(r31)
lbl_804EBFC8:
/* 804EBFC8  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 804EBFCC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EBFD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EBFD4  40 80 00 30 */	bge lbl_804EC004
/* 804EBFD8  80 1F 08 B0 */	lwz r0, 0x8b0(r31)
/* 804EBFDC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804EBFE0  41 82 00 24 */	beq lbl_804EC004
/* 804EBFE4  38 7F 07 5C */	addi r3, r31, 0x75c
/* 804EBFE8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804EBFEC  C0 5D 00 4C */	lfs f2, 0x4c(r29)
/* 804EBFF0  4B D8 3A 91 */	bl cLib_addCalc0__FPfff
/* 804EBFF4  38 7F 07 54 */	addi r3, r31, 0x754
/* 804EBFF8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804EBFFC  C0 5D 00 4C */	lfs f2, 0x4c(r29)
/* 804EC000  4B D8 3A 81 */	bl cLib_addCalc0__FPfff
lbl_804EC004:
/* 804EC004  C0 3F 07 04 */	lfs f1, 0x704(r31)
/* 804EC008  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EC00C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804EC010  41 82 01 54 */	beq lbl_804EC164
/* 804EC014  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 804EC018  A8 1F 07 26 */	lha r0, 0x726(r31)
/* 804EC01C  7C 03 00 50 */	subf r0, r3, r0
/* 804EC020  7C 04 07 34 */	extsh r4, r0
/* 804EC024  20 64 40 00 */	subfic r3, r4, 0x4000
/* 804EC028  B0 7F 07 B8 */	sth r3, 0x7b8(r31)
/* 804EC02C  A8 1F 07 B8 */	lha r0, 0x7b8(r31)
/* 804EC030  2C 00 17 70 */	cmpwi r0, 0x1770
/* 804EC034  40 81 00 10 */	ble lbl_804EC044
/* 804EC038  38 00 17 70 */	li r0, 0x1770
/* 804EC03C  B0 1F 07 B8 */	sth r0, 0x7b8(r31)
/* 804EC040  48 00 00 14 */	b lbl_804EC054
lbl_804EC044:
/* 804EC044  2C 00 DC D8 */	cmpwi r0, -9000
/* 804EC048  40 80 00 0C */	bge lbl_804EC054
/* 804EC04C  38 00 DC D8 */	li r0, -9000
/* 804EC050  B0 1F 07 B8 */	sth r0, 0x7b8(r31)
lbl_804EC054:
/* 804EC054  B0 7F 07 BE */	sth r3, 0x7be(r31)
/* 804EC058  A8 1F 07 BE */	lha r0, 0x7be(r31)
/* 804EC05C  2C 00 42 68 */	cmpwi r0, 0x4268
/* 804EC060  40 81 00 10 */	ble lbl_804EC070
/* 804EC064  38 00 42 68 */	li r0, 0x4268
/* 804EC068  B0 1F 07 BE */	sth r0, 0x7be(r31)
/* 804EC06C  48 00 00 14 */	b lbl_804EC080
lbl_804EC070:
/* 804EC070  7C 00 07 35 */	extsh. r0, r0
/* 804EC074  40 80 00 0C */	bge lbl_804EC080
/* 804EC078  38 00 00 00 */	li r0, 0
/* 804EC07C  B0 1F 07 BE */	sth r0, 0x7be(r31)
lbl_804EC080:
/* 804EC080  38 64 40 00 */	addi r3, r4, 0x4000
/* 804EC084  B0 7F 07 C4 */	sth r3, 0x7c4(r31)
/* 804EC088  A8 1F 07 C4 */	lha r0, 0x7c4(r31)
/* 804EC08C  2C 00 17 70 */	cmpwi r0, 0x1770
/* 804EC090  40 81 00 10 */	ble lbl_804EC0A0
/* 804EC094  38 00 17 70 */	li r0, 0x1770
/* 804EC098  B0 1F 07 C4 */	sth r0, 0x7c4(r31)
/* 804EC09C  48 00 00 14 */	b lbl_804EC0B0
lbl_804EC0A0:
/* 804EC0A0  2C 00 DC D8 */	cmpwi r0, -9000
/* 804EC0A4  40 80 00 0C */	bge lbl_804EC0B0
/* 804EC0A8  38 00 DC D8 */	li r0, -9000
/* 804EC0AC  B0 1F 07 C4 */	sth r0, 0x7c4(r31)
lbl_804EC0B0:
/* 804EC0B0  B0 7F 07 CA */	sth r3, 0x7ca(r31)
/* 804EC0B4  A8 1F 07 CA */	lha r0, 0x7ca(r31)
/* 804EC0B8  2C 00 42 68 */	cmpwi r0, 0x4268
/* 804EC0BC  40 81 00 10 */	ble lbl_804EC0CC
/* 804EC0C0  38 00 42 68 */	li r0, 0x4268
/* 804EC0C4  B0 1F 07 CA */	sth r0, 0x7ca(r31)
/* 804EC0C8  48 00 00 14 */	b lbl_804EC0DC
lbl_804EC0CC:
/* 804EC0CC  7C 00 07 35 */	extsh. r0, r0
/* 804EC0D0  40 80 00 0C */	bge lbl_804EC0DC
/* 804EC0D4  38 00 00 00 */	li r0, 0
/* 804EC0D8  B0 1F 07 CA */	sth r0, 0x7ca(r31)
lbl_804EC0DC:
/* 804EC0DC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804EC0E0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804EC0E4  80 63 00 00 */	lwz r3, 0(r3)
/* 804EC0E8  4B B2 02 F5 */	bl mDoMtx_YrotS__FPA4_fs
/* 804EC0EC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EC0F0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EC0F4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EC0F8  C0 1D 01 40 */	lfs f0, 0x140(r29)
/* 804EC0FC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EC100  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804EC104  38 81 00 B8 */	addi r4, r1, 0xb8
/* 804EC108  4B D8 4D E5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EC10C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 804EC110  FC 00 00 50 */	fneg f0, f0
/* 804EC114  FC 00 00 1E */	fctiwz f0, f0
/* 804EC118  D8 01 02 58 */	stfd f0, 0x258(r1)
/* 804EC11C  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 804EC120  B0 1F 08 38 */	sth r0, 0x838(r31)
/* 804EC124  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 804EC128  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 804EC12C  FC 00 00 50 */	fneg f0, f0
/* 804EC130  EC 01 00 32 */	fmuls f0, f1, f0
/* 804EC134  FC 00 00 1E */	fctiwz f0, f0
/* 804EC138  D8 01 02 50 */	stfd f0, 0x250(r1)
/* 804EC13C  80 01 02 54 */	lwz r0, 0x254(r1)
/* 804EC140  B0 1F 08 36 */	sth r0, 0x836(r31)
/* 804EC144  A8 1F 08 36 */	lha r0, 0x836(r31)
/* 804EC148  2C 00 27 10 */	cmpwi r0, 0x2710
/* 804EC14C  40 81 00 0C */	ble lbl_804EC158
/* 804EC150  38 00 27 10 */	li r0, 0x2710
/* 804EC154  B0 1F 08 36 */	sth r0, 0x836(r31)
lbl_804EC158:
/* 804EC158  A8 7F 08 36 */	lha r3, 0x836(r31)
/* 804EC15C  38 03 17 70 */	addi r0, r3, 0x1770
/* 804EC160  B0 1F 08 36 */	sth r0, 0x836(r31)
lbl_804EC164:
/* 804EC164  3B 80 00 00 */	li r28, 0
/* 804EC168  3B 60 00 00 */	li r27, 0
/* 804EC16C  3B 40 00 00 */	li r26, 0
/* 804EC170  3B 20 00 00 */	li r25, 0
/* 804EC174  3C 60 80 4F */	lis r3, j_spd@ha /* 0x804EEB88@ha */
/* 804EC178  3B C3 EB 88 */	addi r30, r3, j_spd@l /* 0x804EEB88@l */
lbl_804EC17C:
/* 804EC17C  7F 1F CA 14 */	add r24, r31, r25
/* 804EC180  38 78 07 62 */	addi r3, r24, 0x762
/* 804EC184  A8 98 07 A4 */	lha r4, 0x7a4(r24)
/* 804EC188  38 A0 00 02 */	li r5, 2
/* 804EC18C  7C DE D2 AE */	lhax r6, r30, r26
/* 804EC190  4B D8 44 79 */	bl cLib_addCalcAngleS2__FPssss
/* 804EC194  38 78 07 64 */	addi r3, r24, 0x764
/* 804EC198  A8 98 07 A6 */	lha r4, 0x7a6(r24)
/* 804EC19C  38 A0 00 02 */	li r5, 2
/* 804EC1A0  7C DE D2 AE */	lhax r6, r30, r26
/* 804EC1A4  4B D8 44 65 */	bl cLib_addCalcAngleS2__FPssss
/* 804EC1A8  38 78 07 66 */	addi r3, r24, 0x766
/* 804EC1AC  A8 98 07 A8 */	lha r4, 0x7a8(r24)
/* 804EC1B0  38 A0 00 02 */	li r5, 2
/* 804EC1B4  7C DE D2 AE */	lhax r6, r30, r26
/* 804EC1B8  4B D8 44 51 */	bl cLib_addCalcAngleS2__FPssss
/* 804EC1BC  38 00 00 00 */	li r0, 0
/* 804EC1C0  B0 18 07 A8 */	sth r0, 0x7a8(r24)
/* 804EC1C4  B0 18 07 A4 */	sth r0, 0x7a4(r24)
/* 804EC1C8  2C 1C 00 03 */	cmpwi r28, 3
/* 804EC1CC  41 80 00 58 */	blt lbl_804EC224
/* 804EC1D0  2C 1C 00 06 */	cmpwi r28, 6
/* 804EC1D4  41 81 00 50 */	bgt lbl_804EC224
/* 804EC1D8  38 9A 07 FC */	addi r4, r26, 0x7fc
/* 804EC1DC  7C 7F 22 AE */	lhax r3, r31, r4
/* 804EC1E0  2C 03 00 00 */	cmpwi r3, 0
/* 804EC1E4  40 82 00 34 */	bne lbl_804EC218
/* 804EC1E8  2C 1C 00 04 */	cmpwi r28, 4
/* 804EC1EC  41 82 00 0C */	beq lbl_804EC1F8
/* 804EC1F0  2C 1C 00 06 */	cmpwi r28, 6
/* 804EC1F4  40 82 00 0C */	bne lbl_804EC200
lbl_804EC1F8:
/* 804EC1F8  38 C0 06 00 */	li r6, 0x600
/* 804EC1FC  48 00 00 08 */	b lbl_804EC204
lbl_804EC200:
/* 804EC200  38 C0 08 00 */	li r6, 0x800
lbl_804EC204:
/* 804EC204  38 78 07 A6 */	addi r3, r24, 0x7a6
/* 804EC208  38 80 00 00 */	li r4, 0
/* 804EC20C  38 A0 00 01 */	li r5, 1
/* 804EC210  4B D8 43 F9 */	bl cLib_addCalcAngleS2__FPssss
/* 804EC214  48 00 00 18 */	b lbl_804EC22C
lbl_804EC218:
/* 804EC218  38 03 FF FF */	addi r0, r3, -1
/* 804EC21C  7C 1F 23 2E */	sthx r0, r31, r4
/* 804EC220  48 00 00 0C */	b lbl_804EC22C
lbl_804EC224:
/* 804EC224  38 00 00 00 */	li r0, 0
/* 804EC228  B0 18 07 A6 */	sth r0, 0x7a6(r24)
lbl_804EC22C:
/* 804EC22C  2C 1C 00 03 */	cmpwi r28, 3
/* 804EC230  41 80 00 40 */	blt lbl_804EC270
/* 804EC234  A8 1F 06 CC */	lha r0, 0x6cc(r31)
/* 804EC238  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 804EC23C  7C 00 DA 14 */	add r0, r0, r27
/* 804EC240  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 804EC244  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804EC248  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804EC24C  7C 60 22 14 */	add r3, r0, r4
/* 804EC250  C0 23 00 04 */	lfs f1, 4(r3)
/* 804EC254  C0 1F 07 E8 */	lfs f0, 0x7e8(r31)
/* 804EC258  EC 00 00 72 */	fmuls f0, f0, f1
/* 804EC25C  FC 00 00 1E */	fctiwz f0, f0
/* 804EC260  D8 01 02 58 */	stfd f0, 0x258(r1)
/* 804EC264  80 61 02 5C */	lwz r3, 0x25c(r1)
/* 804EC268  38 1A 07 EC */	addi r0, r26, 0x7ec
/* 804EC26C  7C 7F 03 2E */	sthx r3, r31, r0
lbl_804EC270:
/* 804EC270  3B 9C 00 01 */	addi r28, r28, 1
/* 804EC274  2C 1C 00 0B */	cmpwi r28, 0xb
/* 804EC278  3B 7B 4E 20 */	addi r27, r27, 0x4e20
/* 804EC27C  3B 5A 00 02 */	addi r26, r26, 2
/* 804EC280  3B 39 00 06 */	addi r25, r25, 6
/* 804EC284  41 80 FE F8 */	blt lbl_804EC17C
/* 804EC288  38 7F 07 E8 */	addi r3, r31, 0x7e8
/* 804EC28C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804EC290  C0 5D 00 00 */	lfs f2, 0(r29)
/* 804EC294  4B D8 37 ED */	bl cLib_addCalc0__FPfff
/* 804EC298  38 7F 08 32 */	addi r3, r31, 0x832
/* 804EC29C  A8 9F 08 38 */	lha r4, 0x838(r31)
/* 804EC2A0  38 A0 00 02 */	li r5, 2
/* 804EC2A4  38 C0 08 00 */	li r6, 0x800
/* 804EC2A8  4B D8 43 61 */	bl cLib_addCalcAngleS2__FPssss
/* 804EC2AC  38 7F 08 30 */	addi r3, r31, 0x830
/* 804EC2B0  A8 9F 08 36 */	lha r4, 0x836(r31)
/* 804EC2B4  38 A0 00 02 */	li r5, 2
/* 804EC2B8  38 C0 08 00 */	li r6, 0x800
/* 804EC2BC  4B D8 43 4D */	bl cLib_addCalcAngleS2__FPssss
/* 804EC2C0  38 00 00 00 */	li r0, 0
/* 804EC2C4  B0 1F 08 36 */	sth r0, 0x836(r31)
/* 804EC2C8  B0 1F 08 38 */	sth r0, 0x838(r31)
/* 804EC2CC  A8 7F 08 28 */	lha r3, 0x828(r31)
/* 804EC2D0  2C 03 00 00 */	cmpwi r3, 0
/* 804EC2D4  41 82 00 0C */	beq lbl_804EC2E0
/* 804EC2D8  38 03 FF FF */	addi r0, r3, -1
/* 804EC2DC  B0 1F 08 28 */	sth r0, 0x828(r31)
lbl_804EC2E0:
/* 804EC2E0  A8 1F 08 28 */	lha r0, 0x828(r31)
/* 804EC2E4  C8 3D 00 90 */	lfd f1, 0x90(r29)
/* 804EC2E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804EC2EC  90 01 02 5C */	stw r0, 0x25c(r1)
/* 804EC2F0  3C 00 43 30 */	lis r0, 0x4330
/* 804EC2F4  90 01 02 58 */	stw r0, 0x258(r1)
/* 804EC2F8  C8 01 02 58 */	lfd f0, 0x258(r1)
/* 804EC2FC  EC 40 08 28 */	fsubs f2, f0, f1
/* 804EC300  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 804EC304  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804EC308  40 81 00 08 */	ble lbl_804EC310
/* 804EC30C  FC 40 00 90 */	fmr f2, f0
lbl_804EC310:
/* 804EC310  EC 42 00 B2 */	fmuls f2, f2, f2
/* 804EC314  38 60 00 00 */	li r3, 0
/* 804EC318  38 80 00 00 */	li r4, 0
/* 804EC31C  38 A0 00 00 */	li r5, 0
/* 804EC320  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804EC324  38 C6 9A 20 */	addi r6, r6, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804EC328  C0 3D 00 7C */	lfs f1, 0x7c(r29)
/* 804EC32C  38 00 00 04 */	li r0, 4
/* 804EC330  7C 09 03 A6 */	mtctr r0
lbl_804EC334:
/* 804EC334  A8 1F 06 CC */	lha r0, 0x6cc(r31)
/* 804EC338  1C 00 13 88 */	mulli r0, r0, 0x1388
/* 804EC33C  7C 00 2A 14 */	add r0, r0, r5
/* 804EC340  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804EC344  7C 06 04 2E */	lfsx f0, r6, r0
/* 804EC348  EC 01 00 32 */	fmuls f0, f1, f0
/* 804EC34C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EC350  FC 00 00 1E */	fctiwz f0, f0
/* 804EC354  D8 01 02 58 */	stfd f0, 0x258(r1)
/* 804EC358  80 01 02 5C */	lwz r0, 0x25c(r1)
/* 804EC35C  7C FF 22 14 */	add r7, r31, r4
/* 804EC360  B0 07 08 0E */	sth r0, 0x80e(r7)
/* 804EC364  A8 1F 06 CC */	lha r0, 0x6cc(r31)
/* 804EC368  1C 00 12 C0 */	mulli r0, r0, 0x12c0
/* 804EC36C  7C 00 1A 14 */	add r0, r0, r3
/* 804EC370  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804EC374  7C 06 04 2E */	lfsx f0, r6, r0
/* 804EC378  EC 01 00 32 */	fmuls f0, f1, f0
/* 804EC37C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EC380  FC 00 00 1E */	fctiwz f0, f0
/* 804EC384  D8 01 02 50 */	stfd f0, 0x250(r1)
/* 804EC388  80 01 02 54 */	lwz r0, 0x254(r1)
/* 804EC38C  B0 07 08 10 */	sth r0, 0x810(r7)
/* 804EC390  38 63 CD 38 */	addi r3, r3, -13000
/* 804EC394  38 84 00 06 */	addi r4, r4, 6
/* 804EC398  38 A5 C5 68 */	addi r5, r5, -15000
/* 804EC39C  42 00 FF 98 */	bdnz lbl_804EC334
/* 804EC3A0  38 7F 08 26 */	addi r3, r31, 0x826
/* 804EC3A4  38 80 00 00 */	li r4, 0
/* 804EC3A8  38 A0 00 04 */	li r5, 4
/* 804EC3AC  38 C0 01 00 */	li r6, 0x100
/* 804EC3B0  4B D8 42 59 */	bl cLib_addCalcAngleS2__FPssss
/* 804EC3B4  88 7F 07 36 */	lbz r3, 0x736(r31)
/* 804EC3B8  7C 60 07 75 */	extsb. r0, r3
/* 804EC3BC  41 82 02 EC */	beq lbl_804EC6A8
/* 804EC3C0  38 03 FF FF */	addi r0, r3, -1
/* 804EC3C4  98 1F 07 36 */	stb r0, 0x736(r31)
/* 804EC3C8  A8 1F 07 24 */	lha r0, 0x724(r31)
/* 804EC3CC  2C 00 00 00 */	cmpwi r0, 0
/* 804EC3D0  41 82 02 D8 */	beq lbl_804EC6A8
/* 804EC3D4  38 61 01 40 */	addi r3, r1, 0x140
/* 804EC3D8  4B B8 B1 A5 */	bl __ct__11dBgS_GndChkFv
/* 804EC3DC  3B 80 00 00 */	li r28, 0
/* 804EC3E0  3B C0 00 00 */	li r30, 0
/* 804EC3E4  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804EC3E8  80 63 00 04 */	lwz r3, 4(r3)
/* 804EC3EC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804EC3F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804EC3F4  38 63 00 60 */	addi r3, r3, 0x60
/* 804EC3F8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804EC3FC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804EC400  80 84 00 00 */	lwz r4, 0(r4)
/* 804EC404  4B E5 A0 AD */	bl PSMTXCopy
/* 804EC408  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EC40C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EC410  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EC414  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EC418  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804EC41C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 804EC420  4B D8 4A CD */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EC424  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 804EC428  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804EC42C  EC 00 08 2A */	fadds f0, f0, f1
/* 804EC430  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804EC434  EC 00 08 2A */	fadds f0, f0, f1
/* 804EC438  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804EC43C  38 61 01 40 */	addi r3, r1, 0x140
/* 804EC440  38 81 00 A0 */	addi r4, r1, 0xa0
/* 804EC444  4B D7 B8 E5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 804EC448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804EC44C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804EC450  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 804EC454  7F 03 C3 78 */	mr r3, r24
/* 804EC458  38 81 01 40 */	addi r4, r1, 0x140
/* 804EC45C  4B B8 80 45 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804EC460  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 804EC464  C0 1D 01 44 */	lfs f0, 0x144(r29)
/* 804EC468  FC 40 08 18 */	frsp f2, f1
/* 804EC46C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 804EC470  41 82 01 04 */	beq lbl_804EC574
/* 804EC474  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804EC478  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 804EC47C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804EC480  EC 01 10 2A */	fadds f0, f1, f2
/* 804EC484  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 804EC488  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 804EC48C  EC 00 08 2A */	fadds f0, f0, f1
/* 804EC490  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 804EC494  38 61 01 40 */	addi r3, r1, 0x140
/* 804EC498  38 81 00 AC */	addi r4, r1, 0xac
/* 804EC49C  4B D7 B8 71 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 804EC4A0  7F 03 C3 78 */	mr r3, r24
/* 804EC4A4  38 81 01 40 */	addi r4, r1, 0x140
/* 804EC4A8  4B B8 7F F9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804EC4AC  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 804EC4B0  C0 1D 01 44 */	lfs f0, 0x144(r29)
/* 804EC4B4  FC 20 08 18 */	frsp f1, f1
/* 804EC4B8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804EC4BC  41 82 00 38 */	beq lbl_804EC4F4
/* 804EC4C0  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 804EC4C4  EC 21 00 28 */	fsubs f1, f1, f0
/* 804EC4C8  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 804EC4CC  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 804EC4D0  EC 42 00 28 */	fsubs f2, f2, f0
/* 804EC4D4  4B D7 B1 A1 */	bl cM_atan2s__Fff
/* 804EC4D8  7C 03 00 D0 */	neg r0, r3
/* 804EC4DC  7C 1E 07 34 */	extsh r30, r0
/* 804EC4E0  2C 1E 30 00 */	cmpwi r30, 0x3000
/* 804EC4E4  41 81 00 0C */	bgt lbl_804EC4F0
/* 804EC4E8  2C 1E D0 00 */	cmpwi r30, -12288
/* 804EC4EC  40 80 00 08 */	bge lbl_804EC4F4
lbl_804EC4F0:
/* 804EC4F0  3B C0 00 00 */	li r30, 0
lbl_804EC4F4:
/* 804EC4F4  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804EC4F8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804EC4FC  EC 00 08 2A */	fadds f0, f0, f1
/* 804EC500  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 804EC504  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 804EC508  EC 01 00 2A */	fadds f0, f1, f0
/* 804EC50C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 804EC510  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 804EC514  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 804EC518  38 61 01 40 */	addi r3, r1, 0x140
/* 804EC51C  38 81 00 AC */	addi r4, r1, 0xac
/* 804EC520  4B D7 B7 ED */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 804EC524  7F 03 C3 78 */	mr r3, r24
/* 804EC528  38 81 01 40 */	addi r4, r1, 0x140
/* 804EC52C  4B B8 7F 75 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804EC530  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 804EC534  C0 1D 01 44 */	lfs f0, 0x144(r29)
/* 804EC538  FC 20 08 18 */	frsp f1, f1
/* 804EC53C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804EC540  41 82 00 34 */	beq lbl_804EC574
/* 804EC544  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 804EC548  EC 21 00 28 */	fsubs f1, f1, f0
/* 804EC54C  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 804EC550  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 804EC554  EC 42 00 28 */	fsubs f2, f2, f0
/* 804EC558  4B D7 B1 1D */	bl cM_atan2s__Fff
/* 804EC55C  7C 7C 07 34 */	extsh r28, r3
/* 804EC560  2C 1C 30 00 */	cmpwi r28, 0x3000
/* 804EC564  41 81 00 0C */	bgt lbl_804EC570
/* 804EC568  2C 1C D0 00 */	cmpwi r28, -12288
/* 804EC56C  40 80 00 08 */	bge lbl_804EC574
lbl_804EC570:
/* 804EC570  3B 80 00 00 */	li r28, 0
lbl_804EC574:
/* 804EC574  38 61 00 D0 */	addi r3, r1, 0xd0
/* 804EC578  4B B8 B6 F1 */	bl __ct__11dBgS_LinChkFv
/* 804EC57C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804EC580  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 804EC584  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804EC588  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 804EC58C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804EC590  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804EC594  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 804EC598  EC 01 00 2A */	fadds f0, f1, f0
/* 804EC59C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 804EC5A0  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804EC5A4  80 63 00 04 */	lwz r3, 4(r3)
/* 804EC5A8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EC5AC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804EC5B0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804EC5B4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804EC5B8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804EC5BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804EC5C0  38 63 00 C0 */	addi r3, r3, 0xc0
/* 804EC5C4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804EC5C8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804EC5CC  80 84 00 00 */	lwz r4, 0(r4)
/* 804EC5D0  4B E5 9E E1 */	bl PSMTXCopy
/* 804EC5D4  38 61 00 94 */	addi r3, r1, 0x94
/* 804EC5D8  38 81 00 7C */	addi r4, r1, 0x7c
/* 804EC5DC  4B D8 49 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EC5E0  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 804EC5E4  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 804EC5E8  EC 01 00 2A */	fadds f0, f1, f0
/* 804EC5EC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804EC5F0  38 61 00 D0 */	addi r3, r1, 0xd0
/* 804EC5F4  38 81 00 88 */	addi r4, r1, 0x88
/* 804EC5F8  38 A1 00 7C */	addi r5, r1, 0x7c
/* 804EC5FC  7F E6 FB 78 */	mr r6, r31
/* 804EC600  4B B8 B7 65 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804EC604  7F 03 C3 78 */	mr r3, r24
/* 804EC608  38 81 00 D0 */	addi r4, r1, 0xd0
/* 804EC60C  4B B8 7D A9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804EC610  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804EC614  41 82 00 74 */	beq lbl_804EC688
/* 804EC618  38 61 00 28 */	addi r3, r1, 0x28
/* 804EC61C  38 81 00 88 */	addi r4, r1, 0x88
/* 804EC620  38 A1 00 7C */	addi r5, r1, 0x7c
/* 804EC624  4B D7 A5 11 */	bl __mi__4cXyzCFRC3Vec
/* 804EC628  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 804EC62C  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 804EC630  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804EC634  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804EC638  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 804EC63C  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 804EC640  4B D7 B0 35 */	bl cM_atan2s__Fff
/* 804EC644  7C 64 1B 78 */	mr r4, r3
/* 804EC648  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804EC64C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804EC650  80 63 00 00 */	lwz r3, 0(r3)
/* 804EC654  4B B1 FD 89 */	bl mDoMtx_YrotS__FPA4_fs
/* 804EC658  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EC65C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804EC660  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804EC664  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 804EC668  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804EC66C  38 61 00 94 */	addi r3, r1, 0x94
/* 804EC670  38 81 00 B8 */	addi r4, r1, 0xb8
/* 804EC674  4B D8 48 79 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EC678  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804EC67C  38 81 00 B8 */	addi r4, r1, 0xb8
/* 804EC680  7C 65 1B 78 */	mr r5, r3
/* 804EC684  4B E5 AA 0D */	bl PSVECAdd
lbl_804EC688:
/* 804EC688  B3 DF 07 30 */	sth r30, 0x730(r31)
/* 804EC68C  B3 9F 07 34 */	sth r28, 0x734(r31)
/* 804EC690  38 61 00 D0 */	addi r3, r1, 0xd0
/* 804EC694  38 80 FF FF */	li r4, -1
/* 804EC698  4B B8 B6 45 */	bl __dt__11dBgS_LinChkFv
/* 804EC69C  38 61 01 40 */	addi r3, r1, 0x140
/* 804EC6A0  38 80 FF FF */	li r4, -1
/* 804EC6A4  4B B8 AF 4D */	bl __dt__11dBgS_GndChkFv
lbl_804EC6A8:
/* 804EC6A8  38 7F 07 2A */	addi r3, r31, 0x72a
/* 804EC6AC  A8 9F 07 30 */	lha r4, 0x730(r31)
/* 804EC6B0  38 A0 00 01 */	li r5, 1
/* 804EC6B4  38 C0 04 00 */	li r6, 0x400
/* 804EC6B8  4B D8 3F 51 */	bl cLib_addCalcAngleS2__FPssss
/* 804EC6BC  38 7F 07 2E */	addi r3, r31, 0x72e
/* 804EC6C0  A8 9F 07 34 */	lha r4, 0x734(r31)
/* 804EC6C4  38 A0 00 01 */	li r5, 1
/* 804EC6C8  38 C0 04 00 */	li r6, 0x400
/* 804EC6CC  4B D8 3F 3D */	bl cLib_addCalcAngleS2__FPssss
/* 804EC6D0  88 1F 10 E4 */	lbz r0, 0x10e4(r31)
/* 804EC6D4  7C 00 07 75 */	extsb. r0, r0
/* 804EC6D8  41 82 00 CC */	beq lbl_804EC7A4
/* 804EC6DC  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804EC6E0  83 23 00 04 */	lwz r25, 4(r3)
/* 804EC6E4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804EC6E8  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804EC6EC  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804EC6F0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804EC6F4  3B 80 00 00 */	li r28, 0
/* 804EC6F8  3B C0 00 00 */	li r30, 0
lbl_804EC6FC:
/* 804EC6FC  88 7F 10 E4 */	lbz r3, 0x10e4(r31)
/* 804EC700  7C 60 07 74 */	extsb r0, r3
/* 804EC704  2C 00 00 03 */	cmpwi r0, 3
/* 804EC708  41 82 00 28 */	beq lbl_804EC730
/* 804EC70C  2C 00 00 02 */	cmpwi r0, 2
/* 804EC710  40 82 00 0C */	bne lbl_804EC71C
/* 804EC714  2C 1C 00 01 */	cmpwi r28, 1
/* 804EC718  41 82 00 18 */	beq lbl_804EC730
lbl_804EC71C:
/* 804EC71C  7C 60 07 74 */	extsb r0, r3
/* 804EC720  2C 00 00 01 */	cmpwi r0, 1
/* 804EC724  40 82 00 68 */	bne lbl_804EC78C
/* 804EC728  2C 1C 00 00 */	cmpwi r28, 0
/* 804EC72C  40 82 00 60 */	bne lbl_804EC78C
lbl_804EC730:
/* 804EC730  80 79 00 84 */	lwz r3, 0x84(r25)
/* 804EC734  80 83 00 0C */	lwz r4, 0xc(r3)
/* 804EC738  3C 60 80 4F */	lis r3, foot_idx@ha /* 0x804EEBA0@ha */
/* 804EC73C  38 63 EB A0 */	addi r3, r3, foot_idx@l /* 0x804EEBA0@l */
/* 804EC740  7C 03 F0 2E */	lwzx r0, r3, r30
/* 804EC744  1C 00 00 30 */	mulli r0, r0, 0x30
/* 804EC748  7C 64 02 14 */	add r3, r4, r0
/* 804EC74C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804EC750  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804EC754  80 84 00 00 */	lwz r4, 0(r4)
/* 804EC758  4B E5 9D 59 */	bl PSMTXCopy
/* 804EC75C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804EC760  38 81 00 B8 */	addi r4, r1, 0xb8
/* 804EC764  4B D8 47 89 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EC768  7C 9F F2 14 */	add r4, r31, r30
/* 804EC76C  38 64 10 E8 */	addi r3, r4, 0x10e8
/* 804EC770  38 84 10 F0 */	addi r4, r4, 0x10f0
/* 804EC774  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 804EC778  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 804EC77C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804EC780  38 FF 01 0C */	addi r7, r31, 0x10c
/* 804EC784  39 00 00 00 */	li r8, 0
/* 804EC788  4B B3 08 99 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_804EC78C:
/* 804EC78C  3B 9C 00 01 */	addi r28, r28, 1
/* 804EC790  2C 1C 00 02 */	cmpwi r28, 2
/* 804EC794  3B DE 00 04 */	addi r30, r30, 4
/* 804EC798  41 80 FF 64 */	blt lbl_804EC6FC
/* 804EC79C  38 00 00 00 */	li r0, 0
/* 804EC7A0  98 1F 10 E4 */	stb r0, 0x10e4(r31)
lbl_804EC7A4:
/* 804EC7A4  88 7F 10 DA */	lbz r3, 0x10da(r31)
/* 804EC7A8  7C 60 07 75 */	extsb. r0, r3
/* 804EC7AC  41 82 00 64 */	beq lbl_804EC810
/* 804EC7B0  38 03 FF FF */	addi r0, r3, -1
/* 804EC7B4  98 1F 10 DA */	stb r0, 0x10da(r31)
/* 804EC7B8  88 1F 10 DA */	lbz r0, 0x10da(r31)
/* 804EC7BC  7C 00 07 75 */	extsb. r0, r0
/* 804EC7C0  40 82 00 50 */	bne lbl_804EC810
/* 804EC7C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804EC7C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804EC7CC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804EC7D0  38 80 00 00 */	li r4, 0
/* 804EC7D4  90 81 00 08 */	stw r4, 8(r1)
/* 804EC7D8  38 00 FF FF */	li r0, -1
/* 804EC7DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804EC7E0  90 81 00 10 */	stw r4, 0x10(r1)
/* 804EC7E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 804EC7E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 804EC7EC  38 80 00 00 */	li r4, 0
/* 804EC7F0  38 A0 01 5E */	li r5, 0x15e
/* 804EC7F4  38 DF 05 38 */	addi r6, r31, 0x538
/* 804EC7F8  38 E0 00 00 */	li r7, 0
/* 804EC7FC  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 804EC800  39 20 00 00 */	li r9, 0
/* 804EC804  39 40 00 FF */	li r10, 0xff
/* 804EC808  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804EC80C  4B B6 02 85 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_804EC810:
/* 804EC810  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 804EC814  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 804EC818  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 804EC81C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804EC820  7F E3 FB 78 */	mr r3, r31
/* 804EC824  38 9F 05 E8 */	addi r4, r31, 0x5e8
/* 804EC828  38 BF 05 38 */	addi r5, r31, 0x538
/* 804EC82C  38 C1 00 70 */	addi r6, r1, 0x70
/* 804EC830  48 00 1C 19 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 804EC834  E3 E1 02 88 */	psq_l f31, 648(r1), 0, 0 /* qr0 */
/* 804EC838  CB E1 02 80 */	lfd f31, 0x280(r1)
/* 804EC83C  39 61 02 80 */	addi r11, r1, 0x280
/* 804EC840  4B E7 59 D5 */	bl _restgpr_24
/* 804EC844  80 01 02 94 */	lwz r0, 0x294(r1)
/* 804EC848  7C 08 03 A6 */	mtlr r0
/* 804EC84C  38 21 02 90 */	addi r1, r1, 0x290
/* 804EC850  4E 80 00 20 */	blr 
