lbl_80238378:
/* 80238378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023837C  7C 08 02 A6 */	mflr r0
/* 80238380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238384  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80238388  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8023838C  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238390  4B FF F1 ED */	bl isMsgSendLocal__12dMsgObject_cFv
/* 80238394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238398  7C 08 03 A6 */	mtlr r0
/* 8023839C  38 21 00 10 */	addi r1, r1, 0x10
/* 802383A0  4E 80 00 20 */	blr 
