lbl_8005B61C:
/* 8005B61C  38 00 00 01 */	li r0, 1
/* 8005B620  3C A0 80 43 */	lis r5, g_env_light@ha /* 0x8042CA54@ha */
/* 8005B624  38 A5 CA 54 */	addi r5, r5, g_env_light@l /* 0x8042CA54@l */
/* 8005B628  98 05 0E 6D */	stb r0, 0xe6d(r5)
/* 8005B62C  B0 65 0E 68 */	sth r3, 0xe68(r5)
/* 8005B630  B0 85 0E 6A */	sth r4, 0xe6a(r5)
/* 8005B634  4E 80 00 20 */	blr 
