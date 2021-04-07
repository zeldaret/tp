lbl_8002D8FC:
/* 8002D8FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D900  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D904  3C 84 00 02 */	addis r4, r4, 2
/* 8002D908  98 64 DD FA */	stb r3, -0x2206(r4)
/* 8002D90C  4E 80 00 20 */	blr 
