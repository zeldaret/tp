lbl_802384C4:
/* 802384C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 802384C8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 802384CC  80 84 5D BC */	lwz r4, 0x5dbc(r4)
/* 802384D0  B0 64 01 88 */	sth r3, 0x188(r4)
/* 802384D4  4E 80 00 20 */	blr 
