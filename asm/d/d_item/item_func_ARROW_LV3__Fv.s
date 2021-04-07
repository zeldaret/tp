lbl_80098AE0:
/* 80098AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098AE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098AE8  38 00 00 64 */	li r0, 0x64
/* 80098AEC  98 03 00 EC */	stb r0, 0xec(r3)
/* 80098AF0  98 03 00 F8 */	stb r0, 0xf8(r3)
/* 80098AF4  4E 80 00 20 */	blr 
