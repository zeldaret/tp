lbl_8002FAD4:
/* 8002FAD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002FAD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002FADC  3C 63 00 02 */	addis r3, r3, 2
/* 8002FAE0  88 63 DE 0A */	lbz r3, -0x21f6(r3)
/* 8002FAE4  4E 80 00 20 */	blr 
