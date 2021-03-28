lbl_8002FAAC:
/* 8002FAAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8002FAB0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8002FAB4  3C 84 00 02 */	addis r4, r4, 2
/* 8002FAB8  98 64 DE 0A */	stb r3, -0x21f6(r4)
/* 8002FABC  4E 80 00 20 */	blr 
