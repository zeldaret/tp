lbl_8030FEC0:
/* 8030FEC0  38 00 00 20 */	li r0, 0x20
/* 8030FEC4  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8030FEC8  98 03 80 00 */	stb r0, 0x8000(r3)  /* 0xCC008000@l */
/* 8030FECC  B0 A3 80 00 */	sth r5, -0x8000(r3)
/* 8030FED0  1C 04 00 0C */	mulli r0, r4, 0xc
/* 8030FED4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8030FED8  60 00 B0 00 */	ori r0, r0, 0xb000
/* 8030FEDC  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 8030FEE0  4E 80 00 20 */	blr 
