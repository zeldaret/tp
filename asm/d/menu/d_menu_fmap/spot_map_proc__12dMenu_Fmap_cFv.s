lbl_801C9618:
/* 801C9618  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801C961C  7C 08 02 A6 */	mflr r0
/* 801C9620  90 01 00 44 */	stw r0, 0x44(r1)
/* 801C9624  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801C9628  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801C962C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801C9630  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 801C9634  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C9638  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C963C  7C 7F 1B 78 */	mr r31, r3
/* 801C9640  48 03 0A 11 */	bl dMw_B_TRIGGER__Fv
/* 801C9644  2C 03 00 00 */	cmpwi r3, 0
/* 801C9648  41 82 00 50 */	beq lbl_801C9698
/* 801C964C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801C9650  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801C9654  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801C9658  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801C965C  40 82 00 3C */	bne lbl_801C9698
/* 801C9660  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801C9664  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 801C9668  88 03 07 72 */	lbz r0, 0x772(r3)
/* 801C966C  28 00 00 01 */	cmplwi r0, 1
/* 801C9670  41 82 00 28 */	beq lbl_801C9698
/* 801C9674  7F E3 FB 78 */	mr r3, r31
/* 801C9678  38 80 00 0C */	li r4, 0xc
/* 801C967C  48 00 20 55 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C9680  88 1F 03 09 */	lbz r0, 0x309(r31)
/* 801C9684  28 00 00 01 */	cmplwi r0, 1
/* 801C9688  40 82 03 60 */	bne lbl_801C99E8
/* 801C968C  38 00 00 00 */	li r0, 0
/* 801C9690  98 1F 03 09 */	stb r0, 0x309(r31)
/* 801C9694  48 00 03 54 */	b lbl_801C99E8
lbl_801C9698:
/* 801C9698  48 03 09 A5 */	bl dMw_A_TRIGGER__Fv
/* 801C969C  2C 03 00 00 */	cmpwi r3, 0
/* 801C96A0  41 82 00 44 */	beq lbl_801C96E4
/* 801C96A4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801C96A8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801C96AC  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801C96B0  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801C96B4  40 82 00 30 */	bne lbl_801C96E4
/* 801C96B8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801C96BC  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 801C96C0  88 03 07 72 */	lbz r0, 0x772(r3)
/* 801C96C4  28 00 00 01 */	cmplwi r0, 1
/* 801C96C8  41 82 00 1C */	beq lbl_801C96E4
/* 801C96CC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C96D0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801C96D4  38 A0 00 01 */	li r5, 1
/* 801C96D8  38 C0 00 01 */	li r6, 1
/* 801C96DC  48 00 B7 A5 */	bl stageMapMove__18dMenu_Fmap2DBack_cFP9STControlUcb
/* 801C96E0  48 00 03 08 */	b lbl_801C99E8
lbl_801C96E4:
/* 801C96E4  48 03 09 81 */	bl dMw_Z_TRIGGER__Fv
/* 801C96E8  2C 03 00 00 */	cmpwi r3, 0
/* 801C96EC  41 82 01 E0 */	beq lbl_801C98CC
/* 801C96F0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C96F4  48 00 E9 95 */	bl isWarpAccept__17dMenu_Fmap2DTop_cFv
/* 801C96F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C96FC  41 82 01 D0 */	beq lbl_801C98CC
/* 801C9700  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9704  48 00 E2 91 */	bl checkPlayerWarpAccept__17dMenu_Fmap2DTop_cFv
/* 801C9708  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C970C  41 82 00 60 */	beq lbl_801C976C
/* 801C9710  38 00 00 01 */	li r0, 1
/* 801C9714  98 1F 03 07 */	stb r0, 0x307(r31)
/* 801C9718  7F E3 FB 78 */	mr r3, r31
/* 801C971C  38 80 00 0C */	li r4, 0xc
/* 801C9720  48 00 1F B1 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C9724  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9728  38 80 05 2A */	li r4, 0x52a
/* 801C972C  38 A0 00 FF */	li r5, 0xff
/* 801C9730  48 00 D9 B9 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C9734  38 00 00 47 */	li r0, 0x47
/* 801C9738  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C973C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C9740  38 81 00 0C */	addi r4, r1, 0xc
/* 801C9744  38 A0 00 00 */	li r5, 0
/* 801C9748  38 C0 00 00 */	li r6, 0
/* 801C974C  38 E0 00 00 */	li r7, 0
/* 801C9750  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C9754  FC 40 08 90 */	fmr f2, f1
/* 801C9758  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C975C  FC 80 18 90 */	fmr f4, f3
/* 801C9760  39 00 00 00 */	li r8, 0
/* 801C9764  48 0E 22 21 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C9768  48 00 02 80 */	b lbl_801C99E8
lbl_801C976C:
/* 801C976C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9770  80 9F 00 08 */	lwz r4, 8(r31)
/* 801C9774  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 801C9778  48 00 DE C9 */	bl createExplain__17dMenu_Fmap2DTop_cFP10JKRExpHeapP9STControl
/* 801C977C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C9780  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C9784  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 801C9788  7F C3 F3 78 */	mr r3, r30
/* 801C978C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801C9790  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801C9794  A0 84 00 D0 */	lhz r4, 0xd0(r4)
/* 801C9798  4B E6 B2 25 */	bl isEventBit__11dSv_event_cCFUs
/* 801C979C  2C 03 00 00 */	cmpwi r3, 0
/* 801C97A0  41 82 00 44 */	beq lbl_801C97E4
/* 801C97A4  7F C3 F3 78 */	mr r3, r30
/* 801C97A8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801C97AC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801C97B0  A0 84 01 F4 */	lhz r4, 0x1f4(r4)
/* 801C97B4  4B E6 B2 09 */	bl isEventBit__11dSv_event_cCFUs
/* 801C97B8  2C 03 00 00 */	cmpwi r3, 0
/* 801C97BC  40 82 00 28 */	bne lbl_801C97E4
/* 801C97C0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C97C4  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C97C8  38 80 08 5D */	li r4, 0x85d
/* 801C97CC  38 A0 00 00 */	li r5, 0
/* 801C97D0  38 C0 00 00 */	li r6, 0
/* 801C97D4  38 E0 00 FF */	li r7, 0xff
/* 801C97D8  39 00 00 01 */	li r8, 1
/* 801C97DC  48 07 4D 7D */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C97E0  48 00 00 A0 */	b lbl_801C9880
lbl_801C97E4:
/* 801C97E4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C97E8  48 00 E3 71 */	bl checkWarpAcceptCannon__17dMenu_Fmap2DTop_cFv
/* 801C97EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C97F0  40 82 00 3C */	bne lbl_801C982C
/* 801C97F4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C97F8  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C97FC  38 80 07 DE */	li r4, 0x7de
/* 801C9800  38 A0 00 00 */	li r5, 0
/* 801C9804  38 C0 00 00 */	li r6, 0
/* 801C9808  38 E0 00 FF */	li r7, 0xff
/* 801C980C  39 00 00 01 */	li r8, 1
/* 801C9810  48 07 4D 49 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C9814  7F C3 F3 78 */	mr r3, r30
/* 801C9818  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801C981C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801C9820  A0 84 06 26 */	lhz r4, 0x626(r4)
/* 801C9824  4B E6 B1 69 */	bl onEventBit__11dSv_event_cFUs
/* 801C9828  48 00 00 58 */	b lbl_801C9880
lbl_801C982C:
/* 801C982C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9830  48 00 E2 85 */	bl checkWarpAcceptRegion4__17dMenu_Fmap2DTop_cFv
/* 801C9834  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C9838  40 82 00 28 */	bne lbl_801C9860
/* 801C983C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9840  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C9844  38 80 07 DD */	li r4, 0x7dd
/* 801C9848  38 A0 00 00 */	li r5, 0
/* 801C984C  38 C0 00 00 */	li r6, 0
/* 801C9850  38 E0 00 FF */	li r7, 0xff
/* 801C9854  39 00 00 01 */	li r8, 1
/* 801C9858  48 07 4D 01 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C985C  48 00 00 24 */	b lbl_801C9880
lbl_801C9860:
/* 801C9860  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C9864  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C9868  38 80 05 1D */	li r4, 0x51d
/* 801C986C  38 A0 00 00 */	li r5, 0
/* 801C9870  38 C0 00 00 */	li r6, 0
/* 801C9874  38 E0 00 FF */	li r7, 0xff
/* 801C9878  39 00 00 01 */	li r8, 1
/* 801C987C  48 07 4C DD */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
lbl_801C9880:
/* 801C9880  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 801C9884  98 1F 03 02 */	stb r0, 0x302(r31)
/* 801C9888  7F E3 FB 78 */	mr r3, r31
/* 801C988C  38 80 00 0A */	li r4, 0xa
/* 801C9890  48 00 1E 41 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C9894  38 00 00 4A */	li r0, 0x4a
/* 801C9898  90 01 00 08 */	stw r0, 8(r1)
/* 801C989C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C98A0  38 81 00 08 */	addi r4, r1, 8
/* 801C98A4  38 A0 00 00 */	li r5, 0
/* 801C98A8  38 C0 00 00 */	li r6, 0
/* 801C98AC  38 E0 00 00 */	li r7, 0
/* 801C98B0  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C98B4  FC 40 08 90 */	fmr f2, f1
/* 801C98B8  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C98BC  FC 80 18 90 */	fmr f4, f3
/* 801C98C0  39 00 00 00 */	li r8, 0
/* 801C98C4  48 0E 20 C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C98C8  48 00 01 20 */	b lbl_801C99E8
lbl_801C98CC:
/* 801C98CC  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801C98D0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801C98D4  88 03 02 F8 */	lbz r0, 0x2f8(r3)
/* 801C98D8  28 00 00 00 */	cmplwi r0, 0
/* 801C98DC  41 82 00 1C */	beq lbl_801C98F8
/* 801C98E0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C98E4  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C98E8  48 00 78 61 */	bl zoomMapCalc__18dMenu_Fmap2DBack_cFf
/* 801C98EC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C98F0  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 801C98F4  48 00 7B 85 */	bl zoomMapCalc2__18dMenu_Fmap2DBack_cFf
lbl_801C98F8:
/* 801C98F8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C98FC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801C9900  38 A0 00 01 */	li r5, 1
/* 801C9904  38 C0 00 01 */	li r6, 1
/* 801C9908  48 00 B5 79 */	bl stageMapMove__18dMenu_Fmap2DBack_cFP9STControlUcb
/* 801C990C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9910  48 00 8D 69 */	bl getMapAreaGlobalCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801C9914  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801C9918  EC 21 00 28 */	fsubs f1, f1, f0
/* 801C991C  C0 02 A7 58 */	lfs f0, lit_4939(r2)
/* 801C9920  EF E1 00 28 */	fsubs f31, f1, f0
/* 801C9924  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9928  48 00 8D A1 */	bl getMapAreaGlobalCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801C992C  C0 02 A7 5C */	lfs f0, lit_4940(r2)
/* 801C9930  EF C1 00 28 */	fsubs f30, f1, f0
/* 801C9934  83 DF 02 0C */	lwz r30, 0x20c(r31)
/* 801C9938  7F E3 FB 78 */	mr r3, r31
/* 801C993C  48 00 3A 15 */	bl getNowFmapRegionData__12dMenu_Fmap_cFv
/* 801C9940  7C 64 1B 78 */	mr r4, r3
/* 801C9944  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 801C9948  FC 20 F8 90 */	fmr f1, f31
/* 801C994C  FC 40 F0 90 */	fmr f2, f30
/* 801C9950  7F C5 F3 78 */	mr r5, r30
/* 801C9954  38 C1 00 14 */	addi r6, r1, 0x14
/* 801C9958  38 E1 00 10 */	addi r7, r1, 0x10
/* 801C995C  48 00 4A 65 */	bl getPointStagePathInnerNo__15renderingFmap_cFP24dMenu_Fmap_region_data_cffiPiPi
/* 801C9960  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 801C9964  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801C9968  7C 00 18 00 */	cmpw r0, r3
/* 801C996C  40 82 00 10 */	bne lbl_801C997C
/* 801C9970  88 1F 03 12 */	lbz r0, 0x312(r31)
/* 801C9974  28 00 00 00 */	cmplwi r0, 0
/* 801C9978  41 82 00 5C */	beq lbl_801C99D4
lbl_801C997C:
/* 801C997C  90 7F 02 04 */	stw r3, 0x204(r31)
/* 801C9980  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801C9984  90 1F 02 08 */	stw r0, 0x208(r31)
/* 801C9988  7F E3 FB 78 */	mr r3, r31
/* 801C998C  48 00 1B E5 */	bl checkStRoomData__12dMenu_Fmap_cFv
/* 801C9990  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 801C9994  2C 00 00 00 */	cmpwi r0, 0
/* 801C9998  41 80 00 34 */	blt lbl_801C99CC
/* 801C999C  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 801C99A0  28 04 FF FF */	cmplwi r4, 0xffff
/* 801C99A4  41 82 00 10 */	beq lbl_801C99B4
/* 801C99A8  7F E3 FB 78 */	mr r3, r31
/* 801C99AC  48 00 2E D5 */	bl setAreaName__12dMenu_Fmap_cFUl
/* 801C99B0  48 00 00 24 */	b lbl_801C99D4
lbl_801C99B4:
/* 801C99B4  7F E3 FB 78 */	mr r3, r31
/* 801C99B8  54 00 08 3C */	slwi r0, r0, 1
/* 801C99BC  7C 9F 02 14 */	add r4, r31, r0
/* 801C99C0  A0 84 02 28 */	lhz r4, 0x228(r4)
/* 801C99C4  48 00 2E BD */	bl setAreaName__12dMenu_Fmap_cFUl
/* 801C99C8  48 00 00 0C */	b lbl_801C99D4
lbl_801C99CC:
/* 801C99CC  7F E3 FB 78 */	mr r3, r31
/* 801C99D0  48 00 2E DD */	bl setAreaNameZero__12dMenu_Fmap_cFv
lbl_801C99D4:
/* 801C99D4  88 1F 03 09 */	lbz r0, 0x309(r31)
/* 801C99D8  28 00 00 01 */	cmplwi r0, 1
/* 801C99DC  40 82 00 0C */	bne lbl_801C99E8
/* 801C99E0  38 00 00 00 */	li r0, 0
/* 801C99E4  98 1F 03 09 */	stb r0, 0x309(r31)
lbl_801C99E8:
/* 801C99E8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C99EC  48 00 7E 6D */	bl zoomMapCalcHIO__18dMenu_Fmap2DBack_cFv
/* 801C99F0  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 801C99F4  2C 00 00 00 */	cmpwi r0, 0
/* 801C99F8  41 80 00 18 */	blt lbl_801C9A10
/* 801C99FC  7F E3 FB 78 */	mr r3, r31
/* 801C9A00  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801C9A04  38 A0 00 01 */	li r5, 1
/* 801C9A08  48 00 1C D9 */	bl setFlash__12dMenu_Fmap_cFUcb
/* 801C9A0C  48 00 00 18 */	b lbl_801C9A24
lbl_801C9A10:
/* 801C9A10  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 801C9A14  88 03 00 D8 */	lbz r0, 0xd8(r3)
/* 801C9A18  98 03 00 D9 */	stb r0, 0xd9(r3)
/* 801C9A1C  38 00 00 00 */	li r0, 0
/* 801C9A20  98 03 00 D8 */	stb r0, 0xd8(r3)
lbl_801C9A24:
/* 801C9A24  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801C9A28  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801C9A2C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 801C9A30  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801C9A34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C9A38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C9A3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801C9A40  7C 08 03 A6 */	mtlr r0
/* 801C9A44  38 21 00 40 */	addi r1, r1, 0x40
/* 801C9A48  4E 80 00 20 */	blr 
