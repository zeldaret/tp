lbl_8024C7F8:
/* 8024C7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C7FC  7C 08 02 A6 */	mflr r0
/* 8024C800  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C804  7C 86 23 78 */	mr r6, r4
/* 8024C808  38 81 00 08 */	addi r4, r1, 8
/* 8024C80C  38 A1 00 0A */	addi r5, r1, 0xa
/* 8024C810  38 C6 00 04 */	addi r6, r6, 4
/* 8024C814  4B FF E8 DD */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024C818  A0 01 00 08 */	lhz r0, 8(r1)
/* 8024C81C  28 00 00 00 */	cmplwi r0, 0
/* 8024C820  41 82 00 24 */	beq lbl_8024C844
/* 8024C824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024C828  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024C82C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024C830  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8024C834  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 8024C838  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 8024C83C  7C 84 02 2E */	lhzx r4, r4, r0
/* 8024C840  4B DE 81 65 */	bl offEventBit__11dSv_event_cFUs
lbl_8024C844:
/* 8024C844  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 8024C848  28 00 00 00 */	cmplwi r0, 0
/* 8024C84C  41 82 00 24 */	beq lbl_8024C870
/* 8024C850  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024C854  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024C858  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024C85C  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8024C860  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 8024C864  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 8024C868  7C 84 02 2E */	lhzx r4, r4, r0
/* 8024C86C  4B DE 81 39 */	bl offEventBit__11dSv_event_cFUs
lbl_8024C870:
/* 8024C870  38 60 00 01 */	li r3, 1
/* 8024C874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C878  7C 08 03 A6 */	mtlr r0
/* 8024C87C  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C880  4E 80 00 20 */	blr 
