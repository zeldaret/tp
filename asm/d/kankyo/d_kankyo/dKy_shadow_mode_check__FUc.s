lbl_801ACD0C:
/* 801ACD0C  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801ACD10  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801ACD14  88 04 12 D7 */	lbz r0, 0x12d7(r4)
/* 801ACD18  7C 00 18 38 */	and r0, r0, r3
/* 801ACD1C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 801ACD20  4E 80 00 20 */	blr 
