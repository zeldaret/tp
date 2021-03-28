lbl_8002FA98:
/* 8002FA98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8002FA9C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8002FAA0  3C 84 00 02 */	addis r4, r4, 2
/* 8002FAA4  98 64 DE 09 */	stb r3, -0x21f7(r4)
/* 8002FAA8  4E 80 00 20 */	blr 
