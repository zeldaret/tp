lbl_8002D924:
/* 8002D924  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8002D928  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8002D92C  3C 84 00 02 */	addis r4, r4, 2
/* 8002D930  98 64 DD FA */	stb r3, -0x2206(r4)
/* 8002D934  4E 80 00 20 */	blr 
