lbl_80237A9C:
/* 80237A9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80237AA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80237AA4  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80237AA8  A8 63 01 70 */	lha r3, 0x170(r3)
/* 80237AAC  4E 80 00 20 */	blr 
