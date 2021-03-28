lbl_8001B4E0:
/* 8001B4E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001B4E4  7C 08 02 A6 */	mflr r0
/* 8001B4E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001B4EC  39 61 00 30 */	addi r11, r1, 0x30
/* 8001B4F0  48 34 6C D9 */	bl _savegpr_24
/* 8001B4F4  7C 7A 1B 78 */	mr r26, r3
/* 8001B4F8  7C 9B 23 78 */	mr r27, r4
/* 8001B4FC  7C DC 33 78 */	mr r28, r6
/* 8001B500  7C FD 3B 78 */	mr r29, r7
/* 8001B504  7D 1E 43 78 */	mr r30, r8
/* 8001B508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001B50C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8001B510  3B E3 4E C8 */	addi r31, r3, 0x4ec8
/* 8001B514  38 00 00 00 */	li r0, 0
/* 8001B518  88 83 4F AD */	lbz r4, 0x4fad(r3)
/* 8001B51C  28 04 00 00 */	cmplwi r4, 0
/* 8001B520  41 82 00 0C */	beq lbl_8001B52C
/* 8001B524  28 04 00 02 */	cmplwi r4, 2
/* 8001B528  40 82 00 08 */	bne lbl_8001B530
lbl_8001B52C:
/* 8001B52C  38 00 00 01 */	li r0, 1
lbl_8001B530:
/* 8001B530  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001B534  40 82 00 20 */	bne lbl_8001B554
/* 8001B538  57 A0 05 6B */	rlwinm. r0, r29, 0, 0x15, 0x15
/* 8001B53C  41 82 00 10 */	beq lbl_8001B54C
/* 8001B540  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8001B544  7C 00 D0 40 */	cmplw r0, r26
/* 8001B548  41 82 00 0C */	beq lbl_8001B554
lbl_8001B54C:
/* 8001B54C  38 60 00 00 */	li r3, 0
/* 8001B550  48 00 00 7C */	b lbl_8001B5CC
lbl_8001B554:
/* 8001B554  3B 23 4F F8 */	addi r25, r3, 0x4ff8
/* 8001B558  7F 23 CB 78 */	mr r3, r25
/* 8001B55C  7F 44 D3 78 */	mr r4, r26
/* 8001B560  38 C0 00 FF */	li r6, 0xff
/* 8001B564  48 02 C1 F5 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8001B568  7C 78 1B 78 */	mr r24, r3
/* 8001B56C  7F 00 07 35 */	extsh. r0, r24
/* 8001B570  40 80 00 0C */	bge lbl_8001B57C
/* 8001B574  38 60 00 00 */	li r3, 0
/* 8001B578  48 00 00 54 */	b lbl_8001B5CC
lbl_8001B57C:
/* 8001B57C  7F 23 CB 78 */	mr r3, r25
/* 8001B580  7F 44 D3 78 */	mr r4, r26
/* 8001B584  7F 05 C3 78 */	mr r5, r24
/* 8001B588  48 02 CC 6D */	bl getEventPrio__16dEvent_manager_cFP10fopAc_ac_cs
/* 8001B58C  54 65 04 3F */	clrlwi. r5, r3, 0x10
/* 8001B590  40 82 00 08 */	bne lbl_8001B598
/* 8001B594  38 A0 00 FF */	li r5, 0xff
lbl_8001B598:
/* 8001B598  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 8001B59C  41 82 00 08 */	beq lbl_8001B5A4
/* 8001B5A0  7F C5 F3 78 */	mr r5, r30
lbl_8001B5A4:
/* 8001B5A4  38 00 00 FF */	li r0, 0xff
/* 8001B5A8  90 01 00 08 */	stw r0, 8(r1)
/* 8001B5AC  7F E3 FB 78 */	mr r3, r31
/* 8001B5B0  38 80 00 02 */	li r4, 2
/* 8001B5B4  7F A6 EB 78 */	mr r6, r29
/* 8001B5B8  7F 87 E3 78 */	mr r7, r28
/* 8001B5BC  7F 48 D3 78 */	mr r8, r26
/* 8001B5C0  7F 69 DB 78 */	mr r9, r27
/* 8001B5C4  7F 0A C3 78 */	mr r10, r24
/* 8001B5C8  48 02 60 A1 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8001B5CC:
/* 8001B5CC  39 61 00 30 */	addi r11, r1, 0x30
/* 8001B5D0  48 34 6C 45 */	bl _restgpr_24
/* 8001B5D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001B5D8  7C 08 03 A6 */	mtlr r0
/* 8001B5DC  38 21 00 30 */	addi r1, r1, 0x30
/* 8001B5E0  4E 80 00 20 */	blr 
