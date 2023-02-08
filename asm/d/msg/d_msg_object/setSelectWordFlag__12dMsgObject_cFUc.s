lbl_80238544:
/* 80238544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238548  7C 08 02 A6 */	mflr r0
/* 8023854C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238550  7C 64 1B 78 */	mr r4, r3
/* 80238554  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80238558  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023855C  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238560  4B FF F3 6D */	bl setSelectWordFlagLocal__12dMsgObject_cFUc
/* 80238564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238568  7C 08 03 A6 */	mtlr r0
/* 8023856C  38 21 00 10 */	addi r1, r1, 0x10
/* 80238570  4E 80 00 20 */	blr 
