lbl_80855CCC:
/* 80855CCC  38 00 00 00 */	li r0, 0
/* 80855CD0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80855CD4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80855CD8  98 03 0E 6D */	stb r0, 0xe6d(r3)
/* 80855CDC  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 80855CE0  98 03 0E 6E */	stb r0, 0xe6e(r3)
/* 80855CE4  38 60 00 01 */	li r3, 1
/* 80855CE8  4E 80 00 20 */	blr 
