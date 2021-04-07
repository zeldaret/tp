lbl_801A8B58:
/* 801A8B58  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8B5C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8B60  D0 23 12 48 */	stfs f1, 0x1248(r3)
/* 801A8B64  4E 80 00 20 */	blr 
