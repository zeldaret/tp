/* 80098AB0 000959F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098AB4 000959F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098AB8 000959F8  38 00 00 3C */	li r0, 0x3c
/* 80098ABC 000959FC  98 03 00 EC */	stb r0, 0xec(r3)
/* 80098AC0 00095A00  98 03 00 F8 */	stb r0, 0xf8(r3)
/* 80098AC4 00095A04  4E 80 00 20 */	blr 