lbl_8023846C:
/* 8023846C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238470  7C 08 02 A6 */	mflr r0
/* 80238474  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238478  7C 64 1B 78 */	mr r4, r3
/* 8023847C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80238480  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80238484  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238488  4B FF F9 E1 */	bl setSelectCursorPosLocal__12dMsgObject_cFUc
/* 8023848C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238490  7C 08 03 A6 */	mtlr r0
/* 80238494  38 21 00 10 */	addi r1, r1, 0x10
/* 80238498  4E 80 00 20 */	blr 
