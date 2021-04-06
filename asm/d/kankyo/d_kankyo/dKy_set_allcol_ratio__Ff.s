lbl_801A8A44:
/* 801A8A44  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8A48  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8A4C  D0 23 12 14 */	stfs f1, 0x1214(r3)
/* 801A8A50  4E 80 00 20 */	blr 
