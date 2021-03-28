lbl_802358D4:
/* 802358D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802358D8  7C 08 02 A6 */	mflr r0
/* 802358DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802358E0  39 61 00 20 */	addi r11, r1, 0x20
/* 802358E4  48 12 C8 F1 */	bl _savegpr_27
/* 802358E8  7C 7C 1B 78 */	mr r28, r3
/* 802358EC  38 00 00 01 */	li r0, 1
/* 802358F0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802358F4  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
/* 802358F8  98 1E 00 BD */	stb r0, 0xbd(r30)
/* 802358FC  80 7C 01 18 */	lwz r3, 0x118(r28)
/* 80235900  4B FF 3B A9 */	bl inputNumber__19jmessage_tReferenceFv
/* 80235904  7F 83 E3 78 */	mr r3, r28
/* 80235908  48 00 10 D1 */	bl isSend__12dMsgObject_cFv
/* 8023590C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235910  41 82 01 AC */	beq lbl_80235ABC
/* 80235914  38 00 00 00 */	li r0, 0
/* 80235918  98 1C 01 99 */	stb r0, 0x199(r28)
/* 8023591C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80235920  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 80235924  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80235928  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 8023592C  41 82 01 58 */	beq lbl_80235A84
/* 80235930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80235934  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80235938  3B A3 0D D8 */	addi r29, r3, 0xdd8
/* 8023593C  7F A3 EB 78 */	mr r3, r29
/* 80235940  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 80235944  3B E4 90 C0 */	addi r31, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 80235948  A0 9F 00 A0 */	lhz r4, 0xa0(r31)
/* 8023594C  4B DF F0 71 */	bl isEventBit__11dSv_event_cCFUs
/* 80235950  7C 7B 1B 78 */	mr r27, r3
/* 80235954  A8 1C 01 74 */	lha r0, 0x174(r28)
/* 80235958  2C 00 00 00 */	cmpwi r0, 0
/* 8023595C  40 81 00 30 */	ble lbl_8023598C
/* 80235960  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80235964  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80235968  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8023596C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80235970  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80235974  A0 84 06 44 */	lhz r4, 0x644(r4)
/* 80235978  4B DF F0 45 */	bl isEventBit__11dSv_event_cCFUs
/* 8023597C  2C 03 00 00 */	cmpwi r3, 0
/* 80235980  40 82 00 0C */	bne lbl_8023598C
/* 80235984  38 00 00 01 */	li r0, 1
/* 80235988  98 1C 04 D0 */	stb r0, 0x4d0(r28)
lbl_8023598C:
/* 8023598C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80235990  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 80235994  80 85 5D C4 */	lwz r4, 0x5dc4(r5)
/* 80235998  A8 7C 01 74 */	lha r3, 0x174(r28)
/* 8023599C  7C 03 00 D0 */	neg r0, r3
/* 802359A0  7C 04 02 14 */	add r0, r4, r0
/* 802359A4  90 05 5D C4 */	stw r0, 0x5dc4(r5)
/* 802359A8  2C 1B 00 00 */	cmpwi r27, 0
/* 802359AC  41 82 00 AC */	beq lbl_80235A58
/* 802359B0  7C 60 07 35 */	extsh. r0, r3
/* 802359B4  40 81 00 94 */	ble lbl_80235A48
/* 802359B8  48 00 30 41 */	bl dMsgObject_addFundRaising__Fs
/* 802359BC  48 00 2F 6D */	bl dMsgObject_getFundRaising__Fv
/* 802359C0  48 00 2F 69 */	bl dMsgObject_getFundRaising__Fv
/* 802359C4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 802359C8  A8 1C 01 76 */	lha r0, 0x176(r28)
/* 802359CC  7C 03 00 00 */	cmpw r3, r0
/* 802359D0  41 80 00 9C */	blt lbl_80235A6C
/* 802359D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802359D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802359DC  3B 63 07 F0 */	addi r27, r3, 0x7f0
/* 802359E0  7F 63 DB 78 */	mr r3, r27
/* 802359E4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 802359E8  3B E4 72 88 */	addi r31, r4, saveBitLabels__16dSv_event_flag_c@l
/* 802359EC  A0 9F 00 F8 */	lhz r4, 0xf8(r31)
/* 802359F0  4B DF EF CD */	bl isEventBit__11dSv_event_cCFUs
/* 802359F4  2C 03 00 00 */	cmpwi r3, 0
/* 802359F8  40 82 00 74 */	bne lbl_80235A6C
/* 802359FC  7F 63 DB 78 */	mr r3, r27
/* 80235A00  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80235A04  3B A4 72 88 */	addi r29, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80235A08  A0 9D 02 F0 */	lhz r4, 0x2f0(r29)
/* 80235A0C  4B DF EF B1 */	bl isEventBit__11dSv_event_cCFUs
/* 80235A10  2C 03 00 00 */	cmpwi r3, 0
/* 80235A14  40 82 00 1C */	bne lbl_80235A30
/* 80235A18  7F 63 DB 78 */	mr r3, r27
/* 80235A1C  A0 9D 02 F0 */	lhz r4, 0x2f0(r29)
/* 80235A20  4B DF EF 6D */	bl onEventBit__11dSv_event_cFUs
/* 80235A24  38 60 00 00 */	li r3, 0
/* 80235A28  48 00 2F 69 */	bl dMsgObject_setFundRaising__FUs
/* 80235A2C  48 00 00 40 */	b lbl_80235A6C
lbl_80235A30:
/* 80235A30  7F 63 DB 78 */	mr r3, r27
/* 80235A34  A0 9F 00 F8 */	lhz r4, 0xf8(r31)
/* 80235A38  4B DF EF 55 */	bl onEventBit__11dSv_event_cFUs
/* 80235A3C  38 60 00 00 */	li r3, 0
/* 80235A40  48 00 2F 51 */	bl dMsgObject_setFundRaising__FUs
/* 80235A44  48 00 00 28 */	b lbl_80235A6C
lbl_80235A48:
/* 80235A48  7F A3 EB 78 */	mr r3, r29
/* 80235A4C  A0 9F 00 A0 */	lhz r4, 0xa0(r31)
/* 80235A50  4B DF EF 55 */	bl offEventBit__11dSv_event_cFUs
/* 80235A54  48 00 00 18 */	b lbl_80235A6C
lbl_80235A58:
/* 80235A58  48 00 2E 3D */	bl dMsgObject_addTotalPayment__Fs
/* 80235A5C  3C 60 80 23 */	lis r3, dMsgObject_searchSSItem__FPvPv@ha
/* 80235A60  38 63 2A 44 */	addi r3, r3, dMsgObject_searchSSItem__FPvPv@l
/* 80235A64  7F 84 E3 78 */	mr r4, r28
/* 80235A68  4B DE B8 D1 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_80235A6C:
/* 80235A6C  38 00 00 00 */	li r0, 0
/* 80235A70  98 1E 00 BD */	stb r0, 0xbd(r30)
/* 80235A74  7F 83 E3 78 */	mr r3, r28
/* 80235A78  38 80 00 0E */	li r4, 0xe
/* 80235A7C  48 00 0E 69 */	bl setStatusLocal__12dMsgObject_cFUs
/* 80235A80  48 00 00 3C */	b lbl_80235ABC
lbl_80235A84:
/* 80235A84  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80235A88  41 82 00 34 */	beq lbl_80235ABC
/* 80235A8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80235A90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80235A94  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80235A98  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 80235A9C  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 80235AA0  A0 84 00 A0 */	lhz r4, 0xa0(r4)
/* 80235AA4  4B DF EF 01 */	bl offEventBit__11dSv_event_cFUs
/* 80235AA8  38 00 00 00 */	li r0, 0
/* 80235AAC  98 1E 00 BD */	stb r0, 0xbd(r30)
/* 80235AB0  7F 83 E3 78 */	mr r3, r28
/* 80235AB4  38 80 00 0E */	li r4, 0xe
/* 80235AB8  48 00 0E 2D */	bl setStatusLocal__12dMsgObject_cFUs
lbl_80235ABC:
/* 80235ABC  39 61 00 20 */	addi r11, r1, 0x20
/* 80235AC0  48 12 C7 61 */	bl _restgpr_27
/* 80235AC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80235AC8  7C 08 03 A6 */	mtlr r0
/* 80235ACC  38 21 00 20 */	addi r1, r1, 0x20
/* 80235AD0  4E 80 00 20 */	blr 
