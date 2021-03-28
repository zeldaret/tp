lbl_80237994:
/* 80237994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80237998  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8023799C  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802379A0  38 00 00 01 */	li r0, 1
/* 802379A4  98 03 04 D2 */	stb r0, 0x4d2(r3)
/* 802379A8  4E 80 00 20 */	blr 
