lbl_8005B638:
/* 8005B638  38 00 00 01 */	li r0, 1
/* 8005B63C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005B640  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005B644  98 03 0E 6D */	stb r0, 0xe6d(r3)
/* 8005B648  4E 80 00 20 */	blr 
