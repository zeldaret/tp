lbl_8005AAF0:
/* 8005AAF0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005AAF4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005AAF8  C0 23 0E 58 */	lfs f1, 0xe58(r3)
/* 8005AAFC  4E 80 00 20 */	blr 
