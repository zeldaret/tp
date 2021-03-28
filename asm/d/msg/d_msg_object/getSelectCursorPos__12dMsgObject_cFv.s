lbl_80238440:
/* 80238440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238444  7C 08 02 A6 */	mflr r0
/* 80238448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023844C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80238450  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80238454  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238458  4B FF FA 01 */	bl getSelectCursorPosLocal__12dMsgObject_cFv
/* 8023845C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238460  7C 08 03 A6 */	mtlr r0
/* 80238464  38 21 00 10 */	addi r1, r1, 0x10
/* 80238468  4E 80 00 20 */	blr 
