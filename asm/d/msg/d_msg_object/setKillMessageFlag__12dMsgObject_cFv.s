lbl_802379AC:
/* 802379AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802379B0  7C 08 02 A6 */	mflr r0
/* 802379B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802379B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802379BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802379C0  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802379C4  48 00 00 15 */	bl setKillMessageFlagLocal__12dMsgObject_cFv
/* 802379C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802379CC  7C 08 03 A6 */	mtlr r0
/* 802379D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802379D4  4E 80 00 20 */	blr 
