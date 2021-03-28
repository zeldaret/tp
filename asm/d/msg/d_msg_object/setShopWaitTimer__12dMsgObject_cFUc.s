lbl_802378B8:
/* 802378B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 802378BC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 802378C0  80 84 5D BC */	lwz r4, 0x5dbc(r4)
/* 802378C4  98 64 04 C9 */	stb r3, 0x4c9(r4)
/* 802378C8  4E 80 00 20 */	blr 
