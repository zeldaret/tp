lbl_8024B504:
/* 8024B504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B508  7C 08 02 A6 */	mflr r0
/* 8024B50C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B518  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024B51C  A0 04 00 04 */	lhz r0, 4(r4)
/* 8024B520  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8024B524  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 8024B528  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 8024B52C  7C 84 02 2E */	lhzx r4, r4, r0
/* 8024B530  4B DE 94 8D */	bl isEventBit__11dSv_event_cCFUs
/* 8024B534  7C 60 00 34 */	cntlzw r0, r3
/* 8024B538  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8024B53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B540  7C 08 03 A6 */	mtlr r0
/* 8024B544  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B548  4E 80 00 20 */	blr 
