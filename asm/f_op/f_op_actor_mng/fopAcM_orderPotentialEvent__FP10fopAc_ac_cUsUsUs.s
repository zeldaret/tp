lbl_8001B908:
/* 8001B908  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001B90C  7C 08 02 A6 */	mflr r0
/* 8001B910  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001B914  39 61 00 30 */	addi r11, r1, 0x30
/* 8001B918  48 34 68 BD */	bl _savegpr_27
/* 8001B91C  7C 7B 1B 78 */	mr r27, r3
/* 8001B920  7C 9C 23 78 */	mr r28, r4
/* 8001B924  7C BD 2B 78 */	mr r29, r5
/* 8001B928  7C DE 33 78 */	mr r30, r6
/* 8001B92C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001B930  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8001B934  3B E3 4E C8 */	addi r31, r3, 0x4ec8
/* 8001B938  38 00 00 00 */	li r0, 0
/* 8001B93C  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 8001B940  28 03 00 00 */	cmplwi r3, 0
/* 8001B944  41 82 00 0C */	beq lbl_8001B950
/* 8001B948  28 03 00 02 */	cmplwi r3, 2
/* 8001B94C  40 82 00 08 */	bne lbl_8001B954
lbl_8001B950:
/* 8001B950  38 00 00 01 */	li r0, 1
lbl_8001B954:
/* 8001B954  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001B958  40 82 00 20 */	bne lbl_8001B978
/* 8001B95C  57 80 05 6B */	rlwinm. r0, r28, 0, 0x15, 0x15
/* 8001B960  41 82 00 10 */	beq lbl_8001B970
/* 8001B964  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8001B968  7C 00 D8 40 */	cmplw r0, r27
/* 8001B96C  41 82 00 0C */	beq lbl_8001B978
lbl_8001B970:
/* 8001B970  38 60 00 00 */	li r3, 0
/* 8001B974  48 00 00 44 */	b lbl_8001B9B8
lbl_8001B978:
/* 8001B978  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 8001B97C  40 82 00 08 */	bne lbl_8001B984
/* 8001B980  3B C0 00 FF */	li r30, 0xff
lbl_8001B984:
/* 8001B984  7F 83 E3 78 */	mr r3, r28
/* 8001B988  4B FF F6 D1 */	bl event_second_actor__FUs
/* 8001B98C  7C 69 1B 78 */	mr r9, r3
/* 8001B990  38 00 00 FF */	li r0, 0xff
/* 8001B994  90 01 00 08 */	stw r0, 8(r1)
/* 8001B998  7F E3 FB 78 */	mr r3, r31
/* 8001B99C  38 80 00 04 */	li r4, 4
/* 8001B9A0  7F C5 F3 78 */	mr r5, r30
/* 8001B9A4  7F 86 E3 78 */	mr r6, r28
/* 8001B9A8  7F A7 EB 78 */	mr r7, r29
/* 8001B9AC  7F 68 DB 78 */	mr r8, r27
/* 8001B9B0  39 40 FF FF */	li r10, -1
/* 8001B9B4  48 02 5C B5 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8001B9B8:
/* 8001B9B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8001B9BC  48 34 68 65 */	bl _restgpr_27
/* 8001B9C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001B9C4  7C 08 03 A6 */	mtlr r0
/* 8001B9C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8001B9CC  4E 80 00 20 */	blr 
