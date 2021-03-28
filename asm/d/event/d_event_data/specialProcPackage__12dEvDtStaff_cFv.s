lbl_80045878:
/* 80045878  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8004587C  7C 08 02 A6 */	mflr r0
/* 80045880  90 01 00 44 */	stw r0, 0x44(r1)
/* 80045884  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80045888  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8004588C  39 61 00 30 */	addi r11, r1, 0x30
/* 80045890  48 31 C9 3D */	bl _savegpr_25
/* 80045894  7C 7B 1B 78 */	mr r27, r3
/* 80045898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8004589C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800458A0  80 03 5D BC */	lwz r0, 0x5dbc(r3)
/* 800458A4  28 00 00 00 */	cmplwi r0, 0
/* 800458A8  41 82 00 08 */	beq lbl_800458B0
/* 800458AC  48 1F 27 C1 */	bl demoMessageGroup__12dMsgObject_cFv
lbl_800458B0:
/* 800458B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800458B4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 800458B8  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 800458BC  7F 83 E3 78 */	mr r3, r28
/* 800458C0  3C 80 80 38 */	lis r4, d_event_d_event_data__stringBase0@ha
/* 800458C4  38 84 9D D0 */	addi r4, r4, d_event_d_event_data__stringBase0@l
/* 800458C8  38 84 01 2D */	addi r4, r4, 0x12d
/* 800458CC  38 A0 00 00 */	li r5, 0
/* 800458D0  38 C0 00 00 */	li r6, 0
/* 800458D4  48 00 22 49 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 800458D8  7C 7D 1B 78 */	mr r29, r3
/* 800458DC  2C 1D FF FF */	cmpwi r29, -1
/* 800458E0  41 82 01 FC */	beq lbl_80045ADC
/* 800458E4  7F 83 E3 78 */	mr r3, r28
/* 800458E8  7F A4 EB 78 */	mr r4, r29
/* 800458EC  48 00 26 71 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 800458F0  7C 7F 1B 78 */	mr r31, r3
/* 800458F4  7F 83 E3 78 */	mr r3, r28
/* 800458F8  7F A4 EB 78 */	mr r4, r29
/* 800458FC  48 00 24 51 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80045900  2C 03 00 00 */	cmpwi r3, 0
/* 80045904  41 82 01 18 */	beq lbl_80045A1C
/* 80045908  80 9F 00 00 */	lwz r4, 0(r31)
/* 8004590C  3C 60 57 41 */	lis r3, 0x5741 /* 0x57414954@ha */
/* 80045910  38 03 49 54 */	addi r0, r3, 0x4954 /* 0x57414954@l */
/* 80045914  7C 04 00 00 */	cmpw r4, r0
/* 80045918  41 82 00 1C */	beq lbl_80045934
/* 8004591C  40 80 01 00 */	bge lbl_80045A1C
/* 80045920  3C 60 50 4C */	lis r3, 0x504C /* 0x504C4159@ha */
/* 80045924  38 03 41 59 */	addi r0, r3, 0x4159 /* 0x504C4159@l */
/* 80045928  7C 04 00 00 */	cmpw r4, r0
/* 8004592C  41 82 00 18 */	beq lbl_80045944
/* 80045930  48 00 00 EC */	b lbl_80045A1C
lbl_80045934:
/* 80045934  7F 63 DB 78 */	mr r3, r27
/* 80045938  7F A4 EB 78 */	mr r4, r29
/* 8004593C  4B FF E6 9D */	bl specialProc_WaitStart__12dEvDtStaff_cFi
/* 80045940  48 00 00 DC */	b lbl_80045A1C
lbl_80045944:
/* 80045944  7F 83 E3 78 */	mr r3, r28
/* 80045948  7F A4 EB 78 */	mr r4, r29
/* 8004594C  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045950  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045954  38 A5 01 35 */	addi r5, r5, 0x135
/* 80045958  38 C0 00 04 */	li r6, 4
/* 8004595C  48 00 27 91 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045960  7C 7A 1B 78 */	mr r26, r3
/* 80045964  7F 83 E3 78 */	mr r3, r28
/* 80045968  7F A4 EB 78 */	mr r4, r29
/* 8004596C  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045970  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045974  38 A5 01 3E */	addi r5, r5, 0x13e
/* 80045978  38 C0 00 01 */	li r6, 1
/* 8004597C  48 00 27 71 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80045980  7C 79 1B 78 */	mr r25, r3
/* 80045984  7F 83 E3 78 */	mr r3, r28
/* 80045988  7F A4 EB 78 */	mr r4, r29
/* 8004598C  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80045990  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80045994  38 A5 01 48 */	addi r5, r5, 0x148
/* 80045998  38 C0 00 00 */	li r6, 0
/* 8004599C  48 00 27 51 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 800459A0  28 03 00 00 */	cmplwi r3, 0
/* 800459A4  41 82 00 0C */	beq lbl_800459B0
/* 800459A8  C3 E3 00 00 */	lfs f31, 0(r3)
/* 800459AC  48 00 00 08 */	b lbl_800459B4
lbl_800459B0:
/* 800459B0  C3 E2 84 D0 */	lfs f31, lit_4264(r2)
lbl_800459B4:
/* 800459B4  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 800459B8  7F 44 D3 78 */	mr r4, r26
/* 800459BC  4B FF D9 61 */	bl getStbDemoData__14dEvt_control_cFPc
/* 800459C0  7F 24 CB 78 */	mr r4, r25
/* 800459C4  FC 20 F8 90 */	fmr f1, f31
/* 800459C8  4B FF 41 A5 */	bl start__7dDemo_cFPCUcP4cXyzf
/* 800459CC  C0 02 84 F8 */	lfs f0, lit_5057(r2)
/* 800459D0  D0 1E 4F B8 */	stfs f0, 0x4fb8(r30)
/* 800459D4  7F 83 E3 78 */	mr r3, r28
/* 800459D8  7F A4 EB 78 */	mr r4, r29
/* 800459DC  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 800459E0  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 800459E4  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 800459E8  38 C0 00 03 */	li r6, 3
/* 800459EC  48 00 27 01 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 800459F0  7C 64 1B 79 */	or. r4, r3, r3
/* 800459F4  41 82 00 28 */	beq lbl_80045A1C
/* 800459F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800459FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80045A00  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80045A04  80 04 00 00 */	lwz r0, 0(r4)
/* 80045A08  54 00 08 3C */	slwi r0, r0, 1
/* 80045A0C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80045A10  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80045A14  7C 84 02 2E */	lhzx r4, r4, r0
/* 80045A18  4B FE EF 75 */	bl onEventBit__11dSv_event_cFUs
lbl_80045A1C:
/* 80045A1C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80045A20  3C 60 57 41 */	lis r3, 0x5741 /* 0x57414954@ha */
/* 80045A24  38 03 49 54 */	addi r0, r3, 0x4954 /* 0x57414954@l */
/* 80045A28  7C 04 00 00 */	cmpw r4, r0
/* 80045A2C  41 82 00 1C */	beq lbl_80045A48
/* 80045A30  40 80 00 A0 */	bge lbl_80045AD0
/* 80045A34  3C 60 50 4C */	lis r3, 0x504C /* 0x504C4159@ha */
/* 80045A38  38 03 41 59 */	addi r0, r3, 0x4159 /* 0x504C4159@l */
/* 80045A3C  7C 04 00 00 */	cmpw r4, r0
/* 80045A40  41 82 00 18 */	beq lbl_80045A58
/* 80045A44  48 00 00 8C */	b lbl_80045AD0
lbl_80045A48:
/* 80045A48  7F 63 DB 78 */	mr r3, r27
/* 80045A4C  7F A4 EB 78 */	mr r4, r29
/* 80045A50  4B FF E5 ED */	bl specialProc_WaitProc__12dEvDtStaff_cFi
/* 80045A54  48 00 00 88 */	b lbl_80045ADC
lbl_80045A58:
/* 80045A58  3B 3E 4E C8 */	addi r25, r30, 0x4ec8
/* 80045A5C  80 0D 88 B8 */	lwz r0, m_mode__7dDemo_c(r13)
/* 80045A60  2C 00 00 02 */	cmpwi r0, 2
/* 80045A64  40 82 00 50 */	bne lbl_80045AB4
/* 80045A68  7F 23 CB 78 */	mr r3, r25
/* 80045A6C  4B FF D8 0D */	bl getStageEventDt__14dEvt_control_cFv
/* 80045A70  28 03 00 00 */	cmplwi r3, 0
/* 80045A74  41 82 00 3C */	beq lbl_80045AB0
/* 80045A78  88 03 00 07 */	lbz r0, 7(r3)
/* 80045A7C  28 00 00 FF */	cmplwi r0, 0xff
/* 80045A80  41 82 00 30 */	beq lbl_80045AB0
/* 80045A84  A0 19 00 DA */	lhz r0, 0xda(r25)
/* 80045A88  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80045A8C  40 82 00 24 */	bne lbl_80045AB0
/* 80045A90  80 8D 88 84 */	lwz r4, m_control__7dDemo_c(r13)
/* 80045A94  80 64 00 40 */	lwz r3, 0x40(r4)
/* 80045A98  38 03 00 64 */	addi r0, r3, 0x64
/* 80045A9C  90 04 00 40 */	stw r0, 0x40(r4)
/* 80045AA0  7F 83 E3 78 */	mr r3, r28
/* 80045AA4  7F A4 EB 78 */	mr r4, r29
/* 80045AA8  48 00 26 D5 */	bl cutEnd__16dEvent_manager_cFi
/* 80045AAC  48 00 00 08 */	b lbl_80045AB4
lbl_80045AB0:
/* 80045AB0  4B FF 42 49 */	bl end__7dDemo_cFv
lbl_80045AB4:
/* 80045AB4  80 0D 88 B8 */	lwz r0, m_mode__7dDemo_c(r13)
/* 80045AB8  2C 00 00 00 */	cmpwi r0, 0
/* 80045ABC  40 82 00 20 */	bne lbl_80045ADC
/* 80045AC0  7F 83 E3 78 */	mr r3, r28
/* 80045AC4  7F A4 EB 78 */	mr r4, r29
/* 80045AC8  48 00 26 B5 */	bl cutEnd__16dEvent_manager_cFi
/* 80045ACC  48 00 00 10 */	b lbl_80045ADC
lbl_80045AD0:
/* 80045AD0  7F 83 E3 78 */	mr r3, r28
/* 80045AD4  7F A4 EB 78 */	mr r4, r29
/* 80045AD8  48 00 26 A5 */	bl cutEnd__16dEvent_manager_cFi
lbl_80045ADC:
/* 80045ADC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80045AE0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80045AE4  39 61 00 30 */	addi r11, r1, 0x30
/* 80045AE8  48 31 C7 31 */	bl _restgpr_25
/* 80045AEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80045AF0  7C 08 03 A6 */	mtlr r0
/* 80045AF4  38 21 00 40 */	addi r1, r1, 0x40
/* 80045AF8  4E 80 00 20 */	blr 
