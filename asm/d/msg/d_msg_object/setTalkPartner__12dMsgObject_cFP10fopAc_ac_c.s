lbl_80237A74:
/* 80237A74  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80237A78  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80237A7C  80 84 5D BC */	lwz r4, 0x5dbc(r4)
/* 80237A80  90 64 01 40 */	stw r3, 0x140(r4)
/* 80237A84  4E 80 00 20 */	blr 
