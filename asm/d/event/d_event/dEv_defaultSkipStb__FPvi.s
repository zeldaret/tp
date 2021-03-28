lbl_80042778:
/* 80042778  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8004277C  7C 08 02 A6 */	mflr r0
/* 80042780  90 01 00 44 */	stw r0, 0x44(r1)
/* 80042784  39 61 00 40 */	addi r11, r1, 0x40
/* 80042788  48 31 FA 49 */	bl _savegpr_26
/* 8004278C  7C 7F 1B 78 */	mr r31, r3
/* 80042790  7C 9A 23 78 */	mr r26, r4
/* 80042794  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80042798  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8004279C  3B BE 4E C8 */	addi r29, r30, 0x4ec8
/* 800427A0  3B 80 FF FF */	li r28, -1
/* 800427A4  7F A3 EB 78 */	mr r3, r29
/* 800427A8  48 00 0A D1 */	bl getStageEventDt__14dEvt_control_cFv
/* 800427AC  7C 64 1B 79 */	or. r4, r3, r3
/* 800427B0  3B 60 00 01 */	li r27, 1
/* 800427B4  41 82 00 28 */	beq lbl_800427DC
/* 800427B8  88 04 00 09 */	lbz r0, 9(r4)
/* 800427BC  28 00 00 FF */	cmplwi r0, 0xff
/* 800427C0  41 82 00 0C */	beq lbl_800427CC
/* 800427C4  3B 60 00 00 */	li r27, 0
/* 800427C8  48 00 00 14 */	b lbl_800427DC
lbl_800427CC:
/* 800427CC  88 04 00 07 */	lbz r0, 7(r4)
/* 800427D0  28 00 00 FF */	cmplwi r0, 0xff
/* 800427D4  41 82 00 08 */	beq lbl_800427DC
/* 800427D8  3B 60 00 00 */	li r27, 0
lbl_800427DC:
/* 800427DC  2C 1A 00 01 */	cmpwi r26, 1
/* 800427E0  41 82 00 50 */	beq lbl_80042830
/* 800427E4  40 80 00 6C */	bge lbl_80042850
/* 800427E8  2C 1A 00 00 */	cmpwi r26, 0
/* 800427EC  40 80 00 08 */	bge lbl_800427F4
/* 800427F0  48 00 00 60 */	b lbl_80042850
lbl_800427F4:
/* 800427F4  38 61 00 08 */	addi r3, r1, 8
/* 800427F8  38 84 00 0D */	addi r4, r4, 0xd
/* 800427FC  48 32 63 31 */	bl strcpy
/* 80042800  38 61 00 08 */	addi r3, r1, 8
/* 80042804  3C 80 80 38 */	lis r4, d_event_d_event__stringBase0@ha
/* 80042808  38 84 9D 80 */	addi r4, r4, d_event_d_event__stringBase0@l
/* 8004280C  38 84 00 43 */	addi r4, r4, 0x43
/* 80042810  48 32 62 AD */	bl strcat
/* 80042814  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80042818  38 81 00 08 */	addi r4, r1, 8
/* 8004281C  38 A0 00 FF */	li r5, 0xff
/* 80042820  38 C0 FF FF */	li r6, -1
/* 80042824  48 00 4C F1 */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 80042828  7C 7C 1B 78 */	mr r28, r3
/* 8004282C  48 00 00 24 */	b lbl_80042850
lbl_80042830:
/* 80042830  7F A3 EB 78 */	mr r3, r29
/* 80042834  48 00 00 D9 */	bl getSkipEventName__14dEvt_control_cFv
/* 80042838  7C 64 1B 78 */	mr r4, r3
/* 8004283C  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80042840  38 A0 00 FF */	li r5, 0xff
/* 80042844  38 C0 FF FF */	li r6, -1
/* 80042848  48 00 4C CD */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 8004284C  7C 7C 1B 78 */	mr r28, r3
lbl_80042850:
/* 80042850  7F 80 07 34 */	extsh r0, r28
/* 80042854  2C 00 FF FF */	cmpwi r0, -1
/* 80042858  41 82 00 3C */	beq lbl_80042894
/* 8004285C  7F A3 EB 78 */	mr r3, r29
/* 80042860  7F E4 FB 78 */	mr r4, r31
/* 80042864  4B FF FC B5 */	bl reset__14dEvt_control_cFPv
/* 80042868  4B FF 74 91 */	bl end__7dDemo_cFv
/* 8004286C  7F E3 FB 78 */	mr r3, r31
/* 80042870  7F 84 E3 78 */	mr r4, r28
/* 80042874  88 BD 00 EB */	lbz r5, 0xeb(r29)
/* 80042878  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8004287C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80042880  38 E0 00 03 */	li r7, 3
/* 80042884  39 00 04 00 */	li r8, 0x400
/* 80042888  4B FD 8D F5 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8004288C  38 60 00 02 */	li r3, 2
/* 80042890  48 00 00 34 */	b lbl_800428C4
lbl_80042894:
/* 80042894  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80042898  41 82 00 1C */	beq lbl_800428B4
/* 8004289C  7F A3 EB 78 */	mr r3, r29
/* 800428A0  7F E4 FB 78 */	mr r4, r31
/* 800428A4  4B FF FC 75 */	bl reset__14dEvt_control_cFPv
/* 800428A8  4B FF 74 51 */	bl end__7dDemo_cFv
/* 800428AC  38 60 00 01 */	li r3, 1
/* 800428B0  48 00 00 14 */	b lbl_800428C4
lbl_800428B4:
/* 800428B4  7F A3 EB 78 */	mr r3, r29
/* 800428B8  7F E4 FB 78 */	mr r4, r31
/* 800428BC  4B FF FC 5D */	bl reset__14dEvt_control_cFPv
/* 800428C0  38 60 00 01 */	li r3, 1
lbl_800428C4:
/* 800428C4  39 61 00 40 */	addi r11, r1, 0x40
/* 800428C8  48 31 F9 55 */	bl _restgpr_26
/* 800428CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800428D0  7C 08 03 A6 */	mtlr r0
/* 800428D4  38 21 00 40 */	addi r1, r1, 0x40
/* 800428D8  4E 80 00 20 */	blr 
