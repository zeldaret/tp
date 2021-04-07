lbl_804BA83C:
/* 804BA83C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BA840  7C 08 02 A6 */	mflr r0
/* 804BA844  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BA848  39 61 00 30 */	addi r11, r1, 0x30
/* 804BA84C  4B EA 79 85 */	bl _savegpr_26
/* 804BA850  7C 7C 1B 78 */	mr r28, r3
/* 804BA854  3C 80 80 4C */	lis r4, lit_1109@ha /* 0x804BBB90@ha */
/* 804BA858  3B A4 BB 90 */	addi r29, r4, lit_1109@l /* 0x804BBB90@l */
/* 804BA85C  3C 80 80 4C */	lis r4, lit_3879@ha /* 0x804BB534@ha */
/* 804BA860  3B C4 B5 34 */	addi r30, r4, lit_3879@l /* 0x804BB534@l */
/* 804BA864  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804BA868  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804BA86C  40 82 00 1C */	bne lbl_804BA888
/* 804BA870  28 1C 00 00 */	cmplwi r28, 0
/* 804BA874  41 82 00 08 */	beq lbl_804BA87C
/* 804BA878  48 00 03 95 */	bl __ct__13dmg_rod_classFv
lbl_804BA87C:
/* 804BA87C  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 804BA880  60 00 00 08 */	ori r0, r0, 8
/* 804BA884  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_804BA888:
/* 804BA888  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804BA88C  98 1C 05 74 */	stb r0, 0x574(r28)
/* 804BA890  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804BA894  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 804BA898  98 1C 05 75 */	stb r0, 0x575(r28)
/* 804BA89C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804BA8A0  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 804BA8A4  98 1C 05 76 */	stb r0, 0x576(r28)
/* 804BA8A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BA8AC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BA8B0  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 804BA8B4  88 1C 05 74 */	lbz r0, 0x574(r28)
/* 804BA8B8  28 00 00 0F */	cmplwi r0, 0xf
/* 804BA8BC  40 82 00 0C */	bne lbl_804BA8C8
/* 804BA8C0  38 00 00 0D */	li r0, 0xd
/* 804BA8C4  98 1C 05 74 */	stb r0, 0x574(r28)
lbl_804BA8C8:
/* 804BA8C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BA8CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BA8D0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804BA8D4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804BA8D8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 804BA8DC  7D 89 03 A6 */	mtctr r12
/* 804BA8E0  4E 80 04 21 */	bctrl 
/* 804BA8E4  28 03 00 00 */	cmplwi r3, 0
/* 804BA8E8  41 82 00 14 */	beq lbl_804BA8FC
/* 804BA8EC  38 00 00 0D */	li r0, 0xd
/* 804BA8F0  98 1C 05 74 */	stb r0, 0x574(r28)
/* 804BA8F4  38 00 00 00 */	li r0, 0
/* 804BA8F8  98 1C 05 75 */	stb r0, 0x575(r28)
lbl_804BA8FC:
/* 804BA8FC  88 1C 05 74 */	lbz r0, 0x574(r28)
/* 804BA900  28 00 00 0D */	cmplwi r0, 0xd
/* 804BA904  40 82 00 44 */	bne lbl_804BA948
/* 804BA908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BA90C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BA910  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 804BA914  3C 80 80 4C */	lis r4, d_a_mg_rod__stringBase0@ha /* 0x804BB830@ha */
/* 804BA918  38 84 B8 30 */	addi r4, r4, d_a_mg_rod__stringBase0@l /* 0x804BB830@l */
/* 804BA91C  38 84 00 0E */	addi r4, r4, 0xe
/* 804BA920  4B EA E0 75 */	bl strcmp
/* 804BA924  2C 03 00 00 */	cmpwi r3, 0
/* 804BA928  40 82 00 20 */	bne lbl_804BA948
/* 804BA92C  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 804BA930  2C 00 00 04 */	cmpwi r0, 4
/* 804BA934  40 82 00 14 */	bne lbl_804BA948
/* 804BA938  38 00 00 01 */	li r0, 1
/* 804BA93C  98 1C 05 75 */	stb r0, 0x575(r28)
/* 804BA940  38 00 00 1D */	li r0, 0x1d
/* 804BA944  98 1C 05 74 */	stb r0, 0x574(r28)
lbl_804BA948:
/* 804BA948  88 1C 05 74 */	lbz r0, 0x574(r28)
/* 804BA94C  C8 3E 00 A8 */	lfd f1, 0xa8(r30)
/* 804BA950  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BA954  3C 00 43 30 */	lis r0, 0x4330
/* 804BA958  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BA95C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804BA960  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BA964  D0 1C 06 A0 */	stfs f0, 0x6a0(r28)
/* 804BA968  88 1C 05 75 */	lbz r0, 0x575(r28)
/* 804BA96C  28 00 00 00 */	cmplwi r0, 0
/* 804BA970  40 82 00 28 */	bne lbl_804BA998
/* 804BA974  38 00 00 00 */	li r0, 0
/* 804BA978  B0 1C 0F 7C */	sth r0, 0xf7c(r28)
/* 804BA97C  3C 60 80 4C */	lis r3, d_a_mg_rod__stringBase0@ha /* 0x804BB830@ha */
/* 804BA980  38 63 B8 30 */	addi r3, r3, d_a_mg_rod__stringBase0@l /* 0x804BB830@l */
/* 804BA984  38 03 00 16 */	addi r0, r3, 0x16
/* 804BA988  90 1C 05 70 */	stw r0, 0x570(r28)
/* 804BA98C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00015FE0@ha */
/* 804BA990  3B 43 5F E0 */	addi r26, r3, 0x5FE0 /* 0x00015FE0@l */
/* 804BA994  48 00 00 24 */	b lbl_804BA9B8
lbl_804BA998:
/* 804BA998  38 00 00 01 */	li r0, 1
/* 804BA99C  B0 1C 0F 7C */	sth r0, 0xf7c(r28)
/* 804BA9A0  3C 60 80 4C */	lis r3, d_a_mg_rod__stringBase0@ha /* 0x804BB830@ha */
/* 804BA9A4  38 63 B8 30 */	addi r3, r3, d_a_mg_rod__stringBase0@l /* 0x804BB830@l */
/* 804BA9A8  38 03 00 08 */	addi r0, r3, 8
/* 804BA9AC  90 1C 05 70 */	stw r0, 0x570(r28)
/* 804BA9B0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000C9A0@ha */
/* 804BA9B4  3B 43 C9 A0 */	addi r26, r3, 0xC9A0 /* 0x0000C9A0@l */
lbl_804BA9B8:
/* 804BA9B8  38 00 00 01 */	li r0, 1
/* 804BA9BC  98 1D 00 44 */	stb r0, 0x44(r29)
/* 804BA9C0  38 7C 05 68 */	addi r3, r28, 0x568
/* 804BA9C4  80 9C 05 70 */	lwz r4, 0x570(r28)
/* 804BA9C8  4B B7 24 F5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804BA9CC  7C 7B 1B 78 */	mr r27, r3
/* 804BA9D0  2C 1B 00 04 */	cmpwi r27, 4
/* 804BA9D4  40 82 02 1C */	bne lbl_804BABF0
/* 804BA9D8  7F 83 E3 78 */	mr r3, r28
/* 804BA9DC  3C 80 80 4C */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x804BA1F4@ha */
/* 804BA9E0  38 84 A1 F4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x804BA1F4@l */
/* 804BA9E4  7F 45 D3 78 */	mr r5, r26
/* 804BA9E8  4B B5 FA C9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804BA9EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804BA9F0  40 82 00 0C */	bne lbl_804BA9FC
/* 804BA9F4  38 60 00 05 */	li r3, 5
/* 804BA9F8  48 00 01 FC */	b lbl_804BABF4
lbl_804BA9FC:
/* 804BA9FC  88 1D 00 45 */	lbz r0, 0x45(r29)
/* 804BAA00  28 00 00 00 */	cmplwi r0, 0
/* 804BAA04  40 82 00 1C */	bne lbl_804BAA20
/* 804BAA08  38 00 00 01 */	li r0, 1
/* 804BAA0C  98 1C 16 8E */	stb r0, 0x168e(r28)
/* 804BAA10  98 1D 00 45 */	stb r0, 0x45(r29)
/* 804BAA14  38 00 FF FF */	li r0, -1
/* 804BAA18  38 7D 00 54 */	addi r3, r29, 0x54
/* 804BAA1C  98 03 00 04 */	stb r0, 4(r3)
lbl_804BAA20:
/* 804BAA20  38 00 00 00 */	li r0, 0
/* 804BAA24  90 01 00 08 */	stw r0, 8(r1)
/* 804BAA28  38 7C 11 D0 */	addi r3, r28, 0x11d0
/* 804BAA2C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804BAA30  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 804BAA34  7F 86 E3 78 */	mr r6, r28
/* 804BAA38  38 E0 00 01 */	li r7, 1
/* 804BAA3C  39 1C 11 90 */	addi r8, r28, 0x1190
/* 804BAA40  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 804BAA44  39 40 00 00 */	li r10, 0
/* 804BAA48  4B BB B8 01 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 804BAA4C  38 7C 11 90 */	addi r3, r28, 0x1190
/* 804BAA50  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 804BAA54  FC 40 08 90 */	fmr f2, f1
/* 804BAA58  4B BB B5 01 */	bl SetWall__12dBgS_AcchCirFff
/* 804BAA5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BAA60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BAA64  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 804BAA68  3C 80 80 4C */	lis r4, d_a_mg_rod__stringBase0@ha /* 0x804BB830@ha */
/* 804BAA6C  38 84 B8 30 */	addi r4, r4, d_a_mg_rod__stringBase0@l /* 0x804BB830@l */
/* 804BAA70  4B EA DF 25 */	bl strcmp
/* 804BAA74  2C 03 00 00 */	cmpwi r3, 0
/* 804BAA78  41 82 00 0C */	beq lbl_804BAA84
/* 804BAA7C  C0 1E 02 F8 */	lfs f0, 0x2f8(r30)
/* 804BAA80  D0 1C 05 90 */	stfs f0, 0x590(r28)
lbl_804BAA84:
/* 804BAA84  38 7C 10 B4 */	addi r3, r28, 0x10b4
/* 804BAA88  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804BAA8C  7C 85 23 78 */	mr r5, r4
/* 804BAA90  38 C0 00 03 */	li r6, 3
/* 804BAA94  38 E0 00 01 */	li r7, 1
/* 804BAA98  4B E0 5A 99 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 804BAA9C  38 00 00 14 */	li r0, 0x14
/* 804BAAA0  98 1C 11 65 */	stb r0, 0x1165(r28)
/* 804BAAA4  3C 60 80 4B */	lis r3, s_boat_sub__FPvPv@ha /* 0x804AC1C0@ha */
/* 804BAAA8  38 63 C1 C0 */	addi r3, r3, s_boat_sub__FPvPv@l /* 0x804AC1C0@l */
/* 804BAAAC  7F 84 E3 78 */	mr r4, r28
/* 804BAAB0  4B B6 68 89 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 804BAAB4  28 03 00 00 */	cmplwi r3, 0
/* 804BAAB8  41 82 00 0C */	beq lbl_804BAAC4
/* 804BAABC  80 03 00 04 */	lwz r0, 4(r3)
/* 804BAAC0  48 00 00 08 */	b lbl_804BAAC8
lbl_804BAAC4:
/* 804BAAC4  38 00 FF FF */	li r0, -1
lbl_804BAAC8:
/* 804BAAC8  90 1C 11 44 */	stw r0, 0x1144(r28)
/* 804BAACC  A8 1C 0F 7C */	lha r0, 0xf7c(r28)
/* 804BAAD0  2C 00 00 01 */	cmpwi r0, 1
/* 804BAAD4  40 82 00 A0 */	bne lbl_804BAB74
/* 804BAAD8  7F 83 E3 78 */	mr r3, r28
/* 804BAADC  4B B5 ED E9 */	bl fopAcM_setStageLayer__FPv
/* 804BAAE0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804BAAE4  38 00 00 00 */	li r0, 0
/* 804BAAE8  B0 1C 0F 7E */	sth r0, 0xf7e(r28)
/* 804BAAEC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 804BAAF0  D0 1C 10 60 */	stfs f0, 0x1060(r28)
/* 804BAAF4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 804BAAF8  D0 1C 10 64 */	stfs f0, 0x1064(r28)
/* 804BAAFC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 804BAB00  D0 1C 10 68 */	stfs f0, 0x1068(r28)
/* 804BAB04  C0 1C 10 64 */	lfs f0, 0x1064(r28)
/* 804BAB08  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 804BAB0C  EC 00 08 2A */	fadds f0, f0, f1
/* 804BAB10  D0 1C 10 64 */	stfs f0, 0x1064(r28)
/* 804BAB14  C0 1C 10 60 */	lfs f0, 0x1060(r28)
/* 804BAB18  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 804BAB1C  C0 1C 10 64 */	lfs f0, 0x1064(r28)
/* 804BAB20  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 804BAB24  C0 1C 10 68 */	lfs f0, 0x1068(r28)
/* 804BAB28  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 804BAB2C  D0 3C 10 94 */	stfs f1, 0x1094(r28)
/* 804BAB30  38 00 00 05 */	li r0, 5
/* 804BAB34  B0 1C 05 7A */	sth r0, 0x57a(r28)
/* 804BAB38  B0 1C 05 80 */	sth r0, 0x580(r28)
/* 804BAB3C  38 7C 15 18 */	addi r3, r28, 0x1518
/* 804BAB40  38 80 00 0A */	li r4, 0xa
/* 804BAB44  38 A0 00 00 */	li r5, 0
/* 804BAB48  7F 86 E3 78 */	mr r6, r28
/* 804BAB4C  4B BC 8D 15 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804BAB50  38 7C 15 54 */	addi r3, r28, 0x1554
/* 804BAB54  3C 80 80 4C */	lis r4, cc_sph_src@ha /* 0x804BBA6C@ha */
/* 804BAB58  38 84 BA 6C */	addi r4, r4, cc_sph_src@l /* 0x804BBA6C@l */
/* 804BAB5C  4B BC 9E D9 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 804BAB60  38 1C 15 18 */	addi r0, r28, 0x1518
/* 804BAB64  90 1C 15 98 */	stw r0, 0x1598(r28)
/* 804BAB68  38 00 00 0F */	li r0, 0xf
/* 804BAB6C  98 1C 06 A8 */	stb r0, 0x6a8(r28)
/* 804BAB70  48 00 00 78 */	b lbl_804BABE8
lbl_804BAB74:
/* 804BAB74  28 03 00 00 */	cmplwi r3, 0
/* 804BAB78  41 82 00 10 */	beq lbl_804BAB88
/* 804BAB7C  38 00 00 00 */	li r0, 0
/* 804BAB80  B0 1C 0F 7E */	sth r0, 0xf7e(r28)
/* 804BAB84  48 00 00 0C */	b lbl_804BAB90
lbl_804BAB88:
/* 804BAB88  38 00 00 01 */	li r0, 1
/* 804BAB8C  B0 1C 0F 7E */	sth r0, 0xf7e(r28)
lbl_804BAB90:
/* 804BAB90  38 00 00 14 */	li r0, 0x14
/* 804BAB94  B0 1C 05 7C */	sth r0, 0x57c(r28)
/* 804BAB98  38 00 00 01 */	li r0, 1
/* 804BAB9C  98 1C 0F 80 */	stb r0, 0xf80(r28)
/* 804BABA0  98 1C 0F 81 */	stb r0, 0xf81(r28)
/* 804BABA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BABA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BABAC  3B A3 07 F0 */	addi r29, r3, 0x7f0
/* 804BABB0  7F A3 EB 78 */	mr r3, r29
/* 804BABB4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F11F@ha */
/* 804BABB8  38 84 F1 1F */	addi r4, r4, 0xF11F /* 0x0000F11F@l */
/* 804BABBC  4B B7 9E 49 */	bl getEventReg__11dSv_event_cCFUs
/* 804BABC0  54 65 06 3F */	clrlwi. r5, r3, 0x18
/* 804BABC4  41 82 00 1C */	beq lbl_804BABE0
/* 804BABC8  7F A3 EB 78 */	mr r3, r29
/* 804BABCC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F11F@ha */
/* 804BABD0  38 84 F1 1F */	addi r4, r4, 0xF11F /* 0x0000F11F@l */
/* 804BABD4  38 05 FF FF */	addi r0, r5, -1
/* 804BABD8  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 804BABDC  4B B7 9E 05 */	bl setEventReg__11dSv_event_cFUsUc
lbl_804BABE0:
/* 804BABE0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804BABE4  D0 1C 06 A4 */	stfs f0, 0x6a4(r28)
lbl_804BABE8:
/* 804BABE8  7F 83 E3 78 */	mr r3, r28
/* 804BABEC  4B FF E7 2D */	bl dmg_rod_Execute__FP13dmg_rod_class
lbl_804BABF0:
/* 804BABF0  7F 63 DB 78 */	mr r3, r27
lbl_804BABF4:
/* 804BABF4  39 61 00 30 */	addi r11, r1, 0x30
/* 804BABF8  4B EA 76 25 */	bl _restgpr_26
/* 804BABFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BAC00  7C 08 03 A6 */	mtlr r0
/* 804BAC04  38 21 00 30 */	addi r1, r1, 0x30
/* 804BAC08  4E 80 00 20 */	blr 
