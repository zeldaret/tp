lbl_801A8A64:
/* 801A8A64  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8A68  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8A6C  D0 23 12 1C */	stfs f1, 0x121c(r3)
/* 801A8A70  4E 80 00 20 */	blr 
