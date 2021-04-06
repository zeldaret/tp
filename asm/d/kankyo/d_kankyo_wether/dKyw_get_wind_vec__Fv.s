lbl_8005AAE0:
/* 8005AAE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005AAE4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005AAE8  38 63 0E 48 */	addi r3, r3, 0xe48
/* 8005AAEC  4E 80 00 20 */	blr 
