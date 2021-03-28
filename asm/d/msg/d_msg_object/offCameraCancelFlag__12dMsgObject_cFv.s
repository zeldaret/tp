lbl_80237968:
/* 80237968  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8023796C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80237970  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80237974  38 00 00 00 */	li r0, 0
/* 80237978  98 03 01 9E */	stb r0, 0x19e(r3)
/* 8023797C  4E 80 00 20 */	blr 
