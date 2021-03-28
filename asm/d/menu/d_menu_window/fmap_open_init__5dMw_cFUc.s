lbl_801FA538:
/* 801FA538  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 801FA53C  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 801FA540  88 04 00 B9 */	lbz r0, 0xb9(r4)
/* 801FA544  98 04 00 BA */	stb r0, 0xba(r4)
/* 801FA548  38 00 00 04 */	li r0, 4
/* 801FA54C  98 04 00 B9 */	stb r0, 0xb9(r4)
/* 801FA550  38 00 00 00 */	li r0, 0
/* 801FA554  98 03 01 53 */	stb r0, 0x153(r3)
/* 801FA558  4E 80 00 20 */	blr 
