lbl_8005B64C:
/* 8005B64C  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8005B650  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 8005B654  90 64 0E 80 */	stw r3, 0xe80(r4)
/* 8005B658  90 64 12 9C */	stw r3, 0x129c(r4)
/* 8005B65C  4E 80 00 20 */	blr 
