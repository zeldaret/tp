lbl_8001B3CC:
/* 8001B3CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001B3D0  7C 08 02 A6 */	mflr r0
/* 8001B3D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001B3D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8001B3DC  48 34 6D F1 */	bl _savegpr_25
/* 8001B3E0  7C 7C 1B 78 */	mr r28, r3
/* 8001B3E4  7C 88 23 78 */	mr r8, r4
/* 8001B3E8  7C BD 2B 78 */	mr r29, r5
/* 8001B3EC  7C DE 33 78 */	mr r30, r6
/* 8001B3F0  7C FF 3B 78 */	mr r31, r7
/* 8001B3F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001B3F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8001B3FC  3B 63 4E C8 */	addi r27, r3, 0x4ec8
/* 8001B400  38 00 00 00 */	li r0, 0
/* 8001B404  88 83 4F AD */	lbz r4, 0x4fad(r3)
/* 8001B408  28 04 00 00 */	cmplwi r4, 0
/* 8001B40C  41 82 00 0C */	beq lbl_8001B418
/* 8001B410  28 04 00 02 */	cmplwi r4, 2
/* 8001B414  40 82 00 08 */	bne lbl_8001B41C
lbl_8001B418:
/* 8001B418  38 00 00 01 */	li r0, 1
lbl_8001B41C:
/* 8001B41C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001B420  40 82 00 20 */	bne lbl_8001B440
/* 8001B424  57 C0 05 6B */	rlwinm. r0, r30, 0, 0x15, 0x15
/* 8001B428  41 82 00 10 */	beq lbl_8001B438
/* 8001B42C  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 8001B430  7C 00 E0 40 */	cmplw r0, r28
/* 8001B434  41 82 00 0C */	beq lbl_8001B440
lbl_8001B438:
/* 8001B438  38 60 00 00 */	li r3, 0
/* 8001B43C  48 00 00 8C */	b lbl_8001B4C8
lbl_8001B440:
/* 8001B440  3B 43 4F F8 */	addi r26, r3, 0x4ff8
/* 8001B444  7F 43 D3 78 */	mr r3, r26
/* 8001B448  7F 84 E3 78 */	mr r4, r28
/* 8001B44C  7D 05 43 78 */	mr r5, r8
/* 8001B450  38 C0 00 FF */	li r6, 0xff
/* 8001B454  48 02 C3 05 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8001B458  7C 79 1B 78 */	mr r25, r3
/* 8001B45C  7F 20 07 35 */	extsh. r0, r25
/* 8001B460  40 80 00 0C */	bge lbl_8001B46C
/* 8001B464  38 60 00 00 */	li r3, 0
/* 8001B468  48 00 00 60 */	b lbl_8001B4C8
lbl_8001B46C:
/* 8001B46C  7F 43 D3 78 */	mr r3, r26
/* 8001B470  7F 84 E3 78 */	mr r4, r28
/* 8001B474  7F 25 CB 78 */	mr r5, r25
/* 8001B478  48 02 CD 7D */	bl getEventPrio__16dEvent_manager_cFP10fopAc_ac_cs
/* 8001B47C  54 7A 04 3F */	clrlwi. r26, r3, 0x10
/* 8001B480  40 82 00 08 */	bne lbl_8001B488
/* 8001B484  3B 40 00 FF */	li r26, 0xff
lbl_8001B488:
/* 8001B488  57 E0 04 3F */	clrlwi. r0, r31, 0x10
/* 8001B48C  41 82 00 08 */	beq lbl_8001B494
/* 8001B490  7F FA FB 78 */	mr r26, r31
lbl_8001B494:
/* 8001B494  7F C3 F3 78 */	mr r3, r30
/* 8001B498  4B FF FB C1 */	bl event_second_actor__FUs
/* 8001B49C  7C 69 1B 78 */	mr r9, r3
/* 8001B4A0  38 00 00 FF */	li r0, 0xff
/* 8001B4A4  90 01 00 08 */	stw r0, 8(r1)
/* 8001B4A8  7F 63 DB 78 */	mr r3, r27
/* 8001B4AC  38 80 00 02 */	li r4, 2
/* 8001B4B0  7F 45 D3 78 */	mr r5, r26
/* 8001B4B4  7F C6 F3 78 */	mr r6, r30
/* 8001B4B8  7F A7 EB 78 */	mr r7, r29
/* 8001B4BC  7F 88 E3 78 */	mr r8, r28
/* 8001B4C0  7F 2A CB 78 */	mr r10, r25
/* 8001B4C4  48 02 61 A5 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8001B4C8:
/* 8001B4C8  39 61 00 30 */	addi r11, r1, 0x30
/* 8001B4CC  48 34 6D 4D */	bl _restgpr_25
/* 8001B4D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001B4D4  7C 08 03 A6 */	mtlr r0
/* 8001B4D8  38 21 00 30 */	addi r1, r1, 0x30
/* 8001B4DC  4E 80 00 20 */	blr 
