lbl_8001B7B4:
/* 8001B7B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001B7B8  7C 08 02 A6 */	mflr r0
/* 8001B7BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001B7C0  39 61 00 40 */	addi r11, r1, 0x40
/* 8001B7C4  48 34 6A 01 */	bl _savegpr_23
/* 8001B7C8  7C 78 1B 78 */	mr r24, r3
/* 8001B7CC  7C 99 23 78 */	mr r25, r4
/* 8001B7D0  7C BA 2B 78 */	mr r26, r5
/* 8001B7D4  7C DB 33 78 */	mr r27, r6
/* 8001B7D8  7C FC 3B 78 */	mr r28, r7
/* 8001B7DC  7D 1D 43 78 */	mr r29, r8
/* 8001B7E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001B7E4  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001B7E8  3B F7 4E C8 */	addi r31, r23, 0x4ec8
/* 8001B7EC  38 00 00 00 */	li r0, 0
/* 8001B7F0  88 77 4F AD */	lbz r3, 0x4fad(r23)
/* 8001B7F4  28 03 00 00 */	cmplwi r3, 0
/* 8001B7F8  41 82 00 0C */	beq lbl_8001B804
/* 8001B7FC  28 03 00 02 */	cmplwi r3, 2
/* 8001B800  40 82 00 08 */	bne lbl_8001B808
lbl_8001B804:
/* 8001B804  38 00 00 01 */	li r0, 1
lbl_8001B808:
/* 8001B808  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001B80C  40 82 00 20 */	bne lbl_8001B82C
/* 8001B810  57 80 05 6B */	rlwinm. r0, r28, 0, 0x15, 0x15
/* 8001B814  41 82 00 10 */	beq lbl_8001B824
/* 8001B818  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8001B81C  7C 00 C0 40 */	cmplw r0, r24
/* 8001B820  41 82 00 0C */	beq lbl_8001B82C
lbl_8001B824:
/* 8001B824  38 60 00 00 */	li r3, 0
/* 8001B828  48 00 00 A0 */	b lbl_8001B8C8
lbl_8001B82C:
/* 8001B82C  3B C0 00 64 */	li r30, 0x64
/* 8001B830  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 8001B834  7C 84 07 74 */	extsb r4, r4
/* 8001B838  28 18 00 00 */	cmplwi r24, 0
/* 8001B83C  41 82 00 10 */	beq lbl_8001B84C
/* 8001B840  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 8001B844  7C 00 07 74 */	extsb r0, r0
/* 8001B848  7C 04 03 78 */	mr r4, r0
lbl_8001B84C:
/* 8001B84C  7F 23 CB 78 */	mr r3, r25
/* 8001B850  48 02 7C B1 */	bl searchMapEventData__14dEvt_control_cFUcl
/* 8001B854  28 03 00 00 */	cmplwi r3, 0
/* 8001B858  41 82 00 28 */	beq lbl_8001B880
/* 8001B85C  8B C3 00 06 */	lbz r30, 6(r3)
/* 8001B860  7F 40 07 34 */	extsh r0, r26
/* 8001B864  2C 00 00 FF */	cmpwi r0, 0xff
/* 8001B868  40 82 00 18 */	bne lbl_8001B880
/* 8001B86C  38 77 4F F8 */	addi r3, r23, 0x4ff8
/* 8001B870  7F 04 C3 78 */	mr r4, r24
/* 8001B874  7F 25 CB 78 */	mr r5, r25
/* 8001B878  48 02 BE 21 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 8001B87C  7C 7A 1B 78 */	mr r26, r3
lbl_8001B880:
/* 8001B880  57 80 05 EF */	rlwinm. r0, r28, 0, 0x17, 0x17
/* 8001B884  41 82 00 08 */	beq lbl_8001B88C
/* 8001B888  3B C0 00 03 */	li r30, 3
lbl_8001B88C:
/* 8001B88C  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 8001B890  41 82 00 08 */	beq lbl_8001B898
/* 8001B894  7F BE EB 78 */	mr r30, r29
lbl_8001B898:
/* 8001B898  7F 83 E3 78 */	mr r3, r28
/* 8001B89C  4B FF F7 BD */	bl event_second_actor__FUs
/* 8001B8A0  7C 69 1B 78 */	mr r9, r3
/* 8001B8A4  93 21 00 08 */	stw r25, 8(r1)
/* 8001B8A8  7F E3 FB 78 */	mr r3, r31
/* 8001B8AC  38 80 00 02 */	li r4, 2
/* 8001B8B0  7F C5 F3 78 */	mr r5, r30
/* 8001B8B4  7F 86 E3 78 */	mr r6, r28
/* 8001B8B8  7F 67 DB 78 */	mr r7, r27
/* 8001B8BC  7F 08 C3 78 */	mr r8, r24
/* 8001B8C0  7F 4A D3 78 */	mr r10, r26
/* 8001B8C4  48 02 5D A5 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8001B8C8:
/* 8001B8C8  39 61 00 40 */	addi r11, r1, 0x40
/* 8001B8CC  48 34 69 45 */	bl _restgpr_23
/* 8001B8D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8001B8D4  7C 08 03 A6 */	mtlr r0
/* 8001B8D8  38 21 00 40 */	addi r1, r1, 0x40
/* 8001B8DC  4E 80 00 20 */	blr 
