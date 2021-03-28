lbl_801C8600:
/* 801C8600  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801C8604  7C 08 02 A6 */	mflr r0
/* 801C8608  90 01 00 54 */	stw r0, 0x54(r1)
/* 801C860C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801C8610  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 801C8614  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801C8618  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 801C861C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C8620  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801C8624  7C 7E 1B 78 */	mr r30, r3
/* 801C8628  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801C862C  38 80 05 27 */	li r4, 0x527
/* 801C8630  38 A0 00 FF */	li r5, 0xff
/* 801C8634  48 00 EC A1 */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C8638  48 03 1A 19 */	bl dMw_B_TRIGGER__Fv
/* 801C863C  2C 03 00 00 */	cmpwi r3, 0
/* 801C8640  41 82 00 50 */	beq lbl_801C8690
/* 801C8644  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801C8648  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801C864C  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801C8650  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801C8654  40 82 00 3C */	bne lbl_801C8690
/* 801C8658  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801C865C  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 801C8660  88 03 07 72 */	lbz r0, 0x772(r3)
/* 801C8664  28 00 00 01 */	cmplwi r0, 1
/* 801C8668  41 82 00 28 */	beq lbl_801C8690
/* 801C866C  7F C3 F3 78 */	mr r3, r30
/* 801C8670  38 80 00 05 */	li r4, 5
/* 801C8674  48 00 30 5D */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C8678  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 801C867C  88 03 00 D8 */	lbz r0, 0xd8(r3)
/* 801C8680  98 03 00 D9 */	stb r0, 0xd9(r3)
/* 801C8684  38 00 00 00 */	li r0, 0
/* 801C8688  98 03 00 D8 */	stb r0, 0xd8(r3)
/* 801C868C  48 00 04 18 */	b lbl_801C8AA4
lbl_801C8690:
/* 801C8690  48 03 19 AD */	bl dMw_A_TRIGGER__Fv
/* 801C8694  2C 03 00 00 */	cmpwi r3, 0
/* 801C8698  41 82 00 3C */	beq lbl_801C86D4
/* 801C869C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801C86A0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801C86A4  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801C86A8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801C86AC  40 82 00 28 */	bne lbl_801C86D4
/* 801C86B0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801C86B4  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 801C86B8  88 03 07 72 */	lbz r0, 0x772(r3)
/* 801C86BC  28 00 00 01 */	cmplwi r0, 1
/* 801C86C0  41 82 00 14 */	beq lbl_801C86D4
/* 801C86C4  7F C3 F3 78 */	mr r3, r30
/* 801C86C8  38 80 00 0B */	li r4, 0xb
/* 801C86CC  48 00 30 05 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C86D0  48 00 03 D4 */	b lbl_801C8AA4
lbl_801C86D4:
/* 801C86D4  48 03 19 91 */	bl dMw_Z_TRIGGER__Fv
/* 801C86D8  2C 03 00 00 */	cmpwi r3, 0
/* 801C86DC  41 82 02 A8 */	beq lbl_801C8984
/* 801C86E0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C86E4  48 00 F9 A5 */	bl isWarpAccept__17dMenu_Fmap2DTop_cFv
/* 801C86E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C86EC  41 82 02 98 */	beq lbl_801C8984
/* 801C86F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C86F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C86F8  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 801C86FC  7F E3 FB 78 */	mr r3, r31
/* 801C8700  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801C8704  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801C8708  A0 84 02 12 */	lhz r4, 0x212(r4)
/* 801C870C  4B E6 C2 B1 */	bl isEventBit__11dSv_event_cCFUs
/* 801C8710  2C 03 00 00 */	cmpwi r3, 0
/* 801C8714  41 82 00 9C */	beq lbl_801C87B0
/* 801C8718  7F E3 FB 78 */	mr r3, r31
/* 801C871C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801C8720  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801C8724  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 801C8728  4B E6 C2 95 */	bl isEventBit__11dSv_event_cCFUs
/* 801C872C  2C 03 00 00 */	cmpwi r3, 0
/* 801C8730  40 82 00 80 */	bne lbl_801C87B0
/* 801C8734  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8738  80 9E 00 08 */	lwz r4, 8(r30)
/* 801C873C  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 801C8740  48 00 EF 01 */	bl createExplain__17dMenu_Fmap2DTop_cFP10JKRExpHeapP9STControl
/* 801C8744  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8748  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C874C  38 80 08 B4 */	li r4, 0x8b4
/* 801C8750  38 A0 00 00 */	li r5, 0
/* 801C8754  38 C0 00 00 */	li r6, 0
/* 801C8758  38 E0 00 FF */	li r7, 0xff
/* 801C875C  39 00 00 01 */	li r8, 1
/* 801C8760  48 07 5D F9 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C8764  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 801C8768  98 1E 03 02 */	stb r0, 0x302(r30)
/* 801C876C  7F C3 F3 78 */	mr r3, r30
/* 801C8770  38 80 00 0A */	li r4, 0xa
/* 801C8774  48 00 2F 5D */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C8778  38 00 00 4A */	li r0, 0x4a
/* 801C877C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C8780  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C8784  38 81 00 10 */	addi r4, r1, 0x10
/* 801C8788  38 A0 00 00 */	li r5, 0
/* 801C878C  38 C0 00 00 */	li r6, 0
/* 801C8790  38 E0 00 00 */	li r7, 0
/* 801C8794  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C8798  FC 40 08 90 */	fmr f2, f1
/* 801C879C  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C87A0  FC 80 18 90 */	fmr f4, f3
/* 801C87A4  39 00 00 00 */	li r8, 0
/* 801C87A8  48 0E 31 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C87AC  48 00 02 F8 */	b lbl_801C8AA4
lbl_801C87B0:
/* 801C87B0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C87B4  48 00 F1 E1 */	bl checkPlayerWarpAccept__17dMenu_Fmap2DTop_cFv
/* 801C87B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C87BC  41 82 00 74 */	beq lbl_801C8830
/* 801C87C0  38 00 00 01 */	li r0, 1
/* 801C87C4  98 1E 03 07 */	stb r0, 0x307(r30)
/* 801C87C8  7F C3 F3 78 */	mr r3, r30
/* 801C87CC  38 80 00 07 */	li r4, 7
/* 801C87D0  48 00 2F 01 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C87D4  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 801C87D8  88 03 00 D8 */	lbz r0, 0xd8(r3)
/* 801C87DC  98 03 00 D9 */	stb r0, 0xd9(r3)
/* 801C87E0  38 00 00 00 */	li r0, 0
/* 801C87E4  98 03 00 D8 */	stb r0, 0xd8(r3)
/* 801C87E8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C87EC  38 80 05 2A */	li r4, 0x52a
/* 801C87F0  38 A0 00 FF */	li r5, 0xff
/* 801C87F4  48 00 E8 F5 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C87F8  38 00 00 47 */	li r0, 0x47
/* 801C87FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C8800  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C8804  38 81 00 0C */	addi r4, r1, 0xc
/* 801C8808  38 A0 00 00 */	li r5, 0
/* 801C880C  38 C0 00 00 */	li r6, 0
/* 801C8810  38 E0 00 00 */	li r7, 0
/* 801C8814  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C8818  FC 40 08 90 */	fmr f2, f1
/* 801C881C  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C8820  FC 80 18 90 */	fmr f4, f3
/* 801C8824  39 00 00 00 */	li r8, 0
/* 801C8828  48 0E 31 5D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C882C  48 00 02 78 */	b lbl_801C8AA4
lbl_801C8830:
/* 801C8830  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8834  80 9E 00 08 */	lwz r4, 8(r30)
/* 801C8838  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 801C883C  48 00 EE 05 */	bl createExplain__17dMenu_Fmap2DTop_cFP10JKRExpHeapP9STControl
/* 801C8840  7F E3 FB 78 */	mr r3, r31
/* 801C8844  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801C8848  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801C884C  A0 84 00 D0 */	lhz r4, 0xd0(r4)
/* 801C8850  4B E6 C1 6D */	bl isEventBit__11dSv_event_cCFUs
/* 801C8854  2C 03 00 00 */	cmpwi r3, 0
/* 801C8858  41 82 00 44 */	beq lbl_801C889C
/* 801C885C  7F E3 FB 78 */	mr r3, r31
/* 801C8860  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801C8864  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801C8868  A0 84 01 F4 */	lhz r4, 0x1f4(r4)
/* 801C886C  4B E6 C1 51 */	bl isEventBit__11dSv_event_cCFUs
/* 801C8870  2C 03 00 00 */	cmpwi r3, 0
/* 801C8874  40 82 00 28 */	bne lbl_801C889C
/* 801C8878  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C887C  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C8880  38 80 08 5D */	li r4, 0x85d
/* 801C8884  38 A0 00 00 */	li r5, 0
/* 801C8888  38 C0 00 00 */	li r6, 0
/* 801C888C  38 E0 00 FF */	li r7, 0xff
/* 801C8890  39 00 00 01 */	li r8, 1
/* 801C8894  48 07 5C C5 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C8898  48 00 00 A0 */	b lbl_801C8938
lbl_801C889C:
/* 801C889C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C88A0  48 00 F2 B9 */	bl checkWarpAcceptCannon__17dMenu_Fmap2DTop_cFv
/* 801C88A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C88A8  40 82 00 3C */	bne lbl_801C88E4
/* 801C88AC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C88B0  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C88B4  38 80 07 DE */	li r4, 0x7de
/* 801C88B8  38 A0 00 00 */	li r5, 0
/* 801C88BC  38 C0 00 00 */	li r6, 0
/* 801C88C0  38 E0 00 FF */	li r7, 0xff
/* 801C88C4  39 00 00 01 */	li r8, 1
/* 801C88C8  48 07 5C 91 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C88CC  7F E3 FB 78 */	mr r3, r31
/* 801C88D0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801C88D4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801C88D8  A0 84 06 26 */	lhz r4, 0x626(r4)
/* 801C88DC  4B E6 C0 B1 */	bl onEventBit__11dSv_event_cFUs
/* 801C88E0  48 00 00 58 */	b lbl_801C8938
lbl_801C88E4:
/* 801C88E4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C88E8  48 00 F1 CD */	bl checkWarpAcceptRegion4__17dMenu_Fmap2DTop_cFv
/* 801C88EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C88F0  40 82 00 28 */	bne lbl_801C8918
/* 801C88F4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C88F8  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C88FC  38 80 07 DD */	li r4, 0x7dd
/* 801C8900  38 A0 00 00 */	li r5, 0
/* 801C8904  38 C0 00 00 */	li r6, 0
/* 801C8908  38 E0 00 FF */	li r7, 0xff
/* 801C890C  39 00 00 01 */	li r8, 1
/* 801C8910  48 07 5C 49 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C8914  48 00 00 24 */	b lbl_801C8938
lbl_801C8918:
/* 801C8918  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C891C  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C8920  38 80 05 1D */	li r4, 0x51d
/* 801C8924  38 A0 00 00 */	li r5, 0
/* 801C8928  38 C0 00 00 */	li r6, 0
/* 801C892C  38 E0 00 FF */	li r7, 0xff
/* 801C8930  39 00 00 01 */	li r8, 1
/* 801C8934  48 07 5C 25 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
lbl_801C8938:
/* 801C8938  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 801C893C  98 1E 03 02 */	stb r0, 0x302(r30)
/* 801C8940  7F C3 F3 78 */	mr r3, r30
/* 801C8944  38 80 00 0A */	li r4, 0xa
/* 801C8948  48 00 2D 89 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C894C  38 00 00 4A */	li r0, 0x4a
/* 801C8950  90 01 00 08 */	stw r0, 8(r1)
/* 801C8954  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C8958  38 81 00 08 */	addi r4, r1, 8
/* 801C895C  38 A0 00 00 */	li r5, 0
/* 801C8960  38 C0 00 00 */	li r6, 0
/* 801C8964  38 E0 00 00 */	li r7, 0
/* 801C8968  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C896C  FC 40 08 90 */	fmr f2, f1
/* 801C8970  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C8974  FC 80 18 90 */	fmr f4, f3
/* 801C8978  39 00 00 00 */	li r8, 0
/* 801C897C  48 0E 30 09 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C8980  48 00 01 24 */	b lbl_801C8AA4
lbl_801C8984:
/* 801C8984  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801C8988  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801C898C  88 03 02 F8 */	lbz r0, 0x2f8(r3)
/* 801C8990  28 00 00 00 */	cmplwi r0, 0
/* 801C8994  41 82 00 10 */	beq lbl_801C89A4
/* 801C8998  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C899C  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C89A0  48 00 87 A9 */	bl zoomMapCalc__18dMenu_Fmap2DBack_cFf
lbl_801C89A4:
/* 801C89A4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C89A8  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 801C89AC  48 00 C1 81 */	bl regionMapMove__18dMenu_Fmap2DBack_cFP9STControl
/* 801C89B0  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C89B4  C3 E3 11 94 */	lfs f31, 0x1194(r3)
/* 801C89B8  C3 C3 11 98 */	lfs f30, 0x1198(r3)
/* 801C89BC  83 FE 02 0C */	lwz r31, 0x20c(r30)
/* 801C89C0  7F C3 F3 78 */	mr r3, r30
/* 801C89C4  48 00 49 8D */	bl getNowFmapRegionData__12dMenu_Fmap_cFv
/* 801C89C8  7C 64 1B 78 */	mr r4, r3
/* 801C89CC  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 801C89D0  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801C89D4  EC 3F 00 28 */	fsubs f1, f31, f0
/* 801C89D8  C0 02 A7 58 */	lfs f0, lit_4939(r2)
/* 801C89DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801C89E0  C0 02 A7 5C */	lfs f0, lit_4940(r2)
/* 801C89E4  EC 5E 00 28 */	fsubs f2, f30, f0
/* 801C89E8  7F E5 FB 78 */	mr r5, r31
/* 801C89EC  38 C1 00 18 */	addi r6, r1, 0x18
/* 801C89F0  38 E1 00 14 */	addi r7, r1, 0x14
/* 801C89F4  48 00 59 CD */	bl getPointStagePathInnerNo__15renderingFmap_cFP24dMenu_Fmap_region_data_cffiPiPi
/* 801C89F8  80 1E 02 04 */	lwz r0, 0x204(r30)
/* 801C89FC  80 81 00 18 */	lwz r4, 0x18(r1)
/* 801C8A00  7C 00 20 00 */	cmpw r0, r4
/* 801C8A04  40 82 00 20 */	bne lbl_801C8A24
/* 801C8A08  80 7E 02 08 */	lwz r3, 0x208(r30)
/* 801C8A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C8A10  7C 03 00 00 */	cmpw r3, r0
/* 801C8A14  40 82 00 10 */	bne lbl_801C8A24
/* 801C8A18  88 1E 03 12 */	lbz r0, 0x312(r30)
/* 801C8A1C  28 00 00 00 */	cmplwi r0, 0
/* 801C8A20  41 82 00 70 */	beq lbl_801C8A90
lbl_801C8A24:
/* 801C8A24  90 9E 02 04 */	stw r4, 0x204(r30)
/* 801C8A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C8A2C  90 1E 02 08 */	stw r0, 0x208(r30)
/* 801C8A30  7F C3 F3 78 */	mr r3, r30
/* 801C8A34  48 00 2B 3D */	bl checkStRoomData__12dMenu_Fmap_cFv
/* 801C8A38  7C 7F 1B 78 */	mr r31, r3
/* 801C8A3C  80 1E 02 04 */	lwz r0, 0x204(r30)
/* 801C8A40  2C 00 00 00 */	cmpwi r0, 0
/* 801C8A44  41 80 00 44 */	blt lbl_801C8A88
/* 801C8A48  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C8A4C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801C8A50  48 00 93 25 */	bl setSpotCursor__18dMenu_Fmap2DBack_cFUc
/* 801C8A54  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 801C8A58  28 04 FF FF */	cmplwi r4, 0xffff
/* 801C8A5C  41 82 00 10 */	beq lbl_801C8A6C
/* 801C8A60  7F C3 F3 78 */	mr r3, r30
/* 801C8A64  48 00 3E 1D */	bl setAreaName__12dMenu_Fmap_cFUl
/* 801C8A68  48 00 00 28 */	b lbl_801C8A90
lbl_801C8A6C:
/* 801C8A6C  7F C3 F3 78 */	mr r3, r30
/* 801C8A70  80 1E 02 04 */	lwz r0, 0x204(r30)
/* 801C8A74  54 00 08 3C */	slwi r0, r0, 1
/* 801C8A78  7C 9E 02 14 */	add r4, r30, r0
/* 801C8A7C  A0 84 02 28 */	lhz r4, 0x228(r4)
/* 801C8A80  48 00 3E 01 */	bl setAreaName__12dMenu_Fmap_cFUl
/* 801C8A84  48 00 00 0C */	b lbl_801C8A90
lbl_801C8A88:
/* 801C8A88  7F C3 F3 78 */	mr r3, r30
/* 801C8A8C  48 00 3E 21 */	bl setAreaNameZero__12dMenu_Fmap_cFv
lbl_801C8A90:
/* 801C8A90  88 1E 03 09 */	lbz r0, 0x309(r30)
/* 801C8A94  28 00 00 01 */	cmplwi r0, 1
/* 801C8A98  40 82 00 0C */	bne lbl_801C8AA4
/* 801C8A9C  38 00 00 00 */	li r0, 0
/* 801C8AA0  98 1E 03 09 */	stb r0, 0x309(r30)
lbl_801C8AA4:
/* 801C8AA4  80 1E 02 04 */	lwz r0, 0x204(r30)
/* 801C8AA8  2C 00 00 00 */	cmpwi r0, 0
/* 801C8AAC  41 80 00 18 */	blt lbl_801C8AC4
/* 801C8AB0  7F C3 F3 78 */	mr r3, r30
/* 801C8AB4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801C8AB8  38 A0 00 01 */	li r5, 1
/* 801C8ABC  48 00 2C 25 */	bl setFlash__12dMenu_Fmap_cFUcb
/* 801C8AC0  48 00 00 18 */	b lbl_801C8AD8
lbl_801C8AC4:
/* 801C8AC4  80 7E 00 B8 */	lwz r3, 0xb8(r30)
/* 801C8AC8  88 03 00 D8 */	lbz r0, 0xd8(r3)
/* 801C8ACC  98 03 00 D9 */	stb r0, 0xd9(r3)
/* 801C8AD0  38 00 00 00 */	li r0, 0
/* 801C8AD4  98 03 00 D8 */	stb r0, 0xd8(r3)
lbl_801C8AD8:
/* 801C8AD8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 801C8ADC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801C8AE0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 801C8AE4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801C8AE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C8AEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801C8AF0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801C8AF4  7C 08 03 A6 */	mtlr r0
/* 801C8AF8  38 21 00 50 */	addi r1, r1, 0x50
/* 801C8AFC  4E 80 00 20 */	blr 
