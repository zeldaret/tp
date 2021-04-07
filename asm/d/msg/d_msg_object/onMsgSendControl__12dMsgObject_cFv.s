lbl_8023829C:
/* 8023829C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802382A0  7C 08 02 A6 */	mflr r0
/* 802382A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802382A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802382AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802382B0  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802382B4  4B FF F2 6D */	bl onMsgSendControlLocal__12dMsgObject_cFv
/* 802382B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802382BC  7C 08 03 A6 */	mtlr r0
/* 802382C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802382C4  4E 80 00 20 */	blr 
