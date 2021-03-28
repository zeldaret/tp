lbl_8024C488:
/* 8024C488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C48C  7C 08 02 A6 */	mflr r0
/* 8024C490  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C494  7C 86 23 78 */	mr r6, r4
/* 8024C498  38 81 00 08 */	addi r4, r1, 8
/* 8024C49C  38 A1 00 0A */	addi r5, r1, 0xa
/* 8024C4A0  38 C6 00 04 */	addi r6, r6, 4
/* 8024C4A4  4B FF EC 4D */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024C4A8  A0 01 00 08 */	lhz r0, 8(r1)
/* 8024C4AC  28 00 00 00 */	cmplwi r0, 0
/* 8024C4B0  41 82 00 24 */	beq lbl_8024C4D4
/* 8024C4B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024C4B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024C4BC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8024C4C0  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8024C4C4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8024C4C8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8024C4CC  7C 84 02 2E */	lhzx r4, r4, r0
/* 8024C4D0  4B DE 84 D5 */	bl offEventBit__11dSv_event_cFUs
lbl_8024C4D4:
/* 8024C4D4  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8024C4D8  28 00 00 00 */	cmplwi r0, 0
/* 8024C4DC  41 82 00 24 */	beq lbl_8024C500
/* 8024C4E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024C4E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024C4E8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8024C4EC  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8024C4F0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8024C4F4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8024C4F8  7C 84 02 2E */	lhzx r4, r4, r0
/* 8024C4FC  4B DE 84 A9 */	bl offEventBit__11dSv_event_cFUs
lbl_8024C500:
/* 8024C500  38 60 00 01 */	li r3, 1
/* 8024C504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C508  7C 08 03 A6 */	mtlr r0
/* 8024C50C  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C510  4E 80 00 20 */	blr 
