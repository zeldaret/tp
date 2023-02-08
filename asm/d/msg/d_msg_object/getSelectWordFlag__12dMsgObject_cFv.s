lbl_80238574:
/* 80238574  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80238578  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023857C  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238580  88 63 04 C6 */	lbz r3, 0x4c6(r3)
/* 80238584  4E 80 00 20 */	blr 
