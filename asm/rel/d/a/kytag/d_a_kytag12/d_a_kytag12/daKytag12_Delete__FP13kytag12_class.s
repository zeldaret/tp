lbl_8085EE30:
/* 8085EE30  38 00 00 00 */	li r0, 0
/* 8085EE34  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8085EE38  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085EE3C  90 03 10 54 */	stw r0, 0x1054(r3)
/* 8085EE40  38 60 00 01 */	li r3, 1
/* 8085EE44  4E 80 00 20 */	blr 
