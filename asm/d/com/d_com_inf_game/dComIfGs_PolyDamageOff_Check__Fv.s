lbl_8002FA04:
/* 8002FA04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002FA08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002FA0C  3C 63 00 02 */	addis r3, r3, 2
/* 8002FA10  88 63 DD FB */	lbz r3, -0x2205(r3)
/* 8002FA14  4E 80 00 20 */	blr 
