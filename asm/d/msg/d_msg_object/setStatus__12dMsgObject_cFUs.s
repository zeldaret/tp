lbl_802381FC:
/* 802381FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238200  7C 08 02 A6 */	mflr r0
/* 80238204  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238208  7C 64 1B 78 */	mr r4, r3
/* 8023820C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80238210  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80238214  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238218  4B FF E6 CD */	bl setStatusLocal__12dMsgObject_cFUs
/* 8023821C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238220  7C 08 03 A6 */	mtlr r0
/* 80238224  38 21 00 10 */	addi r1, r1, 0x10
/* 80238228  4E 80 00 20 */	blr 
