lbl_80237980:
/* 80237980  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80237984  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80237988  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8023798C  88 63 04 D2 */	lbz r3, 0x4d2(r3)
/* 80237990  4E 80 00 20 */	blr 
