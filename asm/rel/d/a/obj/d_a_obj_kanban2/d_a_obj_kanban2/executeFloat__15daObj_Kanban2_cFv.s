lbl_8058437C:
/* 8058437C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80584380  7C 08 02 A6 */	mflr r0
/* 80584384  90 01 00 74 */	stw r0, 0x74(r1)
/* 80584388  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8058438C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80584390  39 61 00 60 */	addi r11, r1, 0x60
/* 80584394  4B DD DE 44 */	b _savegpr_28
/* 80584398  7C 7C 1B 78 */	mr r28, r3
/* 8058439C  3C 80 80 58 */	lis r4, lit_3970@ha
/* 805843A0  3B E4 56 20 */	addi r31, r4, lit_3970@l
/* 805843A4  4B FF E4 F1 */	bl checkWaterSurface__15daObj_Kanban2_cFv
/* 805843A8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 805843AC  C0 5C 06 04 */	lfs f2, 0x604(r28)
/* 805843B0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 805843B4  40 82 00 18 */	bne lbl_805843CC
/* 805843B8  7F 83 E3 78 */	mr r3, r28
/* 805843BC  38 80 00 01 */	li r4, 1
/* 805843C0  38 A0 00 07 */	li r5, 7
/* 805843C4  4B FF EB 2D */	bl setActionMode__15daObj_Kanban2_cFii
/* 805843C8  48 00 04 9C */	b lbl_80584864
lbl_805843CC:
/* 805843CC  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 805843D0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805843D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805843D8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 805843DC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805843E0  83 DC 06 20 */	lwz r30, 0x620(r28)
/* 805843E4  28 1E 00 01 */	cmplwi r30, 1
/* 805843E8  40 80 00 08 */	bge lbl_805843F0
/* 805843EC  3B C0 00 01 */	li r30, 1
lbl_805843F0:
/* 805843F0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805843F4  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 805843F8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805843FC  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 80584400  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80584404  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 80584408  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 8058440C  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 80584410  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80584414  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 80584418  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 8058441C  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 80584420  80 1C 06 14 */	lwz r0, 0x614(r28)
/* 80584424  2C 00 00 00 */	cmpwi r0, 0
/* 80584428  40 82 00 94 */	bne lbl_805844BC
/* 8058442C  80 1C 08 9C */	lwz r0, 0x89c(r28)
/* 80584430  60 00 00 01 */	ori r0, r0, 1
/* 80584434  90 1C 08 9C */	stw r0, 0x89c(r28)
/* 80584438  80 1C 08 84 */	lwz r0, 0x884(r28)
/* 8058443C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80584440  90 1C 08 84 */	stw r0, 0x884(r28)
/* 80584444  38 00 00 01 */	li r0, 1
/* 80584448  90 1C 06 14 */	stw r0, 0x614(r28)
/* 8058444C  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 80584450  2C 00 00 00 */	cmpwi r0, 0
/* 80584454  40 81 00 10 */	ble lbl_80584464
/* 80584458  38 00 40 00 */	li r0, 0x4000
/* 8058445C  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80584460  48 00 00 0C */	b lbl_8058446C
lbl_80584464:
/* 80584464  38 00 C0 00 */	li r0, -16384
/* 80584468  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
lbl_8058446C:
/* 8058446C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80584470  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80584474  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80584478  41 82 00 0C */	beq lbl_80584484
/* 8058447C  38 00 01 00 */	li r0, 0x100
/* 80584480  B0 1C 05 EA */	sth r0, 0x5ea(r28)
lbl_80584484:
/* 80584484  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80584488  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8058448C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80584490  40 81 00 08 */	ble lbl_80584498
/* 80584494  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_80584498:
/* 80584498  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 8058449C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 805844A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 805844A4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 805844A8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805844AC  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 805844B0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 805844B4  7F 83 E3 78 */	mr r3, r28
/* 805844B8  4B FF E6 45 */	bl setWaterEffect__15daObj_Kanban2_cFv
lbl_805844BC:
/* 805844BC  7F 83 E3 78 */	mr r3, r28
/* 805844C0  4B FF DD 5D */	bl float_damage_check__15daObj_Kanban2_cFv
/* 805844C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805844C8  40 82 03 9C */	bne lbl_80584864
/* 805844CC  A8 7C 05 E8 */	lha r3, 0x5e8(r28)
/* 805844D0  38 03 04 00 */	addi r0, r3, 0x400
/* 805844D4  B0 1C 05 E8 */	sth r0, 0x5e8(r28)
/* 805844D8  A8 1C 05 E8 */	lha r0, 0x5e8(r28)
/* 805844DC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805844E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805844E4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805844E8  7C 23 04 2E */	lfsx f1, r3, r0
/* 805844EC  A8 7C 05 EE */	lha r3, 0x5ee(r28)
/* 805844F0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 805844F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805844F8  FC 00 00 1E */	fctiwz f0, f0
/* 805844FC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80584500  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80584504  7C 03 02 14 */	add r0, r3, r0
/* 80584508  B0 1C 05 EE */	sth r0, 0x5ee(r28)
/* 8058450C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80584510  C0 3C 06 04 */	lfs f1, 0x604(r28)
/* 80584514  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80584518  4C 41 13 82 */	cror 2, 1, 2
/* 8058451C  40 82 00 14 */	bne lbl_80584530
/* 80584520  D0 3C 04 D4 */	stfs f1, 0x4d4(r28)
/* 80584524  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80584528  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8058452C  48 00 00 14 */	b lbl_80584540
lbl_80584530:
/* 80584530  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 80584534  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80584538  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 8058453C  4B CE C2 04 */	b cLib_chaseF__FPfff
lbl_80584540:
/* 80584540  80 1C 06 9C */	lwz r0, 0x69c(r28)
/* 80584544  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80584548  41 82 00 8C */	beq lbl_805845D4
/* 8058454C  88 1C 06 29 */	lbz r0, 0x629(r28)
/* 80584550  28 00 00 00 */	cmplwi r0, 0
/* 80584554  40 82 00 80 */	bne lbl_805845D4
/* 80584558  38 00 00 0A */	li r0, 0xa
/* 8058455C  98 1C 06 29 */	stb r0, 0x629(r28)
/* 80584560  AB BC 06 6C */	lha r29, 0x66c(r28)
/* 80584564  7F A3 EB 78 */	mr r3, r29
/* 80584568  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8058456C  4B CE C8 B8 */	b cLib_distanceAngleS__Fss
/* 80584570  7C 60 07 34 */	extsh r0, r3
/* 80584574  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80584578  40 81 00 5C */	ble lbl_805845D4
/* 8058457C  A8 1C 05 EA */	lha r0, 0x5ea(r28)
/* 80584580  7C 00 00 D0 */	neg r0, r0
/* 80584584  7C 00 0E 70 */	srawi r0, r0, 1
/* 80584588  7C 00 01 94 */	addze r0, r0
/* 8058458C  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80584590  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80584594  4B CE 33 F8 */	b cM_rndFX__Ff
/* 80584598  FC 00 08 1E */	fctiwz f0, f1
/* 8058459C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805845A0  80 81 00 44 */	lwz r4, 0x44(r1)
/* 805845A4  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 805845A8  7C 1D 00 50 */	subf r0, r29, r0
/* 805845AC  7C 00 07 34 */	extsh r0, r0
/* 805845B0  7C 60 E8 50 */	subf r3, r0, r29
/* 805845B4  3C 03 00 01 */	addis r0, r3, 1
/* 805845B8  7C 60 22 14 */	add r3, r0, r4
/* 805845BC  38 03 80 00 */	addi r0, r3, -32768
/* 805845C0  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 805845C4  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 805845C8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 805845CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805845D0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_805845D4:
/* 805845D4  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 805845D8  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 805845DC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805845E0  C0 23 00 04 */	lfs f1, 4(r3)
/* 805845E4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 805845E8  C0 43 00 08 */	lfs f2, 8(r3)
/* 805845EC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 805845F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805845F4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805845F8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805845FC  38 00 00 00 */	li r0, 0
/* 80584600  90 01 00 08 */	stw r0, 8(r1)
/* 80584604  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 80584608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058460C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80584610  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80584614  38 9C 07 60 */	addi r4, r28, 0x760
/* 80584618  4B AF 00 48 */	b ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 8058461C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80584620  41 82 01 38 */	beq lbl_80584758
/* 80584624  38 7C 07 60 */	addi r3, r28, 0x760
/* 80584628  38 81 00 24 */	addi r4, r1, 0x24
/* 8058462C  38 A1 00 08 */	addi r5, r1, 8
/* 80584630  4B AC D3 2C */	b dPath_GetPolyRoomPathVec__FRC13cBgS_PolyInfoP4cXyzPi
/* 80584634  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80584638  41 82 01 20 */	beq lbl_80584758
/* 8058463C  7F DD F3 78 */	mr r29, r30
/* 80584640  28 1E 00 03 */	cmplwi r30, 3
/* 80584644  40 81 00 08 */	ble lbl_8058464C
/* 80584648  3B A0 00 03 */	li r29, 3
lbl_8058464C:
/* 8058464C  80 01 00 08 */	lwz r0, 8(r1)
/* 80584650  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 80584654  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80584658  90 01 00 44 */	stw r0, 0x44(r1)
/* 8058465C  3C 00 43 30 */	lis r0, 0x4330
/* 80584660  90 01 00 40 */	stw r0, 0x40(r1)
/* 80584664  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80584668  EC 20 08 28 */	fsubs f1, f0, f1
/* 8058466C  3C 60 80 58 */	lis r3, kn2_speed_rate@ha
/* 80584670  38 63 5B C0 */	addi r3, r3, kn2_speed_rate@l
/* 80584674  57 A0 10 3A */	slwi r0, r29, 2
/* 80584678  7C 63 02 14 */	add r3, r3, r0
/* 8058467C  C0 03 FF FC */	lfs f0, -4(r3)
/* 80584680  EF E1 00 32 */	fmuls f31, f1, f0
/* 80584684  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80584688  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8058468C  4B CE 2F E8 */	b cM_atan2s__Fff
/* 80584690  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80584694  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80584698  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8058469C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805846A0  7C 03 04 2E */	lfsx f0, r3, r0
/* 805846A4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 805846A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805846AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805846B0  38 83 00 04 */	addi r4, r3, 4
/* 805846B4  7C 04 04 2E */	lfsx f0, r4, r0
/* 805846B8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 805846BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805846C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805846C4  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 805846C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805846CC  7C 03 04 2E */	lfsx f0, r3, r0
/* 805846D0  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 805846D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 805846D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805846DC  7C 04 04 2E */	lfsx f0, r4, r0
/* 805846E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 805846E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805846E8  38 61 00 0C */	addi r3, r1, 0xc
/* 805846EC  38 81 00 24 */	addi r4, r1, 0x24
/* 805846F0  38 A1 00 18 */	addi r5, r1, 0x18
/* 805846F4  4B CE 23 F0 */	b __pl__4cXyzCFRC3Vec
/* 805846F8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805846FC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80584700  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80584704  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80584708  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8058470C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80584710  4B CE 2F 64 */	b cM_atan2s__Fff
/* 80584714  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 80584718  38 00 00 40 */	li r0, 0x40
/* 8058471C  7C 60 EB 96 */	divwu r3, r0, r29
/* 80584720  38 03 00 40 */	addi r0, r3, 0x40
/* 80584724  7C 04 07 34 */	extsh r4, r0
/* 80584728  A8 1C 05 EA */	lha r0, 0x5ea(r28)
/* 8058472C  2C 00 00 00 */	cmpwi r0, 0
/* 80584730  40 80 00 1C */	bge lbl_8058474C
/* 80584734  38 7C 05 EA */	addi r3, r28, 0x5ea
/* 80584738  7C 04 00 D0 */	neg r0, r4
/* 8058473C  7C 04 07 34 */	extsh r4, r0
/* 80584740  38 A0 00 10 */	li r5, 0x10
/* 80584744  4B CE C4 4C */	b cLib_chaseAngleS__FPsss
/* 80584748  48 00 00 10 */	b lbl_80584758
lbl_8058474C:
/* 8058474C  38 7C 05 EA */	addi r3, r28, 0x5ea
/* 80584750  38 A0 00 10 */	li r5, 0x10
/* 80584754  4B CE C4 3C */	b cLib_chaseAngleS__FPsss
lbl_80584758:
/* 80584758  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8058475C  FC 20 F8 90 */	fmr f1, f31
/* 80584760  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80584764  4B CE BF DC */	b cLib_chaseF__FPfff
/* 80584768  38 7C 09 F8 */	addi r3, r28, 0x9f8
/* 8058476C  38 81 00 30 */	addi r4, r1, 0x30
/* 80584770  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80584774  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 80584778  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8058477C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80584780  4C 41 13 82 */	cror 2, 1, 2
/* 80584784  40 82 00 28 */	bne lbl_805847AC
/* 80584788  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 8058478C  C8 5F 00 E0 */	lfd f2, 0xe0(r31)
/* 80584790  93 C1 00 44 */	stw r30, 0x44(r1)
/* 80584794  3C 00 43 30 */	lis r0, 0x4330
/* 80584798  90 01 00 40 */	stw r0, 0x40(r1)
/* 8058479C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805847A0  EC 00 10 28 */	fsubs f0, f0, f2
/* 805847A4  EC 43 00 32 */	fmuls f2, f3, f0
/* 805847A8  48 00 00 24 */	b lbl_805847CC
lbl_805847AC:
/* 805847AC  C0 7F 00 DC */	lfs f3, 0xdc(r31)
/* 805847B0  C8 5F 00 E0 */	lfd f2, 0xe0(r31)
/* 805847B4  93 C1 00 4C */	stw r30, 0x4c(r1)
/* 805847B8  3C 00 43 30 */	lis r0, 0x4330
/* 805847BC  90 01 00 48 */	stw r0, 0x48(r1)
/* 805847C0  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 805847C4  EC 00 10 28 */	fsubs f0, f0, f2
/* 805847C8  EC 43 00 32 */	fmuls f2, f3, f0
lbl_805847CC:
/* 805847CC  4B A9 89 40 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 805847D0  88 1C 06 2A */	lbz r0, 0x62a(r28)
/* 805847D4  28 00 00 00 */	cmplwi r0, 0
/* 805847D8  40 82 00 58 */	bne lbl_80584830
/* 805847DC  38 7C 08 84 */	addi r3, r28, 0x884
/* 805847E0  4B AF FE 78 */	b ChkCoHit__12dCcD_GObjInfFv
/* 805847E4  28 03 00 00 */	cmplwi r3, 0
/* 805847E8  41 82 00 48 */	beq lbl_80584830
/* 805847EC  38 7C 08 84 */	addi r3, r28, 0x884
/* 805847F0  4B AF FF 00 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 805847F4  4B CD F2 54 */	b GetAc__8cCcD_ObjFv
/* 805847F8  A8 03 00 08 */	lha r0, 8(r3)
/* 805847FC  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80584800  40 82 00 30 */	bne lbl_80584830
/* 80584804  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80584808  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058480C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80584810  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80584814  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80584818  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058481C  40 81 00 14 */	ble lbl_80584830
/* 80584820  38 00 01 00 */	li r0, 0x100
/* 80584824  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80584828  38 00 00 0A */	li r0, 0xa
/* 8058482C  98 1C 06 2A */	stb r0, 0x62a(r28)
lbl_80584830:
/* 80584830  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80584834  A8 1C 05 EA */	lha r0, 0x5ea(r28)
/* 80584838  7C 03 02 14 */	add r0, r3, r0
/* 8058483C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80584840  38 7C 05 EA */	addi r3, r28, 0x5ea
/* 80584844  38 80 00 00 */	li r4, 0
/* 80584848  38 A0 00 0A */	li r5, 0xa
/* 8058484C  4B CE C3 44 */	b cLib_chaseAngleS__FPsss
/* 80584850  7F 83 E3 78 */	mr r3, r28
/* 80584854  4B FF E6 15 */	bl checkCarryOn__15daObj_Kanban2_cFv
/* 80584858  7F 83 E3 78 */	mr r3, r28
/* 8058485C  4B FF DA 95 */	bl deletePart__15daObj_Kanban2_cFv
/* 80584860  54 60 06 3F */	clrlwi. r0, r3, 0x18
lbl_80584864:
/* 80584864  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80584868  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8058486C  39 61 00 60 */	addi r11, r1, 0x60
/* 80584870  4B DD D9 B4 */	b _restgpr_28
/* 80584874  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80584878  7C 08 03 A6 */	mtlr r0
/* 8058487C  38 21 00 70 */	addi r1, r1, 0x70
/* 80584880  4E 80 00 20 */	blr 
