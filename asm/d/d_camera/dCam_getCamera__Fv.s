lbl_80181630:
/* 80181630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80181634  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80181638  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8018163C  4E 80 00 20 */	blr 
