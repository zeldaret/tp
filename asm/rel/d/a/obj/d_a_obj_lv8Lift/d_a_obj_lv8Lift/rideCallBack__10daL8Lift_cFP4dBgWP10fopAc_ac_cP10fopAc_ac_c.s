lbl_80C88DBC:
/* 80C88DBC  A8 05 00 08 */	lha r0, 8(r5)
/* 80C88DC0  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C88DC4  4C 82 00 20 */	bnelr 
/* 80C88DC8  38 00 00 01 */	li r0, 1
/* 80C88DCC  98 04 08 0A */	stb r0, 0x80a(r4)
/* 80C88DD0  4E 80 00 20 */	blr 
