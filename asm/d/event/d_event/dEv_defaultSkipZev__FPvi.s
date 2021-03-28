lbl_8004261C:
/* 8004261C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80042620  7C 08 02 A6 */	mflr r0
/* 80042624  90 01 00 44 */	stw r0, 0x44(r1)
/* 80042628  39 61 00 40 */	addi r11, r1, 0x40
/* 8004262C  48 31 FB A5 */	bl _savegpr_26
/* 80042630  7C 7F 1B 78 */	mr r31, r3
/* 80042634  7C 9A 23 78 */	mr r26, r4
/* 80042638  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8004263C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80042640  3B BE 4E C8 */	addi r29, r30, 0x4ec8
/* 80042644  3B 80 FF FF */	li r28, -1
/* 80042648  7F A3 EB 78 */	mr r3, r29
/* 8004264C  48 00 0C 2D */	bl getStageEventDt__14dEvt_control_cFv
/* 80042650  7C 64 1B 79 */	or. r4, r3, r3
/* 80042654  3B 60 00 01 */	li r27, 1
/* 80042658  41 82 00 28 */	beq lbl_80042680
/* 8004265C  88 04 00 09 */	lbz r0, 9(r4)
/* 80042660  28 00 00 FF */	cmplwi r0, 0xff
/* 80042664  41 82 00 0C */	beq lbl_80042670
/* 80042668  3B 60 00 00 */	li r27, 0
/* 8004266C  48 00 00 14 */	b lbl_80042680
lbl_80042670:
/* 80042670  88 04 00 07 */	lbz r0, 7(r4)
/* 80042674  28 00 00 FF */	cmplwi r0, 0xff
/* 80042678  41 82 00 08 */	beq lbl_80042680
/* 8004267C  3B 60 00 00 */	li r27, 0
lbl_80042680:
/* 80042680  2C 1A 00 01 */	cmpwi r26, 1
/* 80042684  41 82 00 50 */	beq lbl_800426D4
/* 80042688  40 80 00 6C */	bge lbl_800426F4
/* 8004268C  2C 1A 00 00 */	cmpwi r26, 0
/* 80042690  40 80 00 08 */	bge lbl_80042698
/* 80042694  48 00 00 60 */	b lbl_800426F4
lbl_80042698:
/* 80042698  38 61 00 08 */	addi r3, r1, 8
/* 8004269C  38 84 00 0D */	addi r4, r4, 0xd
/* 800426A0  48 32 64 8D */	bl strcpy
/* 800426A4  38 61 00 08 */	addi r3, r1, 8
/* 800426A8  3C 80 80 38 */	lis r4, d_event_d_event__stringBase0@ha
/* 800426AC  38 84 9D 80 */	addi r4, r4, d_event_d_event__stringBase0@l
/* 800426B0  38 84 00 43 */	addi r4, r4, 0x43
/* 800426B4  48 32 64 09 */	bl strcat
/* 800426B8  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 800426BC  38 81 00 08 */	addi r4, r1, 8
/* 800426C0  38 A0 00 FF */	li r5, 0xff
/* 800426C4  38 C0 FF FF */	li r6, -1
/* 800426C8  48 00 4E 4D */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 800426CC  7C 7C 1B 78 */	mr r28, r3
/* 800426D0  48 00 00 24 */	b lbl_800426F4
lbl_800426D4:
/* 800426D4  7F A3 EB 78 */	mr r3, r29
/* 800426D8  48 00 02 35 */	bl getSkipEventName__14dEvt_control_cFv
/* 800426DC  7C 64 1B 78 */	mr r4, r3
/* 800426E0  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 800426E4  38 A0 00 FF */	li r5, 0xff
/* 800426E8  38 C0 FF FF */	li r6, -1
/* 800426EC  48 00 4E 29 */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 800426F0  7C 7C 1B 78 */	mr r28, r3
lbl_800426F4:
/* 800426F4  7F 80 07 34 */	extsh r0, r28
/* 800426F8  2C 00 FF FF */	cmpwi r0, -1
/* 800426FC  41 82 00 38 */	beq lbl_80042734
/* 80042700  7F A3 EB 78 */	mr r3, r29
/* 80042704  7F E4 FB 78 */	mr r4, r31
/* 80042708  4B FF FE 11 */	bl reset__14dEvt_control_cFPv
/* 8004270C  7F E3 FB 78 */	mr r3, r31
/* 80042710  7F 84 E3 78 */	mr r4, r28
/* 80042714  88 BD 00 EB */	lbz r5, 0xeb(r29)
/* 80042718  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8004271C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80042720  38 E0 00 03 */	li r7, 3
/* 80042724  39 00 04 00 */	li r8, 0x400
/* 80042728  4B FD 8F 55 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8004272C  38 60 00 02 */	li r3, 2
/* 80042730  48 00 00 30 */	b lbl_80042760
lbl_80042734:
/* 80042734  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80042738  41 82 00 18 */	beq lbl_80042750
/* 8004273C  7F A3 EB 78 */	mr r3, r29
/* 80042740  7F E4 FB 78 */	mr r4, r31
/* 80042744  4B FF FD D5 */	bl reset__14dEvt_control_cFPv
/* 80042748  38 60 00 01 */	li r3, 1
/* 8004274C  48 00 00 14 */	b lbl_80042760
lbl_80042750:
/* 80042750  7F A3 EB 78 */	mr r3, r29
/* 80042754  7F E4 FB 78 */	mr r4, r31
/* 80042758  4B FF FD C1 */	bl reset__14dEvt_control_cFPv
/* 8004275C  38 60 00 01 */	li r3, 1
lbl_80042760:
/* 80042760  39 61 00 40 */	addi r11, r1, 0x40
/* 80042764  48 31 FA B9 */	bl _restgpr_26
/* 80042768  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8004276C  7C 08 03 A6 */	mtlr r0
/* 80042770  38 21 00 40 */	addi r1, r1, 0x40
/* 80042774  4E 80 00 20 */	blr 
