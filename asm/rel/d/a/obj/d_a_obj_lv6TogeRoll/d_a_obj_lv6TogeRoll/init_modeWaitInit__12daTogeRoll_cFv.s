lbl_80C792CC:
/* 80C792CC  3C 80 80 C8 */	lis r4, lit_3958@ha /* 0x80C79A90@ha */
/* 80C792D0  C0 04 9A 90 */	lfs f0, lit_3958@l(r4)  /* 0x80C79A90@l */
/* 80C792D4  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C792D8  38 00 00 04 */	li r0, 4
/* 80C792DC  98 03 05 D8 */	stb r0, 0x5d8(r3)
/* 80C792E0  4E 80 00 20 */	blr 
