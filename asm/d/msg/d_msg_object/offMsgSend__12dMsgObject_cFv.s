lbl_8023834C:
/* 8023834C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238350  7C 08 02 A6 */	mflr r0
/* 80238354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238358  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8023835C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80238360  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238364  4B FF F2 09 */	bl offMsgSendLocal__12dMsgObject_cFv
/* 80238368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023836C  7C 08 03 A6 */	mtlr r0
/* 80238370  38 21 00 10 */	addi r1, r1, 0x10
/* 80238374  4E 80 00 20 */	blr 
