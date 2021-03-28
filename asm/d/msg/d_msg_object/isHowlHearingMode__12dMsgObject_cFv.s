lbl_80238588:
/* 80238588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023858C  7C 08 02 A6 */	mflr r0
/* 80238590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80238598  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8023859C  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802385A0  4B FF F3 35 */	bl isHowlHearingModeLocal__12dMsgObject_cFv
/* 802385A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802385A8  7C 08 03 A6 */	mtlr r0
/* 802385AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802385B0  4E 80 00 20 */	blr 
