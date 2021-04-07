lbl_801ACCF4:
/* 801ACCF4  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801ACCF8  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801ACCFC  88 04 12 D7 */	lbz r0, 0x12d7(r4)
/* 801ACD00  7C 00 18 78 */	andc r0, r0, r3
/* 801ACD04  98 04 12 D7 */	stb r0, 0x12d7(r4)
/* 801ACD08  4E 80 00 20 */	blr 
