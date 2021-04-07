lbl_8023849C:
/* 8023849C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802384A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802384A4  80 84 5D BC */	lwz r4, 0x5dbc(r4)
/* 802384A8  B0 64 01 80 */	sth r3, 0x180(r4)
/* 802384AC  4E 80 00 20 */	blr 
