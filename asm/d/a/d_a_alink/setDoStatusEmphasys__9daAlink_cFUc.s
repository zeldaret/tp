lbl_800B3268:
/* 800B3268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B326C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B3270  98 83 5E 24 */	stb r4, 0x5e24(r3)
/* 800B3274  38 00 00 02 */	li r0, 2
/* 800B3278  98 03 5E 4A */	stb r0, 0x5e4a(r3)
/* 800B327C  4E 80 00 20 */	blr 
