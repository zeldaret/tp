lbl_80237A88:
/* 80237A88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80237A8C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80237A90  80 84 5D BC */	lwz r4, 0x5dbc(r4)
/* 80237A94  B0 64 01 70 */	sth r3, 0x170(r4)
/* 80237A98  4E 80 00 20 */	blr 
