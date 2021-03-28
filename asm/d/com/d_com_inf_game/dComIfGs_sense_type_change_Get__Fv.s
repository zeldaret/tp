lbl_8002D938:
/* 8002D938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002D93C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002D940  3C 63 00 02 */	addis r3, r3, 2
/* 8002D944  88 63 DD FA */	lbz r3, -0x2206(r3)
/* 8002D948  4E 80 00 20 */	blr 
