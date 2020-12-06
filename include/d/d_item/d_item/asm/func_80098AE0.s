/* 80098AE0 00095A20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098AE4 00095A24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098AE8 00095A28  38 00 00 64 */	li r0, 0x64
/* 80098AEC 00095A2C  98 03 00 EC */	stb r0, 0xec(r3)
/* 80098AF0 00095A30  98 03 00 F8 */	stb r0, 0xf8(r3)
/* 80098AF4 00095A34  4E 80 00 20 */	blr 