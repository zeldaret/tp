lbl_802385B4:
/* 802385B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802385B8  7C 08 02 A6 */	mflr r0
/* 802385BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802385C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802385C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802385C8  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802385CC  4B FF F0 71 */	bl getSelectBombBagIDLocal__12dMsgObject_cFv
/* 802385D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802385D4  7C 08 03 A6 */	mtlr r0
/* 802385D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802385DC  4E 80 00 20 */	blr 
