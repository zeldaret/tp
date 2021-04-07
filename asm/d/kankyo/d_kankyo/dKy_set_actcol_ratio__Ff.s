lbl_801A8A54:
/* 801A8A54  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8A58  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8A5C  D0 23 12 18 */	stfs f1, 0x1218(r3)
/* 801A8A60  4E 80 00 20 */	blr 
