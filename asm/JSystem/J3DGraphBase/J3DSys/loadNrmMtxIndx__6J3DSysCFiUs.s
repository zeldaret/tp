lbl_8030FEE4:
/* 8030FEE4  38 00 00 28 */	li r0, 0x28
/* 8030FEE8  3C C0 CC 01 */	lis r6, 0xCC01 /* 0xCC008000@ha */
/* 8030FEEC  98 06 80 00 */	stb r0, 0x8000(r6)  /* 0xCC008000@l */
/* 8030FEF0  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 8030FEF4  1C 64 00 09 */	mulli r3, r4, 9
/* 8030FEF8  38 03 04 00 */	addi r0, r3, 0x400
/* 8030FEFC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8030FF00  60 00 80 00 */	ori r0, r0, 0x8000
/* 8030FF04  B0 06 80 00 */	sth r0, -0x8000(r6)
/* 8030FF08  4E 80 00 20 */	blr 
