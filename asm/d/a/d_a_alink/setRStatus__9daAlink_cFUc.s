lbl_800B3220:
/* 800B3220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B3224  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B3228  98 83 5E 1C */	stb r4, 0x5e1c(r3)
/* 800B322C  38 00 00 00 */	li r0, 0
/* 800B3230  98 03 5E 42 */	stb r0, 0x5e42(r3)
/* 800B3234  4E 80 00 20 */	blr 
