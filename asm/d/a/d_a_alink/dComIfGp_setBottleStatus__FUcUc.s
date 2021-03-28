lbl_8014119C:
/* 8014119C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 801411A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 801411A4  98 65 5E 20 */	stb r3, 0x5e20(r5)
/* 801411A8  98 85 5E 46 */	stb r4, 0x5e46(r5)
/* 801411AC  4E 80 00 20 */	blr 
