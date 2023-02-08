lbl_80C21DAC:
/* 80C21DAC  A8 05 00 08 */	lha r0, 8(r5)
/* 80C21DB0  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C21DB4  4C 82 00 20 */	bnelr 
/* 80C21DB8  38 00 00 01 */	li r0, 1
/* 80C21DBC  98 04 09 D1 */	stb r0, 0x9d1(r4)
/* 80C21DC0  4E 80 00 20 */	blr 
