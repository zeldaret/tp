lbl_802384D8:
/* 802384D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 802384DC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 802384E0  80 84 5D BC */	lwz r4, 0x5dbc(r4)
/* 802384E4  98 64 01 A5 */	stb r3, 0x1a5(r4)
/* 802384E8  4E 80 00 20 */	blr 
