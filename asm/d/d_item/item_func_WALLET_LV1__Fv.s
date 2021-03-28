lbl_80098600:
/* 80098600  38 00 00 00 */	li r0, 0
/* 80098604  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098608  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009860C  98 03 00 19 */	stb r0, 0x19(r3)
/* 80098610  4E 80 00 20 */	blr 
