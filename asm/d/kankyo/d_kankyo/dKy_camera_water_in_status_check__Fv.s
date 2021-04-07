lbl_801AB280:
/* 801AB280  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AB284  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AB288  88 63 12 D8 */	lbz r3, 0x12d8(r3)
/* 801AB28C  4E 80 00 20 */	blr 
