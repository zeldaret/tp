lbl_801A8A74:
/* 801A8A74  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8A78  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8A7C  D0 23 12 20 */	stfs f1, 0x1220(r3)
/* 801A8A80  4E 80 00 20 */	blr 
