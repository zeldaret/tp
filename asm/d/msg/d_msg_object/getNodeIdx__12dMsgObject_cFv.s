lbl_802381E8:
/* 802381E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802381EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802381F0  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802381F4  A0 63 01 64 */	lhz r3, 0x164(r3)
/* 802381F8  4E 80 00 20 */	blr 
