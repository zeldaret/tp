lbl_80238410:
/* 80238410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238414  7C 08 02 A6 */	mflr r0
/* 80238418  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023841C  7C 64 1B 78 */	mr r4, r3
/* 80238420  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80238424  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80238428  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8023842C  4B FF F9 D9 */	bl setSmellTypeLocal__12dMsgObject_cFUc
/* 80238430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238434  7C 08 03 A6 */	mtlr r0
/* 80238438  38 21 00 10 */	addi r1, r1, 0x10
/* 8023843C  4E 80 00 20 */	blr 
