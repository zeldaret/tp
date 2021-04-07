lbl_80238098:
/* 80238098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023809C  7C 08 02 A6 */	mflr r0
/* 802380A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802380A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802380A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802380AC  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802380B0  4B FF EC 51 */	bl endFlowGroupLocal__12dMsgObject_cFv
/* 802380B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802380B8  7C 08 03 A6 */	mtlr r0
/* 802380BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802380C0  4E 80 00 20 */	blr 
