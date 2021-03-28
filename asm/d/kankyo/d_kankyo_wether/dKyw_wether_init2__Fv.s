lbl_800579EC:
/* 800579EC  38 00 00 00 */	li r0, 0
/* 800579F0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800579F4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800579F8  98 03 0E C4 */	stb r0, 0xec4(r3)
/* 800579FC  90 03 0E C8 */	stw r0, 0xec8(r3)
/* 80057A00  4E 80 00 20 */	blr 
