lbl_8009B390:
/* 8009B390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009B394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009B398  88 63 01 0C */	lbz r3, 0x10c(r3)
/* 8009B39C  4E 80 00 20 */	blr 
