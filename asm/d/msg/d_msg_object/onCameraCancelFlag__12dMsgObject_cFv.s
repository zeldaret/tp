lbl_80237950:
/* 80237950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80237954  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80237958  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8023795C  38 00 00 01 */	li r0, 1
/* 80237960  98 03 01 9E */	stb r0, 0x19e(r3)
/* 80237964  4E 80 00 20 */	blr 
