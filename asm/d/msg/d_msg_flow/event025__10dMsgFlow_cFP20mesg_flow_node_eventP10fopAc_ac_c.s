lbl_8024CF54:
/* 8024CF54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024CF58  7C 08 02 A6 */	mflr r0
/* 8024CF5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024CF60  38 84 00 04 */	addi r4, r4, 4
/* 8024CF64  4B FF E1 CD */	bl getParam__10dMsgFlow_cFPUc
/* 8024CF68  7C 60 1B 78 */	mr r0, r3
/* 8024CF6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024CF70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024CF74  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8024CF78  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 8024CF7C  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 8024CF80  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8024CF84  4B DE 7A 5D */	bl setEventReg__11dSv_event_cFUsUc
/* 8024CF88  38 60 00 01 */	li r3, 1
/* 8024CF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024CF90  7C 08 03 A6 */	mtlr r0
/* 8024CF94  38 21 00 10 */	addi r1, r1, 0x10
/* 8024CF98  4E 80 00 20 */	blr 
