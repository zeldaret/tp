lbl_800B8374:
/* 800B8374  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800B8378  7C 08 02 A6 */	mflr r0
/* 800B837C  90 01 00 54 */	stw r0, 0x54(r1)
/* 800B8380  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800B8384  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800B8388  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800B838C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800B8390  7C 7F 1B 78 */	mr r31, r3
/* 800B8394  48 02 FB 51 */	bl getWallGrabStatus__9daAlink_cFv
/* 800B8398  7C 7E 1B 78 */	mr r30, r3
/* 800B839C  7F E3 FB 78 */	mr r3, r31
/* 800B83A0  48 02 FB 55 */	bl wallGrabTrigger__9daAlink_cFv
/* 800B83A4  2C 03 00 00 */	cmpwi r3, 0
/* 800B83A8  41 82 00 58 */	beq lbl_800B8400
/* 800B83AC  2C 1E 00 15 */	cmpwi r30, 0x15
/* 800B83B0  40 82 00 14 */	bne lbl_800B83C4
/* 800B83B4  7F E3 FB 78 */	mr r3, r31
/* 800B83B8  38 80 00 01 */	li r4, 1
/* 800B83BC  48 03 00 6D */	bl procCoPushPullWaitInit__9daAlink_cFi
/* 800B83C0  48 00 05 50 */	b lbl_800B8910
lbl_800B83C4:
/* 800B83C4  2C 1E 00 96 */	cmpwi r30, 0x96
/* 800B83C8  40 82 00 38 */	bne lbl_800B8400
/* 800B83CC  7F E3 FB 78 */	mr r3, r31
/* 800B83D0  48 02 F6 29 */	bl searchFmChainPos__9daAlink_cFv
/* 800B83D4  2C 03 00 00 */	cmpwi r3, 0
/* 800B83D8  41 82 00 28 */	beq lbl_800B8400
/* 800B83DC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B83E0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B83E4  41 82 00 10 */	beq lbl_800B83F4
/* 800B83E8  7F E3 FB 78 */	mr r3, r31
/* 800B83EC  48 08 5A 0D */	bl procWolfChainUpInit__9daAlink_cFv
/* 800B83F0  48 00 05 20 */	b lbl_800B8910
lbl_800B83F4:
/* 800B83F4  7F E3 FB 78 */	mr r3, r31
/* 800B83F8  48 02 F8 39 */	bl procFmChainUpInit__9daAlink_cFv
/* 800B83FC  48 00 05 14 */	b lbl_800B8910
lbl_800B8400:
/* 800B8400  7F E3 FB 78 */	mr r3, r31
/* 800B8404  38 80 00 01 */	li r4, 1
/* 800B8408  4B FF F7 F1 */	bl orderTalk__9daAlink_cFi
/* 800B840C  2C 03 00 00 */	cmpwi r3, 0
/* 800B8410  41 82 00 0C */	beq lbl_800B841C
/* 800B8414  38 60 00 01 */	li r3, 1
/* 800B8418  48 00 04 F8 */	b lbl_800B8910
lbl_800B841C:
/* 800B841C  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800B8420  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B8424  41 82 04 4C */	beq lbl_800B8870
/* 800B8428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B842C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B8430  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800B8434  28 00 00 89 */	cmplwi r0, 0x89
/* 800B8438  40 82 00 14 */	bne lbl_800B844C
/* 800B843C  7F E3 FB 78 */	mr r3, r31
/* 800B8440  4B FF F7 3D */	bl orderPeep__9daAlink_cFv
/* 800B8444  38 60 00 01 */	li r3, 1
/* 800B8448  48 00 04 C8 */	b lbl_800B8910
lbl_800B844C:
/* 800B844C  28 00 00 07 */	cmplwi r0, 7
/* 800B8450  40 82 00 2C */	bne lbl_800B847C
/* 800B8454  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B8458  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B845C  41 82 00 14 */	beq lbl_800B8470
/* 800B8460  7F E3 FB 78 */	mr r3, r31
/* 800B8464  38 80 00 01 */	li r4, 1
/* 800B8468  48 07 EF B9 */	bl procWolfLieStartInit__9daAlink_cFi
/* 800B846C  48 00 04 A4 */	b lbl_800B8910
lbl_800B8470:
/* 800B8470  7F E3 FB 78 */	mr r3, r31
/* 800B8474  48 04 0D 9D */	bl procCrawlStartInit__9daAlink_cFv
/* 800B8478  48 00 04 98 */	b lbl_800B8910
lbl_800B847C:
/* 800B847C  28 00 00 0C */	cmplwi r0, 0xc
/* 800B8480  40 82 00 10 */	bne lbl_800B8490
/* 800B8484  7F E3 FB 78 */	mr r3, r31
/* 800B8488  48 08 4C 4D */	bl procWolfGrabUpInit__9daAlink_cFv
/* 800B848C  48 00 04 84 */	b lbl_800B8910
lbl_800B8490:
/* 800B8490  28 00 00 7B */	cmplwi r0, 0x7b
/* 800B8494  40 82 00 10 */	bne lbl_800B84A4
/* 800B8498  7F E3 FB 78 */	mr r3, r31
/* 800B849C  48 08 5D A5 */	bl procWolfChainReadyInit__9daAlink_cFv
/* 800B84A0  48 00 04 70 */	b lbl_800B8910
lbl_800B84A4:
/* 800B84A4  28 00 00 47 */	cmplwi r0, 0x47
/* 800B84A8  40 82 00 10 */	bne lbl_800B84B8
/* 800B84AC  7F E3 FB 78 */	mr r3, r31
/* 800B84B0  48 08 54 81 */	bl procWolfPushInit__9daAlink_cFv
/* 800B84B4  48 00 04 5C */	b lbl_800B8910
lbl_800B84B8:
/* 800B84B8  28 00 00 17 */	cmplwi r0, 0x17
/* 800B84BC  40 82 00 98 */	bne lbl_800B8554
/* 800B84C0  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 800B84C4  A8 03 00 08 */	lha r0, 8(r3)
/* 800B84C8  2C 00 01 87 */	cmpwi r0, 0x187
/* 800B84CC  40 82 00 10 */	bne lbl_800B84DC
/* 800B84D0  7F E3 FB 78 */	mr r3, r31
/* 800B84D4  48 04 E2 A1 */	bl procBoardRideInit__9daAlink_cFv
/* 800B84D8  48 00 04 38 */	b lbl_800B8910
lbl_800B84DC:
/* 800B84DC  2C 00 00 ED */	cmpwi r0, 0xed
/* 800B84E0  40 82 00 2C */	bne lbl_800B850C
/* 800B84E4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800B84E8  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B84EC  41 82 00 10 */	beq lbl_800B84FC
/* 800B84F0  7F E3 FB 78 */	mr r3, r31
/* 800B84F4  48 03 C5 5D */	bl procCanoeRideInit__9daAlink_cFv
/* 800B84F8  48 00 04 18 */	b lbl_800B8910
lbl_800B84FC:
/* 800B84FC  7F E3 FB 78 */	mr r3, r31
/* 800B8500  38 80 00 01 */	li r4, 1
/* 800B8504  48 00 EB F5 */	bl procSmallJumpInit__9daAlink_cFi
/* 800B8508  48 00 04 08 */	b lbl_800B8910
lbl_800B850C:
/* 800B850C  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800B8510  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800B8514  38 63 00 6F */	addi r3, r3, 0x6f
/* 800B8518  4B FE 55 49 */	bl checkStageName__9daAlink_cFPCc
/* 800B851C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8520  41 82 00 28 */	beq lbl_800B8548
/* 800B8524  3C 60 80 0B */	lis r3, daAlink_searchKolin__FP10fopAc_ac_cPv@ha /* 0x800B7F84@ha */
/* 800B8528  38 63 7F 84 */	addi r3, r3, daAlink_searchKolin__FP10fopAc_ac_cPv@l /* 0x800B7F84@l */
/* 800B852C  38 80 00 00 */	li r4, 0
/* 800B8530  4B F6 12 C9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800B8534  28 03 00 00 */	cmplwi r3, 0
/* 800B8538  41 82 00 10 */	beq lbl_800B8548
/* 800B853C  7F E3 FB 78 */	mr r3, r31
/* 800B8540  48 00 AE 79 */	bl procWaitInit__9daAlink_cFv
/* 800B8544  48 00 03 CC */	b lbl_800B8910
lbl_800B8548:
/* 800B8548  7F E3 FB 78 */	mr r3, r31
/* 800B854C  48 03 74 11 */	bl procHorseRideInit__9daAlink_cFv
/* 800B8550  48 00 03 C0 */	b lbl_800B8910
lbl_800B8554:
/* 800B8554  28 00 00 20 */	cmplwi r0, 0x20
/* 800B8558  40 82 00 40 */	bne lbl_800B8598
/* 800B855C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B8560  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B8564  41 82 00 10 */	beq lbl_800B8574
/* 800B8568  7F E3 FB 78 */	mr r3, r31
/* 800B856C  48 07 D0 81 */	bl procWolfHangReadyInit__9daAlink_cFv
/* 800B8570  48 00 03 A0 */	b lbl_800B8910
lbl_800B8574:
/* 800B8574  88 1F 2F 91 */	lbz r0, 0x2f91(r31)
/* 800B8578  28 00 00 07 */	cmplwi r0, 7
/* 800B857C  40 82 00 10 */	bne lbl_800B858C
/* 800B8580  7F E3 FB 78 */	mr r3, r31
/* 800B8584  48 04 38 81 */	bl procHangWallCatchInit__9daAlink_cFv
/* 800B8588  48 00 03 88 */	b lbl_800B8910
lbl_800B858C:
/* 800B858C  7F E3 FB 78 */	mr r3, r31
/* 800B8590  48 04 3B E9 */	bl procHangReadyInit__9daAlink_cFv
/* 800B8594  48 00 03 7C */	b lbl_800B8910
lbl_800B8598:
/* 800B8598  28 00 00 06 */	cmplwi r0, 6
/* 800B859C  40 82 00 80 */	bne lbl_800B861C
/* 800B85A0  80 7F 27 E4 */	lwz r3, 0x27e4(r31)
/* 800B85A4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800B85A8  28 00 00 05 */	cmplwi r0, 5
/* 800B85AC  40 82 00 54 */	bne lbl_800B8600
/* 800B85B0  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800B85B4  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800B85B8  38 63 00 6F */	addi r3, r3, 0x6f
/* 800B85BC  4B FE 54 A5 */	bl checkStageName__9daAlink_cFPCc
/* 800B85C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B85C4  41 82 00 1C */	beq lbl_800B85E0
/* 800B85C8  3C 60 80 0B */	lis r3, daAlink_searchBouDoor__FP10fopAc_ac_cPv@ha /* 0x800B7D4C@ha */
/* 800B85CC  38 63 7D 4C */	addi r3, r3, daAlink_searchBouDoor__FP10fopAc_ac_cPv@l /* 0x800B7D4C@l */
/* 800B85D0  38 80 00 00 */	li r4, 0
/* 800B85D4  4B F6 12 25 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800B85D8  28 03 00 00 */	cmplwi r3, 0
/* 800B85DC  40 82 00 18 */	bne lbl_800B85F4
lbl_800B85E0:
/* 800B85E0  7F E3 FB 78 */	mr r3, r31
/* 800B85E4  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800B85E8  38 A0 00 00 */	li r5, 0
/* 800B85EC  38 C0 00 00 */	li r6, 0
/* 800B85F0  4B F6 2C 55 */	bl fopAcM_orderDoorEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs
lbl_800B85F4:
/* 800B85F4  7F E3 FB 78 */	mr r3, r31
/* 800B85F8  4B FF D2 F5 */	bl checkWaitAction__9daAlink_cFv
/* 800B85FC  48 00 00 18 */	b lbl_800B8614
lbl_800B8600:
/* 800B8600  7F E3 FB 78 */	mr r3, r31
/* 800B8604  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800B8608  38 A0 00 00 */	li r5, 0
/* 800B860C  38 C0 00 00 */	li r6, 0
/* 800B8610  4B F6 34 6D */	bl fopAcM_orderTreasureEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs
lbl_800B8614:
/* 800B8614  38 60 00 01 */	li r3, 1
/* 800B8618  48 00 02 F8 */	b lbl_800B8910
lbl_800B861C:
/* 800B861C  28 00 00 2B */	cmplwi r0, 0x2b
/* 800B8620  40 82 00 10 */	bne lbl_800B8630
/* 800B8624  7F E3 FB 78 */	mr r3, r31
/* 800B8628  48 05 92 6D */	bl procGrassWhistleGetInit__9daAlink_cFv
/* 800B862C  48 00 02 E4 */	b lbl_800B8910
lbl_800B8630:
/* 800B8630  28 00 00 38 */	cmplwi r0, 0x38
/* 800B8634  40 82 00 10 */	bne lbl_800B8644
/* 800B8638  7F E3 FB 78 */	mr r3, r31
/* 800B863C  48 03 1C 6D */	bl procGoatStrokeInit__9daAlink_cFv
/* 800B8640  48 00 02 D0 */	b lbl_800B8910
lbl_800B8644:
/* 800B8644  28 00 00 63 */	cmplwi r0, 0x63
/* 800B8648  40 82 00 38 */	bne lbl_800B8680
/* 800B864C  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 800B8650  A8 03 00 08 */	lha r0, 8(r3)
/* 800B8654  2C 00 02 C9 */	cmpwi r0, 0x2c9
/* 800B8658  40 82 00 10 */	bne lbl_800B8668
/* 800B865C  38 00 00 01 */	li r0, 1
/* 800B8660  98 03 07 6A */	stb r0, 0x76a(r3)
/* 800B8664  48 00 00 0C */	b lbl_800B8670
lbl_800B8668:
/* 800B8668  38 00 00 01 */	li r0, 1
/* 800B866C  98 03 05 C2 */	stb r0, 0x5c2(r3)
lbl_800B8670:
/* 800B8670  7F E3 FB 78 */	mr r3, r31
/* 800B8674  48 00 AD 45 */	bl procWaitInit__9daAlink_cFv
/* 800B8678  38 60 00 01 */	li r3, 1
/* 800B867C  48 00 02 94 */	b lbl_800B8910
lbl_800B8680:
/* 800B8680  28 00 00 91 */	cmplwi r0, 0x91
/* 800B8684  40 82 00 8C */	bne lbl_800B8710
/* 800B8688  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B868C  64 00 10 00 */	oris r0, r0, 0x1000
/* 800B8690  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800B8694  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 800B8698  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 800B869C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800B86A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800B86A4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B86A8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800B86AC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 800B86B0  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800B86B4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800B86B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800B86BC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800B86C0  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 800B86C4  38 61 00 20 */	addi r3, r1, 0x20
/* 800B86C8  38 81 00 2C */	addi r4, r1, 0x2c
/* 800B86CC  48 28 EC D1 */	bl PSVECSquareDistance
/* 800B86D0  FF E0 08 90 */	fmr f31, f1
/* 800B86D4  7F E3 FB 78 */	mr r3, r31
/* 800B86D8  48 02 FC 3D */	bl getGoatCatchDistance2__9daAlink_cFv
/* 800B86DC  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 800B86E0  40 80 02 2C */	bge lbl_800B890C
/* 800B86E4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B86E8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B86EC  41 82 00 10 */	beq lbl_800B86FC
/* 800B86F0  7F E3 FB 78 */	mr r3, r31
/* 800B86F4  48 08 58 3D */	bl procWolfGanonCatchInit__9daAlink_cFv
/* 800B86F8  48 00 02 18 */	b lbl_800B8910
lbl_800B86FC:
/* 800B86FC  7F E3 FB 78 */	mr r3, r31
/* 800B8700  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800B8704  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B8708  48 03 11 8D */	bl procGoatCatchInit__9daAlink_cFP10fopAc_ac_cf
/* 800B870C  48 00 02 04 */	b lbl_800B8910
lbl_800B8710:
/* 800B8710  28 00 00 98 */	cmplwi r0, 0x98
/* 800B8714  40 82 00 10 */	bne lbl_800B8724
/* 800B8718  7F E3 FB 78 */	mr r3, r31
/* 800B871C  48 02 E9 E1 */	bl procInsectCatchInit__9daAlink_cFv
/* 800B8720  48 00 01 F0 */	b lbl_800B8910
lbl_800B8724:
/* 800B8724  28 00 00 1F */	cmplwi r0, 0x1f
/* 800B8728  41 82 00 14 */	beq lbl_800B873C
/* 800B872C  28 00 00 39 */	cmplwi r0, 0x39
/* 800B8730  41 82 00 0C */	beq lbl_800B873C
/* 800B8734  28 00 00 34 */	cmplwi r0, 0x34
/* 800B8738  40 82 00 44 */	bne lbl_800B877C
lbl_800B873C:
/* 800B873C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B8740  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B8744  41 82 00 10 */	beq lbl_800B8754
/* 800B8748  7F E3 FB 78 */	mr r3, r31
/* 800B874C  48 08 49 89 */	bl procWolfGrabUpInit__9daAlink_cFv
/* 800B8750  48 00 01 C0 */	b lbl_800B8910
lbl_800B8754:
/* 800B8754  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 800B8758  88 03 04 9A */	lbz r0, 0x49a(r3)
/* 800B875C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B8760  41 82 00 10 */	beq lbl_800B8770
/* 800B8764  7F E3 FB 78 */	mr r3, r31
/* 800B8768  48 02 EA ED */	bl procPickUpInit__9daAlink_cFv
/* 800B876C  48 00 01 A4 */	b lbl_800B8910
lbl_800B8770:
/* 800B8770  7F E3 FB 78 */	mr r3, r31
/* 800B8774  48 02 D5 49 */	bl procGrabReadyInit__9daAlink_cFv
/* 800B8778  48 00 01 98 */	b lbl_800B8910
lbl_800B877C:
/* 800B877C  28 00 00 99 */	cmplwi r0, 0x99
/* 800B8780  40 82 00 10 */	bne lbl_800B8790
/* 800B8784  7F E3 FB 78 */	mr r3, r31
/* 800B8788  48 04 3B 6D */	bl procHangLeverDownInit__9daAlink_cFv
/* 800B878C  48 00 01 84 */	b lbl_800B8910
lbl_800B8790:
/* 800B8790  28 00 00 30 */	cmplwi r0, 0x30
/* 800B8794  40 82 00 28 */	bne lbl_800B87BC
/* 800B8798  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B879C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B87A0  41 82 00 10 */	beq lbl_800B87B0
/* 800B87A4  7F E3 FB 78 */	mr r3, r31
/* 800B87A8  48 08 2D 81 */	bl procWolfDownAttackInit__9daAlink_cFv
/* 800B87AC  48 00 01 64 */	b lbl_800B8910
lbl_800B87B0:
/* 800B87B0  7F E3 FB 78 */	mr r3, r31
/* 800B87B4  48 01 A0 31 */	bl checkDoCutAction__9daAlink_cFv
/* 800B87B8  48 00 01 58 */	b lbl_800B8910
lbl_800B87BC:
/* 800B87BC  28 00 00 77 */	cmplwi r0, 0x77
/* 800B87C0  40 82 00 2C */	bne lbl_800B87EC
/* 800B87C4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B87C8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B87CC  41 82 00 14 */	beq lbl_800B87E0
/* 800B87D0  7F E3 FB 78 */	mr r3, r31
/* 800B87D4  38 80 00 01 */	li r4, 1
/* 800B87D8  48 08 16 09 */	bl procWolfJumpAttackInit__9daAlink_cFi
/* 800B87DC  48 00 01 34 */	b lbl_800B8910
lbl_800B87E0:
/* 800B87E0  7F E3 FB 78 */	mr r3, r31
/* 800B87E4  48 01 A0 01 */	bl checkDoCutAction__9daAlink_cFv
/* 800B87E8  48 00 01 28 */	b lbl_800B8910
lbl_800B87EC:
/* 800B87EC  28 00 00 8B */	cmplwi r0, 0x8b
/* 800B87F0  40 82 00 14 */	bne lbl_800B8804
/* 800B87F4  7F E3 FB 78 */	mr r3, r31
/* 800B87F8  38 80 00 01 */	li r4, 1
/* 800B87FC  48 08 15 E5 */	bl procWolfJumpAttackInit__9daAlink_cFi
/* 800B8800  48 00 01 10 */	b lbl_800B8910
lbl_800B8804:
/* 800B8804  28 00 00 62 */	cmplwi r0, 0x62
/* 800B8808  40 82 00 14 */	bne lbl_800B881C
/* 800B880C  7F E3 FB 78 */	mr r3, r31
/* 800B8810  48 01 88 79 */	bl changeCutFast__9daAlink_cFv
/* 800B8814  38 60 00 01 */	li r3, 1
/* 800B8818  48 00 00 F8 */	b lbl_800B8910
lbl_800B881C:
/* 800B881C  28 00 00 86 */	cmplwi r0, 0x86
/* 800B8820  40 82 00 10 */	bne lbl_800B8830
/* 800B8824  7F E3 FB 78 */	mr r3, r31
/* 800B8828  48 01 9F BD */	bl checkDoCutAction__9daAlink_cFv
/* 800B882C  48 00 00 E4 */	b lbl_800B8910
lbl_800B8830:
/* 800B8830  28 00 00 05 */	cmplwi r0, 5
/* 800B8834  40 82 00 10 */	bne lbl_800B8844
/* 800B8838  7F E3 FB 78 */	mr r3, r31
/* 800B883C  48 07 7E C5 */	bl procWolfHowlDemoInit__9daAlink_cFv
/* 800B8840  48 00 00 D0 */	b lbl_800B8910
lbl_800B8844:
/* 800B8844  28 00 00 45 */	cmplwi r0, 0x45
/* 800B8848  40 82 00 10 */	bne lbl_800B8858
/* 800B884C  7F E3 FB 78 */	mr r3, r31
/* 800B8850  48 08 71 C5 */	bl procWolfGetSmellInit__9daAlink_cFv
/* 800B8854  48 00 00 BC */	b lbl_800B8910
lbl_800B8858:
/* 800B8858  28 00 00 93 */	cmplwi r0, 0x93
/* 800B885C  40 82 00 B0 */	bne lbl_800B890C
/* 800B8860  7F E3 FB 78 */	mr r3, r31
/* 800B8864  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800B8868  48 07 B7 99 */	bl procWolfTagJumpInit__9daAlink_cFP10fopAc_ac_c
/* 800B886C  48 00 00 A4 */	b lbl_800B8910
lbl_800B8870:
/* 800B8870  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B8874  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 800B8878  41 82 00 94 */	beq lbl_800B890C
/* 800B887C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B8880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B8884  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800B8888  28 00 00 91 */	cmplwi r0, 0x91
/* 800B888C  40 82 00 80 */	bne lbl_800B890C
/* 800B8890  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 800B8894  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 800B8898  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800B889C  D0 01 00 08 */	stfs f0, 8(r1)
/* 800B88A0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B88A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800B88A8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800B88AC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800B88B0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800B88B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800B88B8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800B88BC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800B88C0  38 61 00 08 */	addi r3, r1, 8
/* 800B88C4  38 81 00 14 */	addi r4, r1, 0x14
/* 800B88C8  48 28 EA D5 */	bl PSVECSquareDistance
/* 800B88CC  FF E0 08 90 */	fmr f31, f1
/* 800B88D0  7F E3 FB 78 */	mr r3, r31
/* 800B88D4  48 02 FA 41 */	bl getGoatCatchDistance2__9daAlink_cFv
/* 800B88D8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 800B88DC  40 80 00 30 */	bge lbl_800B890C
/* 800B88E0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B88E4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B88E8  41 82 00 10 */	beq lbl_800B88F8
/* 800B88EC  7F E3 FB 78 */	mr r3, r31
/* 800B88F0  48 08 56 41 */	bl procWolfGanonCatchInit__9daAlink_cFv
/* 800B88F4  48 00 00 1C */	b lbl_800B8910
lbl_800B88F8:
/* 800B88F8  7F E3 FB 78 */	mr r3, r31
/* 800B88FC  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 800B8900  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B8904  48 03 0F 91 */	bl procGoatCatchInit__9daAlink_cFP10fopAc_ac_cf
/* 800B8908  48 00 00 08 */	b lbl_800B8910
lbl_800B890C:
/* 800B890C  38 60 00 00 */	li r3, 0
lbl_800B8910:
/* 800B8910  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800B8914  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800B8918  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800B891C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800B8920  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800B8924  7C 08 03 A6 */	mtlr r0
/* 800B8928  38 21 00 50 */	addi r1, r1, 0x50
/* 800B892C  4E 80 00 20 */	blr 
