lbl_8021E8DC:
/* 8021E8DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021E8E0  7C 08 02 A6 */	mflr r0
/* 8021E8E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021E8E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8021E8EC  48 14 38 E5 */	bl _savegpr_26
/* 8021E8F0  3B 40 00 00 */	li r26, 0
/* 8021E8F4  4B FF FD F1 */	bl dMeter2Info_getRecieveLetterNum__Fv
/* 8021E8F8  7C 7F 1B 78 */	mr r31, r3
/* 8021E8FC  3B C0 00 00 */	li r30, 0
/* 8021E900  3B A0 00 00 */	li r29, 0
/* 8021E904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021E908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021E90C  3B 83 01 1C */	addi r28, r3, 0x11c
/* 8021E910  3B 63 07 F0 */	addi r27, r3, 0x7f0
lbl_8021E914:
/* 8021E914  7F 83 E3 78 */	mr r3, r28
/* 8021E918  7F C4 F3 78 */	mr r4, r30
/* 8021E91C  4B E1 5B 31 */	bl isLetterGetFlag__17dSv_letter_info_cCFi
/* 8021E920  2C 03 00 00 */	cmpwi r3, 0
/* 8021E924  40 82 00 80 */	bne lbl_8021E9A4
/* 8021E928  3C 60 80 3C */	lis r3, letter_data__12dMenu_Letter@ha
/* 8021E92C  38 03 F8 1C */	addi r0, r3, letter_data__12dMenu_Letter@l
/* 8021E930  7C 60 EA 14 */	add r3, r0, r29
/* 8021E934  A0 03 00 02 */	lhz r0, 2(r3)
/* 8021E938  28 00 00 00 */	cmplwi r0, 0
/* 8021E93C  41 82 00 68 */	beq lbl_8021E9A4
/* 8021E940  A0 03 00 06 */	lhz r0, 6(r3)
/* 8021E944  7F 63 DB 78 */	mr r3, r27
/* 8021E948  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8021E94C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8021E950  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8021E954  7C 84 02 2E */	lhzx r4, r4, r0
/* 8021E958  4B E1 60 65 */	bl isEventBit__11dSv_event_cCFUs
/* 8021E95C  2C 03 00 00 */	cmpwi r3, 0
/* 8021E960  41 82 00 44 */	beq lbl_8021E9A4
/* 8021E964  7F 83 E3 78 */	mr r3, r28
/* 8021E968  7F C4 F3 78 */	mr r4, r30
/* 8021E96C  4B E1 5A BD */	bl onLetterGetFlag__17dSv_letter_info_cFi
/* 8021E970  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8021E974  38 63 00 10 */	addi r3, r3, 0x10
/* 8021E978  7C 1C 18 AE */	lbzx r0, r28, r3
/* 8021E97C  28 00 00 00 */	cmplwi r0, 0
/* 8021E980  40 82 00 10 */	bne lbl_8021E990
/* 8021E984  38 1E 00 01 */	addi r0, r30, 1
/* 8021E988  7C 1C 19 AE */	stbx r0, r28, r3
/* 8021E98C  48 00 00 10 */	b lbl_8021E99C
lbl_8021E990:
/* 8021E990  38 00 00 40 */	li r0, 0x40
/* 8021E994  7C 09 03 A6 */	mtctr r0
lbl_8021E998:
/* 8021E998  42 00 00 00 */	bdnz lbl_8021E998
lbl_8021E99C:
/* 8021E99C  3B 40 00 01 */	li r26, 1
/* 8021E9A0  3B FF 00 01 */	addi r31, r31, 1
lbl_8021E9A4:
/* 8021E9A4  3B DE 00 01 */	addi r30, r30, 1
/* 8021E9A8  2C 1E 00 40 */	cmpwi r30, 0x40
/* 8021E9AC  3B BD 00 08 */	addi r29, r29, 8
/* 8021E9B0  41 80 FF 64 */	blt lbl_8021E914
/* 8021E9B4  7F 43 D3 78 */	mr r3, r26
/* 8021E9B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8021E9BC  48 14 38 61 */	bl _restgpr_26
/* 8021E9C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021E9C4  7C 08 03 A6 */	mtlr r0
/* 8021E9C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8021E9CC  4E 80 00 20 */	blr 
