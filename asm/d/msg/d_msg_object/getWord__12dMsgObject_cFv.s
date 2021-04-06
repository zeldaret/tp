lbl_80238514:
/* 80238514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80238518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023851C  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238520  38 63 01 A6 */	addi r3, r3, 0x1a6
/* 80238524  4E 80 00 20 */	blr 
