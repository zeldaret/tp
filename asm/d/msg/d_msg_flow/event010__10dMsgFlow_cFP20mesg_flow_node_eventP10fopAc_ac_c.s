lbl_8024C76C:
/* 8024C76C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C770  7C 08 02 A6 */	mflr r0
/* 8024C774  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C778  7C 86 23 78 */	mr r6, r4
/* 8024C77C  38 81 00 08 */	addi r4, r1, 8
/* 8024C780  38 A1 00 0A */	addi r5, r1, 0xa
/* 8024C784  38 C6 00 04 */	addi r6, r6, 4
/* 8024C788  4B FF E9 69 */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024C78C  A0 01 00 08 */	lhz r0, 8(r1)
/* 8024C790  28 00 00 00 */	cmplwi r0, 0
/* 8024C794  41 82 00 24 */	beq lbl_8024C7B8
/* 8024C798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024C79C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024C7A0  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024C7A4  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8024C7A8  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 8024C7AC  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 8024C7B0  7C 84 02 2E */	lhzx r4, r4, r0
/* 8024C7B4  4B DE 81 D9 */	bl onEventBit__11dSv_event_cFUs
lbl_8024C7B8:
/* 8024C7B8  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8024C7BC  28 00 00 00 */	cmplwi r0, 0
/* 8024C7C0  41 82 00 24 */	beq lbl_8024C7E4
/* 8024C7C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024C7C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024C7CC  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024C7D0  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8024C7D4  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 8024C7D8  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 8024C7DC  7C 84 02 2E */	lhzx r4, r4, r0
/* 8024C7E0  4B DE 81 AD */	bl onEventBit__11dSv_event_cFUs
lbl_8024C7E4:
/* 8024C7E4  38 60 00 01 */	li r3, 1
/* 8024C7E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C7EC  7C 08 03 A6 */	mtlr r0
/* 8024C7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C7F4  4E 80 00 20 */	blr 
