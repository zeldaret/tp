lbl_80182A54:
/* 80182A54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80182A58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80182A5C  80 63 51 84 */	lwz r3, 0x5184(r3)
/* 80182A60  4E 80 00 20 */	blr 
