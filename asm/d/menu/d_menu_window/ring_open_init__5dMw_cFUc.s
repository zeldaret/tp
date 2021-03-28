lbl_801FA220:
/* 801FA220  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FA224  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FA228  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 801FA22C  98 03 00 BA */	stb r0, 0xba(r3)
/* 801FA230  38 00 00 02 */	li r0, 2
/* 801FA234  98 03 00 B9 */	stb r0, 0xb9(r3)
/* 801FA238  4E 80 00 20 */	blr 
