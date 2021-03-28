lbl_80238990:
/* 80238990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238994  7C 08 02 A6 */	mflr r0
/* 80238998  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023899C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802389A0  93 C1 00 08 */	stw r30, 8(r1)
/* 802389A4  7C 60 1B 78 */	mr r0, r3
/* 802389A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802389AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802389B0  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 802389B4  7F C3 F3 78 */	mr r3, r30
/* 802389B8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F9FF@ha */
/* 802389BC  38 84 F9 FF */	addi r4, r4, 0xF9FF /* 0x0000F9FF@l */
/* 802389C0  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 802389C4  54 05 C6 3E */	rlwinm r5, r0, 0x18, 0x18, 0x1f
/* 802389C8  4B DF C0 19 */	bl setEventReg__11dSv_event_cFUsUc
/* 802389CC  7F C3 F3 78 */	mr r3, r30
/* 802389D0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FAFF@ha */
/* 802389D4  38 84 FA FF */	addi r4, r4, 0xFAFF /* 0x0000FAFF@l */
/* 802389D8  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 802389DC  4B DF C0 05 */	bl setEventReg__11dSv_event_cFUsUc
/* 802389E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802389E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802389E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802389EC  7C 08 03 A6 */	mtlr r0
/* 802389F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802389F4  4E 80 00 20 */	blr 
