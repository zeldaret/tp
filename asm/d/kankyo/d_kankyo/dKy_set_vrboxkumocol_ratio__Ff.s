lbl_801A8AC8:
/* 801A8AC8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A8ACC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A8AD0  D0 23 12 28 */	stfs f1, 0x1228(r3)
/* 801A8AD4  4E 80 00 20 */	blr 
