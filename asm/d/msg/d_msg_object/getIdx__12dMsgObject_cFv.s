lbl_802381D4:
/* 802381D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802381D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802381DC  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802381E0  80 63 01 60 */	lwz r3, 0x160(r3)
/* 802381E4  4E 80 00 20 */	blr 
