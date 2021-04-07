lbl_801A8474:
/* 801A8474  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8478  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A847C  38 63 09 74 */	addi r3, r3, 0x974
/* 801A8480  4E 80 00 20 */	blr 
