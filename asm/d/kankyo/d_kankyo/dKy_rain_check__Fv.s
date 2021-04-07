lbl_801A8A34:
/* 801A8A34  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8A38  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8A3C  80 63 0E 80 */	lwz r3, 0xe80(r3)
/* 801A8A40  4E 80 00 20 */	blr 
