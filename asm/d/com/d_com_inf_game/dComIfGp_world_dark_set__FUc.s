lbl_8002F504:
/* 8002F504  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8002F508  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8002F50C  3C 84 00 02 */	addis r4, r4, 2
/* 8002F510  98 64 DD F9 */	stb r3, -0x2207(r4)
/* 8002F514  4E 80 00 20 */	blr 
