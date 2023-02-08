lbl_80C85B08:
/* 80C85B08  3C 80 80 C8 */	lis r4, l_HIO@ha /* 0x80C862CC@ha */
/* 80C85B0C  38 84 62 CC */	addi r4, r4, l_HIO@l /* 0x80C862CC@l */
/* 80C85B10  88 04 00 18 */	lbz r0, 0x18(r4)
/* 80C85B14  98 03 05 B8 */	stb r0, 0x5b8(r3)
/* 80C85B18  38 00 00 02 */	li r0, 2
/* 80C85B1C  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80C85B20  4E 80 00 20 */	blr 
