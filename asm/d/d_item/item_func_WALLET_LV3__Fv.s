lbl_80098628:
/* 80098628  38 00 00 02 */	li r0, 2
/* 8009862C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80098630  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80098634  98 03 00 19 */	stb r0, 0x19(r3)
/* 80098638  4E 80 00 20 */	blr 
