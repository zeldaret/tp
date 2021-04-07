lbl_80D54094:
/* 80D54094  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D54098  7C 08 02 A6 */	mflr r0
/* 80D5409C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D540A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D540A4  4B 60 E1 39 */	bl _savegpr_29
/* 80D540A8  7C 7D 1B 78 */	mr r29, r3
/* 80D540AC  38 00 00 01 */	li r0, 1
/* 80D540B0  98 03 05 DE */	stb r0, 0x5de(r3)
/* 80D540B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D540B8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D540BC  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 80D540C0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D540C4  54 00 3F FE */	rlwinm r0, r0, 7, 0x1f, 0x1f
/* 80D540C8  98 1D 05 DF */	stb r0, 0x5df(r29)
/* 80D540CC  88 1D 05 E2 */	lbz r0, 0x5e2(r29)
/* 80D540D0  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D540D4  3C 60 80 D5 */	lis r3, l_zevParamTbl@ha /* 0x80D557B0@ha */
/* 80D540D8  38 63 57 B0 */	addi r3, r3, l_zevParamTbl@l /* 0x80D557B0@l */
/* 80D540DC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D540E0  90 1D 01 00 */	stw r0, 0x100(r29)
/* 80D540E4  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 80D540E8  7F C3 F3 78 */	mr r3, r30
/* 80D540EC  80 9D 01 00 */	lwz r4, 0x100(r29)
/* 80D540F0  4B 2F 27 11 */	bl setObjectArchive__16dEvent_manager_cFPc
/* 80D540F4  7F C3 F3 78 */	mr r3, r30
/* 80D540F8  7F A4 EB 78 */	mr r4, r29
/* 80D540FC  3C A0 80 D5 */	lis r5, l_zevParamTbl@ha /* 0x80D557B0@ha */
/* 80D54100  38 A5 57 B0 */	addi r5, r5, l_zevParamTbl@l /* 0x80D557B0@l */
/* 80D54104  88 1D 05 E2 */	lbz r0, 0x5e2(r29)
/* 80D54108  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D5410C  7C A5 02 14 */	add r5, r5, r0
/* 80D54110  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 80D54114  38 C0 00 FF */	li r6, 0xff
/* 80D54118  4B 2F 36 41 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D5411C  B0 7D 05 DC */	sth r3, 0x5dc(r29)
/* 80D54120  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D54124  7F A4 EB 78 */	mr r4, r29
/* 80D54128  4B 2E E3 F1 */	bl reset__14dEvt_control_cFPv
/* 80D5412C  7F A3 EB 78 */	mr r3, r29
/* 80D54130  A8 9D 05 DC */	lha r4, 0x5dc(r29)
/* 80D54134  38 A0 00 01 */	li r5, 1
/* 80D54138  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D5413C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D54140  4B 2C 74 A5 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80D54144  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D54148  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5414C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D54150  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D54154  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D54158  A0 84 01 54 */	lhz r4, 0x154(r4)
/* 80D5415C  4B 2E 08 31 */	bl onEventBit__11dSv_event_cFUs
/* 80D54160  39 61 00 20 */	addi r11, r1, 0x20
/* 80D54164  4B 60 E0 C5 */	bl _restgpr_29
/* 80D54168  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D5416C  7C 08 03 A6 */	mtlr r0
/* 80D54170  38 21 00 20 */	addi r1, r1, 0x20
/* 80D54174  4E 80 00 20 */	blr 
