lbl_80098614:
/* 80098614  38 00 00 01 */	li r0, 1
/* 80098618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009861C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098620  98 03 00 19 */	stb r0, 0x19(r3)
/* 80098624  4E 80 00 20 */	blr 
