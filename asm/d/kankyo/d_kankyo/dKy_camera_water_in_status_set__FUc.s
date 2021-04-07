lbl_801AB270:
/* 801AB270  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801AB274  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801AB278  98 64 12 D8 */	stb r3, 0x12d8(r4)
/* 801AB27C  4E 80 00 20 */	blr 
