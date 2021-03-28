lbl_80876DE8:
/* 80876DE8  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 80876DEC  B0 65 80 00 */	sth r3, 0x8000(r5)
/* 80876DF0  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 80876DF4  4E 80 00 20 */	blr 
