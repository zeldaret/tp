lbl_80238320:
/* 80238320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238324  7C 08 02 A6 */	mflr r0
/* 80238328  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023832C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80238330  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80238334  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238338  4B FF F2 25 */	bl onMsgSendLocal__12dMsgObject_cFv
/* 8023833C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238340  7C 08 03 A6 */	mtlr r0
/* 80238344  38 21 00 10 */	addi r1, r1, 0x10
/* 80238348  4E 80 00 20 */	blr 
