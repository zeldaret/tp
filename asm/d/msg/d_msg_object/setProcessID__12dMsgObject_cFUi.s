lbl_80238188:
/* 80238188  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8023818C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80238190  80 84 5D BC */	lwz r4, 0x5dbc(r4)
/* 80238194  90 64 01 4C */	stw r3, 0x14c(r4)
/* 80238198  4E 80 00 20 */	blr 
